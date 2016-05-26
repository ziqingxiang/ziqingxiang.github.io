---
layout: default
title: Thoughts
permalink: /thoughts
---

## Symbolic dynamics over categories

+ $\mathcal{C}$: a preadditive category.
+ $\mathcal{C}^I$: the category of cochain complexes over $\mathcal{C}$ indexed by the interval $I$.
+ $[1] = [1]^I \colon \mathcal{C}^I \to \mathcal{C}^{I + 1}$: the translation functor.
+ $\mathrm{res} = \mathrm{res}^{I, J} \colon \mathcal{C}^I \to \mathcal{C}^J$: for nested interval $I \supseteq J$, the restriction functor.
+ The translation functor and the restriction functor commute.
+ For compact $I$, we give $\mathcal{C}^I$ a discrete topological space structure in which every object is a point.
+ For non-compact $I$, we give $\mathcal{C}^I$ the coarsest topology such that the restriction functors to compact subsets are all continuous. 
+ The category $\mathcal{C}^\mathbb{Z}$ is the *full shift* over $\mathcal{C}$.
+ A *shift space* over $\mathcal{C}$ is a closed full subcategory of $\mathcal{C}^\mathbb{Z}$ that is stable under translation.
+ The maps we are interested in are continuous functors that commute with the translation functor.
+ Each functor $\phi \colon \mathcal{C}^I \to \mathcal{C}$ induces a "sliding block code" which is a functor $\Phi \colon \mathcal{C}^\mathbb{Z} \to \mathcal{C}^\mathbb{Z}$.
+ Two shift spaces $\mathcal{X}$ and $\mathcal{Y}$ are *conjugate* if there are sliding block codes $f \colon \mathcal{X} \to \mathcal{Y}$ and $g \colon \mathcal{Y} \to \mathcal{X}$ such that $g \circ f = \mathrm{Id}_\mathcal{X}$ and $f \circ g = \mathrm{Id}_\mathcal{Y}$.
+ A "classical shift space" is a shift space over a category whose hom-sets are all zero (abelian group).
+ The object set of a shift space over $\mathcal{C}$ is nothing but a classical shift space, whose alphabet consists of all morphisms in $C$, with additional constraints on consecutive morphisms $f$ and $g$, $\mathrm{codom} f = \mathrm{dom} g$.