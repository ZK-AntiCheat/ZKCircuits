global HONK_VK_SIZE: u32 = 128;
global HONK_PROOF_SIZE: u32 = 456;
global HONK_IDENTIFIER: u32 = 1;

fn main(
    verification_key: [Field; HONK_VK_SIZE],
    proof: [Field; HONK_PROOF_SIZE],
    public_inputs: pub [Field; 2],
    proof2: [Field; HONK_PROOF_SIZE],
    public_inputs2: pub [Field; 2],
) {
    std::verify_proof_with_type(
        verification_key,
        proof,
        public_inputs,
        0x0,
        HONK_IDENTIFIER,
    );
    std::verify_proof_with_type(
        verification_key,
        proof2,
        public_inputs2,
        0x0,
        HONK_IDENTIFIER,
    );
}