---
layout: page
title: TeReSe 2022
permalink: /terese2022/
description: >
nav: true
display_categories: [work]
horizontal: true
---

The Term Rewriting Seminar (TeReSe) 2022 is an event by the Dutch (and nearby) term rewriting community.
This typically takes the form of an afternoon with presentations from each of the represented universities,
with room for discussions during a joint dinner.

This year's seminar will be in honor of Hans Zantema and will be held in Nijmegen.
The event will take place as a hybrid event.

Zoom link information:
<https://radbouduniversity.zoom.us/j/87577431727?pwd=K01hMzZaMDBLMkN0V1dveGtWS3k3QT09>

---

## Event date

Wednesday, June 8th, 2022<br/>
13:00-17:30, CEST (GMT/UTC +2)

---

## Program

<iframe src="https://calendar.google.com/calendar/embed?height=450&wkst=1&bgcolor=%23ffffff&ctz=Europe%2FAmsterdam&mode=AGENDA&src=YWNhYmFxOG50aHEyNmlzcm1qbHBrdDJrb2dAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&color=%23D81B60" style="border:solid 1px #777" width="800" height="450" frameborder="0" scrolling="no"></iframe>

<!-- | **12: 45 - 13:00** | Arrival |
| **13:00 - 13:20**  | A brief history of the TeReSe Seminar,|
| | by Hans Zantema (TU Eindhoven). |
| **13:20 - 13:50** | Analyzing Expected Runtimes of Probabilistic Integer Programs using Expected Sizes, |
| | by Fabian Meyer (). |
| **13:50 - 14:20** | Talk 2 |
| **14:20 - 14:30** | Coffee Break |
| **14:30 - 15:00** | Talk 3, |
| | by P3 (). |
| **15:00 - 15:30** | Talk 4, |
| | by P4 (). |
| **15:30 - 15:40** | Coffee Break|
| **15:40 - 16:10** | Talk 5, |
| | by P5 (). |
| **16:10 - 16:40** | Talk 6, |
| | by P6 (). | -->


Afterwards there will be a joint TeReSe dinner
for those willing to come.
The dinner will take place
at Romagna, an Italian restaurant
approximately half an hour walking from the university (or 15min by public transport).

---

## Abstract of Talks

**Title:** A Brief History of the Terese Seminar, by Hans Zantema (TU Eindhoven)

**Slides:** <a href="/assets/pdf/terese2022/slides_hans_terese_history.pdf">download</a>

**Abstract:**

Personally I was involved in TeReSe in several flavors:
since 1990 as a seminar at the VU, in being author of the TeReSe book,
and in the national TeReSe meetings we had after the appearance of this book.
In this short talk an overview of this history will be given.

---

**Title:** Analyzing Expected Runtimes of Probabilistic Integer Programs using Expected Sizes, by Fabian Meyer (RWTH Aachen University) <br/>

**Abstract:**

We present a novel modular approach to infer upper bounds on the
expected runtimes of probabilistic integer programs fully automatically.
To this end, it computes bounds on the expected runtimes of program
parts and on the sizes of their variables in an alternating way. To
evaluate its power, we implemented our approach in a version of our
open-source tool KoAT.

---

**Title:** Hydra Battles and AC Termination, by Aart Middeldorp (University of Innsbruck)

**Slides:** <a href="/assets/pdf/terese2022/slides_aart.pdf">download</a>

**Abstract:**

We encode the Battle of Hercules and Hydra as a rewrite system with AC symbols.
Its termination is proved by a new termination criterion for AC rewriting.

---

**Title:** Termination by Tiling with PBPO+ by Roy Overbeek (VU Amsterdam)

**Slides:** <a href="/assets/pdf/terese2022/slides_overbeek.pdf">download</a>

**Abstract:**

PBPO+ is a categorical graph rewriting formalism.
I will give a short introduction to PBPO+, tailored for a general audience.
I then discuss our ongoing work on developing a tiling-based termination method.

---

**Title:** A Rewriting Characterization of Higher-Order Feasibility via Tuple Interpretations, by Deivid Vale (Radboud University)

**Slides:** <a href="/assets/pdf/terese2022/slides_deivid.pdf">download</a>

**Abstract:**

We present an initial rewriting characterization of higher-order feasibility utilizing tuple interpretations.
This program fits nice in the implicit complexity field,
where implicit characterizations of complexity classes is studied.
We show how tuple interpretations can be used to capture higher-order feasible functions,
that is, the class of basic feasible functionals, using the ability to split higher-order cost
information into size and cost components.

---

**Title:** Automatic Analysis of Runtime Complexity for Parallel-Innermost Term Rewriting, by Carsten Fuhs (Birkbeck, University of London)

**Slides:** <a href="/assets/pdf/terese2022/slides_carsten.pdf">download</a>

**Abstract:**

We revisit parallel-innermost term rewriting as a model of parallel computation
on inductive data structures and provide a corresponding notion of runtime complexity
parametric in the size of the start term.
We propose automatic techniques to derive both upper and lower
bounds on parallel complexity of rewriting that enable a
direct reuse of existing techniques for sequential complexity.
The applicability and the precision of the method are demonstrated by the relatively
light effort in extending the program analysis tool AProVE and
by experiments on numerous benchmarks from the literature.

---

**Title:** Inclusion/Exclusion Revisited, by Vincent van Oostrom (University of Bath)

**Slides:** <a href="/assets/pdf/terese2022/slides_vincent.pdf">download</a>

**Abstract**
The inclusion/exclusion principle (IE) for sets is a centuries old,
simple but fundamental counting technique in combinatorics.
Observing the IE for sets is a consequence of the IE for multisets, we
show a (partial, natural) version of the IE holds for commutative residual
algebras (CRAs) proposed by us in 2003 as multiset algebras.
This covers (afawk) extant generalisations of the IE and gives a novel
instance of IE for measurable multisets. CRAs embed into lattice
ordered groups, which allows to regain the original (total, integer)
IE for sets as a consequence of the IE for signed multisets.

---

**Title:** The paint pot problem and common multiples in monoids, by Hans Zantema (TU Eindhoven)

**Slides:** <a href="/assets/pdf/terese2022/slides_hans.pdf">download</a>

**Abstract:**

On a finite sequence of paint pots the following steps are allowed:

1. Swap two consecutive non-empty pots.

2. If the two neighbours of a non-empty pot are empty,
then divide the paint in the middle pot over the two neighbours,
after which these neighbours will be non-empty and the middle one will be empty.
Also, the reverse is allowed: if an empty pot has two neighbours of the same color,
the paint of these neighbours may be put in the middle pot.

Is it possible to start by a sequence in which the first four pots
contain paint in four different colors, and get the first pot empty?

We will solve this remarkably hard problem by a remarkably simple solution,
and show its relation with monoid theory, and give generalizations of this problem,
partly solving an open problem presented by Jan Willem Klop.
After submitting this work it turned out that our results also
follow from an old result from Coxeter on group theory.
The problems can be seen as confluence problems.
Our solutions make use of rewriting,
and are generalizations of the rewriting approach to braids.

## Location

Department of Software Science <br/>
Institute for Computing and Information Sciences <br/>
Faculty of Science <br/>
Mercator 1 Building, Room 0.02<br/>
Toernooiveld 212 <br/>
6525 EC Nijmegen <br/>

<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2465.956971184518!2d5.866594351577225!3d51.82521649513659!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c709c2815abbb9%3A0xdc8f6827ab62b0ea!2sMercator%201!5e0!3m2!1sen!2snl!4v1652193421053!5m2!1sen!2snl" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
</iframe>

## Dinner Location

Betouwstraat 6, 6511 GC Nijmegen <br/>

<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2464.9568326062017!2d5.858482251535611!3d51.84348409379506!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c7085cc9a96639%3A0x40c56045ed5702e7!2sRomagna!5e0!3m2!1sen!2snl!4v1654607800502!5m2!1sen!2snl" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
