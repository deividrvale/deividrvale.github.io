---
layout: page
title: Rocq Short Course
permalink: /rocq/
description: >
nav: true
display_categories: [work]
horizontal: true
nav_order: 4
tabs: true
toc:
  sidebar: left
---

On February I am teaching a short course on [Rocq](https://rocq-prover.org).
The course will focus on some basic notions of formalization techniques using dependent types.
This page contains some basic resources for the course.

First, let us check some basic installation steps, so you can run/compile code on your local machine.

<!-- **Remote running (jscoq)**

You can have a limited setup to run simple examples and test basic tactics online.
It can be useful for the first lecture.

[https://jscoq.github.io/scratchpad.html](https://jscoq.github.io/scratchpad.html) -->

# Installation

For a more robust interfacing, it is recommended to get Rocq installed locally.
The official Rocq page is [https://rocq-prover.org](https://rocq-prover.org/), and it contains a lot of resources for beginners and specific installation instruction for your platform, including Windows.

For instance [https://rocq-prover.org/docs](https://rocq-prover.org/docs) list a lot of learning tools, books, and tutorials for users at different levels.

## Installing Opam

Rocq itself is implemented in the [Ocaml](https://ocaml.org) programming language, and as such, most of its libraries are managed by OCaml's own package manager: [opam](https://opam.ocaml.org).
Opam is natively supported by most operating systems natively while Windows is fully supported since ``opam 2.2``.

### Fresh Install

For detailed instructions, please check [https://opam.ocaml.org/doc/Install.html](https://opam.ocaml.org/doc/Install.html).
Here, I will provide the very basic commands to install it, and if you need more detailed instructions or use a specific version of linux, please refer back to the aforementioned link.

{% tabs install-opam %}

{% tab install-opam Windows %}
On the ``powershell`` on windows, use ``winget`` to install opam.
```powershell
winget install Git.Git OCaml.opam
```

WinGet, the **Windows Package Manager**, is available on Windows 11 and later versions of Windows 10.
See the official documentation for additional info.

{% endtab %}

{% tab install-opam macOS %}

On macOS ``brew`` is your easiest option.

```shell
brew install opam
```
{% endtab %}

{% endtabs %}

**Initializing opam**

The first thing to do after installing ``opam`` is to initialize the local environment.
```shell
opam init
```

### Upgrading from an older (forgotten) opam setup

Delete old ``opam`` switches and configurations
```shell
rm -rf ~/.opam
```

reinitialize opam
```shell
opam init
```

<!-- Clean caches
```shell
opam clean -a -s -r
```

Resync ``opam`` with its remotes
```shell
opam init --reinit -ni
``` -->

<!-- Check how many ``switch`` there are. If you never used a switch explicitly probably there is just one called ``default``.
```shell
opam switch
```

```shell
 ❯ opam switch
  #  switch   compiler                                           description
  →  default  ocaml-base-compiler.5.4.0,ocaml-options-vanilla.1  default
```

Removes the default
```shell
  opam switch remove default
``` -->

## Installing Rocq

With ``opam`` initialized, we can install (the latest) version of rocq by simply:
```shell
opam install rocq-prover
```

# The editor

To use an editor you will need the ``rocq-language-server`` package from opam.
```shell
opam install vsrocq-language-server
```

The setup for the course is as follows:
  - [Visual Studio Code](https://code.visualstudio.com)
    - Mandatory Extension
      - [VsRocq](https://marketplace.visualstudio.com/items?itemName=rocq-prover.vsrocq)
    - Optional Extensions
      - [vs-code-icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons)
      - [Unicode Shortcuts](https://marketplace.visualstudio.com/items?itemName=marijnvanwezel.unicode-shortcuts)

# Project Setup

There are two ways of compiling Rocq's files:
  - the ``_CoqProject`` file, which generates a make file for your project based on a specific syntax.
  See [Building Rocq Projects](https://rocq-prover.org/doc/V9.1.0/refman/practical-tools/utilities.html) page for details.
  This is the older way of building coq projects.
  - for modern projects, I recommend building projects using [Dune](https://dune.readthedocs.io/en/latest/rocq.html#rocq-lang).
  See [The Rocq Prover Builder Language](https://dune.readthedocs.io/en/latest/rocq.html#rocq-lang) page on Dune's documentation for a detailed instruction on how to setup a project from scratch.
  In the short course we are going to use ``dune`` to build the projects.
  To install dune on your machine you simply use ``opam``.
```shell
opam install dune
```

# Lectures

## Lecture 0 -- Inductively Defined Types

Materials for the lectures will be added soon.

<a href="{{ base_url }}/assets/pdf/rocq/lecture_0_extra.pdf" class="btn btn-sm z-depth-0" role="button">Extra Exercises</a>

## Lecture 1 -- Natural Numbers

<a href="{{ base_url }}/assets/pdf/rocq/rocq.zip" class="btn btn-sm z-depth-0" role="button">
Rocq files
</a>
