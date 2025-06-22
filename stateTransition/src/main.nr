use std::hash::poseidon2::Poseidon2::hash;


fn main(old_path: [Field; 16], paths: [Field; 16]) {
    let bad_hashes = [0x1376c0e4a9909befb46125f90f4d972a5e4682d2e605e0be74b2ead27a59bac3];
    for i in 0 .. paths.len() {
        if old_path[i] != paths[i] {
            assert(paths[i] != bad_hashes[0]);
        }
    }
}

