---
layout: default
title: Tight block design
permalink: /tight-block-design
---

Here we show the source code and the output of the program used in the paper [Classification of tight $$2s$$-designs with $$s \geq 2$$](data/Classification of tight 2s-designs with s geq 2.pdf).

## Mathematica code

We use Mathematica to prove three single variable real inequalities in Proposition 4.3, and calculate explicit upper bounds for $$v$$ in Section 6 for each $$10 \leq s \leq 626$$.

[Source code](data/tight-block-design-Mathematica.m)

## C++ (MPI) code

We use C++ to search all integer triples $$(s, x, y)$$ such that
* $$10 \leq s \leq 287$$;
* $$1 \leq x \leq 15,000,000,000$$;
* $$x + s + 2 \leq y \leq 2 x + 1$$;

and that

* $$\alpha_{s, i} := {s \choose i} \frac{x^{\overline{i}}(x + 1)^{\overline{i}}}{y^{\overline{i}}}$$ is an integer for each $$i \in \{1, 2, 3, 4, 5, 6\}$$.

The [Boost](https://www.boost.org/) libraries are needed to compile the code. We use the 128 bits and 512 bits unsigned integer, and the timer.

[MPI](https://en.wikipedia.org/wiki/Message_Passing_Interface) is used to make the program to run on multiple cores. Please compile the code using an MPI compatible compiler.

[Source code](data/tight-block-design-C++-MPI.zip)

We run the code on 480 2.4GHz cores.
* There are $$125,095,478,214,252$$ triples with integer $$\alpha_{s, 1}$$.
* There are $$25,535,426$$ triples with integer $$\alpha_{s, 1}$$ and $$\alpha_{s, 2}$$.
* There are $$2,742$$ triples with integer $$\alpha_{s, 1}, \alpha_{s, 2}, \alpha_{s, 3}$$.
* There are $$37$$ triples with integer $$\alpha_{s, 1}, \dots, \alpha_{s, 4}$$.
* There are $$9$$ triples with integer $$\alpha_{s, 1}, \dots, \alpha_{s, 5}$$.
* There are $$0$$ triples with integer $$\alpha_{s, 1}, \dots, \alpha_{s, 6}$$.

The raw output could be found below.

[Output](data/tight-block-design-C++-MPI-out.zip)
