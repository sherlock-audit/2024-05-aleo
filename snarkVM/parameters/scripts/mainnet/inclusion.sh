# Generates the inclusion proving and verifying key.

# Inputs: network

cargo run --release --example inclusion mainnet -- --nocapture || exit

mv inclusion.metadata ../../src/mainnet/resources || exit
mv inclusion.prover.* ~/.aleo/resources || exit
mv inclusion.verifier ../../src/mainnet/resources || exit
