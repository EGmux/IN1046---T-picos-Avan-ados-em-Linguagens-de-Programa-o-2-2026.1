# NOTES:  Implementing Product Line Variabilities

## Context
- Why does this project exist?
- What problem does it solve?
- Who is it for?

## Commands
- `cmd1` - what it does
- `cmd2` - what it does

## Configs
- `path/to/config` - what it controls

## Quirks
- Things that don't work as expected
- Workarounds
- Gotchas

## TODO
- [ ] 

## Notes

## assets : [reference]
type: primitive
depends: []
---
content: software product lines share generic and specific assets, a product is a combination of generic assets and especific ones, we want the specific scope to be considerely less than the generic one to improve reusability
notes: 
---

## dependencies must be minimized: [done]
type: sequential
depends: [assets]
---
content: a subset of all combination of depedencies define a product, not all combinatios are valid
notes: 
---

## decision models: [done]
type: sequential
depends: [depedencies]
---
content: set of variability to be resolved, variability can be interrelated
notes: what is a decision model?
---

## Product derivation(push button approach): [reference]
type: extension
depends: []
---
content: 
Depending on the choice of the implementation strategy, a product for a given fea-
ture selection (from requirements analysis) can be generated or composed using
the artifacts developed in domain implementation. Most implementation strategies
discussed in this book support a fully automated generation based on a feature selec-
tion and reusable artifacts—that is, a push-button approach. For example, we select
the artifacts that correspond to selected features and call a composition engine to
combine them into an executable, without further manual intervention
notes: Apel,Batory Feature-Oriented Software Product Lines, pag 26
---

## generatic product line assets: [reference]
type: extension
depends: []
---
content: Literature has already addressed how to create and instantiate generic
product line assets, such as domain models and architectures to
generate instance specific ones [1, 2, 3], yet little attention has been
given on how to actually deal with this genericity at the code level.
notes: the paper
---

## structure of paper: [ongoing]
type: parallel
depends: []
---
content: 
1-implementation comparison
2-early work
3-types of variability
    - mandatory, optional, alternative, mutually inclusive, mutually exclusive
    - scope: functionality, code, platform/environment
    - binding-time: compile, link, runtime and update/post runtime(when software is updated)
4-mental framework for comparison
5-evaluation criteria
notes: 
---

## VOP(Variational Object-oriented Programming): [reference]
type: extension
depends: []
---
content: Mira Mezini defines an oop model with "context depednded behavior variation"
notes: 
---

## Scratch

---
