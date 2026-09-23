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

In September, from the 21st to 24th, I am teaching a short course on [Rocq](https://rocq-prover.org).
The course will focus on some basic notions of intutionistic propositional logic and constructively build the natural numbers as an inductive type and then we use some basic tactics to prove properties about them.
It is part of the "Science Fair Week 2026" at University of Brasilia.
For more information, check [the official course page.](https://sigaa.unb.br/sigaa/link/public/extensao/visualizacaoAcaoExtensao/25218)


**Target Audience.** The course is designed primarily for math/cs students that have interest in proof assistants.
Students that have encountered notions of proofs and proofs by induction on pen-and-paper style would benefit greatly from the formal reasoning required by Rocq.

This page contains instructions for local installation of Rocq, course materials as lecture notes (in Brazillian Portuguese), and some rocq files containing extra explanations and more exercises for those who are interested in more challenging examples.

## Lecture Notes and Rocq Files

**Note.** The lecture notes are in production as I teach the lectures.
So please don't expect a very polished text yet; I would appreciate any feedback on the notes.

**Running Rocq (Coq) on the browser.** You can run/edit most of the files for this course on the browse, check [https://coq.vercel.app/scratchpad.html](https://coq.vercel.app/scratchpad.html).
It also allows you to upload the files and step through them.
Since in this course we are not using any advanced library, this resource might be more useful than the more time consuming effort (see the last section of this page) to locally install the whole Rocq framework on your machine.

- Lecture 0 : Intutionistic Propositional Logic
    > In this lecture, we discuss the two cornerstone notions of logic: propositions and proofs. We shall inspect such notions and learn how to prove basic propositional judgments using the rules of natural deduction. This is also the very first contact some students will have with proof assistants, so we spend some time exploring propositional proofs using Rocq.
  - [lecture notes (writing in progress)](https://deividrvale.github.io/assets/pdf/example_pdf.pdf)
  - [prop_playground.v](https://deividrvale.github.io/assets/rocq/prop_playground.v)

- Lecture 1 : Natural Numbers
  > In this lecture we make an intuitive parallel between inductively defining the set of natural numbers in Rocq with the Peano Axioms we know and love from pen-and-paper mathematics.
  - [nat_playground.v](empty)

- Lecture 2 : A bit of natural more
  > In this next lecture, we define the usual known functions over ℕ like addition, multiplication, and predecessor. Those definitions are done by pattern matching and case analysis.
  - [nat_operators.v](empty)

## External Resources
Those students that wish to continue to use/study Rocq can check for instance [https://rocq-prover.org/docs](https://rocq-prover.org/docs) which list a lot of learning tools, books, and tutorials for users at different levels.

## Installation

For a more robust interfacing, it is recommended to get Rocq installed locally.
The official Rocq page is [https://rocq-prover.org](https://rocq-prover.org/), and it contains a lot of resources for beginners and specific installation instruction for your platform, including Windows.



### Installing Opam

Rocq itself is implemented in the [Ocaml](https://ocaml.org) programming language, and as such, most of its libraries are managed by OCaml's own package manager: [opam](https://opam.ocaml.org).
Opam is natively supported by most operating systems natively while Windows is fully supported since ``opam 2.2``.

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

### Installing Rocq

With ``opam`` initialized, we can install (the latest) version of rocq by simply:
```shell
opam install rocq-prover
```

### Project Setup

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

### The editor

To use an editor you will need the ``rocq-language-server`` package from opam.
```shell
opam install vsrocq-language-server
```

The setup for the course is as follows:
  - [Visual Studio Code](https://code.visualstudio.com)
    - Mandatory Extension
      - [VsCoq](https://marketplace.visualstudio.com/items?itemName=maximedenes.vscoq)
    - Optional Extensions
      - [vs-code-icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons)
      - [Unicode Shortcuts](https://marketplace.visualstudio.com/items?itemName=marijnvanwezel.unicode-shortcuts)
