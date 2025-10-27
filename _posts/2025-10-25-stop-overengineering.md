---
title: "[QUOTE] Stop over-engineering for the sake of following what's being marketed."
---


<blockquote class="twitter-tweet"><p lang="en" dir="ltr">• Kafka for 250 KB/s?<br>• Flink for a meal-planning AI Agent sending 2 msg/s?<br><br>Absolutely absurd. It&#39;s high time we stop recommending these overkill big data solutions for small data problems.<br><br>Thankfully, nature seems to be healing. 🌱<br><br>Two recent blog posts with similar names… <a href="https://t.co/5P5jzg5NAI">pic.twitter.com/5P5jzg5NAI</a></p>&mdash; Stanislav Kozlovski (@BdKozlovski) <a href="https://twitter.com/BdKozlovski/status/1981722864844992790?ref_src=twsrc%5Etfw">October 24, 2025</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>


See also: Kafka's 80% Problem[^1], Flink's 95% problem [^2]


[^1]: <https://aiven.io/blog/apache-kafkas-80-percent-problem>

[^2]: <https://www.tinybird.co/blog/flink-is-95-problem>


<!--
• Kafka for 250 KB/s?
• Flink for a meal-planning AI Agent sending 2 msg/s?

Absolutely absurd. It's high time we stop recommending these overkill big data solutions for small data problems.

Thankfully, nature seems to be healing. 🌱

Two recent blog posts with similar names caught my attention - Kafka's 80% problem and Flink's 95% problem.

They had the courage to call out the elephant in the room - that most big data solutions are overkill for the majority of use cases.

Despite the blogs coming from vendors (likely biased), I see a lot of truth in what's said.

Nevertheless, the trend they're riding is undeniable. Ever since the zero interest rate environment ended, we've only seen a decline in these types of ultra-complex distributed infra software products.

When speculative money and high growth stopped being abundant, organizations seemed to realize the obvious - we need simple solutions for simple problems.

Most problems are simple, but the solutions being marketed are anything but. Kafka has 300+ configs. Flink has more than 700... 💀

Let's stop pretending every dataset needs a highly available distributed cluster. It's no question we're seeing the rise of "Small Data" 💡

SQLite and especially DuckDB showed the world that simple, embedded, dev-friendly infra works great for the majority of use cases.

Not only that. They even OUTPERFORM the distributed alternatives.
👉 For example, Zach Wilson at the Data Engineer blog recently posted a benchmark of DuckDB vs Spark showing DuckDB was 5x faster (!) for 500 million (!) row tables.

...how many businesses have more than 500m rows?

Stop over-engineering for the sake of following what's being marketed.

The best solution to a problem is the most practical one. 💡
-->

