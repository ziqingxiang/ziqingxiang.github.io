---
layout: default
title: Problems
permalink: /problems
---

I list the problems I encountered during my research here. Your comments are welcomed.

## Is the orbit of a certain dot action a linear subspace?

+ $U$: a finite dimensional vector space over $k$.
+ $\rho$: a fixed element of $U$.
+ $G \subseteq \mathrm{SL}(U)$.
+ $V = W \oplus W'$: a subspace of $U$ satisfying
  * $V$ is an invariant subspace (namely, $G V = V$);
  * elements in $W'$ are fixed by $G$ (namely, $G w' = w'$ for $w' \in W'$).
+ Define the dot action $\bullet_U : G \curvearrowright U$
  * $g \bullet_U u := g (u + \rho) - \rho$ for $g \in G$ and $u \in U$.
+ It induces the dot actions $\bullet_V : G \curvearrowright V$
  * $g \bullet_V v := g \bullet_V v$ for $g \in G$ and $v \in V$.
+ It induces the dot action $\bullet_U : G \curvearrowright W$
  * $g \bullet_W w := p_W (g \bullet_V (w, w'))$ for $g \in G$, $w \in W$ and $w' \in W'$ (the result does not depend on the choice of $w'$) where $p_W: (w, w') \mapsto w$ is the projection from $V$ to $W$.

**Problem**: Suppose that the action $\bullet_W : G \curvearrowright W$ is transitive. Is the orbit $G \bullet_V 0_V$ a subspace of $V$?

**Discussion**:

+ $G \bullet_V v = G \bullet_V 0_V + v$ for all $v \in V$.
+ What happens if $k = \mathbb{F}_2$ and $\dim W' = 1$?

**Motivation**:

+ Transvection groups.

## Distributions of zeros of a generating function

+ $p(n)$ : a "good" arithmetic function $\mathbb{N} \to \mathbb{C}$.
+ $q(n) := p(1) p(2) \cdots p(n)$.
+ $f(z)$ : the generating function of inverse of $q(n)$, namely
\[ f(z) := \sum_{n = 0}^{\infty} \frac{1}{q(n)} z^n. \]

**Problem**: Are all zeros of $f$ real?

**Discussion**:
We focus on the case where $p$ is a monic polynomial whose roots are all nonpositive integers.

+ $p(n) =  n$:
  * $f(z) = e^z$, which has no zeros.
+ $p(n) =  n^2$:
  * $f(z)$ is essentially the Bessel function of the first kind, hence all zeros of $f(z)$ are negative real numbers.
+ $p(n) = n^d$:
  * Computer experiments suggest all zeros are real. Can we prove it?
+ $p(n) = n(n+1)/(n+2)$:
  * Computer experiments suggest all zeros are real.

**Motivation**:

+ Special function.
+ Total positivity.
+ Pólya frequency sequence.

## Regular maps to the unit sphere passing through given open sets

+ $k$: a subfield of $\mathbb{C}$.
+ $\mathbb{A}^1_k$: the affine line over $k$.
+ $\mathbb{S}^d_k := \{(x_0, \dots, x_n) : \sum_{i = 0}^n x_i^2 = 1\}$: the $d$-dimensional unit sphere over $k$.
+ $U_1, \dots, U_n$: finitely many open sets of $\mathbb{S}^d(k)$ with respect to classical (not Zariski) topology induced from $\mathbb{C}^{d + 1}$.

**Problem**: Is there an algebraic regular (given by polynomials) map $f \colon \mathbb{A}^1_k \to \mathbb{S}^d_k$ such that the image of the map passing through all given open sets $U_i$?

**Discussions**:

+ If $k'$ is a subfield of $k$, then the existence for $k'$ implies the existence for $k$.
+ No, if $k \subseteq \mathbb{R}$.
+ No, if $d = 1$.
+ Yes, if $k = \mathbb{C}$ and $d$ is sufficiently large compared with $n$.
+ Yes, if we only require $f$ to be a rational map (instead of regular map) passing through given sets.
+ What happens for $k = \mathbb{Q}[i]$?

**Motivation**:

+ Spherical designs.
+ Hilbert's identity.

## Asymptotic formula for Hilbert-Kamke problem "on a circle"

**Problem**: Find the asymptotic formula for the number of solutions of the equations:
\[ \begin{cases}
x_1^n + \dots + x_s^n = N_n, \\
x_1^{n - 1} + \dots + x_s^{n - 1} = N_{n - 1}, \\
\dots \\
x_1 + \dots + x_s = N_1, \\
x_1^2 + y_1^2 = \dots = x_s^2 + y_s^2 = N. \\
\end{cases}\]

**Motivation**:

+ Hilbert-Kamke problem.
+ Spherical designs.

## Finiteness of integral points on the surface $f(x) = z g(y)$

+ $c$: a fixed positive integer.
+ $f(x) := x (x + 1) (x + 2) (x + 3)$.
+ $g(y) := y (y + 1) (y + 2)$.

**Problem**: Are there infinitely many positive integral solutions $(x, y, z)$ to the equation $c f(x) = z g(y)$ satisfying $y \geq x + 2$?

**Discussions**:

+ $c \in \{1, 4\}$:
  * Yes, there is a parametric family of solutions.
  * Computer experiments suggest finiteness except the solutions in the family.
+ $c \notin \{1, 4\}$:
  * Computer experiments suggest finiteness.

**Motivation**:

+ Codes.
+ Combinatorial designs.
+ Faltings's theorem.