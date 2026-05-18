# Residue-Aware Computation as Groupoid Traversal Under Irreducible Obstruction

## Abstract

We emphasize that the term substrate denotes a modeling interface rather than an ontologically privileged base; all quantities are defined relative to admissible encodings and representations, preventing spurious closure under self-referential modeling.
We formalize residue-aware computation as controlled traversal on a task-admissible representation groupoid induced by physical measurement. A computational episode begins with a modeled substrate state s in S, an admissible encoding map E, and a local representation object r in a representation groupoid G_T. Importantly, the substrate is not treated as an ontologically privileged base, but as a modeling interface relative to admissible encodings, preventing collapse into a falsely grounded representation. Apparent task difficulty depends on both encoding and representation. Intrinsic difficulty is the residual obstruction that remains after all admissible re-encodings and representational traversals. This defines an invariant, the irreducible residue.
We formalize residue-aware computation as controlled traversal on a task-admissible representation groupoid induced by physical measurement. A computational episode begins with a physical substrate state s in S, an admissible encoding map E, and a local representation object r in a representation groupoid G_T. Apparent task difficulty depends on both encoding and representation. Intrinsic difficulty is the residual obstruction that remains after all admissible re-encodings and representational traversals. This defines an invariant, the irreducible residue.

The representation family is organized as a groupoid rather than a single space because admissible translations exist only locally, composition is partial, and cyclic reframings can accumulate nontrivial loop defect. We define chartwise obstruction, pathwise traversal cost, transport operators, and holonomy penalties. We then prove the basic comparison theorems relating local obstruction, irreducible residue, and optimal traversal value.

The resulting formalism is consistent with the Lambda Principle of Irreducibility and with the Nielsen-Semita Attractor Framework. In that interpretation, reasoning is horizontal transport, reframing is vertical motion between local charts, and holonomy residue measures non-closure under cyclic translation. The framework isolates the precise mathematical objects needed for later executable models: a finite approximation to the groupoid, learned transport operators, an obstruction functional, and a traversal solver. It thereby supplies a compact foundation for AI representation learning, stochastic physical hardware, and hybrid quantum-classical computation.

## 1. Introduction
Standard computation is typically modeled as iteration of a fixed state update rule

x_(t+1) = F(x_t).

That model suppresses three structural facts.

First, physical computation is implemented on substrates whose native dynamics are analog, stochastic, and measurement-dependent.

Second, apparent task hardness depends strongly on the representation in which the task is posed.

Third, some obstruction can be reduced by reparameterization, re-encoding, abstraction, or transport between local descriptions, but some remainder persists across all admissible such moves.

We therefore replace the fixed-state model by a layered system:

physical substrate -> encoding -> local representation -> within-chart computation -> cross-chart traversal.

The central claim of the paper is the following.

Computation is controlled traversal through a family of local representations induced by admissible measurement, subject to irreducible obstruction.

This claim has two consequences. First, representation is itself a computational variable. Second, translation between representations can carry path dependence and nontrivial loop defect. A complete computational formalism must therefore account not only for state evolution within one chart, but also for the geometry and cost of moving between charts.

The paper has five goals.

1. Formalize representation families as a task-admissible groupoid.
2. Separate substrate, encoding, representation, and computation.
3. Define apparent obstruction, irreducible residue, and traversal value.
4. State an NSAF-consistent geometric interpretation of progress, reframing, and holonomy.
5. Prepare the exact mathematical shell needed for executable approximation.

## 2. Scope, Standing Assumptions, and Design Constraints
The present paper establishes the formal backbone only. It does not yet specify a particular learning rule, hardware platform, or quantum protocol. All later implementations will instantiate the same abstract objects under stronger domain-specific hypotheses.

We impose the following standing assumptions throughout.

### Assumption A1. Task admissibility
For each task T there exists a nonempty family E_T of admissible encodings and a nonempty task-admissible representation groupoid G_T.

### Assumption A2. Reachability
For each input x and each admissible encoding E in E_T, the reachable sub-groupoid from the start object E(x) is nonempty and contains the identity object.

### Assumption A3. Obstruction well-definedness
For every task T, datum x, and admissible representation object r in G_T, the apparent obstruction O(r, x; T) is a finite nonnegative real number.

### Assumption A4. Nonnegative path penalties
All transition, distortion, and holonomy penalties used in pathwise functionals are nonnegative.

### Assumption A5. Local transport compatibility
Whenever morphisms g and h are composable, the associated transport operators satisfy a compositional law up to an admissible defect term, exact or approximate depending on the domain.

These assumptions are intentionally weak. Their purpose is to isolate a broad class of systems in which computational difficulty is representation-dependent while retaining an invariant residual core.

## 3. Mathematical Setting

### Amendment: Non-Privileging of Substrate
The term substrate S does not denote an ontologically fundamental base layer. It denotes a selected modeling interface through which physical or simulated dynamics are accessed.

Formally, S is defined only relative to an admissible encoding family E_T. There is no requirement that S be invariant under changes of representation. Different admissible encodings may induce non-equivalent substrate descriptions. Therefore S is not privileged with respect to G_T; it is one component of the representational system, not its foundation.

### 3.0. Non-Privileging of Substrate
The term substrate S does not denote an ontologically fundamental base layer. It denotes a selected modeling interface through which physical or simulated dynamics are accessed.

Formally:
- S is defined only relative to an admissible encoding family E_T
- There is no requirement that S be invariant under changes of representation
- Different admissible encodings may induce non-equivalent substrate descriptions

Therefore S is not privileged with respect to the representation groupoid G_T. It is one component of the representational system, not its foundation.

This constraint prevents collapse into a falsely grounded representation and ensures that irreducible residue cannot be eliminated by recursive reification of a supposed base layer.


Let T denote a task. Let S denote a space of physical substrate states. Elements of S may be voltage traces, current fluctuations, photonic amplitudes, qubit states, analog fields, event trains, or simulated substrate states.

Let G_T be a task-admissible representation groupoid. Its objects are local representational charts admissible for T. These objects need not lie in a single common linear space. They may be tensors, symbolic structures, graphs, sparse circuits, event streams, wavelet decompositions, or other local descriptive forms.

An encoding map is a task-admissible map

E : S -> Obj(G_T).

Given substrate state s, the encoded object E(s) is the initial local chart from which within-chart computation and cross-chart traversal begin.

We deliberately distinguish the following layers.

1. Substrate layer: physical state s in S.
2. Encoding layer: admissible map E.
3. Representation layer: local object r in Obj(G_T).
4. Computation layer: transformation within a fixed chart.
5. Traversal layer: movement across charts by admissible morphisms.

This separation is mathematically necessary. Apparent task difficulty belongs to the representation layer, not directly to the substrate. Yet the representation layer is induced by admissible encoding of the substrate. The substrate cannot be removed from the formalism without losing measurement dependence.

## 4. Representation Groupoid
### Definition 4.1. Representation groupoid
A representation groupoid G_T consists of:

1. A class Obj(G_T) of admissible representation objects.
2. A class Mor(G_T) of admissible morphisms.
3. Source and target maps s,t : Mor(G_T) -> Obj(G_T).
4. Partial composition h o g whenever t(g) = s(h).
5. Identity morphisms id_r for all r in Obj(G_T).
6. Inverses g^(-1) for all g in Mor(G_T).

Interpretation. Objects are local descriptions in which task-relevant computation can be performed. Morphisms are admissible reparameterizations, compressions, abstractions, symbolic lifts, basis changes, event projections, or other representation changes allowed by the task and available resources.

### Definition 4.2. Reachable set
For a start object r_0 in Obj(G_T), define Reach(r_0) to be the full set of objects connected to r_0 by finite composable morphism sequences.

### Definition 4.3. Task-connected component
The task-connected component of r_0 is the full subgroupoid generated by Reach(r_0).

### Remark 4.4. Why a groupoid rather than a group or manifold
A global representational space is generally unavailable. Not all pairs of representations are directly comparable. Some translations are only locally meaningful. A groupoid captures local comparability, partial composability, and invertibility of admissible changes without assuming a global coordinate system.

## 5. Encoding and Measurement
Encoding is constitutive rather than auxiliary.

### Definition 5.1. Admissible encoding family
For a task T, let E_T denote the family of admissible encoding maps

E : S -> Obj(G_T).

An admissible encoding extracts, thresholds, projects, aggregates, or otherwise measures substrate structure so that a local representational chart becomes available.

### Principle 5.2. Measurement dependence of apparent difficulty
Apparent obstruction is jointly dependent on encoding and representation. There is no representation-independent notion of apparent difficulty before fixing an admissible encoding regime.

This principle formalizes the claim that digital computation is not fundamental. Digital states are special cases of measured or thresholded structure induced from richer substrate dynamics.

## 6. Obstruction and Irreducible Residue
We now formalize the distinction between chart-dependent difficulty and invariant residual difficulty.

### Definition 6.1. Apparent obstruction
For task T, datum x, and admissible representation object r in Obj(G_T), the apparent obstruction is a quantity

O(r, x; T) in [0, infinity).

It may encode task loss, entropy burden, instability, constraint violation, energy cost, description complexity, or any weighted combination thereof, provided it is chartwise well-defined.

### Definition 6.2. Irreducible residue
Let x be realized through an admissible substrate state and task T. Define the irreducible residue by

I(x; T) = inf { O(r, x; T) : E in E_T, r in Reach(E(x)) }.

Interpretation. I(x; T) is the best chartwise obstruction obtainable after all admissible choices of encoding and all admissible representational traversals. It is therefore the residual obstruction that cannot be eliminated by admissible reframing.

### Proposition 6.3. Invariance under admissible re-rooting
Suppose E_1 and E_2 are admissible encodings for x such that E_1(x) and E_2(x) lie in the same task-connected component of G_T. Then evaluating the infimum in Definition 6.2 from either start object yields the same value.

#### Proof
If E_1(x) and E_2(x) lie in the same task-connected component, then Reach(E_1(x)) = Reach(E_2(x)) as object sets. The indexing family for the infimum is therefore identical. Hence the infimum agrees. End proof.

### Definition 6.4. Local residual obstruction
For admissible chart r, define

R_T(r, x) = O(r, x; T) - I(x; T).

Then R_T(r, x) is nonnegative and measures avoidable obstruction remaining at chart r.

### Theorem 6.5. Universal lower bound
For every admissible encoding E and every r in Reach(E(x)),

I(x; T) <= O(r, x; T).

#### Proof
Immediate from the definition of infimum. End proof.

## 7. Traversal Paths and Pathwise Cost
A computation does not merely land in one chart. It reaches that chart by an admissible path.

### Definition 7.1. Traversal path
A traversal path for x under task T is a finite composable sequence

p = (r_0 --g_1-> r_1 --g_2-> ... --g_n-> r_n)

in G_T, where r_0 = E(x) for some admissible encoding E in E_T.

### Definition 7.2. Transition cost
A transition cost is a map

C_T : Mor(G_T) -> [0, infinity)

assigning to each admissible morphism g a nonnegative traversal burden C_T(g). This may model time, energy, information loss, memory cost, calibration burden, or computational overhead.

### Definition 7.3. Distortion functional
A distortion functional D_T assigns to each admissible path p a nonnegative quantity D_T(p) measuring cumulative lossy approximation, compression distortion, or transport mismatch accumulated along the path.

### Definition 7.4. Path cost functional
Fix weights alpha, beta, gamma, delta >= 0. The traversal cost of p is

J_T(p; x) = alpha O(r_n, x; T)
          + beta sum C_T(g_k)
          + gamma D_T(p)
          + delta H_T(p),

where H_T(p) is the holonomy penalty defined below.

### Definition 7.5. Optimal traversal value
Define

V_T(x) = inf { J_T(p; x) : p admissible traversal path for x }.

The quantity V_T(x) refines irreducible residue by accounting for the actual burden of reaching low-obstruction charts.

### Theorem 7.6. Traversal lower bound
Under Assumption A4,

V_T(x) >= alpha I(x; T).

#### Proof
Let p be any admissible path terminating at r_n. By nonnegativity of the transition, distortion, and holonomy penalties,

J_T(p; x) >= alpha O(r_n, x; T).

By Theorem 6.5, O(r_n, x; T) >= I(x; T). Hence J_T(p; x) >= alpha I(x; T). Taking infima over p yields V_T(x) >= alpha I(x; T). End proof.

### Theorem 7.7. Equality in the flat zero-overhead case
Assume there exists an admissible path p_* ending at r_* such that O(r_*, x; T) = I(x; T) and such that all transition, distortion, and holonomy penalties vanish on p_*. Then

V_T(x) = alpha I(x; T).

#### Proof
The lower bound follows from Theorem 7.6. The assumed path satisfies J_T(p_*; x) = alpha I(x; T). Therefore V_T(x) <= alpha I(x; T). Equality follows. End proof.

## 8. Transport Operators and Loop Defect
To make path dependence mathematically visible, we attach transport operators to admissible morphisms.

### Definition 8.1. Local state space over a chart
For each object r in Obj(G_T), let X_r denote the local computational state space associated with chart r.

### Definition 8.2. Transport operator family
For each morphism g : r -> r', let

T_g : X_r -> X_r'

be an admissible transport operator.

In applications, T_g may be linear, nonlinear, stochastic, symbolic, learned, or hybrid.

### Assumption A5 revisited
If h o g is defined, then T_{h o g} agrees with T_h o T_g either exactly or up to an admissible defect controlled by the distortion and holonomy terms.

### Definition 8.3. Based loop
A based loop at r is a composable morphism sequence l = g_n ... g_1 with source and target equal to r.

### Definition 8.4. Loop defect
Let x_r in X_r be a local state. For a based loop l at r, define the loop defect

Delta_T(l; x_r) = d_r(T_l x_r, x_r),

where T_l = T_{g_n} ... T_{g_1} and d_r is an admissible discrepancy measure on X_r.

### Definition 8.5. Holonomy penalty
A holonomy penalty H_T(p) is any admissible nonnegative functional on paths such that whenever p contains a cyclic component l,

H_T(p) >= Delta_T(l; x_r)

for the corresponding based state x_r.

### Proposition 8.6. Flat representational regime
If every admissible based loop has zero loop defect, then the representational system is flat in the present sense and one may choose H_T identically zero.

#### Proof
If all loop defects vanish, then no cyclic transport contributes non-closure burden. The zero functional is therefore admissible as a holonomy penalty. End proof.

This proposition identifies the exact mathematical distinction between exact re-encodability and structurally path-dependent representational families.

## 9. NSAF-Consistent Geometric Interpretation
We now make the NSAF alignment explicit.

### 9.1. Fibered representational system
Let B_T denote a semantic progress space for task T. Over each base point b in B_T, let F_b denote the family of locally admissible representational charts available at that stage. The total representational system is a fibered object

pi : X_T -> B_T.

A representation object r in Obj(G_T) may be regarded as a local chart on a fiber F_b together with the structure needed to evaluate obstruction and perform within-chart computation.

### 9.2. Horizontal transport
Horizontal transport is semantically progressive motion that preserves local representational coherence as much as the task permits. In computational terms, it models reasoning within a chart or along a family of mutually compatible charts with low reframing burden.

### 9.3. Vertical motion
Vertical motion is movement between local descriptive regimes: basis change, compression, symbolic lift, event extraction, measurement change, abstraction, or other recharting. This is not ordinary semantic progress. It is reframing.

### 9.4. Holonomy residue
If one performs a cyclic sequence of reframings and returns to a nominally original chart, exact closure need not hold. The resulting non-closure appears as loop defect and contributes to holonomy penalty. In NSAF language, this is the local signature of nontrivial connection structure across representational neighborhoods.

### 9.5. Relation to irreducible residue
Irreducible residue is not identical to holonomy penalty. Rather, holonomy is one mechanism by which irreducibility manifests in traversal. Irreducible residue is the global infimum obstruction that remains after admissible encoding and traversal. Holonomy measures one form of unavoidable path dependence encountered when attempting that reduction.

This distinction is important. Residue is the invariant quantity. Holonomy is one source of traversal burden and non-closure that can prevent local reductions from globally trivializing the task.

## 10. Dynamic Selection and Computation Law
We now isolate the one-step law implied by the formalism.

### Definition 10.1. Candidate set at time t
Given current chart r_(t-1), context c_t, and task T, let Cand_T(r_(t-1), c_t) denote the admissible candidate charts reachable under the current resource budget.

### Definition 10.2. One-step chart selection law
A residue-aware system chooses

r_t in argmin { O(r, x_t; T, c_t) + lambda K_T(r_(t-1), r; c_t) : r in Cand_T(r_(t-1), c_t) },

where K_T is a transition penalty and lambda >= 0.

### Definition 10.3. Within-chart computation
Once r_t is selected, within-chart computation is performed by an operator

Psi_{r_t} : X_{r_t} x C_t -> X_{r_t},

so that the updated local state is

x_(t+1) = Psi_{r_t}(x_t, c_t).

### Remark 10.4. Separation principle
The formalism distinguishes two logically different operations:

1. selecting a chart;
2. computing within the selected chart.

Standard fixed-representation models collapse these into a single update rule. Residue-aware computation separates them.

## 11. Finite Approximation for Executable Systems
The full groupoid is generally intractable. Executable systems therefore require a finite approximation.

### Definition 11.1. Finite representation graph approximation
A finite approximation to G_T is a directed graph G_T^(N) whose nodes are selected representation objects and whose edges are admissible approximation morphisms, together with edgewise transport operators and inverse or pseudo-inverse maps when available.

### Design requirement 11.2
An executable approximation should expose at least the following:

1. a finite candidate set of charts;
2. an obstruction functional on nodes;
3. transition costs on edges;
4. learned or specified transport operators on edges;
5. a traversal solver approximating V_T(x).

This finite graph will be the immediate bridge to PyTorch implementations and hardware simulation.

## 12. Physical, Stochastic, and Quantum Specializations
### 12.1. Stochastic physical substrate
Let s in S be a voltage trace, current fluctuation process, event train, or coincidence field generated by a stochastic substrate. Let admissible encodings include thresholding, event extraction, coincidence detection, spectral projection, or multiscale decomposition. Different encodings induce different start objects in G_T. Digital logic then appears as one coarse chart among several, rather than as the substrate itself.

In this regime, substrate fluctuation is not merely nuisance. It can supply branching structure across neighboring charts and thereby reduce traversal cost to task-suitable representations.

### 12.2. Hybrid quantum-classical setting
Let s in S be a quantum state and let admissible encodings correspond to measurement protocols or basis-dependent readout maps. Different measurements induce different initial local charts. The present framework does not modify quantum mechanics. It reinterprets measurement selection as representational chart selection under a structured traversal geometry.

### 12.3. AI representation learning
Let local charts be hidden-state projections, sparse factorizations, graph abstractions, symbolic parses, or multiscale token structures. Then obstruction may combine predictive loss, entropy, calibration burden, and interpretability penalties. Residue-aware inference becomes dynamic traversal across learned local descriptions rather than fixed computation inside one description.

## 13. Clay-Style Reader's Guide to the Formal Strategy
The formal argument proceeds in a locked order.

Step 1. Separate substrate, encoding, local representation, within-chart computation, and traversal.

Step 2. Organize admissible local representations as a task-admissible groupoid rather than as a single global space.

Step 3. Define apparent obstruction chartwise and irreducible residue as the infimum across admissible encodings and reachable charts.

Step 4. Introduce transport operators and loop defect so that cyclic reframing can carry nontrivial non-closure.

Step 5. Define pathwise traversal cost, including terminal obstruction, transition burden, distortion, and holonomy.

Step 6. Prove the lower-bound theorem showing that all admissible traversal values dominate irreducible residue.

Step 7. Interpret the structure geometrically in NSAF terms: horizontal transport for reasoning, vertical motion for reframing, and holonomy for path-dependent residue.

Step 8. Replace the full groupoid by a finite graph approximation in preparation for executable models.

This order is deliberate. The invariant quantity must be defined before traversal can be optimized, and traversal must be defined before finite approximation can be justified.

## 14. Discussion
The formal shift developed here has four immediate consequences.

First, representation is promoted from passive container to active computational variable.

Second, encoding is treated as constitutive. Apparent difficulty is inseparable from how substrate dynamics are rendered legible.

Third, irreducible residue provides a principled distinction between avoidable representational friction and task-intrinsic difficulty.

Fourth, cyclic reframing can accumulate nontrivial loop defect. Exact closure is therefore a special case, not the default.

These consequences are compatible with the Lambda Principle of Irreducibility because both frameworks distinguish reducible chart-dependent burden from an invariant residual remainder. They are compatible with NSAF because both frameworks treat local dynamics and inter-chart connection structure as jointly necessary. The present paper translates those structural commitments into a computational mathematics suitable for later approximation and execution.

## 15. Conclusion
We have formalized residue-aware computation as controlled traversal on a task-admissible representation groupoid induced by physical measurement. The central invariant is irreducible residue, defined as the lowest obstruction attainable after admissible encoding and admissible representational movement. Traversal value refines this invariant by accounting for transition cost, distortion, and holonomy burden. The NSAF-consistent interpretation identifies reasoning with horizontal transport, reframing with vertical motion, and loop defect with nontrivial holonomy.

This yields a compact research foundation rather than an implementation sketch. The next step is to instantiate a finite approximation to the groupoid, specify transport operators on edges, and optimize traversal in a PyTorch-based executable model aligned with stochastic or hybrid substrate simulation.

## 16. Notation Summary
T: task
S: physical substrate state space
E_T: admissible family of encodings for task T
G_T: task-admissible representation groupoid
Obj(G_T): representation objects
Mor(G_T): admissible morphisms
Reach(r): reachable object set from r
O(r, x; T): apparent obstruction at chart r
I(x; T): irreducible residue
R_T(r, x): local residual obstruction
C_T(g): transition cost on morphism g
D_T(p): distortion along path p
H_T(p): holonomy penalty along path p
J_T(p; x): traversal cost functional
V_T(x): optimal traversal value
X_r: local state space over chart r
T_g: transport operator associated to morphism g
Delta_T(l; x_r): loop defect for based loop l
Psi_r: within-chart computation operator

## 17. Immediate Continuation
The immediate continuation is now mathematically well-posed. One replaces G_T by a finite directed approximation G_T^(N), equips each edge with a learned transport operator, defines nodewise obstruction and edgewise transition penalties, and trains a traversal solver that approximates V_T(x). That executable construction is the next locked step.

## 18. Finite Graph Approximation (Executable Form)
We construct a finite approximation G_T^(N) = (V, E) where nodes V index a finite set of representation objects and edges E index admissible approximate morphisms.

### 18.1 Node and edge structure
- Nodes V = {r_i}_{i=1}^N correspond to concrete representations.
- Directed edges E ⊆ V × V encode admissible transitions.
- Each edge e = (i -> j) carries a transport operator T_e and cost c_e.

### 18.2 Obstruction on nodes
O_i(x; T) = O(r_i, x; T), implemented as differentiable modules.

### 18.3 Distortion and holonomy (discrete)
- Distortion: sum of reconstruction/consistency errors along edges.
- Holonomy: cycle penalties via ||T_l(x) - x||.

### 18.4 Traversal objective
J(p; x) = alpha O_{i_k}(x; T) + beta sum c_e + gamma sum d_e + delta H(p).

### 18.5 One-step policy
Choose j minimizing O_j(T_{i->j}(x)) + lambda c_{i->j}.

### 18.6 PyTorch skeleton
```python
import torch
import torch.nn as nn

class Transport(nn.Module):
    def __init__(self, in_dim, out_dim):
        super().__init__()
        self.net = nn.Sequential(
            nn.Linear(in_dim, out_dim), nn.ReLU(),
            nn.Linear(out_dim, out_dim)
        )
    def forward(self, x):
        return self.net(x)

class Obstruction(nn.Module):
    def __init__(self, dim):
        super().__init__()
        self.head = nn.Linear(dim, 1)
    def forward(self, x):
        return self.head(x).squeeze(-1)

class ResidueGraph(nn.Module):
    def __init__(self, dims, edges):
        super().__init__()
        self.obs = nn.ModuleList([Obstruction(d) for d in dims])
        self.trans = nn.ModuleDict()
        self.cost = {}
        for (i, j, c) in edges:
            key = f"{i}->{j}"
            self.trans[key] = Transport(dims[i], dims[j])
            self.cost[key] = c

    def step(self, i, x, lam=1.0):
        best_j, best_val, best_x = i, float('inf'), x
        for key, T in self.trans.items():
            src, dst = map(int, key.split('->'))
            if src != i: continue
            xj = T(x)
            val = self.obs[dst](xj) + lam * self.cost[key]
            if val < best_val:
                best_j, best_val, best_x = dst, val, xj
        return best_j, best_x, best_val
```

### 18.7 Training signals
- Supervise O_i with task loss.
- Cycle-consistency for transports.
- Optional entropy regularization for exploration.

### 18.8 Continuum relation
As N increases, G_T^(N) approximates G_T; transports approximate T_g; cycle penalties approximate loop defect; solver approximates V_T(x).

## 19. Learned Transport Operators and Trainable Traversal
We now specify the executable transport layer in a form that is mathematically consistent with the preceding paper and immediately implementable in PyTorch.

### 19.1 Design goal
A learned transport operator on an edge i -> j must do four things.

1. Map local state x_i in chart i into a compatible local state x_j in chart j.
2. Expose a distortion measure for the edge.
3. Support approximate inverse transport for cycle-consistency.
4. Permit deterministic or stochastic realization, depending on the substrate model.

For the present executable construction, we use stochastic transport as the default because it better reflects the residue-aware setting in which representation change is not assumed to be noiseless or uniquely determined.

### 19.2 Edgewise stochastic transport
For each directed edge e = (i -> j), define a transport kernel

T_e(x_i, z_e) = mu_e(x_i) + sigma_e(x_i) * z_e,

where z_e is standard Gaussian noise or another admissible sampled perturbation, mu_e is a learned mean map, and sigma_e is a learned scale map constrained to be nonnegative.

This realizes the transport operator as a local stochastic chart transition rather than a fixed deterministic rewrite.

### 19.3 Edgewise inverse or pseudo-inverse
For each edge e = (i -> j), define a reverse map S_e from chart j back to chart i. If the reverse edge is explicitly present, S_e may be identified with T_(j -> i). Otherwise it is a learned pseudo-inverse used only for distortion and cycle losses.

### 19.4 Distortion loss on an edge
For x_i in chart i, define

d_e(x_i) = || S_e(T_e(x_i, z_e)) - x_i ||^2.

This is the local discrete analog of transport mismatch and contributes to D_T(p).

### 19.5 Loop defect on a cycle
For a cycle l = e_m ... e_1 beginning and ending at i,

Delta_l(x_i) = || T_l(x_i, z) - x_i ||^2,

where T_l denotes the composed sampled transport around the loop. This is the discrete approximation to loop defect and contributes to H_T(p).

### 19.6 Nodewise obstruction heads
Each node i carries an obstruction head O_i. This head maps the local chart state to a scalar burden estimate. In implementation, O_i may combine task loss, entropy penalty, calibration term, energy proxy, and any chart-specific regularizer.

### 19.7 Traversal policy
We define a trainable traversal scorer over candidate next nodes:

Score(i -> j | x_i) = O_j(T_(i->j)(x_i, z)) + lambda c_(i->j) + gamma d_(i->j)(x_i).

A greedy policy chooses the minimizer over outgoing edges. A beam policy retains the k best candidates. A differentiable soft policy uses a softmin distribution over outgoing edge scores.

### 19.8 Recommended executable choice
For training stability and differentiability, use a soft policy during training and greedy or beam traversal at evaluation time.

## 20. PyTorch Companion Construction
Below is a concrete executable reference model. It is intentionally explicit rather than minimal so the mathematical roles remain visible.

```python
import math
from dataclasses import dataclass
from typing import Dict, List, Tuple, Optional

import torch
import torch.nn as nn
import torch.nn.functional as F


@dataclass
class EdgeSpec:
    src: int
    dst: int
    cost: float


class MLP(nn.Module):
    def __init__(self, in_dim: int, hidden_dim: int, out_dim: int):
        super().__init__()
        self.net = nn.Sequential(
            nn.Linear(in_dim, hidden_dim),
            nn.ReLU(),
            nn.Linear(hidden_dim, out_dim),
        )

    def forward(self, x: torch.Tensor) -> torch.Tensor:
        return self.net(x)


class StochasticTransport(nn.Module):
    def __init__(self, in_dim: int, out_dim: int, hidden_dim: int = 128):
        super().__init__()
        self.mu = MLP(in_dim, hidden_dim, out_dim)
        self.log_sigma = MLP(in_dim, hidden_dim, out_dim)

    def forward(
        self,
        x: torch.Tensor,
        sample: bool = True,
        noise: Optional[torch.Tensor] = None,
    ) -> Tuple[torch.Tensor, torch.Tensor, torch.Tensor]:
        mu = self.mu(x)
        log_sigma = self.log_sigma(x).clamp(min=-6.0, max=4.0)
        sigma = F.softplus(log_sigma) + 1e-6
        if sample:
            if noise is None:
                noise = torch.randn_like(mu)
            y = mu + sigma * noise
        else:
            y = mu
        return y, mu, sigma


class ObstructionHead(nn.Module):
    def __init__(self, dim: int, hidden_dim: int = 128):
        super().__init__()
        self.net = nn.Sequential(
            nn.Linear(dim, hidden_dim),
            nn.ReLU(),
            nn.Linear(hidden_dim, 1),
        )

    def forward(self, x: torch.Tensor) -> torch.Tensor:
        return self.net(x).squeeze(-1)


class RepresentationHead(nn.Module):
    def __init__(self, in_dim: int, out_dim: int, hidden_dim: int = 128):
        super().__init__()
        self.net = nn.Sequential(
            nn.Linear(in_dim, hidden_dim),
            nn.ReLU(),
            nn.Linear(hidden_dim, out_dim),
        )

    def forward(self, x: torch.Tensor) -> torch.Tensor:
        return self.net(x)


class ResidueGraphV2(nn.Module):
    def __init__(
        self,
        input_dim: int,
        node_dims: List[int],
        edges: List[EdgeSpec],
        hidden_dim: int = 128,
        temperature: float = 1.0,
    ):
        super().__init__()
        self.node_dims = node_dims
        self.temperature = temperature

        self.repr_heads = nn.ModuleList([
            RepresentationHead(input_dim, d, hidden_dim) for d in node_dims
        ])
        self.obs_heads = nn.ModuleList([
            ObstructionHead(d, hidden_dim) for d in node_dims
        ])

        self.transports = nn.ModuleDict()
        self.inverse_transports = nn.ModuleDict()
        self.edge_costs: Dict[str, float] = {}
        self.out_edges: Dict[int, List[Tuple[int, str]]] = {i: [] for i in range(len(node_dims))}

        for e in edges:
            key = self.edge_key(e.src, e.dst)
            rev = self.edge_key(e.dst, e.src)
            self.transports[key] = StochasticTransport(node_dims[e.src], node_dims[e.dst], hidden_dim)
            self.inverse_transports[key] = StochasticTransport(node_dims[e.dst], node_dims[e.src], hidden_dim)
            self.edge_costs[key] = float(e.cost)
            self.out_edges[e.src].append((e.dst, key))

    @staticmethod
    def edge_key(src: int, dst: int) -> str:
        return f"{src}->{dst}"

    def encode_all(self, raw_x: torch.Tensor) -> List[torch.Tensor]:
        return [head(raw_x) for head in self.repr_heads]

    def node_obstruction(self, node_idx: int, x_node: torch.Tensor) -> torch.Tensor:
        return self.obs_heads[node_idx](x_node)

    def transport(
        self,
        src: int,
        dst: int,
        x: torch.Tensor,
        sample: bool = True,
    ) -> Dict[str, torch.Tensor]:
        key = self.edge_key(src, dst)
        y, mu, sigma = self.transports[key](x, sample=sample)
        return {"y": y, "mu": mu, "sigma": sigma, "key": key}

    def inverse_transport(
        self,
        src: int,
        dst: int,
        y: torch.Tensor,
        sample: bool = False,
    ) -> Dict[str, torch.Tensor]:
        key = self.edge_key(src, dst)
        x_hat, mu, sigma = self.inverse_transports[key](y, sample=sample)
        return {"x_hat": x_hat, "mu": mu, "sigma": sigma, "key": key}

    def edge_distortion(
        self,
        src: int,
        dst: int,
        x_src: torch.Tensor,
        sample_forward: bool = True,
    ) -> Dict[str, torch.Tensor]:
        fwd = self.transport(src, dst, x_src, sample=sample_forward)
        inv = self.inverse_transport(src, dst, fwd["y"], sample=False)
        distortion = F.mse_loss(inv["x_hat"], x_src, reduction="none").mean(dim=-1)
        return {
            "distortion": distortion,
            "y": fwd["y"],
            "mu": fwd["mu"],
            "sigma": fwd["sigma"],
            "x_recon": inv["x_hat"],
            "key": fwd["key"],
        }

    def outgoing_scores(
        self,
        node_idx: int,
        x_node: torch.Tensor,
        lam_cost: float,
        lam_dist: float,
        sample: bool = True,
    ) -> List[Dict[str, torch.Tensor]]:
        results = []
        for dst, key in self.out_edges[node_idx]:
            edge = self.edge_distortion(node_idx, dst, x_node, sample_forward=sample)
            obs = self.node_obstruction(dst, edge["y"])
            cost = torch.full_like(obs, self.edge_costs[key])
            score = obs + lam_cost * cost + lam_dist * edge["distortion"]
            results.append({
                "dst": torch.tensor(dst, device=x_node.device),
                "score": score,
                "obs": obs,
                "cost": cost,
                "distortion": edge["distortion"],
                "y": edge["y"],
                "key": key,
            })
        return results

    def soft_step(
        self,
        node_idx: int,
        x_node: torch.Tensor,
        lam_cost: float = 1.0,
        lam_dist: float = 1.0,
        sample: bool = True,
    ) -> Dict[str, torch.Tensor]:
        candidates = self.outgoing_scores(node_idx, x_node, lam_cost, lam_dist, sample)
        if not candidates:
            obs = self.node_obstruction(node_idx, x_node)
            zeros = torch.zeros_like(obs)
            return {
                "next_node": torch.full_like(obs, node_idx, dtype=torch.long),
                "x_next": x_node,
                "score": obs,
                "obs": obs,
                "cost": zeros,
                "distortion": zeros,
                "weights": None,
                "candidates": [],
            }

        score_stack = torch.stack([c["score"] for c in candidates], dim=-1)
        weights = F.softmax(-score_stack / self.temperature, dim=-1)
        x_stack = torch.stack([c["y"] for c in candidates], dim=1)
        x_next = torch.sum(weights.unsqueeze(-1) * x_stack, dim=1)

        obs_stack = torch.stack([c["obs"] for c in candidates], dim=-1)
        cost_stack = torch.stack([c["cost"] for c in candidates], dim=-1)
        dist_stack = torch.stack([c["distortion"] for c in candidates], dim=-1)

        score = torch.sum(weights * score_stack, dim=-1)
        obs = torch.sum(weights * obs_stack, dim=-1)
        cost = torch.sum(weights * cost_stack, dim=-1)
        distortion = torch.sum(weights * dist_stack, dim=-1)

        next_indices = torch.tensor(
            [int(c["dst"].item()) for c in candidates],
            device=x_node.device,
            dtype=torch.long,
        )
        next_node = next_indices[torch.argmax(weights, dim=-1)]

        return {
            "next_node": next_node,
            "x_next": x_next,
            "score": score,
            "obs": obs,
            "cost": cost,
            "distortion": distortion,
            "weights": weights,
            "candidates": candidates,
        }

    def greedy_step(
        self,
        node_idx: int,
        x_node: torch.Tensor,
        lam_cost: float = 1.0,
        lam_dist: float = 1.0,
        sample: bool = False,
    ) -> Dict[str, torch.Tensor]:
        candidates = self.outgoing_scores(node_idx, x_node, lam_cost, lam_dist, sample)
        if not candidates:
            obs = self.node_obstruction(node_idx, x_node)
            zeros = torch.zeros_like(obs)
            return {
                "next_node": torch.full_like(obs, node_idx, dtype=torch.long),
                "x_next": x_node,
                "score": obs,
                "obs": obs,
                "cost": zeros,
                "distortion": zeros,
                "candidates": [],
            }

        score_stack = torch.stack([c["score"] for c in candidates], dim=-1)
        best = torch.argmin(score_stack, dim=-1)

        batch_idx = torch.arange(x_node.shape[0], device=x_node.device)
        x_stack = torch.stack([c["y"] for c in candidates], dim=1)
        obs_stack = torch.stack([c["obs"] for c in candidates], dim=-1)
        cost_stack = torch.stack([c["cost"] for c in candidates], dim=-1)
        dist_stack = torch.stack([c["distortion"] for c in candidates], dim=-1)

        x_next = x_stack[batch_idx, best]
        score = score_stack[batch_idx, best]
        obs = obs_stack[batch_idx, best]
        cost = cost_stack[batch_idx, best]
        distortion = dist_stack[batch_idx, best]

        next_indices = torch.tensor(
            [int(c["dst"].item()) for c in candidates],
            device=x_node.device,
            dtype=torch.long,
        )
        next_node = next_indices[best]

        return {
            "next_node": next_node,
            "x_next": x_next,
            "score": score,
            "obs": obs,
            "cost": cost,
            "distortion": distortion,
            "candidates": candidates,
        }


def cycle_penalty(
    graph: ResidueGraphV2,
    x_i: torch.Tensor,
    cycle: List[int],
    sample: bool = False,
) -> torch.Tensor:
    assert len(cycle) >= 2 and cycle[0] == cycle[-1], "cycle must begin and end at same node"
    x = x_i
    start = cycle[0]
    for a, b in zip(cycle[:-1], cycle[1:]):
        x = graph.transport(a, b, x, sample=sample)["y"]
    return F.mse_loss(x, x_i, reduction="none").mean(dim=-1)


def entropy_regularizer(weights: Optional[torch.Tensor]) -> torch.Tensor:
    if weights is None:
        return torch.tensor(0.0)
    return -(weights * (weights.clamp_min(1e-8).log())).sum(dim=-1).mean()
```

## 21. Training Loop and Loss Decomposition
The code above becomes meaningful only once the loss is decomposed in a way that mirrors the formal paper.

### 21.1 Total loss
For a batch B, define

L_total = L_task + alpha_obs L_obs + beta_cost L_cost + gamma_dist L_dist + delta_holo L_holo + eta_ent L_ent.

The terms are:
- L_task: task loss on supervised or self-supervised targets
- L_obs: nodewise obstruction estimate penalty
- L_cost: edgewise transition burden
- L_dist: edgewise distortion or reconstruction mismatch
- L_holo: cycle or loop defect penalty
- L_ent: policy entropy term used only when soft traversal is active

### 21.2 Reference training step
```python
def training_step(
    graph: ResidueGraphV2,
    raw_x: torch.Tensor,
    target: torch.Tensor,
    start_node: int,
    predictor: nn.Module,
    lam_cost: float = 0.1,
    lam_dist: float = 1.0,
    alpha_obs: float = 1.0,
    beta_cost: float = 1.0,
    gamma_dist: float = 1.0,
    delta_holo: float = 1.0,
    eta_ent: float = 0.01,
    soft: bool = True,
):
    node_states = graph.encode_all(raw_x)
    x0 = node_states[start_node]

    step_fn = graph.soft_step if soft else graph.greedy_step
    out = step_fn(start_node, x0, lam_cost=lam_cost, lam_dist=lam_dist, sample=soft)

    pred = predictor(out["x_next"])
    l_task = F.mse_loss(pred, target)
    l_obs = out["obs"].mean()
    l_cost = out["cost"].mean()
    l_dist = out["distortion"].mean()

    l_holo = torch.tensor(0.0, device=raw_x.device)
    if graph.edge_key(0, 1) in graph.transports and graph.edge_key(1, 0) in graph.transports:
        cyc = [0, 1, 0]
        l_holo = cycle_penalty(graph, node_states[0], cyc, sample=False).mean()

    l_ent = entropy_regularizer(out.get("weights"))

    loss = (
        l_task
        + alpha_obs * l_obs
        + beta_cost * l_cost
        + gamma_dist * l_dist
        + delta_holo * l_holo
        + eta_ent * l_ent
    )

    metrics = {
        "loss": loss.detach(),
        "task": l_task.detach(),
        "obs": l_obs.detach(),
        "cost": l_cost.detach(),
        "dist": l_dist.detach(),
        "holo": l_holo.detach(),
        "ent": l_ent.detach(),
    }
    return loss, metrics, out
```

### 21.3 Multi-step traversal
A full solver should unroll traversal for K steps or apply beam search. The one-step reference above is the minimal differentiable core. Multi-step traversal is the next extension, not a change of foundation.

## 22. Hardware-Simulation Alignment
We now make the code path legible in hardware terms so the executable model does not drift back into abstract labeling.

### 22.1 Raw input as modeled interface, not privileged base
The input raw_x is the encoded interface presented to the model. In a hardware-aligned setting this may come from:
- analog voltage windows
- current-noise traces
- thresholded event streams
- coincidence histograms
- spectral summaries
- mixed sensor bundles

This remains consistent with the non-privileging clause: the model treats these as accessible interfaces, not ontological foundations.

### 22.2 Suggested node assignment for a stochastic hardware prototype
A minimal four-node graph may use:
- Node 0: raw temporal window
- Node 1: thresholded event chart
- Node 2: spectral chart
- Node 3: coincidence-density chart

Suggested edges:
- 0 -> 1: event extraction transport
- 0 -> 2: spectral transport
- 1 -> 3: coincidence lift
- 2 -> 3: multiscale compression
- reverse pseudo-inverses for cycle and distortion penalties

### 22.3 Example signal front-end
```python
class SignalFrontend(nn.Module):
    def __init__(self, window: int, out_dim: int):
        super().__init__()
        self.net = nn.Sequential(
            nn.Linear(window, 128),
            nn.ReLU(),
            nn.Linear(128, out_dim),
        )

    def forward(self, trace: torch.Tensor) -> torch.Tensor:
        return self.net(trace)
```

### 22.4 Simulation recipe
For a first hardware-sim experiment:
1. Generate synthetic traces containing 1/f-like noise, threshold events, and coincidence patterns.
2. Pass traces through a signal front-end.
3. Initialize a four-node ResidueGraphV2 with the node semantics above.
4. Train on a proxy task such as classifying pattern families or predicting a target property of the trace.
5. Compare against a fixed-representation baseline.
6. Measure whether learned traversal lowers task loss at matched parameter count.

### 22.5 What counts as success
A successful first experiment shows at least one of the following:
- traversal policy consistently prefers different charts for different signal regimes
- cycle-consistency improves transport stability
- dynamic traversal outperforms any single fixed chart on held-out data
- stochastic transport yields lower effective obstruction than deterministic transport under matched conditions

## 23. Locked Immediate Continuation
The next step is no longer conceptual. It is executable. The correct order is:

1. instantiate a concrete finite graph for one prototype task
2. generate or load signal data
3. train the transport and obstruction modules
4. compare dynamic traversal against fixed-chart baselines
5. only then extend to multi-step search, larger graphs, and hardware-facing interfaces

This preserves continuity with the formal paper while moving directly into runnable PyTorch and simulation work.

