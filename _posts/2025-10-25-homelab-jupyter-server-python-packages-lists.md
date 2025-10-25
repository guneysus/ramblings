---
layout: post
title: "[Doc] Homelab Jupyter Server Python Package List"
date: 2025-10-25T20:50:00.000+03:00
---

- [Async / Concurrency](#async--concurrency)
  - [aiofiles](#aiofiles)
  - [aiohappyeyeballs](#aiohappyeyeballs)
  - [aiosignal](#aiosignal)
  - [anyio](#anyio)
  - [async-lru](#async-lru)
  - [nest-asyncio](#nest-asyncio)
- [Data Science / Math](#data-science--math)
  - [matplotlib](#matplotlib)
  - [matplotlib-inline](#matplotlib-inline)
  - [numpy](#numpy)
  - [pandas](#pandas)
  - [scipy](#scipy)
  - [seaborn](#seaborn)
  - [statsmodels](#statsmodels)
  - [sympy](#sympy)
- [Databases / Storage](#databases--storage)
  - [filelock](#filelock)
  - [filetype](#filetype)
  - [fsspec](#fsspec)
  - [psycopg2-binary](#psycopg2-binary)
  - [smart\_open](#smart_open)
  - [SQLAlchemy](#sqlalchemy)
  - [zstandard](#zstandard)
- [Developer Tools](#developer-tools)
  - [debugpy](#debugpy)
  - [executing](#executing)
  - [pure\_eval](#pure_eval)
  - [stack-data](#stack-data)
  - [typing-inspection](#typing-inspection)
  - [typing\_extensions](#typing_extensions)
- [Jupyter / Interactive](#jupyter--interactive)
  - [ipykernel](#ipykernel)
  - [ipython](#ipython)
  - [jupyter\_core](#jupyter_core)
  - [jupyter\_server](#jupyter_server)
  - [jupyterlab\_server](#jupyterlab_server)
  - [nbconvert](#nbconvert)
  - [nbformat](#nbformat)
  - [notebook](#notebook)
- [Machine Learning / AI](#machine-learning--ai)
  - [datasets](#datasets)
  - [evaluate](#evaluate)
  - [faiss-cpu](#faiss-cpu)
  - [huggingface-hub](#huggingface-hub)
  - [langchain](#langchain)
  - [safetensors](#safetensors)
  - [scikit-learn](#scikit-learn)
  - [tokenizers](#tokenizers)
  - [torch](#torch)
  - [torchaudio](#torchaudio)
  - [torchvision](#torchvision)
  - [transformers](#transformers)
- [Miscellaneous](#miscellaneous)
  - [annotated-doc](#annotated-doc)
  - [annotated-types](#annotated-types)
  - [arrow](#arrow)
  - [arxiv](#arxiv)
  - [asttokens](#asttokens)
  - [babel](#babel)
  - [bleach](#bleach)
  - [Brotli](#brotli)
  - [catalogue](#catalogue)
  - [charset-normalizer](#charset-normalizer)
  - [cloudpathlib](#cloudpathlib)
  - [comm](#comm)
  - [confection](#confection)
  - [contourpy](#contourpy)
  - [cycler](#cycler)
  - [cymem](#cymem)
  - [en\_core\_web\_sm](#en_core_web_sm)
  - [feedparser](#feedparser)
  - [ffmpy](#ffmpy)
  - [fonttools](#fonttools)
  - [fqdn](#fqdn)
  - [frozenlist](#frozenlist)
  - [greenlet](#greenlet)
  - [groovy](#groovy)
  - [h11](#h11)
  - [hf-xet](#hf-xet)
  - [idna](#idna)
  - [ipython\_pygments\_lexers](#ipython_pygments_lexers)
  - [isoduration](#isoduration)
  - [jedi](#jedi)
  - [Jinja2](#jinja2)
  - [jiter](#jiter)
  - [joblib](#joblib)
  - [jupyter-events](#jupyter-events)
  - [jupyter-lsp](#jupyter-lsp)
  - [jupyter\_client](#jupyter_client)
  - [jupyter\_server\_terminals](#jupyter_server_terminals)
  - [jupyterlab\_pygments](#jupyterlab_pygments)
  - [kiwisolver](#kiwisolver)
  - [langchain-core](#langchain-core)
  - [langchain-nvidia-ai-endpoints](#langchain-nvidia-ai-endpoints)
  - [langchain-text-splitters](#langchain-text-splitters)
  - [langcodes](#langcodes)
  - [langsmith](#langsmith)
  - [MarkupSafe](#markupsafe)
  - [mpmath](#mpmath)
  - [multidict](#multidict)
  - [multiprocess](#multiprocess)
  - [murmurhash](#murmurhash)
  - [nbclient](#nbclient)
  - [networkx](#networkx)
  - [notebook\_shim](#notebook_shim)
  - [ollama](#ollama)
  - [openai](#openai)
  - [overrides](#overrides)
  - [pandocfilters](#pandocfilters)
  - [parso](#parso)
  - [patsy](#patsy)
  - [pexpect](#pexpect)
  - [pillow](#pillow)
  - [prometheus\_client](#prometheus_client)
  - [prompt\_toolkit](#prompt_toolkit)
  - [propcache](#propcache)
  - [ptyprocess](#ptyprocess)
  - [pyarrow](#pyarrow)
  - [pydub](#pydub)
  - [Pygments](#pygments)
  - [PyMuPDF](#pymupdf)
  - [python-dateutil](#python-dateutil)
  - [python-json-logger](#python-json-logger)
  - [python-multipart](#python-multipart)
  - [pytz](#pytz)
  - [referencing](#referencing)
  - [regex](#regex)
  - [requests-toolbelt](#requests-toolbelt)
  - [rfc3339-validator](#rfc3339-validator)
  - [rfc3986-validator](#rfc3986-validator)
  - [rpds-py](#rpds-py)
  - [semantic-version](#semantic-version)
  - [Send2Trash](#send2trash)
  - [sgmllib3k](#sgmllib3k)
  - [shellingham](#shellingham)
  - [six](#six)
  - [sniffio](#sniffio)
  - [spacy-legacy](#spacy-legacy)
  - [spacy-loggers](#spacy-loggers)
  - [terminado](#terminado)
  - [threadpoolctl](#threadpoolctl)
  - [tinycss2](#tinycss2)
  - [tomlkit](#tomlkit)
  - [tornado](#tornado)
  - [traitlets](#traitlets)
  - [typer](#typer)
  - [types-python-dateutil](#types-python-dateutil)
  - [tzdata](#tzdata)
  - [uri-template](#uri-template)
  - [wcwidth](#wcwidth)
  - [webcolors](#webcolors)
  - [webencodings](#webencodings)
  - [wrapt](#wrapt)
  - [xxhash](#xxhash)
  - [yarl](#yarl)
- [Natural Language Processing](#natural-language-processing)
  - [blis](#blis)
  - [language\_data](#language_data)
  - [marisa-trie](#marisa-trie)
  - [preshed](#preshed)
  - [spacy](#spacy)
  - [srsly](#srsly)
  - [thinc](#thinc)
  - [wasabi](#wasabi)
  - [weasel](#weasel)
- [Networking / HTTP](#networking--http)
  - [aiohttp](#aiohttp)
  - [httpcore](#httpcore)
  - [httpx](#httpx)
  - [requests](#requests)
  - [safehttpx](#safehttpx)
  - [urllib3](#urllib3)
- [Networking Protocols / Messaging](#networking-protocols--messaging)
  - [pika](#pika)
  - [pyzmq](#pyzmq)
  - [websocket-client](#websocket-client)
  - [websockets](#websockets)
- [Parsing / Text](#parsing--text)
  - [beautifulsoup4](#beautifulsoup4)
  - [markdown-it-py](#markdown-it-py)
  - [mdurl](#mdurl)
  - [mistune](#mistune)
  - [pyparsing](#pyparsing)
  - [soupsieve](#soupsieve)
- [Security / Crypto](#security--crypto)
  - [argon2-cffi](#argon2-cffi)
  - [argon2-cffi-bindings](#argon2-cffi-bindings)
  - [certifi](#certifi)
- [Serialization / Validation](#serialization--validation)
  - [cffi](#cffi)
  - [defusedxml](#defusedxml)
  - [fastjsonschema](#fastjsonschema)
  - [json5](#json5)
  - [jsonpatch](#jsonpatch)
  - [jsonpointer](#jsonpointer)
  - [jsonschema](#jsonschema)
  - [jsonschema-specifications](#jsonschema-specifications)
  - [orjson](#orjson)
  - [pycparser](#pycparser)
  - [pydantic](#pydantic)
  - [pydantic\_core](#pydantic_core)
  - [PyYAML](#pyyaml)
- [System / OS](#system--os)
  - [distro](#distro)
  - [platformdirs](#platformdirs)
  - [psutil](#psutil)
- [Utilities](#utilities)
  - [attrs](#attrs)
  - [click](#click)
  - [decorator](#decorator)
  - [dill](#dill)
  - [packaging](#packaging)
  - [rich](#rich)
  - [ruff](#ruff)
  - [setuptools](#setuptools)
  - [tabulate](#tabulate)
  - [tenacity](#tenacity)
  - [tqdm](#tqdm)
- [Visualization / UI](#visualization--ui)
  - [gradio](#gradio)
  - [gradio\_client](#gradio_client)
  - [ipywidgets](#ipywidgets)
  - [jupyter](#jupyter)
  - [jupyter-console](#jupyter-console)
  - [jupyterlab](#jupyterlab)
  - [jupyterlab\_widgets](#jupyterlab_widgets)
  - [widgetsnbextension](#widgetsnbextension)
- [Web Frameworks](#web-frameworks)
  - [fastapi](#fastapi)
  - [starlette](#starlette)
  - [uvicorn](#uvicorn)
  - [voila](#voila)


## Async / Concurrency

### aiofiles

**Short description:** Async/web networking utility or framework.


**Purpose / Level:** End-user/utility.


### aiohappyeyeballs

**Short description:** Async/web networking utility or framework.


**Purpose / Level:** End-user/utility.


### aiosignal

**Short description:** Async/web networking utility or framework.


**Purpose / Level:** End-user/utility.


### anyio

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### async-lru

**Short description:** Async/web networking utility or framework.


**Purpose / Level:** End-user/utility.


### nest-asyncio

**Short description:** Async/web networking utility or framework.


**Purpose / Level:** End-user/utility.


## Data Science / Math

### matplotlib

**Short description:** 2D plotting and visualization library.


**Purpose / Level:** End-user/visualization.


### matplotlib-inline

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### numpy

**Short description:** Fundamental package for array computing and numerical operations.


**Purpose / Level:** End-user/analysis.


### pandas

**Short description:** Data structures and data analysis tools (DataFrame).


**Purpose / Level:** End-user/analysis.


### scipy

**Short description:** Scientific computing routines and algorithms.


**Purpose / Level:** End-user/analysis.


### seaborn

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### statsmodels

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### sympy

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


## Databases / Storage

### filelock

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### filetype

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### fsspec

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### psycopg2-binary

**Short description:** Database or messaging connectivity library.


**Purpose / Level:** End-user/infrastructure.


### smart_open

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### SQLAlchemy

**Short description:** SQL toolkit and ORM for Python.


**Purpose / Level:** End-user/database.


### zstandard

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


## Developer Tools

### debugpy

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### executing

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### pure_eval

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### stack-data

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### typing-inspection

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### typing_extensions

**Short description:** Backports and extensions for typing.


**Purpose / Level:** Utility/developer.


## Jupyter / Interactive

### ipykernel

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### ipython

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### jupyter_core

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### jupyter_server

**Short description:** Async/web networking utility or framework.


**Purpose / Level:** End-user/utility.


### jupyterlab_server

**Short description:** Async/web networking utility or framework.


**Purpose / Level:** End-user/utility.


### nbconvert

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### nbformat

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### notebook

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


## Machine Learning / AI

### datasets

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### evaluate

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### faiss-cpu

**Short description:** Machine learning / model tooling.


**Purpose / Level:** End-user/ML.


### huggingface-hub

**Short description:** Machine learning / model tooling.


**Purpose / Level:** End-user/ML.


### langchain

**Short description:** Machine learning / model tooling.


**Purpose / Level:** End-user/ML.


### safetensors

**Short description:** Machine learning / model tooling.


**Purpose / Level:** End-user/ML.


### scikit-learn

**Short description:** Machine learning algorithms and utilities.


**Purpose / Level:** End-user/ML.


### tokenizers

**Short description:** Machine learning / model tooling.


**Purpose / Level:** End-user/ML.


### torch

**Short description:** PyTorch deep learning framework.


**Purpose / Level:** End-user/ML.


### torchaudio

**Short description:** Machine learning / model tooling.


**Purpose / Level:** End-user/ML.


### torchvision

**Short description:** Machine learning / model tooling.


**Purpose / Level:** End-user/ML.


### transformers

**Short description:** Hugging Face transformers for pretrained models.


**Purpose / Level:** End-user/ML.


## Miscellaneous

### annotated-doc

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### annotated-types

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### arrow

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### arxiv

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### asttokens

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### babel

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### bleach

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### Brotli

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### catalogue

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### charset-normalizer

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### cloudpathlib

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### comm

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### confection

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### contourpy

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### cycler

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### cymem

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### en_core_web_sm

**Short description:** Async/web networking utility or framework.


**Purpose / Level:** End-user/utility.


### feedparser

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### ffmpy

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### fonttools

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### fqdn

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### frozenlist

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### greenlet

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### groovy

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### h11

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### hf-xet

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### idna

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### ipython_pygments_lexers

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### isoduration

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### jedi

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### Jinja2

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### jiter

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### joblib

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### jupyter-events

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### jupyter-lsp

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### jupyter_client

**Short description:** Async/web networking utility or framework.


**Purpose / Level:** End-user/utility.


### jupyter_server_terminals

**Short description:** Async/web networking utility or framework.


**Purpose / Level:** End-user/utility.


### jupyterlab_pygments

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### kiwisolver

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### langchain-core

**Short description:** Machine learning / model tooling.


**Purpose / Level:** End-user/ML.


### langchain-nvidia-ai-endpoints

**Short description:** Machine learning / model tooling.


**Purpose / Level:** End-user/ML.


### langchain-text-splitters

**Short description:** Machine learning / model tooling.


**Purpose / Level:** End-user/ML.


### langcodes

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### langsmith

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### MarkupSafe

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### mpmath

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### multidict

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### multiprocess

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### murmurhash

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### nbclient

**Short description:** Async/web networking utility or framework.


**Purpose / Level:** End-user/utility.


### networkx

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### notebook_shim

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### ollama

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### openai

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### overrides

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### pandocfilters

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### parso

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### patsy

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### pexpect

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### pillow

**Short description:** Image processing library (PIL fork).


**Purpose / Level:** End-user/image.


### prometheus_client

**Short description:** Async/web networking utility or framework.


**Purpose / Level:** End-user/utility.


### prompt_toolkit

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### propcache

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### ptyprocess

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### pyarrow

**Short description:** Python utility or binding.


**Purpose / Level:** Utility.


### pydub

**Short description:** Python utility or binding.


**Purpose / Level:** Utility.


### Pygments

**Short description:** Python utility or binding.


**Purpose / Level:** Utility.


### PyMuPDF

**Short description:** Python utility or binding.


**Purpose / Level:** Utility.


### python-dateutil

**Short description:** Python utility or binding.


**Purpose / Level:** Utility.


### python-json-logger

**Short description:** Python utility or binding.


**Purpose / Level:** Utility.


### python-multipart

**Short description:** Python utility or binding.


**Purpose / Level:** Utility.


### pytz

**Short description:** Python utility or binding.


**Purpose / Level:** Utility.


### referencing

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### regex

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### requests-toolbelt

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### rfc3339-validator

**Short description:** Data serialization or validation tooling.


**Purpose / Level:** Utility.


### rfc3986-validator

**Short description:** Data serialization or validation tooling.


**Purpose / Level:** Utility.


### rpds-py

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### semantic-version

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### Send2Trash

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### sgmllib3k

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### shellingham

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### six

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### sniffio

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### spacy-legacy

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### spacy-loggers

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### terminado

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### threadpoolctl

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### tinycss2

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### tomlkit

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### tornado

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### traitlets

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### typer

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### types-python-dateutil

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### tzdata

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### uri-template

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### wcwidth

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### webcolors

**Short description:** Async/web networking utility or framework.


**Purpose / Level:** End-user/utility.


### webencodings

**Short description:** Async/web networking utility or framework.


**Purpose / Level:** End-user/utility.


### wrapt

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### xxhash

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### yarl

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


## Natural Language Processing

### blis

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### language_data

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### marisa-trie

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### preshed

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### spacy

**Short description:** Industrial NLP library.


**Purpose / Level:** End-user/NLP.


### srsly

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### thinc

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### wasabi

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### weasel

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


## Networking / HTTP

### aiohttp

**Short description:** Async HTTP client/server framework for asyncio.


**Purpose / Level:** End-user/server-client.


### httpcore

**Short description:** Async/web networking utility or framework.


**Purpose / Level:** End-user/utility.


### httpx

**Short description:** Async/web networking utility or framework.


**Purpose / Level:** End-user/utility.


### requests

**Short description:** Human-friendly HTTP client library.


**Purpose / Level:** End-user.


### safehttpx

**Short description:** Async/web networking utility or framework.


**Purpose / Level:** End-user/utility.


### urllib3

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


## Networking Protocols / Messaging

### pika

**Short description:** Database or messaging connectivity library.


**Purpose / Level:** End-user/infrastructure.


### pyzmq

**Short description:** ZeroMQ bindings for Python.


**Purpose / Level:** Utility/messaging.


### websocket-client

**Short description:** Async/web networking utility or framework.


**Purpose / Level:** End-user/utility.


### websockets

**Short description:** Async/web networking utility or framework.


**Purpose / Level:** End-user/utility.


## Parsing / Text

### beautifulsoup4

**Short description:** HTML and XML parsing library for web scraping.


**Purpose / Level:** End-user/scraping.


### markdown-it-py

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### mdurl

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### mistune

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### pyparsing

**Short description:** Python utility or binding.


**Purpose / Level:** Utility.


### soupsieve

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


## Security / Crypto

### argon2-cffi

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### argon2-cffi-bindings

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### certifi

**Short description:** Mozilla CA bundle for SSL.


**Purpose / Level:** Low-level/SSL.


## Serialization / Validation

### cffi

**Short description:** C Foreign Function Interface for Python.


**Purpose / Level:** Low-level/C interop.


### defusedxml

**Short description:** Data serialization or validation tooling.


**Purpose / Level:** Utility.


### fastjsonschema

**Short description:** Data serialization or validation tooling.


**Purpose / Level:** Utility.


### json5

**Short description:** Data serialization or validation tooling.


**Purpose / Level:** Utility.


### jsonpatch

**Short description:** Data serialization or validation tooling.


**Purpose / Level:** Utility.


### jsonpointer

**Short description:** Data serialization or validation tooling.


**Purpose / Level:** Utility.


### jsonschema

**Short description:** Data serialization or validation tooling.


**Purpose / Level:** Utility.


### jsonschema-specifications

**Short description:** Data serialization or validation tooling.


**Purpose / Level:** Utility.


### orjson

**Short description:** Fast JSON serializer/deserializer.


**Purpose / Level:** Utility.


### pycparser

**Short description:** Python utility or binding.


**Purpose / Level:** Utility.


### pydantic

**Short description:** Data validation using Python type hints.


**Purpose / Level:** End-user/validation.


### pydantic_core

**Short description:** Python utility or binding.


**Purpose / Level:** Utility.


### PyYAML

**Short description:** YAML parser and emitter.


**Purpose / Level:** Utility.


## System / OS

### distro

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### platformdirs

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### psutil

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


## Utilities

### attrs

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### click

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### decorator

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### dill

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### packaging

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### rich

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### ruff

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### setuptools

**Short description:** Build and distribution utilities for Python packages.


**Purpose / Level:** Developer/infrastructure.


### tabulate

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### tenacity

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### tqdm

**Short description:** Progress bar for Python loops.


**Purpose / Level:** End-user/utility.


## Visualization / UI

### gradio

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### gradio_client

**Short description:** Async/web networking utility or framework.


**Purpose / Level:** End-user/utility.


### ipywidgets

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### jupyter

**Short description:** Meta-package for Jupyter interactive environment.


**Purpose / Level:** End-user/interactive.


### jupyter-console

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### jupyterlab

**Short description:** Next-generation web-based user interface for Jupyter.


**Purpose / Level:** End-user/interactive.


### jupyterlab_widgets

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


### widgetsnbextension

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.


## Web Frameworks

### fastapi

**Short description:** High-performance web framework for building APIs.


**Purpose / Level:** End-user/web-framework.


### starlette

**Short description:** Async/web networking utility or framework.


**Purpose / Level:** End-user/utility.


### uvicorn

**Short description:** ASGI server for running async web apps.


**Purpose / Level:** End-user/server.


### voila

**Short description:** General-purpose Python library.


**Purpose / Level:** Utility.

