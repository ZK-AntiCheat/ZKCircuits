use trees::merkle::MerkleTree;
use std::hash::poseidon2::Poseidon2::hash;
use trees::types::{Modifier, MembershipProver, MT_Creator};

fn hasher(leaves: [Field; 2]) -> Field {
    hash(leaves, 2)
}

fn main(paths: [Field; 16], root: pub Field) {
    let mut mt = MerkleTree::new(hasher);
    let bad_hashes = [0x1376c0e4a9906befb46125f90f4d972a5e4682d2e605e0be74b2ead27a59bac3];
    // add at index 0
    mt.add(0x0, 0, paths);
    assert( root == mt.root, "the roots don't match");
    for i in 0 .. paths.len() {
        assert(paths[i] != bad_hashes[0], "evil hash detected");
    }
    // prove it is in the tree (kinda redundant isn't it?)
    // mt.membership(0x0, 0, paths);
}

//MANUAL ATTEMPT !
// let mut skip = false;

    // let mut res: Field = hash([paths[0], paths[1]], 2);
    
    // let mut p = paths;
    // for _ in 0..4 {
    //     let mut new_path: [Field] = [];
    //     for i in 0..p.len() - 1 {
    //         if skip {
    //             skip = false;
    //         } else {
    //             assert((bad_hashes[0] != paths[i]) & (bad_hashes[0] != paths[i + 1]));
    //             let interm = hash([paths[i], paths[i + 1]], 2);
    //             new_path = new_path.push_back(interm);
    //             skip = true;
    //         }
    //     }
    //     p = new_path.as_array();
    // }
