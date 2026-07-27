---
silo: lambda
subcat: irrproof
exposure: internal
tier:
status: draft
words: 5115
sha: 464279f8b0af
source-folder: "The-Lambda-Principle-of-Irreducibility/WIP_docs/IRRProofEngine"
tags:
  - lambda/irrproof
  - x/internal
  - src/extracted
  - tier/unassigned
  - src/The-Lambda-Principle-of-Irreducibi/WIP-docs/IRRProofEngine
source-repos:
  - The-Lambda-Principle-of-Irreducibility
source-paths:
  - "The-Lambda-Principle-of-Irreducibility/WIP_docs/IRRProofEngine/V2/positional_recoverabilityV2).pdf"
  - "The-Lambda-Principle-of-Irreducibility/WIP_docs/IRRProofEngine/positional_recoverability.pdf"
links-latent: []
---

# positional recoverability

> **Source** `The-Lambda-Principle-of-Irreducibility/WIP_docs/IRRProofEngine/positional_recoverability.pdf`
> 5,115 words · sha `464279f8b0af` · status **draft**
> 2 identical copies across The-Lambda-Principle-of-Irreducibility
> Text recovered from PDF/DOCX by extraction — layout artifacts expected, equations may need repair. No markdown original existed.

---

Positional Recoverability in Binary-Addressed
                                          Registries
  A symmetry obstruction, with a tight worked instance over the 
nite-type Cartan
                                     matrices

                                             Lu Semita
                                         EmergenceByDesign

                                             Version 1.0



                                              Abstract
     We formalise a question that arises when a corpus of machine-checkable results is stored in
     a content-addressed registry laid out over a binary tree: which structural relations among
     registry entries can be recovered from their addresses alone, and which must be carried
     separately as code?    We give a precise de
nition of positional recoverability relative to a
     declared predicate vocabulary, and prove an unconditional obstruction: if the vocabulary is
     symmetric, then no layout, however chosen, and no decoder, however powerful, can recover
     an antisymmetric relation (Theorem 5.1). The obstruction is a parity mismatch between
     the addressing primitive and the datum, not a defect of any particular layout, and it yields
     a lower bound on the irreducible supplement (Corollary 5.3).
         We then exhibit a case in which the bound is attained exactly. Taking the registry to
     hold the Cartan matrices of the 
nite-dimensional simple Lie algebras, and taking the vo-
     cabulary to be tree adjacency alone, we show that every 
nite-type Dynkin diagram admits
     a layout in which diagram adjacency coincides with parentchild adjacency of Nock axes
     (Proposition 6.1), that the sixteen simply-laced types are recovered with no supplementary
     data whatsoever, and that each of the 
fteen non-simply-laced types requires exactly one
     supplementary datummatching the lower bound in all 31 cases (Theorem 6.2). All claims
     are machine-checked; the veri
cation code is included and runs in under a second with no
     dependencies.
         The intended reading is methodological rather than Lie-theoretic. The recoverable/-
     supplementary split is proposed as an instrument : one lays a structure into the registry,
     measures what fails to become positional, and treats that measurement as data about the
     structure. The present paper establishes that the instrument is well de
ned, that it returns
     a sharp answer on a nontrivial and completely classi
ed test family, andby locating the
     result inside the existing literature on adjacency labelling schemeswhat would and would
     not be new about it.


1 Scope, and what is not claimed
This is documented independent work.        It is not a claim of ownership, priority, or discovery.
Every component used here is established, and the relevant literature is surveyed in Section 10
rather than in a footnote, because the honest positioning of the work is part of its content.
Speci
cally:


 The question can adjacency be decided from vertex labels alone is the de
ning question of
   adjacency labelling schemes, introduced by Kannan, Naor and Rudich and independently by
   Muller in the late 1980s, with antecedents in the 1960s. The present work is a special case
   of that framework, not an alternative to it.




                                                  1
  Binary addressing with children 2a and 2a+1 is the standard implicit-heap indexing of
   Williams (1964). Nock's opcode 0 uses the same arithmetic.

  Content addressing of code by a hash of its syntax tree is the organising principle of the
   Unison language, and of Merkle-DAG systems generally.

  The classi
cation of 
nite-type Dynkin diagrams, and every Cartan-matrix fact used as
   input, is classical.

  Theorem 5.1 is elementary. Its proof is three lines. We state it as a theorem because it is
   load-bearingit converts a failed search over layouts into a proof that no layout existsand
   not because it is deep. It may well be folklore in the labelling-scheme literature; we have
   not found it stated in this form, and we do not assert that it is absent.


What we do claim is narrow and, we believe, defensible: (i) the de
nitions in Section 4 isolate
a quantitythe irreducible supplementthat is worth measuring in its own right rather than
minimising as an engineering cost; (ii) Theorem 5.1 gives that quantity an unconditional lower
bound that is insensitive to layout search; (iii) on the 
nite-type Cartan matrices the bound is
attained exactly in all 31 cases, so the instrument is calibrated against a family where the answer
is independently known; and (iv) the arithmetic of Nock axes makes composition of registry
addresses a single machine operation (Proposition 3.2), which is what makes the scheme usable
for a corpus rather than a single lookup.



2 Motivation: the fragment registry
The setting is a shared corpus of small, individually machine-checkable resultscall them frag-
ments. A fragment is intended to be checked once and cited thereafter. Three properties are
wanted:


(P1)   Self-naming. A fragment's identi
er is derived from its content, so that two contributors
       who derive the same fragment independently obtain the same identi
er and discover the
       duplication without coordination.

(P2)   Environment-independence. A fragment means the same thing on every machine,
       forever. This is where cross-system lemma reuse has historically failed (Section 10).

(P3)   Cheap recomposition. Assembling a larger result from fragments must cost little, or
       the corpus is a catalogue rather than a substrate.


   Nock supplies all three cheaply. A noun is an atom (a natural number) or an ordered pair of
nouns; a noun's tree hash gives (P1). The instruction set has twelve opcodes and no unde
ned
behaviourevery formula either yields a value or crashes deterministicallywhich gives (P2) in
a strong form: there is no third outcome in which a fragment quietly means something dierent.
Proposition 3.2 gives (P3).
   A fourth property is wanted and is the subject of this paper:


(P4)   Meaningful addressing. The identi
er should not merely name a fragment but situate
       it, so that relations among fragments are readable from identi
ers without consulting a
       side table.


   (P4) is the dierence between an addressing schema and a naming convention, and unlike
(P1)(P3) it is not free. Sections 4 and 5 make it precise and show exactly what it costs.




                                                2
3 Preliminaries
3.1    Nouns and axes

A   noun is either an atom (an element of N≥0 ) or a cell, an ordered pair of nouns. Nouns are

nite binary trees with atoms at the leaves.
     The   axis set is A = N≥1 , carrying the in
nite rooted binary tree structure in which 1 is the
root and a has children 2a (the     head ) and 2a+1 (the tail ). Write d(a) = ⌊log2 a⌋ for the depth
of a, so d(1) = 0.
     The Nock fragment operator / is the partial function


                         /[1 n] = n,       /[2 (x, y)] = x,      /[3 (x, y)] = y,

                       /[(2a) n] = /[2 /[a n\]\],         /[(2a+1) n] = /[3 /[a n\]\],
unde
ned when a head or tail is taken of an atom. We write adj(a, b) for             tree adjacency :

                              adj(a, b) ⇐⇒ ⌊a/2⌋ = b or ⌊b/2⌋ = a.

     Let π : A → {0, 1}∗ send a to its binary expansion with the leading 1 deleted; π is a
bijection, π(1) = ε. Under π , an axis is a turn sequence from the root, with 0 meaning head
and 1 meaning tail.



3.2    The address monoid

De
nition 3.1. For a, b ∈ A de
ne a ◦ b = π−1 π(a) π(b) .
                                                                 

Proposition 3.2 (Composition is one machine operation). (A, ◦, 1) is a monoid, free on the
two generators {2, 3}, and

                               a ≪ d(b) ∨ b − 2d(b) = a · 2d(b) + b − 2d(b) .
                                                  
                     a◦b =

Moreover, whenever either side is de
ned,

                                       /[(a ◦ b) n] = /[b /[a n\]\].                                      (1)


Proof. π is a bijection onto {0, 1}∗ and ◦ is by de
nition the transport of concatenation along
π ; hence (A, ◦, 1) is isomorphic to the free monoid ({0, 1}∗ , ·, ε), whose generators pull back to
π −1 (0) = 2 and π −1 (1) = 3. For the closed form: π(a)π(b) has π(b) occupying the low d(b) bits,
and b − 2
          d(b) is exactly π(b) read as an integer, so π −1 (π(a)π(b)) = a · 2d(b) + (b − 2d(b) ); the two

summands occupy disjoint bit ranges, so + and ∨ agree. Equation (1) follows by induction on
|π(b)| from the recursive clauses of /: the base case b = 1 is /[a n] = /[1 /[a n\]\], and the step
is the clause for 2b or 2b+1.


     Proposition 3.2 is what makes (P3) hold. Nesting one address inside another is a shift and
an or; it does not require walking the tree, and the cost of composing k fragments is O(k)
machine operations on integers whose width is the sum of the depths.



3.3    Dynkin diagrams

We use only classical facts.     To each 
nite-dimensional complex simple Lie algebra of rank
n is associated a Cartan matrix C = (aij )1≤i,j≤n with aii = 2, aij ∈ Z≤0 for i ̸= j , and
aij = 0 ⇐⇒ aji = 0. The support graph G(C) has an edge {i, j} whenever aij ̸= 0. The
classi
cation gives the types An , Bn , Cn , Dn , E6 , E7 , E8 , F4 , G2 ; a type is simply laced when C
is symmetric, equivalently when every edge has aij aji = 1.




                                                    3
Lemma 3.3 (Classical). For every 
nite type, G(C) is a tree of maximum degree at most 3.
For every non-simply-laced 
nite type, C has exactly one unordered pair {i, j} with aij ̸= aji .
   Lemma 3.3 is read o the classi
cation; we additionally verify it computationally for all 31
types of rank ≤ 8 in the accompanying code, as a guard against transcription error in our own
matrices rather than as a mathematical contribution.



4 Layouts, vocabularies, recoverability
Throughout, V is a 
nite set of registry entries and W a set of values.


De
nition 4.1 (Layout). A layout of V is an injection λ : V → A.
De
nition 4.2 (Vocabulary). A vocabulary is a family Π = (πi )i∈I of functions πi : A×A → Di .
Π is symmetric if πi (a, b) = πi (b, a) for every i ∈ I and all a, b ∈ A.
   The vocabulary is the declared representation class: it 
xes what the schema is permitted
to say about a pair of addresses. Examples of symmetric π : tree adjacency adj; tree distance;
depth of the lowest common ancestor; equality; bitwise           xor of the two addresses; whether
one address is a su
x-extension of the other        up to order. Examples of non-symmetric π : the
ancestor relation; the signed depth dierence; a − b;  a is the head child of b.


De
nition 4.3 (Positional recoverability) . Let F : V × V → W . We say F is Π-recoverable
under λ if there exists a function δ :
                                  Q
                                             i∈I Di → W with
                                                          
                        F (u, v) = δ (πi (λu, λv))i∈I           for all u, v ∈ V.


No restriction is placed on δ : it need not be computable, e
cient, or 
nitely presented.


De
nition 4.4 (Supplement and residue). A supplement for F relative to (Π, λ, δ) is a partial
function σ on V × V such that
                                     (
                                      σ(u, v)           (u, v) ∈ dom σ,
                          F (u, v) =                  
                                      δ (πi (λu, λv))i otherwise.

The   residue of F over Π is
                resΠ (F ) = min          { {u, v} : (u, v) ∈ dom σ or (v, u) ∈ dom σ } ,
                               λ, δ, σ

the least number of unordered pairs that must be carried outside the schema, minimised over
all layouts and all decoders.


    resΠ (F ) = 0 says exactly that F is Π-recoverable under some layout: the addressing schema
is meaningful for F in the sense of (P4). resΠ (F ) > 0 says that some part of F is irreducibly
code and not position, and its value counts how much.



5 The symmetry obstruction
Theorem 5.1 (Symmetry obstruction). Let Π be a symmetric vocabulary. If F : V × V → W
is Π-recoverable under some layout λ, then F is symmetric: F (u, v) = F (v, u) for all u, v ∈ V .
Proof. Fix u, v ∈ V and let δ witness recoverability. Since each πi is symmetric, πi (λu, λv) =
Qi (λv, λu) for every i ∈ I , so the two argument tuples supplied to δ are equal as elements of
π
   i Di . A function takes equal arguments to equal values, hence F (u, v) = δ(· · · ) = F (v, u).




                                                     4
Remark 5.2. The strength of Theorem 5.1 is in its quanti
ers, not its proof. It holds for
every layout, every decoder including non-computable ones, and every symmetric vocabulary
including in
nite ones.        Consequently a failure to recover an antisymmetric relation is not
evidence that the search over layouts was insu
ciently thorough; the search is provably futile.
This is the only reason the statement earns a theorem environment.

Corollary 5.3 (Lower bound on residue). Let Π be symmetric and let Asym(F ) = {{u, v} :
u ̸= v, F (u, v) ̸= F (v, u)}. Then resΠ (F ) ≥ | Asym(F )|.
Proof. Fix any λ, δ, σ . Let {u, v} ∈ Asym(F ) and suppose neither (u, v) nor (v, u) lies in dom σ .
Then F (u, v) and F (v, u) are both given by δ applied to symmetric data, hence are equal by
the argument of Theorem 5.1, contradicting {u, v} ∈ Asym(F ). So every element of Asym(F )
is counted, and the bound holds for each admissible triple; take the minimum.


   Corollary 5.3 is the price list. Under any symmetric vocabulary, symmetric structure may
be free, but    orientation is never free : every relation that distinguishes (u, v) from (v, u) costs
at least one supplementary datum, and no cleverness in the layout reduces the count.

Remark 5.4 (On enlarging the vocabulary). The obvious response is to admit non-symmetric
predicates, and this does defeat Theorem 5.1trivially so, since the predicate  λu is the head
child of λv  is antisymmetric and recovers a great deal. The theorem should therefore be read
as a statement about a        cost boundary rather than an impossibility simpliciter: whatever anti-
symmetric information a schema recovers, it recovers because an antisymmetric primitive was
admitted into the vocabulary, and the accounting must record that admission. The methodolog-
ical point of Section 9 survives vocabulary enlargement, because the residue is always measured
relative to a   declared Π.

6 A tight instance: 
nite-type Cartan matrices
We now 
x Π0 = {adj}, the single symmetric predicate of tree adjacency, and take V to be the
simple roots of a 
nite-type Lie algebra with F = C its Cartan matrix.

Proposition 6.1 (Embeddability). Every connected 
nite-type Dynkin diagram ∆ on n ≥ 1
vertices admits a layout λ such that for all u ̸= v ,
                                        u ∼∆ v ⇐⇒ adj(λu, λv).
Proof. For n = 1 take λ = {v 7→ 1}. For n ≥ 2: by Lemma 3.3, ∆ is a tree of maximum degree
≤ 3, and a 
nite tree on ≥ 2 vertices has at least two leaves. Root ∆ at a leaf r and set λr = 1.
In the resulting rooted tree, r has exactly one child, and every non-root vertex has degree
≤ 3 of which one edge goes to its parent, hence at most two children. Proceeding down the
tree, assign the children of a vertex placed at axis a to distinct axes among {2a, 2a+1}; this is
possible since there are at most two children. Injectivity holds because distinct vertices receive
distinct turn sequences from r . For the equivalence: each ∆-edge becomes a parentchild pair
by construction, giving ⇒; conversely if adj(λu, λv) then one of λu, λv is the parent of the other
in the image, and since the image is exactly the rooted tree of ∆, the corresponding vertices
are ∆-adjacent.


Theorem 6.2 (Tightness on 
nite type). Let C be the Cartan matrix of a 
nite type of rank
n, and let λ be a layout as in Proposition 6.1. De
ne the positional decoder
                                            
                                            2
                                                 u = v,
                                 δ0 (u, v) = −1 adj(λu, λv),                                       (2)

                                                  otherwise.
                                            
                                              0
                                            

Then:

                                                    5
             type   n   bits   span   edges   positional   residue   axes
             A1     1     1       1      0            0         0    1
             A2     2     2       2      1            1         0    1,2
             A3     3     2       3      2            2         0    2,1,3
             A4     4     3       4      3            3         0    3,1,2,4
             A5     5     3       6      4            4         0    4,2,1,3,6
             A6     6     4       8      5            5         0    6,3,1,2,4,8
             A7     7     4      12      6            6         0    8,4,2,1,3,6,12
             A8     8     5      16      7            7         0    12,6,3,1,2,4,8,16
             D4     4     3       5      3            3         0    1,2,4,5
             D5     5     3       5      4            4         0    3,1,2,4,5
             D6     6     3       6      5            5         0    6,3,1,2,4,5
             D7     7     4       8      6            6         0    8,4,2,1,3,6,7
             D8     8     4      12      7            7         0    12,6,3,1,2,4,8,9
             E6     6     4       8      5            5         0    3,5,1,2,4,8
             E7     7     4       8      6            6         0    8,5,4,2,1,3,6
             E8     8     4      12      7            7         0    10,4,5,2,1,3,6,12
             B2     2     2       2      1            0         1    1,2
             B3     3     2       3      2            1         1    2,1,3
             B4     4     3       4      3            2         1    3,1,2,4
             B5     5     3       6      4            3         1    4,2,1,3,6
             B6     6     4       8      5            4         1    6,3,1,2,4,8
             B7     7     4      12      6            5         1    8,4,2,1,3,6,12
             B8     8     5      16      7            6         1    12,6,3,1,2,4,8,16
             C3     3     2       3      2            1         1    2,1,3
             C4     4     3       4      3            2         1    3,1,2,4
             C5     5     3       6      4            3         1    4,2,1,3,6
             C6     6     4       8      5            4         1    6,3,1,2,4,8
             C7     7     4      12      6            5         1    8,4,2,1,3,6,12
             C8     8     5      16      7            6         1    12,6,3,1,2,4,8,16
             F4     4     3       4      3            2         1    3,1,2,4
             G2     2     2       2      1            0         1    1,2

Table 1:   Measured residue for all 31 
nite types of rank ≤         8 under Π0 = {adj}.     bits is
the width of the widest address; span the largest axis used; positional the number of edges
recovered by (2) alone. Residue equals | Asym(C)| in every row. Layouts are those returned by
the compactness search of Section 8; they are not canonical, but the residue column is layout-
independent by Corollary 5.3 and Theorem 6.2.



 (i) if the type is simply laced, δ0 recovers C exactly and resΠ0 (C) = 0;
(ii) otherwise resΠ0 (C) = 1, attained by supplementing the unique pair {i, j} with aij ̸= aji .
In both cases resΠ0 (C) = | Asym(C)|, so the bound of Corollary 5.3 is attained.
Proof. (i) For a simply-laced type every o-diagonal entry is 0 or −1, and aij = −1 exactly
when {i, j} is a ∆-edge, which by Proposition 6.1 holds exactly when adj(λi, λj); the diagonal
is 2 by de
nition. So δ0 reproduces C and the empty supplement su
ces, giving resΠ0 (C) = 0;
the value cannot be negative.
   (ii) By Lemma 3.3 there is exactly one unordered pair with aij           ̸= aji , so | Asym(C)| = 1
and Corollary 5.3 gives   resΠ0 (C) ≥ 1.      For the upper bound, supplement that single pair
with σ(i, j) = aij , σ(j, i) = aji ; every remaining o-diagonal entry is 0 or −1 according to
∆-adjacency exactly as in (i), so δ0 together with σ reproduces C . Hence resΠ0 (C) = 1.

   Table 1 records the machine veri
cation.       In total, 965 Cartan entries across 31 algebras
were reconstructed and compared against independently transcribed ground truth; all agreed.



                                                  6
7 Fragments as formulas
Positional recoverability concerns relations among registry entries. The complementary question
is how an entry is   read, and here Proposition 3.2 does the work.
   Lay the registry out as a noun R and let entry v sit at axis λv . The formula [0 λv] evaluated
against subject R returns that entry; this is the whole of the read path. If entries are themselves
structuredrows of a matrix, say, with columns at axes µj inside a rowthen reading cell (i, j)
is the formula [0 (λi ◦ µj )], a single opcode over an address computed by one shift and one or.
   Thus a fragment-level result is not merely       stored at an address; it is a formula whose
subject is the registry, and composition of results is composition of formulas.     Because Nock
has no unde
ned behaviour, a malformed composition crashes rather than returning a wrong
valuewhich is the property (P2) was asking for. In the accompanying code we evaluate all 965
Cartan entries by this route, together with a lemma asserting aij = 0     ⇐⇒ aji = 0 expressed
entirely as a Nock formula and evaluated for every ordered pair of every algebra.


Remark 7.1 (What Nock does and does not certify). Determinism certi
es that a formula
applied to a subject yields a particular noun. It does not certify that a stated mathematical
claim is true.   A registry of fragments therefore requires a checkera kernel that accepts or
rejects a proof objectand that checker is the trusted base of the whole corpus. Nothing in
this paper reduces the size of that trusted base; we note the requirement so that it is not
mistaken for something the addressing scheme provides.



8 Address width as a measurement
For a layout λ of V put w(λ) = maxv∈V (d(λv) + 1), the width in bits of the widest address.
Choosing λ to minimise w (then total width, then span) is an optimisation over the 
nitely
many rootings and child-orderings of ∆; the layouts in Table 1 are its output.


Observation 8.1. w separates structures of equal cardinality. For rank 8: w = 4 and span 12
for D8 and E8 , but w = 5 and span 16 for A8 , B8 and C8 .


   The reading we attach to Observation 8.1that branching compresses and chains do not,
so that address width reports on the shape of a diagram and not merely its sizeis an interpre-
tation, not a theorem, and we 
ag it as such. The underlying combinatorial fact is elementary:
a path on n vertices embeds in the binary tree only as a zig-zag of depth Θ(n) when rooted at
an endpoint, whereas a branched tree of the same order can be balanced. We record it because
it means the compactness objective is not purely cosmetic: minimising address width extracts
information rather than merely saving bits.


Remark 8.2 (Not an optimality claim). We emphasise that w is not competitive with the
labelling-scheme literature as a measure of representation size. Optimal adjacency labelling for
forests is known to log2 n + O(1) bits; our scheme is worse, and deliberately so, because the
label is required to double as a Nock axis with the composition law of Proposition 3.2. The
interest here is in the residue column of Table 1, not the bits column.



9 The residue as an instrument
We can now state the methodological proposal precisely. Given a structure S and a declared
vocabulary Π:


 1. lay S into the registry, minimising address width;

 2. recover what the schema can recover;



                                                7
 3. report resΠ (S), together with the identity of the pairs that had to be supplemented.


   Step 3 is the output of interest. It is a number attached to S relative to Π, it is bounded
below unconditionally by Corollary 5.3, and on the calibration family of Section 6 it takes the
value the classi
cation predicts and nothing else. The obstruction is thereby   located rather than
asserted: for F4 the instrument returns not this diagram resists positional encoding but the
pair {2, 3}, carrying (−2, −1), resists, and nothing else does.
   We stress the direction of inference. A large residue is not a defect of the registry and not
a defect of S ; it is a statement about the relationship between S and Π. Changing Π changes
the number, which is why Π must be declared before measurement and reported alongside it.



10 Related work
Adjacency labelling schemes.         The formal home of Section 4 is the theory of implicit graph
representations and adjacency labelling schemes, introduced by Kannan, Naor and Rudich
(STOC 1988; SIAM J. Discrete Math. 5(4):596603, 1992) and independently in the doctoral
thesis of Muller (Georgia Tech, 1988), with antecedents in work of Breuer and of Breuer and
Folkman in the 1960s.    A scheme assigns each vertex a short label such that adjacency is a
function of the two labels alone; our Π-recoverability is that condition with the label constrained
to be a Nock axis and the decoded value allowed to range over W rather than {0, 1}. Sharp
results are known: adjacency labelling of forests is achievable in log2 n + O(1) bits, and the
Implicit Graph Conjecture of Kannan, Naor and Rudichthat every hereditary factorial class
admits an O(log n)-bit schemewas refuted by Hatami and Hatami (FOCS 2022). A reader
coming from this literature should regard the present paper as taking the labelling-scheme
apparatus and inverting the objective: rather than minimising label length subject to exact
recovery, we 
x an addressing primitive and measure the exact shortfall in recovery. Distance
labelling, routing labelling and other informative labelling schemes form the adjacent literature.


Binary tree addressing. Indexing a binary tree by 1-based integers with children 2a and
2a+1 is the implicit heap layout of Williams (1964). Nock's opcode 0 (fragment ) implements
exactly this arithmetic over nouns; the address monoid of Proposition 3.2 is the free monoid on
two generators under a dierent name.


Content-addressed code.        Unison identi
es each de
nition by a hash of its syntax tree, with
human-readable names demoted to metadata, and derives from this its handling of dependency
con
icts, caching and code mobility; version 1.0 was released in November 2025. Merkle DAGs,
Git, Nix and IPFS instantiate the same principle for other artefact classes. Property (P1) of
Section 2 is not a contribution of this work; it is inherited.


Cross-system lemma reuse.           The motivating failure mode of Section 2the same theo-
rem proved repeatedly in mutually unintelligible systemsis documented and attacked in the
proof-interchange literature. OpenTheory provides an interchange format for the HOL family;
Dedukti, a logical framework based on the λΠ-calculus modulo rewriting, has been used as a
universal proof checker and as a hub for translating libraries between Coq, Lean, Matita, PVS
and OpenTheory, with Fermat's little theorem as a worked end-to-end example. Large curated
libraries (Mizar's MML, Isabelle's Archive of Formal Proofs, Lean's mathlib) are the practical
state of the art in lemma reuse within a single logic. The present paper addresses none of the
logical translation problems these systems solve; it concerns only the addressing layer beneath
them.




                                                 8
Nock, NockApp, Nockchain.             Nock is the combinator instruction set underlying Urbit.
The NockApp framework pairs a Rust runtime hosting a Nock evaluator and I/O drivers with
a kernela nounholding provable application logic, and Nockchain uses a STARK proving
system over Nock execution traces as its consensus work. We use Nock only as a speci
cation
of the addressing arithmetic and of deterministic evaluation; nothing in this paper depends
on Nockchain, and in particular no claim here requires the zero-knowledge lock-script opcode,
which at the time of writing is announced but not shipped.


Minimal description length.          Choosing a canonical form by shortest description is Kol-
mogorov complexity in outline, and is not computable in general. Our Section 8 optimisation
is not a description-length minimisation: it searches a small 
nite set of layouts under a 
xed
encoding.



11 Limitations and open residue
We list the gaps explicitly, in the order in which we would attack them.


(L1)   The calibration family is small and atypical. The 
nite Dynkin diagrams are trees of
       maximum degree 3, which is precisely the condition making Proposition 6.1 easy. Nothing
       here shows the instrument behaves well on families that are not near-tree. The honest
       summary is that the instrument has been calibrated, not tested.

(L2)   Non-tree structures are unaddressed. Root systems, subalgebra inclusion lattices
       and dependency graphs of a real fragment corpus are directed acyclic graphs, not trees.
       A tree layout must then either duplicate vertices or abandon uniqueness of the shortest
       address.   The natural movea spanning spine carrying canonical addresses with all
       remaining edges as formulasis stated here as a direction, with the cost measured the
       same way; it is not carried out.

(L3)   No canonical form is established. We have not shown that minimising address width
       yields a unique layout, and in general it does not: Table 1 exhibits several types sharing
       an optimal width. A registry needs an invariant name (a content hash) distinct from the
       working address, and a veri
able account of re-layout when usage statistics shift. Both
       are designed but not implemented.

(L4)   Polynomials are not treated. A registry of algebraic identities at polynomial granu-
       larity is the motivating application, and no result in this paper bears on it. The Cartan
       matrices are integer combinatorial data; whether the residue instrument says anything
       useful about, say, a basis of relations among polynomials is open, and we regard it as the
       
rst real test rather than a corollary.

(L5)   The checker is the trusted base and is not built. See the remark closing Section 7.
       Until a proof-object checker exists, a fragment registry is an addressing scheme for
       claims, not for theorems.

(L6)   Vocabulary dependence. Theorem 5.1 constrains symmetric vocabularies. We con-
       jecture, but do not prove, that for the 
nite-type Cartan matrices the residue remains
       | Asym(C)| under every vocabulary generated by the symmetric predicates listed in Sec-
       tion 4 together with Boolean combination; and we note that this conjecture is refuted the
       moment a single antisymmetric primitive is admitted, so its interest lies entirely in the
       choice of Π.




                                                 9
12 Reproducibility
All claims labelled as veri
ed were checked by the accompanying code: axis.py (address arith-
metic and its self-tests), dynkin.py (independently transcribed Cartan matrices, with validity
and tree checks), probe.py (layout search, reconstruction, residue), lemma.py (a Nock evalua-
tor for opcodes 09, conformance-tested against the speci
cation's own examples including the
recursive decrement gate, and used to read every Cartan entry by formula), test_symmetry.py
(the standing tests corresponding to Corollary 5.3 and Theorem 6.2), and render.py (
gures).
There are no dependencies beyond the Python standard library and the full suite completes in
under one second. A self-contained browser demonstrator reproduces Theorem 6.2 interactively.
   The single check we regard as decisive is test_residue_equals_asymmetric_edges: for all
31 types, the set of pairs requiring supplementation is exactly Asym(C), with no exceptions
and no 
tted parameters.


Lu Semita · EmergenceByDesign. Documented independent work. This document asserts no priority,
ownership, or discovery; prior art is surveyed in Section 10 and all classical inputs are attributed there.
Corrections and refutations are welcomed, in particular against (L1), (L4) and (L6).




                                                   10
