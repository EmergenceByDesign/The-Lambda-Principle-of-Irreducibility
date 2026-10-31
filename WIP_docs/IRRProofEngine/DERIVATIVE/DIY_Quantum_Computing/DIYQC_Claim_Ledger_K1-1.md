# Claim ledger for kernel K1 (working draft for the paper)

Working title: *On DIY Quantum Computing* (open to change).
Lu Semita (EmergenceByDesign), in co-authorship with Nexus and Orion, in continuous working
collaboration with the ChatGPT family, Claude family, and Grok within METALABE.

Labels give provenance and scope, never rank. Every work in the ledger stands on equal footing and
is checked against the others. "Imported" marks outside correspondence or a measured number.

| Label | Meaning |
|---|---|
| REUSED | Corpus Lean module, byte-identical, re-checked here |
| PROVED (K1) | New Lean theorem in DIYQCKernel.lean, checked here |
| BRIDGE | Premise linking the Lean model to the physical system; argued in the paper, not certified by Lean |
| COMPUTED | Finite computation (Python), script and output kept |
| IMPORTED | Outside correspondence or measured number, with source |
| OPEN | Not settled by anything here or found in the imports |

## 0. Origin, scope and method

- **Declared origin.** Description begins at the first cut: a source role and a target role
  (self-side and other-side) that make a perspective in a space. The cut is declared, not posited
  as fundamental, and neither side comes first. Corpus anchors: `reference_polarity`,
  `reflexive_reference_preserves_role_distinction` and `no_first_position` (premises held as
  `SpatiotemporalBridge` fields), all REUSED from LambdaSpatiotemporalFrame.
- **Time.** The kernel fixes no dimension count and does not name time "the fourth dimension".
  Time enters only as one representation inside the construct. From inside it, the time direction
  closes only approximately.
- **Scope of "everything".** The scope is a theory of everything that can be stated within the
  domains that use the same formalities of language and description. A question such as the
  sphinx's "are the gods real" gets its answer from what its terms and their relation are taken to
  be, and that lies outside this scope.
- **Method at the end point.** We begin in a middle we do not exclude (the first cut) and compare by
  parallax: we adopt other axioms and check whether they get behind it. Inside K1 one collision
  theorem, in its R8 form (`universal_class_is_closed`) and its frame form
  (`target_difference_blocks_factorization`), is read in four domains: role order, isomer
  recognition, turn parity and swing phase. Each reading names the added coordinate that would be
  adequate.
- **What Lean certifies.** Lean certifies the model: the propositions in the file, under their
  stated hypotheses. Whether a physical system satisfies those hypotheses is a BRIDGE. The model is
  checked to be consistent with the prior corpus Lean (Section 1 below, and `factorsThrough_iff_recovers`
  maps the frame kernel onto the seam kernel exactly).

## 1. Established and reused (corpus Lean, unchanged)

| Module | SHA-256 | Used for | Original check |
|---|---|---|---|
| UniversalRecoveryClosure | afe5ba20…2b24492 | collision argument behind every "no reading recovers" result | Lean 4.22.0, trust 0, axiom reports empty (R8) |
| ClosureConsequences | f23628d5…d1a304 | `Recovers`, `universal_class_is_closed`, `adequate_coordinate_must_distinguish`, `identity_readout_recovers` | Lean 4.22.0, trust 0, axiom reports empty (R8) |
| LambdaSpatiotemporalFrame | f1769ecd…c5be9904 | reference polarity, factorization obstruction (`FactorsThrough`) | Lean Web 4.33.0, 23 theorems, axiom-free (V1 receipt edition) |

This build: Lean 4.35.0 compiled from source at tag v4.35.0, commit eb6cafb7290e8bd5f2937522d8d804f58f02bafc.
That is the same commit as the toolchain recorded in the Axiom as Pharmakon R3 receipt.

**How K1 maps onto the prior corpus Lean.**
- Frame kernel and seam kernel. `FirstCut.factorsThrough_iff_recovers` (PROVED, `Iff.rfl`) shows
  that `FactorsThrough` (frame) and `Recovers` (R8) are the same proposition.
- Collision results. Every "cannot recover" result in K1 applies a reused theorem directly. Role
  order uses the frame's `target_difference_blocks_factorization`. Isomer recognition, turn parity
  and swing phase use R8's `universal_class_is_closed`. Each "adequate coordinate" result uses
  `adequate_coordinate_must_distinguish`.
- Edge-on reading. `EdgeOn.fold_symm` and `edge_on_cannot_recover_phase` are the index form, on n
  evenly spaced phases, of Part II's `inversion_preserves_spectral_read` (λ(z⁻¹) = λ(z)),
  `spectral_collision_has_two_branches` (z = w or zw = 1) and `spectral_read_cannot_recover_phase`.
  The count of distinct swings (n/2 + 1, `swing_positions_12`) is Part II's count ⌊g/2⌋ + 1. The
  step between the two forms (cos 2πk/n is injective for 0 ≤ k ≤ n/2) is a BRIDGE. Part II's
  theorems keep their own Mathlib receipts and are not recompiled here.
- Calendar closure. `Closure.calendar_round` is a numeric instance of Part II's
  `simultaneous_return` (joint return at the lcm).
- Sink, as correspondence only. Part II §8 says a shared level splits at first order while an
  isolated level only shifts at second order. A real conversion therefore needs a partner state at
  the same total energy (the sink). The low-field rare-earth anomaly may sit where Zeeman and
  rotational levels become shared (level crossings). That is an EMPIRICAL HYPOTHESIS here, with a
  test: map the rate against field through the crossing fields.

## 2. Established and imported (outside correspondence and measured numbers)

| Item | Source | Number or statement | Used for |
|---|---|---|---|
| Room-temperature liquid two-qubit pure states from para-H2 | Anwar, Blazina, Carteret, Duckett, Halstead, Jones, Kozak, Taylor, PRL 93, 040501 (2004) | Para-H2 made at 20 K over charcoal ("essentially pure para"). Purity 0.916 ± 0.019. Entanglement of formation 0.822 ± 0.039. Matching it by direct cooling would need a 6.4 mK spin temperature or a 0.45 MT field at room temperature | Shows that the target computation (low qubit count, entangled, sample at room temperature) has been run |
| Deutsch algorithm on those states | Anwar, Jones, Blazina, Duckett, Carteret, PRA 70, 032324 (2004) | 2 qubits | Same |
| Grover search on those states | Anwar, Blazina, Carteret, Duckett, Jones, arXiv quant-ph/0407091 (2004) | purity 1.06 ± 0.04 | Same |
| Garage-scale para-H2 generator | Chapman et al., Anal. Chem. 2021 (low-cost 50% generator, LN2 at 77 K) | Hydrated iron(III) oxide (Ionex Type OP), copper spiral in an LN2 bath: 48.1–48.4 % para at 150 sccm, about 48–49 % up to 1 L/min | Cheapest enrichment route; it lands just below the one-half threshold (Section 3, Q3) |
| Catalysis requires an inhomogeneous field | Wigner 1933, as summarized by Ilisca, PCCP 2025 | "a homogeneous magnetic field should not affect the conversion"; rate ∝ μ² d⁻⁶ | Matches `uniform_cannot_convert` / `converting_coupling_is_doubly_odd` |
| Rotational constants | standard spectroscopy | H2 B0 = 59.322 cm⁻¹, D2 B0 = 29.904 cm⁻¹ | p(T) and the rotational gap 2B |
| Werner criterion (converse direction) | Werner 1989 | a two-spin Werner state with singlet weight p ≤ 1/2 is separable | The other edge of the 1/2 threshold |
| Spin–statistics | standard (relativistic quantum theory) | exchange sign = sign after one full turn | Held as `SpinStatisticsBridge`, not proved |

## 3. Constructed here (PROVED in K1), grouped by question

### Q1. Why the relations lock as they do
- `isomer_lock`: rotation parity = statistics sign × spin class (η = σ·ε). Four corollaries:
  protons give para ↔ even J and ortho ↔ odd J; deuterons give ortho ↔ even J and para ↔ odd J.
- `FirstCut.role_blind_reading_cannot_order` and `cut_is_held_not_read`: for two identical carriers
  the roles stay distinct, yet no role-blind reading recovers which carrier comes first. In physics
  terms, the exchange constraint exists because the two nuclei are identical
  (`labelled_reading_recovers_order`: once the carriers can be told apart, as in HD, nothing locks).
- Counting: `hydrogen_families` gives 3 : 1 and `deuterium_families` gives 6 : 3. By
  `cold_family_single_iff`, the even-J (cold) family is a single state exactly for a spin-1/2
  fermion pair; a boson pair always has three or more cold states.

### Q2. What the catalyst needs, precisely
1. **A difference between the two nuclei.** By `even_cannot_convert` and `SitePair.sum_cannot_convert`,
   any coupling that commutes with spin exchange (anything identical at both nuclei) converts
   nothing.
2. **A difference between the two positions as well.** By `spin_odd_pos_even_leaves_sector` /
   `..._vanishes_in_sector`, a spin-odd coupling that cannot tell the positions apart has no effect
   inside the physical sector. By `key_converts`, a coupling odd under both exchanges converts the
   spin class, keeps the statistics and flips the rotation parity. By
   `converting_coupling_is_doubly_odd`, only such a coupling converts. Together these say the field
   must differ across the 0.74 Å bond.
3. **A sink.** By `Sink.parity_change_needs_energy`, flipping rotation parity moves the rotational
   energy by at least 2B (170.7 K for H2, 86.0 K for D2, COMPUTED from B0). By
   `conversion_changes_total_spin`, angular momentum must also be taken up.
4. **The key opens both ways.** In the models, `Hydrogen.gradient_converts_para` with
   `gradient_returns_to_para`, and `Deuterium.gradient_converts_ortho` with
   `gradient_returns_to_ortho`, show the same coupling links the two isomers in both directions. The
   sink temperature sets the direction (BRIDGE: detailed balance).
5. **Recognizing is not converting.** By `uniform_reading_cannot_recognize`, a uniform-field
   readout cannot tell para from the middle ortho state, and any adequate added coordinate must
   separate them. By `total_spin_recognizes`, an exchange-even total-spin reading recognizes the
   isomer while converting nothing.
6. **Non-vacuity, for both statistics.** Two finite models (`Model.Hydrogen`: two spin-1/2
   nuclei; `Model.Deuterium`: two spin-1 nuclei) each carry a uniform field and a field difference.
   In each, the uniform field annihilates the starting isomer and a spin difference without a
   position difference produces a state of the wrong statistics. Only the field difference produces
   the other isomer, and it has the rotation parity the lock requires.

### Q3. When stored order is entanglement
- `Witness.lagrange` (Lagrange's identity for complex 2-vectors) and `product_singlet_bound`: a
  product state has singlet weight ≤ 1/2. By `separable_singlet_bound` and
  `above_half_is_entangled`, every finite mixture of products obeys the same bound, so a singlet
  weight above 1/2 certifies entanglement.
- Combined with COMPUTED p(T) (rigid rotor), para fraction > 1/2 holds below about 77.9 K. Liquid
  nitrogen (77.36 K) sits at the edge. The imported 77 K generator reaches 48 %, below the edge.
  Pumped LN2 near 63–65 K gives p ≈ 0.61–0.62 (COMPUTED); that is the cheapest margin past it.

### Q4. The pedagogical symbols and their formal anchors
| Symbol | What it carries | Anchor in K1 | What it does not carry |
|---|---|---|---|
| Prince Rupert drop | stored order held locked; a one-way release once the right seam is touched | `even_cannot_convert` (metastable without a key); `Threshold.above_threshold_no_decrease` (a cascade that does not die) | the fracture mechanics; the catalyst key itself opens both ways (`Hydrogen.gradient_returns_to_para`), while the drop releases one way |
| Pool vortices (paired dimples) | two surface readings are the two ends of one connected structure in a further degree of freedom | `EdgeOn.edge_on_cannot_recover_phase`; `role_blind_reading_cannot_order` | any claim that the surface is "really" 2-D or that the extra freedom is a hidden object |
| Lock to an antiparticle | paired opposite signs that cannot be separated in the reading | `Sign.flip`, `TwoTurn.direction_cannot_recover_sign` | particle physics; the kernel's sign is exchange and turn parity only |
| Bose–Einstein | many in one symmetric state | `coldFamily Sign.plus`; `cold_family_single_iff` shows the picture fails for the nuclear-spin family of D2, whose cold family is six-fold | condensation thermodynamics |
| Two-turn return (belt / plate) | a sign invisible to direction readings, visible against a reference | `returns_after_two_turns`, `reference_must_separate` | the spin–statistics theorem itself (held as a bridge) |
| Calendars and the comma | closure in whole-number ratios; non-closure as residue | `calendar_round`, `pythagorean_nonclosure`, `selective_closure` (the 2 : 1 NV gate) | any cosmology |
| Fire that stays lit | below threshold the error cascade dies out; above it, it does not | `below_threshold_dies_out`, `above_threshold_no_decrease` | the constants of any particular code |

## 4. Bridges (premises the physics must supply)
- B1. Two identical nuclei with internal (spin) and orbital (rotation) parts form an `ExchangePair`.
  Total exchange = spin exchange ∘ position exchange; the statistics sign comes from
  `SpinStatisticsBridge`.
- B2. A coupling acts linearly (`RespectsSign`) and has definite parities under the two exchanges.
  General couplings decompose into the four parity classes (standard linear algebra; the paper
  states it).
- B3. A catalyst's field at the two nuclei is a `SitePair`. "Differs across the bond" means
  `PosParity … Sign.minus` for the difference part.
- B4. Rotational levels E_J = B·J(J+1) (rigid rotor). Distortion corrections move the threshold
  temperature by a fraction of a kelvin (COMPUTED in the paper).
- B5. Equilibrium para fraction p(T) follows from Boltzmann weights with nuclear degeneracies 1 : 3
  for H2 and 6 : 3 for D2.
- B6. Integer (Gaussian-integer) amplitudes stand for complex amplitudes. The witness inequality is
  homogeneous and polynomial, so scaling and density carry it to all amplitudes.
- B7. A separable state in finite dimension is a finite mixture of product states (Carathéodory,
  imported).

## 5. Computed (finite computations kept with scripts)
- p(T) for H2 and q(T) for D2, with threshold temperatures (77.94 K for H2 order kept as-is; 39.29 K
  for the D2 gate-entangleable boundary, which uses the imported Hildebrand absolutely-PPT conditions).
- D2 boundary scan and the closed form N = (7q − 6)/12. Hexapole focusing lengths. NV CNOT
  selectivity (rectangular pulse beat Gaussian in 54/54 cases).

## 6. OPEN
- Catalyst rate magnitudes (only the selection rule is proved).
- The low-field drop in conversion rate over rare-earth catalysts. Ilisca 2025 states that no
  explanation has been proposed.
- Why ferromagnetic surfaces convert (macroscopically homogeneous fields), and conversion on
  non-magnetic surfaces. K1 says what symmetry any agent must supply, not which agent supplies it.
- Field-dependent rates under homogeneous external fields (Misono and Selwood). These can act
  through the catalyst's own state without contradicting K1. That reading is untested here.
- A Lean witness for the D2 6/7 boundary. The Werner converse direction (imported only).
- The cheapest readout path for a garage build (low-field NMR) and the cheapest transfer chemistry.

## 6a. First-hand ladder (draft; the engineering record will cost and source each rung)

Each rung lets an adjudicator see one relation directly rather than take the representation on faith.
- **Rung 0, no cryogenics.** The proved relations each have a bench analogue: a belt or plate
  for the two-turn return, a rotating marker viewed edge-on for the swing collision, gear trains for
  calendar closure, a monochord for the comma, and paired pool dimples. These demonstrate the
  formal anchors, not the isomers.
- **Rung 1, liquid nitrogen.** A copper coil packed with hydrated iron(III) oxide in an LN2 bath
  (imported design, Chapman et al. 2021) gives about 48 % para. This shows the key working: without
  the catalyst no conversion happens, and warmed para persists. Readout is a thermal-conductivity
  (hot-wire) cell (imported method; to be specified).
- **Rung 2, pumped liquid nitrogen.** Pumping the bath toward 63–65 K gives p ≈ 0.61–0.62
  (COMPUTED), above the one-half threshold with about 10 points of margin. This is the cheapest
  rung at which the stored order is entanglement as-is (`Witness.above_half_is_entangled`).
- **Rung 3, addressable qubits.** Transfer the singlet order to two inequivalent nuclei
  (para-hydrogen chemistry) and read and drive them by NMR. That was done in 2004 with 20 K para-H2
  (IMPORTED). The cheapest chemistry, field and electronics for a garage version are OPEN.
- **Safety.** Hydrogen, cryogens and vacuum together (including oxygen condensing in cold lines
  that leak air) need a written protocol in the record before anyone builds.

## 7. Both edges
- **What is not claimed.** K1 does not prove that any physical sample satisfies B1–B7. It gives no
  conversion rates and no fundamentality, first position or hierarchy. "Room-temperature quantum
  computation" means a sample at room temperature carrying spin order imported from a cold step.
- **What an objection has to show.** Relabeling objects is not a counterexample. An objection must
  name a failed hypothesis, an invalid bridge or a step not preserved (structural transport,
  Double-Edged Receipt Standard v0.3, Prop. 2). In the same way, doubt about a claim is not a
  negative receipt; until a receipt exists the status is OPEN, not FALSE (Cor. 1).
