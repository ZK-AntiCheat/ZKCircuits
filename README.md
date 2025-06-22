# Proof of FairPlay ZKCircuits

The circuits included in this repo showcase a POC for proving the validity of a gameplay.

The repo includes 3 cictuits:
- gamePlayProver: recursive proof circuit for aggregating proofs together.
- merkleProof: showcase a proof of inclusion in the case of the detection of an evil leaf, and a proof of validity otherwise.
- stateTransition: takes the delta of each repo and regenerates a proof only for that. Effectively, operating as a state machine.

