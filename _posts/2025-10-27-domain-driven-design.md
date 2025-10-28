---
title: Domain Driven Design
date: 2025-10-27 18:24:39 Z
description: ''
preview: ''
---

> AI Generated Content (Used Gemini, NotebookLM and ChatGPT)


> **Prompt**
> You have 2 minutes, tell me domain driven design.
> Source: <https://chatgpt.com/c/68fe52c4-6cb4-832f-bce4-ad353857db03>


Domain-Driven Design (DDD) is a software design approach that aligns code structure with business logic.

Core idea: model the real-world **domain** (the problem space) in code so that software reflects how the business actually works.

### Key Concepts

- **Domain** — the business problem area (e.g., banking, logistics).
- **Model** — an abstract representation of that domain in code.
- **Ubiquitous Language** — shared vocabulary between developers and domain experts; terms are consistent in code and conversation.
- **Bounded Context** — a logical boundary where one domain model applies; each context has its own meaning for terms.
- **Entities** — objects with identity (e.g., `Customer`).
- **Value Objects** — immutable objects without identity (e.g., `Money`, `Address`).
- **Aggregates** — clusters of entities and value objects treated as one unit (rooted at an Aggregate Root).
- **Repositories** — abstractions for storing and retrieving aggregates.
- **Domain Services** — operations that don’t belong to a single entity.
- **Application Layer** — orchestrates domain objects; contains no business rules.
- **Infrastructure Layer** — handles persistence, messaging, APIs.

### Process

1. Collaborate with domain experts to refine understanding.
2. Break system into bounded contexts.
3. Implement domain models that match business language.
4. Integrate contexts through contracts or events.

Goal: build software that evolves with the business and reduces accidental complexity.



---



> **Prompt**
> You are DDD (domain driven design) architect in ASP.NET world.
> I've an Todo application. How would you architect the application,
> Start from the high level diagram, then create the types.
> Source: <https://gemini.google.com/app/708406645ea63d5d>


Here’s how I'd architect a Todo application using Domain-Driven Design (DDD) principles within the ASP.NET ecosystem.

The core idea of this architecture is to isolate your **business logic** (the "Domain") from everything else. We use a layered approach, often called **Clean Architecture** or Onion Architecture, where dependencies always point *inward*.

-----

## High-Level Architecture (The Layers)

We'll structure the solution into a set of layers, which will become our .NET projects. The fundamental rule is: **the Domain layer knows nothing about any other layer.**

Here's a visual breakdown of the layers and their dependencies:

```
+---------------------------------------------------------+
|   Presentation (TodoApp.Api)                            |  <-- ASP.NET Core Web API
|   (Controllers, Middleware, DI Setup)                   |
+--------------------v------------------------------------+
                     |
                     | Depends on
                     |
+--------------------v------------------------------------+
|   Application (TodoApp.Application)                     |  <-- Orchestration
|   (Application Services, Commands, Queries, DTOs,       |
|    Repository Interfaces)                               |
+--------------------v------------------------------------+
                     |
                     | Depends on
                     |
+--------------------v------------------------------------+
|   Domain (TodoApp.Domain)                               |  <-- CORE BUSINESS LOGIC
|   (Aggregates, Entities, Value Objects, Domain Events)  |
+---------------------------------------------------------+
```

There's one more layer that "plugs in" from the side:

  * **Infrastructure (TodoApp.Infrastructure):** This layer implements the interfaces defined in the Application and Domain layers. It contains things like:
      * Entity Framework Core `DbContext`
      * Repository implementations (`EfTodoListRepository`)
      * Email services, payment gateways, etc.

This layer depends on **Application** and **Domain**, but the **Domain** and **Application** layers do *not* depend on it. This is called Inversion of Control.

-----

## Project Structure (The .NET Solution)

This layered diagram maps directly to a .NET solution structure:

  * `TodoApp.sln`
      * `src/`
          * `TodoApp.Domain`: A .NET class library. Contains your core business models and logic. **No dependencies** on other projects.
          * `TodoApp.Application`: A .NET class library. Orchestrates the domain. Depends on `TodoApp.Domain`.
          * `TodoApp.Infrastructure`: A .NET class library. Implements persistence. Depends on `TodoApp.Application`.
          * `TodoApp.Api`: An ASP.NET Core Web API project. The entry point. Depends on `TodoApp.Application` and `TodoApp.Infrastructure` (for DI registration).
      * `tests/`
          * `TodoApp.Domain.Tests`: Unit tests for your domain logic.
          * `TodoApp.Application.Tests`: Unit tests for your application logic.
          * `TodoApp.Api.Tests`: Integration tests.

-----

## Core Domain Types

This is the heart of your application. For a Todo app, the main **Bounded Context** is "Task Management."

Inside this context, we identify our **Aggregate**. An aggregate is a cluster of objects that are treated as a single unit for data changes. Here, the `TodoList` is the perfect **Aggregate Root**. A `TodoItem` doesn't really make sense on its own; it *belongs* to a list.

Here are the C\# types that would live in the `TodoApp.Domain` project.

### 1\. The Aggregate Root: `TodoList`

This is the main entity that external code will interact with. It protects its internal state (its "invariants").

```csharp
// In: TodoApp.Domain/Aggregates/TodoList.cs

namespace TodoApp.Domain.Aggregates
{
    /// <summary>
    /// Represents the Aggregate Root for a list of todos.
    /// </summary>
    public class TodoList
    {
        public Guid Id { get; private set; }
        public Guid OwnerUserId { get; private set; } // Link to another Bounded Context (User)
        public string Title { get; private set; }

        // Use a backing field to hide the mutability of the list
        private readonly List<TodoItem> _items = new();

        // Expose a read-only collection to the outside world
        public IReadOnlyCollection<TodoItem> Items => _items.AsReadOnly();

        // Private constructor for EF Core
        private TodoList() { }

        // Public factory method or constructor to enforce creation rules
        public TodoList(Guid id, string title, Guid ownerUserId)
        {
            if (id == Guid.Empty)
                throw new ArgumentException("ID cannot be empty.", nameof(id));
            if (string.IsNullOrWhiteSpace(title))
                throw new ArgumentException("Title cannot be empty.", nameof(title));

            Id = id;
            Title = title;
            OwnerUserId = ownerUserId;
        }

        // --- Behavior Methods ---
        // These methods encapsulate the business logic.

        public void ChangeTitle(string newTitle)
        {
            if (string.IsNullOrWhiteSpace(newTitle))
                throw new InvalidOperationException("Title cannot be empty.");

            Title = newTitle;
            // Could raise a Domain Event here, e.g., TodoListRenamedEvent
        }

        public void AddItem(string description, DateTime? dueDate = null)
        {
            if (string.IsNullOrWhiteSpace(description))
                throw new InvalidOperationException("Todo item description cannot be empty.");

            // Enforce an invariant (a business rule)
            if (_items.Count >= 50)
                throw new InvalidOperationException("A todo list cannot have more than 50 items.");

            var newItem = new TodoItem(Guid.NewGuid(), description, dueDate);
            _items.Add(newItem);
        }

        public void CompleteItem(Guid itemId)
        {
            var item = FindItem(itemId);
            item.MarkComplete();
        }

        public void RemoveItem(Guid itemId)
        {
            var item = FindItem(itemId);
            _items.Remove(item);
        }

        private TodoItem FindItem(Guid itemId)
        {
            var item = _items.FirstOrDefault(i => i.Id == itemId);
            if (item == null)
                throw new InvalidOperationException($"Item with ID {itemId} not found in this list.");
            return item;
        }
    }
}
```

### 2\. The Child Entity: `TodoItem`

This entity lives *inside* the `TodoList` aggregate. Notice its constructor is `internal`. This is a key DDD pattern: **only the `TodoList` (the aggregate root) can create a `TodoItem`**.

```csharp
// In: TodoApp.Domain/Aggregates/TodoItem.cs

namespace TodoApp.Domain.Aggregates
{
    /// <summary>
    /// Represents a child entity within the TodoList aggregate.
    /// It has no meaning or identity outside of its parent list.
    /// </summary>
    public class TodoItem
    {
        public Guid Id { get; private set; }
        public string Description { get; private set; }
        public bool IsCompleted { get; private set; }
        public DateTime? DueDate { get; private set; }
        public DateTime CreatedAt { get; private set; }

        // Private constructor for EF Core
        private TodoItem() { }

        /// <summary>
        /// Internal constructor. Only the TodoList can create a TodoItem.
        /// </summary>
        internal TodoItem(Guid id, string description, DateTime? dueDate)
        {
            Id = id;
            Description = description;
            DueDate = dueDate;
            IsCompleted = false;
            CreatedAt = DateTime.UtcNow;
        }

        // --- Behavior Methods ---

        public void MarkComplete()
        {
            if (IsCompleted) return; // Idempotent

            IsCompleted = true;
            // Could raise a Domain Event here, e.g., TodoItemCompletedEvent
        }

        public void UpdateDueDate(DateTime? newDueDate)
        {
            // You could add logic here, e.g., due date cannot be in the past
            DueDate = newDueDate;
        }
    }
}
```

### 3\. The Repository Interface

This interface lives in the **Application Layer** (or sometimes the Domain layer) and defines the *contract* for persistence. It only ever deals with the **Aggregate Root**.

```csharp
// In: TodoApp.Application/Interfaces/ITodoListRepository.cs

using TodoApp.Domain.Aggregates;

namespace TodoApp.Application.Interfaces
{
    /// <summary>
    /// Defines the persistence contract for the TodoList aggregate.
    /// We only interact with the Aggregate Root.
    /// </summary>
    public interface ITodoListRepository
    {
        Task<TodoList?> GetByIdAsync(Guid id, CancellationToken cancellationToken = default);
        Task<IEnumerable<TodoList>> GetByOwnerIdAsync(Guid ownerId, CancellationToken cancellationToken = default);
        Task AddAsync(TodoList todoList, CancellationToken cancellationToken = default);
        Task UpdateAsync(TodoList todoList, CancellationToken cancellationToken = default);
        Task DeleteAsync(TodoList todoList, CancellationToken cancellationToken = default);
    }
}
```

The implementation of this (`EfTodoListRepository`) would live in the **Infrastructure** project, using EF Core to save and retrieve the `TodoList` and its child `TodoItem`s.

-----

## How It All Works: An Example Flow

Let's trace a request to **complete a todo item**:

1.  **Request:** A `PUT` request hits the ASP.NET Core API: `PUT /api/lists/{listId}/items/{itemId}/complete`
2.  **Presentation Layer (`TodoApp.Api`):**
      * The `TodoListsController` receives the request.
      * It retrieves `listId` and `itemId` from the route.
      * It calls the **Application Layer**. (It often does this by sending a **Command** object using a library like **MediatR**).
      * Example: `await _mediator.Send(new CompleteTodoItemCommand(listId, itemId));`
3.  **Application Layer (`TodoApp.Application`):**
      * The `CompleteTodoItemCommandHandler` handles the command.
      * It injects `ITodoListRepository` via its constructor.
      * It **loads the full aggregate root**: `var todoList = await _repository.GetByIdAsync(command.ListId);`
      * It **executes domain logic**: `todoList.CompleteItem(command.ItemId);`
      * It **persists the change**: `await _repository.UpdateAsync(todoList);`
4.  **Domain Layer (`TodoApp.Domain`):**
      * The `todoList.CompleteItem(itemId)` method is called.
      * It finds the specific `TodoItem` in its internal `_items` list.
      * It calls `item.MarkComplete()`.
      * The `TodoItem`'s `IsCompleted` property is set to `true`.
5.  **Infrastructure Layer (`TodoApp.Infrastructure`):**
      * The `_repository.UpdateAsync(todoList)` call is handled by `EfTodoListRepository`.
      * EF Core's change tracker detects that one `TodoItem` within the `TodoList` aggregate has been modified.
      * It generates the appropriate SQL `UPDATE` statement.
      * `_dbContext.SaveChangesAsync()` commits the change to the database.
6.  **Response:** The Application layer handler finishes, the Controller returns a `200 OK`, and the user's item is marked as complete.

By doing this, your core business rule ("how to complete an item") is protected inside your `TodoItem` and `TodoList` objects, completely unaware of HTTP, JSON, or SQL Server. This makes it incredibly robust and easy to test.
