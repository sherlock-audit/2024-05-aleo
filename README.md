
# ALEO contest details

- Join [Sherlock Discord](https://discord.gg/MABEWyASkp)
- Submit findings using the issue page in your private contest repo (label issues as med or high)
- [Read for more details](https://docs.sherlock.xyz/audits/watsons)

# Q&A

# Audit scope


[snarkVM @ fddd8b92b4c6417e37d62722b3b937534dc4fb26](https://github.com/AleoNet/snarkVM/tree/fddd8b92b4c6417e37d62722b3b937534dc4fb26)
- [snarkVM/synthesizer/process/src/authorize.rs](snarkVM/synthesizer/process/src/authorize.rs)
- [snarkVM/synthesizer/process/src/cost.rs](snarkVM/synthesizer/process/src/cost.rs)
- [snarkVM/synthesizer/process/src/deploy.rs](snarkVM/synthesizer/process/src/deploy.rs)
- [snarkVM/synthesizer/process/src/evaluate.rs](snarkVM/synthesizer/process/src/evaluate.rs)
- [snarkVM/synthesizer/process/src/execute.rs](snarkVM/synthesizer/process/src/execute.rs)
- [snarkVM/synthesizer/process/src/finalize.rs](snarkVM/synthesizer/process/src/finalize.rs)
- [snarkVM/synthesizer/process/src/lib.rs](snarkVM/synthesizer/process/src/lib.rs)
- [snarkVM/synthesizer/process/src/resources/large_functions.aleo](snarkVM/synthesizer/process/src/resources/large_functions.aleo)
- [snarkVM/synthesizer/process/src/stack/authorization/bytes.rs](snarkVM/synthesizer/process/src/stack/authorization/bytes.rs)
- [snarkVM/synthesizer/process/src/stack/authorization/mod.rs](snarkVM/synthesizer/process/src/stack/authorization/mod.rs)
- [snarkVM/synthesizer/process/src/stack/authorization/serialize.rs](snarkVM/synthesizer/process/src/stack/authorization/serialize.rs)
- [snarkVM/synthesizer/process/src/stack/authorization/string.rs](snarkVM/synthesizer/process/src/stack/authorization/string.rs)
- [snarkVM/synthesizer/process/src/stack/authorize.rs](snarkVM/synthesizer/process/src/stack/authorize.rs)
- [snarkVM/synthesizer/process/src/stack/call/mod.rs](snarkVM/synthesizer/process/src/stack/call/mod.rs)
- [snarkVM/synthesizer/process/src/stack/deploy.rs](snarkVM/synthesizer/process/src/stack/deploy.rs)
- [snarkVM/synthesizer/process/src/stack/evaluate.rs](snarkVM/synthesizer/process/src/stack/evaluate.rs)
- [snarkVM/synthesizer/process/src/stack/execute.rs](snarkVM/synthesizer/process/src/stack/execute.rs)
- [snarkVM/synthesizer/process/src/stack/finalize_registers/load.rs](snarkVM/synthesizer/process/src/stack/finalize_registers/load.rs)
- [snarkVM/synthesizer/process/src/stack/finalize_registers/mod.rs](snarkVM/synthesizer/process/src/stack/finalize_registers/mod.rs)
- [snarkVM/synthesizer/process/src/stack/finalize_registers/store.rs](snarkVM/synthesizer/process/src/stack/finalize_registers/store.rs)
- [snarkVM/synthesizer/process/src/stack/finalize_types/initialize.rs](snarkVM/synthesizer/process/src/stack/finalize_types/initialize.rs)
- [snarkVM/synthesizer/process/src/stack/finalize_types/matches.rs](snarkVM/synthesizer/process/src/stack/finalize_types/matches.rs)
- [snarkVM/synthesizer/process/src/stack/finalize_types/mod.rs](snarkVM/synthesizer/process/src/stack/finalize_types/mod.rs)
- [snarkVM/synthesizer/process/src/stack/helpers/initialize.rs](snarkVM/synthesizer/process/src/stack/helpers/initialize.rs)
- [snarkVM/synthesizer/process/src/stack/helpers/matches.rs](snarkVM/synthesizer/process/src/stack/helpers/matches.rs)
- [snarkVM/synthesizer/process/src/stack/helpers/mod.rs](snarkVM/synthesizer/process/src/stack/helpers/mod.rs)
- [snarkVM/synthesizer/process/src/stack/helpers/sample.rs](snarkVM/synthesizer/process/src/stack/helpers/sample.rs)
- [snarkVM/synthesizer/process/src/stack/helpers/synthesize.rs](snarkVM/synthesizer/process/src/stack/helpers/synthesize.rs)
- [snarkVM/synthesizer/process/src/stack/mod.rs](snarkVM/synthesizer/process/src/stack/mod.rs)
- [snarkVM/synthesizer/process/src/stack/register_types/initialize.rs](snarkVM/synthesizer/process/src/stack/register_types/initialize.rs)
- [snarkVM/synthesizer/process/src/stack/register_types/matches.rs](snarkVM/synthesizer/process/src/stack/register_types/matches.rs)
- [snarkVM/synthesizer/process/src/stack/register_types/mod.rs](snarkVM/synthesizer/process/src/stack/register_types/mod.rs)
- [snarkVM/synthesizer/process/src/stack/registers/call.rs](snarkVM/synthesizer/process/src/stack/registers/call.rs)
- [snarkVM/synthesizer/process/src/stack/registers/caller.rs](snarkVM/synthesizer/process/src/stack/registers/caller.rs)
- [snarkVM/synthesizer/process/src/stack/registers/load.rs](snarkVM/synthesizer/process/src/stack/registers/load.rs)
- [snarkVM/synthesizer/process/src/stack/registers/mod.rs](snarkVM/synthesizer/process/src/stack/registers/mod.rs)
- [snarkVM/synthesizer/process/src/stack/registers/store.rs](snarkVM/synthesizer/process/src/stack/registers/store.rs)
- [snarkVM/synthesizer/process/src/tests/mod.rs](snarkVM/synthesizer/process/src/tests/mod.rs)
- [snarkVM/synthesizer/process/src/tests/test_credits.rs](snarkVM/synthesizer/process/src/tests/test_credits.rs)
- [snarkVM/synthesizer/process/src/tests/test_execute.rs](snarkVM/synthesizer/process/src/tests/test_execute.rs)
- [snarkVM/synthesizer/process/src/trace/call_metrics/mod.rs](snarkVM/synthesizer/process/src/trace/call_metrics/mod.rs)
- [snarkVM/synthesizer/process/src/trace/inclusion/mod.rs](snarkVM/synthesizer/process/src/trace/inclusion/mod.rs)
- [snarkVM/synthesizer/process/src/trace/inclusion/prepare.rs](snarkVM/synthesizer/process/src/trace/inclusion/prepare.rs)
- [snarkVM/synthesizer/process/src/trace/mod.rs](snarkVM/synthesizer/process/src/trace/mod.rs)
- [snarkVM/synthesizer/process/src/traits/mod.rs](snarkVM/synthesizer/process/src/traits/mod.rs)
- [snarkVM/synthesizer/process/src/verify_deployment.rs](snarkVM/synthesizer/process/src/verify_deployment.rs)
- [snarkVM/synthesizer/process/src/verify_execution.rs](snarkVM/synthesizer/process/src/verify_execution.rs)
- [snarkVM/synthesizer/process/src/verify_fee.rs](snarkVM/synthesizer/process/src/verify_fee.rs)
- [snarkVM/synthesizer/program/src/logic/command/await_.rs](snarkVM/synthesizer/program/src/logic/command/await_.rs)
- [snarkVM/synthesizer/program/src/logic/command/branch.rs](snarkVM/synthesizer/program/src/logic/command/branch.rs)
- [snarkVM/synthesizer/program/src/logic/command/contains.rs](snarkVM/synthesizer/program/src/logic/command/contains.rs)
- [snarkVM/synthesizer/program/src/logic/command/get.rs](snarkVM/synthesizer/program/src/logic/command/get.rs)
- [snarkVM/synthesizer/program/src/logic/command/get_or_use.rs](snarkVM/synthesizer/program/src/logic/command/get_or_use.rs)
- [snarkVM/synthesizer/program/src/logic/command/mod.rs](snarkVM/synthesizer/program/src/logic/command/mod.rs)
- [snarkVM/synthesizer/program/src/logic/command/position.rs](snarkVM/synthesizer/program/src/logic/command/position.rs)
- [snarkVM/synthesizer/program/src/logic/command/rand_chacha.rs](snarkVM/synthesizer/program/src/logic/command/rand_chacha.rs)
- [snarkVM/synthesizer/program/src/logic/command/remove.rs](snarkVM/synthesizer/program/src/logic/command/remove.rs)
- [snarkVM/synthesizer/program/src/logic/command/set.rs](snarkVM/synthesizer/program/src/logic/command/set.rs)
- [snarkVM/synthesizer/program/src/logic/finalize_global_state/mod.rs](snarkVM/synthesizer/program/src/logic/finalize_global_state/mod.rs)
- [snarkVM/synthesizer/program/src/logic/finalize_operation/bits.rs](snarkVM/synthesizer/program/src/logic/finalize_operation/bits.rs)
- [snarkVM/synthesizer/program/src/logic/finalize_operation/bytes.rs](snarkVM/synthesizer/program/src/logic/finalize_operation/bytes.rs)
- [snarkVM/synthesizer/program/src/logic/finalize_operation/mod.rs](snarkVM/synthesizer/program/src/logic/finalize_operation/mod.rs)
- [snarkVM/synthesizer/program/src/logic/finalize_operation/serialize.rs](snarkVM/synthesizer/program/src/logic/finalize_operation/serialize.rs)
- [snarkVM/synthesizer/program/src/logic/finalize_operation/string.rs](snarkVM/synthesizer/program/src/logic/finalize_operation/string.rs)
- [snarkVM/synthesizer/program/src/logic/instruction/bytes.rs](snarkVM/synthesizer/program/src/logic/instruction/bytes.rs)
- [snarkVM/synthesizer/program/src/logic/instruction/mod.rs](snarkVM/synthesizer/program/src/logic/instruction/mod.rs)
- [snarkVM/synthesizer/program/src/logic/instruction/opcode/mod.rs](snarkVM/synthesizer/program/src/logic/instruction/opcode/mod.rs)
- [snarkVM/synthesizer/program/src/logic/instruction/operand/bytes.rs](snarkVM/synthesizer/program/src/logic/instruction/operand/bytes.rs)
- [snarkVM/synthesizer/program/src/logic/instruction/operand/mod.rs](snarkVM/synthesizer/program/src/logic/instruction/operand/mod.rs)
- [snarkVM/synthesizer/program/src/logic/instruction/operand/parse.rs](snarkVM/synthesizer/program/src/logic/instruction/operand/parse.rs)
- [snarkVM/synthesizer/program/src/logic/instruction/operation/assert.rs](snarkVM/synthesizer/program/src/logic/instruction/operation/assert.rs)
- [snarkVM/synthesizer/program/src/logic/instruction/operation/async_.rs](snarkVM/synthesizer/program/src/logic/instruction/operation/async_.rs)
- [snarkVM/synthesizer/program/src/logic/instruction/operation/call.rs](snarkVM/synthesizer/program/src/logic/instruction/operation/call.rs)
- [snarkVM/synthesizer/program/src/logic/instruction/operation/cast.rs](snarkVM/synthesizer/program/src/logic/instruction/operation/cast.rs)
- [snarkVM/synthesizer/program/src/logic/instruction/operation/commit.rs](snarkVM/synthesizer/program/src/logic/instruction/operation/commit.rs)
- [snarkVM/synthesizer/program/src/logic/instruction/operation/hash.rs](snarkVM/synthesizer/program/src/logic/instruction/operation/hash.rs)
- [snarkVM/synthesizer/program/src/logic/instruction/operation/is.rs](snarkVM/synthesizer/program/src/logic/instruction/operation/is.rs)
- [snarkVM/synthesizer/program/src/logic/instruction/operation/literals.rs](snarkVM/synthesizer/program/src/logic/instruction/operation/literals.rs)
- [snarkVM/synthesizer/program/src/logic/instruction/operation/macros.rs](snarkVM/synthesizer/program/src/logic/instruction/operation/macros.rs)
- [snarkVM/synthesizer/program/src/logic/instruction/operation/mod.rs](snarkVM/synthesizer/program/src/logic/instruction/operation/mod.rs)
- [snarkVM/synthesizer/program/src/logic/instruction/operation/sign_verify.rs](snarkVM/synthesizer/program/src/logic/instruction/operation/sign_verify.rs)
- [snarkVM/synthesizer/program/src/logic/instruction/parse.rs](snarkVM/synthesizer/program/src/logic/instruction/parse.rs)
- [snarkVM/synthesizer/program/src/logic/mod.rs](snarkVM/synthesizer/program/src/logic/mod.rs)
- [snarkVM/synthesizer/src/vm/authorize.rs](snarkVM/synthesizer/src/vm/authorize.rs)
- [snarkVM/synthesizer/src/vm/deploy.rs](snarkVM/synthesizer/src/vm/deploy.rs)
- [snarkVM/synthesizer/src/vm/execute.rs](snarkVM/synthesizer/src/vm/execute.rs)
- [snarkVM/synthesizer/src/vm/finalize.rs](snarkVM/synthesizer/src/vm/finalize.rs)
- [snarkVM/synthesizer/src/vm/helpers/committee.rs](snarkVM/synthesizer/src/vm/helpers/committee.rs)
- [snarkVM/synthesizer/src/vm/helpers/macros.rs](snarkVM/synthesizer/src/vm/helpers/macros.rs)
- [snarkVM/synthesizer/src/vm/helpers/mod.rs](snarkVM/synthesizer/src/vm/helpers/mod.rs)
- [snarkVM/synthesizer/src/vm/helpers/rewards.rs](snarkVM/synthesizer/src/vm/helpers/rewards.rs)
- [snarkVM/synthesizer/src/vm/mod.rs](snarkVM/synthesizer/src/vm/mod.rs)
- [snarkVM/synthesizer/src/vm/verify.rs](snarkVM/synthesizer/src/vm/verify.rs)


