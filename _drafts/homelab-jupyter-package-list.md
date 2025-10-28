---
title: "[Doc] Homelab Jupyter Server Python Package List"
date: 2025-10-28 19:10:40 Z
layout: post
---

- [PyPI Packages by Category (with PyPI links)](#pypi-packages-by-category-with-pypi-links)
  - [Compression \& Hashing](#compression--hashing)
    - [xxhash ==3.5.0](#xxhash-350)
  - [Data \& Storage](#data--storage)
    - [fastjsonschema ==2.21.1](#fastjsonschema-2211)
    - [fsspec ==2025.3.0](#fsspec-202530)
    - [json5 ==0.12.0](#json5-0120)
    - [jsonpatch ==1.33](#jsonpatch-133)
    - [jsonpointer ==3.0.0](#jsonpointer-300)
    - [jsonschema ==4.24.0](#jsonschema-4240)
    - [jsonschema-specifications ==2025.4.1](#jsonschema-specifications-202541)
    - [numpy ==2.3.1](#numpy-231)
    - [orjson ==3.11.4](#orjson-3114)
    - [pandas ==2.3.0](#pandas-230)
    - [psycopg2-binary ==2.9.10](#psycopg2-binary-2910)
    - [pyarrow ==21.0.0](#pyarrow-2100)
    - [PyYAML ==6.0.2](#pyyaml-602)
    - [smart\_open ==7.3.0.post1](#smart_open-730post1)
    - [SQLAlchemy ==2.0.41](#sqlalchemy-2041)
    - [zstandard ==0.25.0](#zstandard-0250)
  - [Databases \& Messaging](#databases--messaging)
    - [pika ==1.3.2](#pika-132)
    - [pyzmq ==27.0.0](#pyzmq-2700)
  - [Jupyter \& Interactive](#jupyter--interactive)
    - [ipykernel ==6.29.5](#ipykernel-6295)
    - [ipython ==9.4.0](#ipython-940)
    - [ipython\_pygments\_lexers ==1.1.1](#ipython_pygments_lexers-111)
    - [ipywidgets ==8.1.7](#ipywidgets-817)
    - [jupyter ==1.1.1](#jupyter-111)
    - [jupyter-console ==6.6.3](#jupyter-console-663)
    - [jupyter-events ==0.12.0](#jupyter-events-0120)
    - [jupyter-lsp ==2.2.5](#jupyter-lsp-225)
    - [jupyter\_client ==8.6.3](#jupyter_client-863)
    - [jupyter\_core ==5.8.1](#jupyter_core-581)
    - [jupyter\_server ==2.16.0](#jupyter_server-2160)
    - [jupyter\_server\_terminals ==0.5.3](#jupyter_server_terminals-053)
    - [jupyterlab ==4.4.4](#jupyterlab-444)
    - [jupyterlab\_pygments ==0.3.0](#jupyterlab_pygments-030)
    - [jupyterlab\_server ==2.27.3](#jupyterlab_server-2273)
    - [jupyterlab\_widgets ==3.0.15](#jupyterlab_widgets-3015)
    - [nbconvert ==7.16.6](#nbconvert-7166)
    - [nbformat ==5.10.4](#nbformat-5104)
    - [notebook ==7.4.4](#notebook-744)
    - [notebook\_shim ==0.2.4](#notebook_shim-024)
    - [voila ==0.5.8](#voila-058)
    - [widgetsnbextension ==4.0.14](#widgetsnbextension-4014)
  - [Machine Learning \& AI](#machine-learning--ai)
    - [blis ==1.3.0](#blis-130)
    - [datasets ==4.0.0](#datasets-400)
    - [evaluate ==0.4.5](#evaluate-045)
    - [faiss-cpu ==1.12.0](#faiss-cpu-1120)
    - [gradio ==5.49.1](#gradio-5491)
    - [gradio\_client ==1.13.3](#gradio_client-1133)
    - [huggingface-hub ==0.34.3](#huggingface-hub-0343)
    - [langchain ==0.3.27](#langchain-0327)
    - [langchain-core ==0.3.79](#langchain-core-0379)
    - [langchain-nvidia-ai-endpoints ==0.3.18](#langchain-nvidia-ai-endpoints-0318)
    - [langchain-text-splitters ==0.3.11](#langchain-text-splitters-0311)
    - [langsmith ==0.4.38](#langsmith-0438)
    - [murmurhash ==1.0.13](#murmurhash-1013)
    - [preshed ==3.0.10](#preshed-3010)
    - [safetensors ==0.5.3](#safetensors-053)
    - [scikit-learn ==1.7.0](#scikit-learn-170)
    - [srsly ==2.5.1](#srsly-251)
    - [thinc ==8.3.6](#thinc-836)
    - [tokenizers ==0.21.4](#tokenizers-0214)
    - [torch ==2.7.1+cpu](#torch-271cpu)
    - [torchaudio ==2.7.1+cpu](#torchaudio-271cpu)
    - [torchvision ==0.22.1+cpu](#torchvision-0221cpu)
    - [transformers ==4.55.0](#transformers-4550)
  - [Miscellaneous](#miscellaneous)
    - [annotated-doc ==0.0.3](#annotated-doc-003)
    - [annotated-types ==0.7.0](#annotated-types-070)
    - [anyio ==4.9.0](#anyio-490)
    - [arrow ==1.3.0](#arrow-130)
    - [arxiv ==2.2.0](#arxiv-220)
    - [asttokens ==3.0.0](#asttokens-300)
    - [async-lru ==2.0.5](#async-lru-205)
    - [babel ==2.17.0](#babel-2170)
    - [bleach ==6.2.0](#bleach-620)
    - [Brotli ==1.1.0](#brotli-110)
    - [catalogue ==2.0.10](#catalogue-2010)
    - [cffi ==1.17.1](#cffi-1171)
    - [charset-normalizer ==3.4.2](#charset-normalizer-342)
    - [cloudpathlib ==0.21.1](#cloudpathlib-0211)
    - [comm ==0.2.2](#comm-022)
    - [cycler ==0.12.1](#cycler-0121)
    - [cymem ==2.0.11](#cymem-2011)
    - [distro ==1.9.0](#distro-190)
    - [en\_core\_web\_sm ==https://github.com/explosion/spacy-models/releases/download/en\_core\_web\_sm-3.8.0/en\_core\_web\_sm-3.8.0-py3-none-any.whl#sha256=1932429db727d4bff3deed6b34cfc05df17794f4a52eeb26cf8928f7c1a0fb85](#en_core_web_sm-httpsgithubcomexplosionspacy-modelsreleasesdownloaden_core_web_sm-380en_core_web_sm-380-py3-none-anywhlsha2561932429db727d4bff3deed6b34cfc05df17794f4a52eeb26cf8928f7c1a0fb85)
    - [executing ==2.2.0](#executing-220)
    - [feedparser ==6.0.12](#feedparser-6012)
    - [filelock ==3.18.0](#filelock-3180)
    - [filetype ==1.2.0](#filetype-120)
    - [fonttools ==4.58.5](#fonttools-4585)
    - [fqdn ==1.5.1](#fqdn-151)
    - [frozenlist ==1.7.0](#frozenlist-170)
    - [greenlet ==3.2.3](#greenlet-323)
    - [groovy ==0.1.2](#groovy-012)
    - [hf-xet ==1.1.5](#hf-xet-115)
    - [idna ==3.10](#idna-310)
    - [isoduration ==20.11.0](#isoduration-20110)
    - [jedi ==0.19.2](#jedi-0192)
    - [Jinja2 ==3.1.6](#jinja2-316)
    - [jiter ==0.10.0](#jiter-0100)
    - [langcodes ==3.5.0](#langcodes-350)
    - [MarkupSafe ==3.0.2](#markupsafe-302)
    - [mpmath ==1.3.0](#mpmath-130)
    - [multidict ==6.6.3](#multidict-663)
    - [nbclient ==0.10.2](#nbclient-0102)
    - [nest-asyncio ==1.6.0](#nest-asyncio-160)
    - [networkx ==3.3](#networkx-33)
    - [ollama ==0.5.1](#ollama-051)
    - [openai ==1.95.1](#openai-1951)
    - [pandocfilters ==1.5.1](#pandocfilters-151)
    - [parso ==0.8.4](#parso-084)
    - [patsy ==1.0.1](#patsy-101)
    - [pexpect ==4.9.0](#pexpect-490)
    - [pillow ==11.3.0](#pillow-1130)
    - [prompt\_toolkit ==3.0.51](#prompt_toolkit-3051)
    - [propcache ==0.3.2](#propcache-032)
    - [ptyprocess ==0.7.0](#ptyprocess-070)
    - [pure\_eval ==0.2.3](#pure_eval-023)
    - [pycparser ==2.22](#pycparser-222)
    - [pydantic ==2.11.7](#pydantic-2117)
    - [pydantic\_core ==2.33.2](#pydantic_core-2332)
    - [pydub ==0.25.1](#pydub-0251)
    - [Pygments ==2.19.2](#pygments-2192)
    - [PyMuPDF ==1.26.5](#pymupdf-1265)
    - [python-dateutil ==2.9.0.post0](#python-dateutil-290post0)
    - [python-json-logger ==3.3.0](#python-json-logger-330)
    - [python-multipart ==0.0.20](#python-multipart-0020)
    - [pytz ==2025.2](#pytz-20252)
    - [referencing ==0.36.2](#referencing-0362)
    - [rfc3339-validator ==0.1.4](#rfc3339-validator-014)
    - [rfc3986-validator ==0.1.1](#rfc3986-validator-011)
    - [rpds-py ==0.26.0](#rpds-py-0260)
    - [scipy ==1.16.0](#scipy-1160)
    - [semantic-version ==2.10.0](#semantic-version-2100)
    - [Send2Trash ==1.8.3](#send2trash-183)
    - [sgmllib3k ==1.0.0](#sgmllib3k-100)
    - [shellingham ==1.5.4](#shellingham-154)
    - [six ==1.17.0](#six-1170)
    - [sniffio ==1.3.1](#sniffio-131)
    - [stack-data ==0.6.3](#stack-data-063)
    - [statsmodels ==0.14.5](#statsmodels-0145)
    - [sympy ==1.13.3](#sympy-1133)
    - [tenacity ==9.1.2](#tenacity-912)
    - [terminado ==0.18.1](#terminado-0181)
    - [threadpoolctl ==3.6.0](#threadpoolctl-360)
    - [tomlkit ==0.13.3](#tomlkit-0133)
    - [traitlets ==5.14.3](#traitlets-5143)
    - [types-python-dateutil ==2.9.0.20250516](#types-python-dateutil-29020250516)
    - [typing-inspection ==0.4.1](#typing-inspection-041)
    - [typing\_extensions ==4.14.1](#typing_extensions-4141)
    - [tzdata ==2025.2](#tzdata-20252)
    - [uri-template ==1.3.0](#uri-template-130)
    - [wcwidth ==0.2.13](#wcwidth-0213)
    - [weasel ==0.4.1](#weasel-041)
    - [webcolors ==24.11.1](#webcolors-24111)
    - [webencodings ==0.5.1](#webencodings-051)
  - [NLP \& Text](#nlp--text)
    - [beautifulsoup4 ==4.13.4](#beautifulsoup4-4134)
    - [language\_data ==1.3.0](#language_data-130)
    - [marisa-trie ==1.2.1](#marisa-trie-121)
    - [markdown-it-py ==3.0.0](#markdown-it-py-300)
    - [mdurl ==0.1.2](#mdurl-012)
    - [mistune ==3.1.3](#mistune-313)
    - [pyparsing ==3.2.3](#pyparsing-323)
    - [regex ==2025.7.34](#regex-2025734)
    - [soupsieve ==2.7](#soupsieve-27)
    - [spacy ==3.8.7](#spacy-387)
    - [spacy-legacy ==3.0.12](#spacy-legacy-3012)
    - [spacy-loggers ==1.0.5](#spacy-loggers-105)
    - [wasabi ==1.1.3](#wasabi-113)
  - [Parsing \& Markup](#parsing--markup)
    - [defusedxml ==0.7.1](#defusedxml-071)
    - [tinycss2 ==1.4.0](#tinycss2-140)
  - [Security \& Crypto](#security--crypto)
    - [argon2-cffi ==25.1.0](#argon2-cffi-2510)
    - [argon2-cffi-bindings ==21.2.0](#argon2-cffi-bindings-2120)
    - [certifi ==2025.6.15](#certifi-2025615)
  - [Utilities \& Dev](#utilities--dev)
    - [attrs ==25.3.0](#attrs-2530)
    - [click ==8.2.1](#click-821)
    - [confection ==0.1.5](#confection-015)
    - [debugpy ==1.8.14](#debugpy-1814)
    - [decorator ==5.2.1](#decorator-521)
    - [dill ==0.3.8](#dill-038)
    - [joblib ==1.5.1](#joblib-151)
    - [multiprocess ==0.70.16](#multiprocess-07016)
    - [overrides ==7.7.0](#overrides-770)
    - [packaging ==25.0](#packaging-250)
    - [platformdirs ==4.3.8](#platformdirs-438)
    - [prometheus\_client ==0.22.1](#prometheus_client-0221)
    - [psutil ==7.0.0](#psutil-700)
    - [rich ==14.1.0](#rich-1410)
    - [ruff ==0.14.2](#ruff-0142)
    - [setuptools ==80.9.0](#setuptools-8090)
    - [tqdm ==4.67.1](#tqdm-4671)
    - [typer ==0.16.0](#typer-0160)
    - [wrapt ==1.17.2](#wrapt-1172)
  - [Visualization \& Plotting](#visualization--plotting)
    - [contourpy ==1.3.2](#contourpy-132)
    - [kiwisolver ==1.4.8](#kiwisolver-148)
    - [matplotlib ==3.10.3](#matplotlib-3103)
    - [matplotlib-inline ==0.1.7](#matplotlib-inline-017)
    - [seaborn ==0.13.2](#seaborn-0132)
    - [tabulate ==0.9.0](#tabulate-090)
  - [Web \& APIs](#web--apis)
    - [aiofiles ==24.1.0](#aiofiles-2410)
    - [aiohappyeyeballs ==2.6.1](#aiohappyeyeballs-261)
    - [aiohttp ==3.12.15](#aiohttp-31215)
    - [aiosignal ==1.4.0](#aiosignal-140)
    - [fastapi ==0.120.0](#fastapi-01200)
    - [ffmpy ==0.6.4](#ffmpy-064)
    - [h11 ==0.16.0](#h11-0160)
    - [httpcore ==1.0.9](#httpcore-109)
    - [httpx ==0.28.1](#httpx-0281)
    - [requests ==2.32.4](#requests-2324)
    - [requests-toolbelt ==1.0.0](#requests-toolbelt-100)
    - [safehttpx ==0.1.7](#safehttpx-017)
    - [starlette ==0.48.0](#starlette-0480)
    - [tornado ==6.5.1](#tornado-651)
    - [urllib3 ==2.5.0](#urllib3-250)
    - [uvicorn ==0.38.0](#uvicorn-0380)
    - [websocket-client ==1.8.0](#websocket-client-180)
    - [websockets ==15.0.1](#websockets-1501)
    - [yarl ==1.20.1](#yarl-1201)

# PyPI Packages by Category (with PyPI links)

Generated from your full package list. Each package links to its PyPI project page.

## Compression & Hashing

### [xxhash](https://pypi.org/project/xxhash/) ==3.5.0

**Short description:** Compression and hashing utilities.


**Category:** Compression & Hashing.


## Data & Storage

### [fastjsonschema](https://pypi.org/project/fastjsonschema/) ==2.21.1

**Short description:** Data serialization or validation tooling.


**Category:** Data & Storage.


### [fsspec](https://pypi.org/project/fsspec/) ==2025.3.0

**Short description:** Database or storage connectivity.


**Category:** Data & Storage.


### [json5](https://pypi.org/project/json5/) ==0.12.0

**Short description:** Data serialization or validation tooling.


**Category:** Data & Storage.


### [jsonpatch](https://pypi.org/project/jsonpatch/) ==1.33

**Short description:** Data serialization or validation tooling.


**Category:** Data & Storage.


### [jsonpointer](https://pypi.org/project/jsonpointer/) ==3.0.0

**Short description:** Data serialization or validation tooling.


**Category:** Data & Storage.


### [jsonschema](https://pypi.org/project/jsonschema/) ==4.24.0

**Short description:** Data serialization or validation tooling.


**Category:** Data & Storage.


### [jsonschema-specifications](https://pypi.org/project/jsonschema-specifications/) ==2025.4.1

**Short description:** Data serialization or validation tooling.


**Category:** Data & Storage.


### [numpy](https://pypi.org/project/numpy/) ==2.3.1

**Short description:** Fundamental numerical array computing library.


**Category:** Data & Storage.


### [orjson](https://pypi.org/project/orjson/) ==3.11.4

**Short description:** Data serialization or validation tooling.


**Category:** Data & Storage.


### [pandas](https://pypi.org/project/pandas/) ==2.3.0

**Short description:** Data analysis and DataFrame tools.


**Category:** Data & Storage.


### [psycopg2-binary](https://pypi.org/project/psycopg2-binary/) ==2.9.10

**Short description:** Database or storage connectivity.


**Category:** Data & Storage.


### [pyarrow](https://pypi.org/project/pyarrow/) ==21.0.0

**Short description:** Database or storage connectivity.


**Category:** Data & Storage.


### [PyYAML](https://pypi.org/project/PyYAML/) ==6.0.2

**Short description:** Data serialization or validation tooling.


**Category:** Data & Storage.


### [smart_open](https://pypi.org/project/smart_open/) ==7.3.0.post1

**Short description:** Database or storage connectivity.


**Category:** Data & Storage.


### [SQLAlchemy](https://pypi.org/project/SQLAlchemy/) ==2.0.41

**Short description:** Database or storage connectivity.


**Category:** Data & Storage.


### [zstandard](https://pypi.org/project/zstandard/) ==0.25.0

**Short description:** Compression and hashing utilities.


**Category:** Data & Storage.


## Databases & Messaging

### [pika](https://pypi.org/project/pika/) ==1.3.2

**Short description:** General-purpose Python utility or library.


**Category:** Databases & Messaging.


### [pyzmq](https://pypi.org/project/pyzmq/) ==27.0.0

**Short description:** General-purpose Python utility or library.


**Category:** Databases & Messaging.


## Jupyter & Interactive

### [ipykernel](https://pypi.org/project/ipykernel/) ==6.29.5

**Short description:** Interactive computing / notebook tooling.


**Category:** Jupyter & Interactive.


### [ipython](https://pypi.org/project/ipython/) ==9.4.0

**Short description:** Interactive computing / notebook tooling.


**Category:** Jupyter & Interactive.


### [ipython_pygments_lexers](https://pypi.org/project/ipython_pygments_lexers/) ==1.1.1

**Short description:** Interactive computing / notebook tooling.


**Category:** Jupyter & Interactive.


### [ipywidgets](https://pypi.org/project/ipywidgets/) ==8.1.7

**Short description:** Interactive computing / notebook tooling.


**Category:** Jupyter & Interactive.


### [jupyter](https://pypi.org/project/jupyter/) ==1.1.1

**Short description:** Meta-package for Jupyter interactive tools.


**Category:** Jupyter & Interactive.


### [jupyter-console](https://pypi.org/project/jupyter-console/) ==6.6.3

**Short description:** Interactive computing / notebook tooling.


**Category:** Jupyter & Interactive.


### [jupyter-events](https://pypi.org/project/jupyter-events/) ==0.12.0

**Short description:** Interactive computing / notebook tooling.


**Category:** Jupyter & Interactive.


### [jupyter-lsp](https://pypi.org/project/jupyter-lsp/) ==2.2.5

**Short description:** Interactive computing / notebook tooling.


**Category:** Jupyter & Interactive.


### [jupyter_client](https://pypi.org/project/jupyter_client/) ==8.6.3

**Short description:** Interactive computing / notebook tooling.


**Category:** Jupyter & Interactive.


### [jupyter_core](https://pypi.org/project/jupyter_core/) ==5.8.1

**Short description:** Interactive computing / notebook tooling.


**Category:** Jupyter & Interactive.


### [jupyter_server](https://pypi.org/project/jupyter_server/) ==2.16.0

**Short description:** Interactive computing / notebook tooling.


**Category:** Jupyter & Interactive.


### [jupyter_server_terminals](https://pypi.org/project/jupyter_server_terminals/) ==0.5.3

**Short description:** Interactive computing / notebook tooling.


**Category:** Jupyter & Interactive.


### [jupyterlab](https://pypi.org/project/jupyterlab/) ==4.4.4

**Short description:** Interactive computing / notebook tooling.


**Category:** Jupyter & Interactive.


### [jupyterlab_pygments](https://pypi.org/project/jupyterlab_pygments/) ==0.3.0

**Short description:** Interactive computing / notebook tooling.


**Category:** Jupyter & Interactive.


### [jupyterlab_server](https://pypi.org/project/jupyterlab_server/) ==2.27.3

**Short description:** Interactive computing / notebook tooling.


**Category:** Jupyter & Interactive.


### [jupyterlab_widgets](https://pypi.org/project/jupyterlab_widgets/) ==3.0.15

**Short description:** Interactive computing / notebook tooling.


**Category:** Jupyter & Interactive.


### [nbconvert](https://pypi.org/project/nbconvert/) ==7.16.6

**Short description:** General-purpose Python utility or library.


**Category:** Jupyter & Interactive.


### [nbformat](https://pypi.org/project/nbformat/) ==5.10.4

**Short description:** General-purpose Python utility or library.


**Category:** Jupyter & Interactive.


### [notebook](https://pypi.org/project/notebook/) ==7.4.4

**Short description:** Interactive computing / notebook tooling.


**Category:** Jupyter & Interactive.


### [notebook_shim](https://pypi.org/project/notebook_shim/) ==0.2.4

**Short description:** Interactive computing / notebook tooling.


**Category:** Jupyter & Interactive.


### [voila](https://pypi.org/project/voila/) ==0.5.8

**Short description:** Interactive computing / notebook tooling.


**Category:** Jupyter & Interactive.


### [widgetsnbextension](https://pypi.org/project/widgetsnbextension/) ==4.0.14

**Short description:** Interactive computing / notebook tooling.


**Category:** Jupyter & Interactive.


## Machine Learning & AI

### [blis](https://pypi.org/project/blis/) ==1.3.0

**Short description:** General-purpose Python utility or library.


**Category:** Machine Learning & AI.


### [datasets](https://pypi.org/project/datasets/) ==4.0.0

**Short description:** General-purpose Python utility or library.


**Category:** Machine Learning & AI.


### [evaluate](https://pypi.org/project/evaluate/) ==0.4.5

**Short description:** General-purpose Python utility or library.


**Category:** Machine Learning & AI.


### [faiss-cpu](https://pypi.org/project/faiss-cpu/) ==1.12.0

**Short description:** Machine learning / model tooling.


**Category:** Machine Learning & AI.


### [gradio](https://pypi.org/project/gradio/) ==5.49.1

**Short description:** General-purpose Python utility or library.


**Category:** Machine Learning & AI.


### [gradio_client](https://pypi.org/project/gradio_client/) ==1.13.3

**Short description:** General-purpose Python utility or library.


**Category:** Machine Learning & AI.


### [huggingface-hub](https://pypi.org/project/huggingface-hub/) ==0.34.3

**Short description:** Machine learning / model tooling.


**Category:** Machine Learning & AI.


### [langchain](https://pypi.org/project/langchain/) ==0.3.27

**Short description:** Machine learning / model tooling.


**Category:** Machine Learning & AI.


### [langchain-core](https://pypi.org/project/langchain-core/) ==0.3.79

**Short description:** Machine learning / model tooling.


**Category:** Machine Learning & AI.


### [langchain-nvidia-ai-endpoints](https://pypi.org/project/langchain-nvidia-ai-endpoints/) ==0.3.18

**Short description:** Machine learning / model tooling.


**Category:** Machine Learning & AI.


### [langchain-text-splitters](https://pypi.org/project/langchain-text-splitters/) ==0.3.11

**Short description:** Machine learning / model tooling.


**Category:** Machine Learning & AI.


### [langsmith](https://pypi.org/project/langsmith/) ==0.4.38

**Short description:** General-purpose Python utility or library.


**Category:** Machine Learning & AI.


### [murmurhash](https://pypi.org/project/murmurhash/) ==1.0.13

**Short description:** General-purpose Python utility or library.


**Category:** Machine Learning & AI.


### [preshed](https://pypi.org/project/preshed/) ==3.0.10

**Short description:** Parsing or markup utilities.


**Category:** Machine Learning & AI.


### [safetensors](https://pypi.org/project/safetensors/) ==0.5.3

**Short description:** Machine learning / model tooling.


**Category:** Machine Learning & AI.


### [scikit-learn](https://pypi.org/project/scikit-learn/) ==1.7.0

**Short description:** Machine learning algorithms and utilities.


**Category:** Machine Learning & AI.


### [srsly](https://pypi.org/project/srsly/) ==2.5.1

**Short description:** General-purpose Python utility or library.


**Category:** Machine Learning & AI.


### [thinc](https://pypi.org/project/thinc/) ==8.3.6

**Short description:** General-purpose Python utility or library.


**Category:** Machine Learning & AI.


### [tokenizers](https://pypi.org/project/tokenizers/) ==0.21.4

**Short description:** Machine learning / model tooling.


**Category:** Machine Learning & AI.


### [torch](https://pypi.org/project/torch/) ==2.7.1+cpu

**Short description:** PyTorch deep learning framework.


**Category:** Machine Learning & AI.


### [torchaudio](https://pypi.org/project/torchaudio/) ==2.7.1+cpu

**Short description:** General-purpose Python utility or library.


**Category:** Machine Learning & AI.


### [torchvision](https://pypi.org/project/torchvision/) ==0.22.1+cpu

**Short description:** General-purpose Python utility or library.


**Category:** Machine Learning & AI.


### [transformers](https://pypi.org/project/transformers/) ==4.55.0

**Short description:** Hugging Face transformer models and utilities.


**Category:** Machine Learning & AI.


## Miscellaneous

### [annotated-doc](https://pypi.org/project/annotated-doc/) ==0.0.3

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [annotated-types](https://pypi.org/project/annotated-types/) ==0.7.0

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [anyio](https://pypi.org/project/anyio/) ==4.9.0

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [arrow](https://pypi.org/project/arrow/) ==1.3.0

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [arxiv](https://pypi.org/project/arxiv/) ==2.2.0

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [asttokens](https://pypi.org/project/asttokens/) ==3.0.0

**Short description:** Machine learning / model tooling.


**Category:** Miscellaneous.


### [async-lru](https://pypi.org/project/async-lru/) ==2.0.5

**Short description:** Async or HTTP networking utility/framework.


**Category:** Miscellaneous.


### [babel](https://pypi.org/project/babel/) ==2.17.0

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [bleach](https://pypi.org/project/bleach/) ==6.2.0

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [Brotli](https://pypi.org/project/Brotli/) ==1.1.0

**Short description:** Compression and hashing utilities.


**Category:** Miscellaneous.


### [catalogue](https://pypi.org/project/catalogue/) ==2.0.10

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [cffi](https://pypi.org/project/cffi/) ==1.17.1

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [charset-normalizer](https://pypi.org/project/charset-normalizer/) ==3.4.2

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [cloudpathlib](https://pypi.org/project/cloudpathlib/) ==0.21.1

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [comm](https://pypi.org/project/comm/) ==0.2.2

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [cycler](https://pypi.org/project/cycler/) ==0.12.1

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [cymem](https://pypi.org/project/cymem/) ==2.0.11

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [distro](https://pypi.org/project/distro/) ==1.9.0

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [en_core_web_sm](https://github.com/explosion/spacy-models/releases/download/en_core_web_sm-3.8.0/en_core_web_sm-3.8.0-py3-none-any.whl) ==https://github.com/explosion/spacy-models/releases/download/en_core_web_sm-3.8.0/en_core_web_sm-3.8.0-py3-none-any.whl#sha256=1932429db727d4bff3deed6b34cfc05df17794f4a52eeb26cf8928f7c1a0fb85

**Short description:** Parsing or markup utilities.


**Category:** Miscellaneous.


### [executing](https://pypi.org/project/executing/) ==2.2.0

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [feedparser](https://pypi.org/project/feedparser/) ==6.0.12

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [filelock](https://pypi.org/project/filelock/) ==3.18.0

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [filetype](https://pypi.org/project/filetype/) ==1.2.0

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [fonttools](https://pypi.org/project/fonttools/) ==4.58.5

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [fqdn](https://pypi.org/project/fqdn/) ==1.5.1

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [frozenlist](https://pypi.org/project/frozenlist/) ==1.7.0

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [greenlet](https://pypi.org/project/greenlet/) ==3.2.3

**Short description:** Parsing or markup utilities.


**Category:** Miscellaneous.


### [groovy](https://pypi.org/project/groovy/) ==0.1.2

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [hf-xet](https://pypi.org/project/hf-xet/) ==1.1.5

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [idna](https://pypi.org/project/idna/) ==3.10

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [isoduration](https://pypi.org/project/isoduration/) ==20.11.0

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [jedi](https://pypi.org/project/jedi/) ==0.19.2

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [Jinja2](https://pypi.org/project/Jinja2/) ==3.1.6

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [jiter](https://pypi.org/project/jiter/) ==0.10.0

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [langcodes](https://pypi.org/project/langcodes/) ==3.5.0

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [MarkupSafe](https://pypi.org/project/MarkupSafe/) ==3.0.2

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [mpmath](https://pypi.org/project/mpmath/) ==1.3.0

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [multidict](https://pypi.org/project/multidict/) ==6.6.3

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [nbclient](https://pypi.org/project/nbclient/) ==0.10.2

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [nest-asyncio](https://pypi.org/project/nest-asyncio/) ==1.6.0

**Short description:** Async or HTTP networking utility/framework.


**Category:** Miscellaneous.


### [networkx](https://pypi.org/project/networkx/) ==3.3

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [ollama](https://pypi.org/project/ollama/) ==0.5.1

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [openai](https://pypi.org/project/openai/) ==1.95.1

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [pandocfilters](https://pypi.org/project/pandocfilters/) ==1.5.1

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [parso](https://pypi.org/project/parso/) ==0.8.4

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [patsy](https://pypi.org/project/patsy/) ==1.0.1

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [pexpect](https://pypi.org/project/pexpect/) ==4.9.0

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [pillow](https://pypi.org/project/pillow/) ==11.3.0

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [prompt_toolkit](https://pypi.org/project/prompt_toolkit/) ==3.0.51

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [propcache](https://pypi.org/project/propcache/) ==0.3.2

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [ptyprocess](https://pypi.org/project/ptyprocess/) ==0.7.0

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [pure_eval](https://pypi.org/project/pure_eval/) ==0.2.3

**Short description:** Parsing or markup utilities.


**Category:** Miscellaneous.


### [pycparser](https://pypi.org/project/pycparser/) ==2.22

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [pydantic](https://pypi.org/project/pydantic/) ==2.11.7

**Short description:** Data serialization or validation tooling.


**Category:** Miscellaneous.


### [pydantic_core](https://pypi.org/project/pydantic_core/) ==2.33.2

**Short description:** Data serialization or validation tooling.


**Category:** Miscellaneous.


### [pydub](https://pypi.org/project/pydub/) ==0.25.1

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [Pygments](https://pypi.org/project/Pygments/) ==2.19.2

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [PyMuPDF](https://pypi.org/project/PyMuPDF/) ==1.26.5

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [python-dateutil](https://pypi.org/project/python-dateutil/) ==2.9.0.post0

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [python-json-logger](https://pypi.org/project/python-json-logger/) ==3.3.0

**Short description:** Data serialization or validation tooling.


**Category:** Miscellaneous.


### [python-multipart](https://pypi.org/project/python-multipart/) ==0.0.20

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [pytz](https://pypi.org/project/pytz/) ==2025.2

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [referencing](https://pypi.org/project/referencing/) ==0.36.2

**Short description:** Parsing or markup utilities.


**Category:** Miscellaneous.


### [rfc3339-validator](https://pypi.org/project/rfc3339-validator/) ==0.1.4

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [rfc3986-validator](https://pypi.org/project/rfc3986-validator/) ==0.1.1

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [rpds-py](https://pypi.org/project/rpds-py/) ==0.26.0

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [scipy](https://pypi.org/project/scipy/) ==1.16.0

**Short description:** Scientific computing algorithms and routines.


**Category:** Miscellaneous.


### [semantic-version](https://pypi.org/project/semantic-version/) ==2.10.0

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [Send2Trash](https://pypi.org/project/Send2Trash/) ==1.8.3

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [sgmllib3k](https://pypi.org/project/sgmllib3k/) ==1.0.0

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [shellingham](https://pypi.org/project/shellingham/) ==1.5.4

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [six](https://pypi.org/project/six/) ==1.17.0

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [sniffio](https://pypi.org/project/sniffio/) ==1.3.1

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [stack-data](https://pypi.org/project/stack-data/) ==0.6.3

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [statsmodels](https://pypi.org/project/statsmodels/) ==0.14.5

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [sympy](https://pypi.org/project/sympy/) ==1.13.3

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [tenacity](https://pypi.org/project/tenacity/) ==9.1.2

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [terminado](https://pypi.org/project/terminado/) ==0.18.1

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [threadpoolctl](https://pypi.org/project/threadpoolctl/) ==3.6.0

**Short description:** Parsing or markup utilities.


**Category:** Miscellaneous.


### [tomlkit](https://pypi.org/project/tomlkit/) ==0.13.3

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [traitlets](https://pypi.org/project/traitlets/) ==5.14.3

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [types-python-dateutil](https://pypi.org/project/types-python-dateutil/) ==2.9.0.20250516

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [typing-inspection](https://pypi.org/project/typing-inspection/) ==0.4.1

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [typing_extensions](https://pypi.org/project/typing_extensions/) ==4.14.1

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [tzdata](https://pypi.org/project/tzdata/) ==2025.2

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [uri-template](https://pypi.org/project/uri-template/) ==1.3.0

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [wcwidth](https://pypi.org/project/wcwidth/) ==0.2.13

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [weasel](https://pypi.org/project/weasel/) ==0.4.1

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [webcolors](https://pypi.org/project/webcolors/) ==24.11.1

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


### [webencodings](https://pypi.org/project/webencodings/) ==0.5.1

**Short description:** General-purpose Python utility or library.


**Category:** Miscellaneous.


## NLP & Text

### [beautifulsoup4](https://pypi.org/project/beautifulsoup4/) ==4.13.4

**Short description:** Parsing or markup utilities.


**Category:** NLP & Text.


### [language_data](https://pypi.org/project/language_data/) ==1.3.0

**Short description:** General-purpose Python utility or library.


**Category:** NLP & Text.


### [marisa-trie](https://pypi.org/project/marisa-trie/) ==1.2.1

**Short description:** General-purpose Python utility or library.


**Category:** NLP & Text.


### [markdown-it-py](https://pypi.org/project/markdown-it-py/) ==3.0.0

**Short description:** Parsing or markup utilities.


**Category:** NLP & Text.


### [mdurl](https://pypi.org/project/mdurl/) ==0.1.2

**Short description:** Parsing or markup utilities.


**Category:** NLP & Text.


### [mistune](https://pypi.org/project/mistune/) ==3.1.3

**Short description:** Parsing or markup utilities.


**Category:** NLP & Text.


### [pyparsing](https://pypi.org/project/pyparsing/) ==3.2.3

**Short description:** Parsing or markup utilities.


**Category:** NLP & Text.


### [regex](https://pypi.org/project/regex/) ==2025.7.34

**Short description:** Parsing or markup utilities.


**Category:** NLP & Text.


### [soupsieve](https://pypi.org/project/soupsieve/) ==2.7

**Short description:** Parsing or markup utilities.


**Category:** NLP & Text.


### [spacy](https://pypi.org/project/spacy/) ==3.8.7

**Short description:** Industrial natural language processing.


**Category:** NLP & Text.


### [spacy-legacy](https://pypi.org/project/spacy-legacy/) ==3.0.12

**Short description:** General-purpose Python utility or library.


**Category:** NLP & Text.


### [spacy-loggers](https://pypi.org/project/spacy-loggers/) ==1.0.5

**Short description:** General-purpose Python utility or library.


**Category:** NLP & Text.


### [wasabi](https://pypi.org/project/wasabi/) ==1.1.3

**Short description:** General-purpose Python utility or library.


**Category:** NLP & Text.


## Parsing & Markup

### [defusedxml](https://pypi.org/project/defusedxml/) ==0.7.1

**Short description:** General-purpose Python utility or library.


**Category:** Parsing & Markup.


### [tinycss2](https://pypi.org/project/tinycss2/) ==1.4.0

**Short description:** Parsing or markup utilities.


**Category:** Parsing & Markup.


## Security & Crypto

### [argon2-cffi](https://pypi.org/project/argon2-cffi/) ==25.1.0

**Short description:** General-purpose Python utility or library.


**Category:** Security & Crypto.


### [argon2-cffi-bindings](https://pypi.org/project/argon2-cffi-bindings/) ==21.2.0

**Short description:** General-purpose Python utility or library.


**Category:** Security & Crypto.


### [certifi](https://pypi.org/project/certifi/) ==2025.6.15

**Short description:** General-purpose Python utility or library.


**Category:** Security & Crypto.


## Utilities & Dev

### [attrs](https://pypi.org/project/attrs/) ==25.3.0

**Short description:** General-purpose Python utility or library.


**Category:** Utilities & Dev.


### [click](https://pypi.org/project/click/) ==8.2.1

**Short description:** General-purpose Python utility or library.


**Category:** Utilities & Dev.


### [confection](https://pypi.org/project/confection/) ==0.1.5

**Short description:** General-purpose Python utility or library.


**Category:** Utilities & Dev.


### [debugpy](https://pypi.org/project/debugpy/) ==1.8.14

**Short description:** General-purpose Python utility or library.


**Category:** Utilities & Dev.


### [decorator](https://pypi.org/project/decorator/) ==5.2.1

**Short description:** General-purpose Python utility or library.


**Category:** Utilities & Dev.


### [dill](https://pypi.org/project/dill/) ==0.3.8

**Short description:** General-purpose Python utility or library.


**Category:** Utilities & Dev.


### [joblib](https://pypi.org/project/joblib/) ==1.5.1

**Short description:** General-purpose Python utility or library.


**Category:** Utilities & Dev.


### [multiprocess](https://pypi.org/project/multiprocess/) ==0.70.16

**Short description:** General-purpose Python utility or library.


**Category:** Utilities & Dev.


### [overrides](https://pypi.org/project/overrides/) ==7.7.0

**Short description:** General-purpose Python utility or library.


**Category:** Utilities & Dev.


### [packaging](https://pypi.org/project/packaging/) ==25.0

**Short description:** General-purpose Python utility or library.


**Category:** Utilities & Dev.


### [platformdirs](https://pypi.org/project/platformdirs/) ==4.3.8

**Short description:** General-purpose Python utility or library.


**Category:** Utilities & Dev.


### [prometheus_client](https://pypi.org/project/prometheus_client/) ==0.22.1

**Short description:** General-purpose Python utility or library.


**Category:** Utilities & Dev.


### [psutil](https://pypi.org/project/psutil/) ==7.0.0

**Short description:** General-purpose Python utility or library.


**Category:** Utilities & Dev.


### [rich](https://pypi.org/project/rich/) ==14.1.0

**Short description:** General-purpose Python utility or library.


**Category:** Utilities & Dev.


### [ruff](https://pypi.org/project/ruff/) ==0.14.2

**Short description:** General-purpose Python utility or library.


**Category:** Utilities & Dev.


### [setuptools](https://pypi.org/project/setuptools/) ==80.9.0

**Short description:** General-purpose Python utility or library.


**Category:** Utilities & Dev.


### [tqdm](https://pypi.org/project/tqdm/) ==4.67.1

**Short description:** General-purpose Python utility or library.


**Category:** Utilities & Dev.


### [typer](https://pypi.org/project/typer/) ==0.16.0

**Short description:** General-purpose Python utility or library.


**Category:** Utilities & Dev.


### [wrapt](https://pypi.org/project/wrapt/) ==1.17.2

**Short description:** General-purpose Python utility or library.


**Category:** Utilities & Dev.


## Visualization & Plotting

### [contourpy](https://pypi.org/project/contourpy/) ==1.3.2

**Short description:** Visualization and plotting.


**Category:** Visualization & Plotting.


### [kiwisolver](https://pypi.org/project/kiwisolver/) ==1.4.8

**Short description:** Visualization and plotting.


**Category:** Visualization & Plotting.


### [matplotlib](https://pypi.org/project/matplotlib/) ==3.10.3

**Short description:** 2D plotting and visualization library.


**Category:** Visualization & Plotting.


### [matplotlib-inline](https://pypi.org/project/matplotlib-inline/) ==0.1.7

**Short description:** Visualization and plotting.


**Category:** Visualization & Plotting.


### [seaborn](https://pypi.org/project/seaborn/) ==0.13.2

**Short description:** Visualization and plotting.


**Category:** Visualization & Plotting.


### [tabulate](https://pypi.org/project/tabulate/) ==0.9.0

**Short description:** General-purpose Python utility or library.


**Category:** Visualization & Plotting.


## Web & APIs

### [aiofiles](https://pypi.org/project/aiofiles/) ==24.1.0

**Short description:** Async or HTTP networking utility/framework.


**Category:** Web & APIs.


### [aiohappyeyeballs](https://pypi.org/project/aiohappyeyeballs/) ==2.6.1

**Short description:** Async or HTTP networking utility/framework.


**Category:** Web & APIs.


### [aiohttp](https://pypi.org/project/aiohttp/) ==3.12.15

**Short description:** Async or HTTP networking utility/framework.


**Category:** Web & APIs.


### [aiosignal](https://pypi.org/project/aiosignal/) ==1.4.0

**Short description:** Async or HTTP networking utility/framework.


**Category:** Web & APIs.


### [fastapi](https://pypi.org/project/fastapi/) ==0.120.0

**Short description:** General-purpose Python utility or library.


**Category:** Web & APIs.


### [ffmpy](https://pypi.org/project/ffmpy/) ==0.6.4

**Short description:** General-purpose Python utility or library.


**Category:** Web & APIs.


### [h11](https://pypi.org/project/h11/) ==0.16.0

**Short description:** General-purpose Python utility or library.


**Category:** Web & APIs.


### [httpcore](https://pypi.org/project/httpcore/) ==1.0.9

**Short description:** Async or HTTP networking utility/framework.


**Category:** Web & APIs.


### [httpx](https://pypi.org/project/httpx/) ==0.28.1

**Short description:** Async or HTTP networking utility/framework.


**Category:** Web & APIs.


### [requests](https://pypi.org/project/requests/) ==2.32.4

**Short description:** Human-friendly HTTP client.


**Category:** Web & APIs.


### [requests-toolbelt](https://pypi.org/project/requests-toolbelt/) ==1.0.0

**Short description:** Parsing or markup utilities.


**Category:** Web & APIs.


### [safehttpx](https://pypi.org/project/safehttpx/) ==0.1.7

**Short description:** General-purpose Python utility or library.


**Category:** Web & APIs.


### [starlette](https://pypi.org/project/starlette/) ==0.48.0

**Short description:** General-purpose Python utility or library.


**Category:** Web & APIs.


### [tornado](https://pypi.org/project/tornado/) ==6.5.1

**Short description:** General-purpose Python utility or library.


**Category:** Web & APIs.


### [urllib3](https://pypi.org/project/urllib3/) ==2.5.0

**Short description:** Async or HTTP networking utility/framework.


**Category:** Web & APIs.


### [uvicorn](https://pypi.org/project/uvicorn/) ==0.38.0

**Short description:** General-purpose Python utility or library.


**Category:** Web & APIs.


### [websocket-client](https://pypi.org/project/websocket-client/) ==1.8.0

**Short description:** General-purpose Python utility or library.


**Category:** Web & APIs.


### [websockets](https://pypi.org/project/websockets/) ==15.0.1

**Short description:** General-purpose Python utility or library.


**Category:** Web & APIs.


### [yarl](https://pypi.org/project/yarl/) ==1.20.1

**Short description:** Async or HTTP networking utility/framework.


**Category:** Web & APIs.

