
# ALEO contest details

- Join [Sherlock Discord](https://discord.gg/MABEWyASkp)
- Submit findings using the issue page in your private contest repo (label issues as med or high)
- [Read for more details](https://docs.sherlock.xyz/audits/watsons)

# Q&A

### Q: On what chains are the smart contracts going to be deployed?
This is low-level logic for a new ZKVM Layer-1 network. 
___

### Q: If you are integrating tokens, are you allowing only whitelisted tokens to work with the codebase or any complying with the standard? Are they assumed to have certain properties, e.g. be non-reentrant? Are there any types of [weird tokens](https://github.com/d-xo/weird-erc20) you want to integrate?
N/A
___

### Q: Are the admins of the protocols your contracts integrate with (if any) TRUSTED or RESTRICTED? If these integrations are trusted, should auditors also assume they are always responsive, for example, are oracles trusted to provide non-stale information, or VRF providers to respond within a designated timeframe?
No
___

### Q: Are there any protocol roles? Please list them and provide whether they are TRUSTED or RESTRICTED, or provide a more comprehensive description of what a role can and can't do/impact.
No
___

### Q: For permissioned functions, please list all checks and requirements that will be made before calling the function.
There are no functions that have a specific permissioned party/ies. There are requirements for certain functions to be called (e..g, to bond as a validator you need to have the requisite amount of Aleo credits staked/delegated to you).
___

### Q: Is the codebase expected to comply with any EIPs? Can there be/are there any deviations from the specification?
N/A
___

### Q: Are there any off-chain mechanisms or off-chain procedures for the protocol (keeper bots, arbitrage bots, etc.)?
No
___

### Q: Are there any hardcoded values that you intend to change before (some) deployments?
No, although the limit for delegation (10,000 Aleo credits) and validator bonding (10M ACs) is expected to decrease over time, to allow for broader participation in the protocol.
___

### Q: If the codebase is to be deployed on an L2, what should be the behavior of the protocol in case of sequencer issues (if applicable)? Should Sherlock assume that the Sequencer won't misbehave, including going offline?
N/A
___

### Q: Should potential issues, like broken assumptions about function behavior, be reported if they could pose risks in future integrations, even if they might not be an issue in the context of the scope? If yes, can you elaborate on properties/invariants that should hold?
No
___

### Q: Please discuss any design choices you made.
See this document (and Section 3 specifically) for the relevant design choices. 

https://docs.google.com/document/d/1hBNolEE-WXM5E_0CChsS3uT2kgzgzTTC-VDRVOFICJM/edit#heading=h.7492flf47nuv
___

### Q: Please list any known issues and explicitly state the acceptable risks for each known issue.
The risks enumerated from previous audits have been addressed, and if they have not, they are acceptable. 
___

### Q: We will report issues where the core protocol functionality is inaccessible for at least 7 days. Would you like to override this value?
No
___

### Q: Please provide links to previous audits (if any).
https://aleo.org/post/aleo-completes-security-audits-of-snarkos-and-snarkvm/-
___

### Q: Please list any relevant protocol resources.
https://hackmd.io/@xgDffy5PRWCkYlX-Fn5m4w/rkxzq30VR-
___

### Q: Additional audit information.
Scope: credits.aleo

In scope issues exist in credits.aleo or can have a root cause in any downstream component of the file. For example- An incorrect translation from a credits.aleo instruction to SnarkVM opcode, or an issue in the underlying R1CS gadget that an Aleo instruction uses (assuming credits.aleo functionality is impacted by the issue). The rule of thumb is that the issue needs to affect the functionality defined in credits.aleo to be in scope.

Issues of medium severity or higher that affect the Aleo network, while not specifically in the scope credits.aleo and its dependencies, are still valuable to the Aleo team if reported. Therefore we have introduced a third category of issue for out of scope issues that still affect Aleo as a whole. This category will be worth 20% of a medium. The general rule of thumb for issues eligible for this category will be if the issue affects the general health of the Aleo network.

Example issue eligible for this pool are:
- Denial of service issues affecting the network (from p2p, bad blocks or transactions, RPC methods, etc.)
- Validator grieving issues (eg. an attacker can penalized honest validators)
- Issues affecting Aleo’s consensus
- Issues in critical Aleo algorithm dependencies (eg. hashing libraries used by Aleo)
- Issues in the Synthesizer, Aleo instructions, opcodes, or other dependencies of the SnarkVM that effect chain health but are not direct dependencies of credits.aleo
- Inflation bugs or other issues where credits are incorrectly created or destroyed that are not already covered by the in-scope prize pool
- Issues in the underlying Varuna proof system (specification or implementation)

Example issues that are not eligible for this pool:
- Inconsistencies in code comments
- Issues with compilation that do not affect the network (eg. “this does not compile on platform X”)
- Block stuffing attacks that are not free or unreasonably cheap
- Divergences from out of date parts of the spec/whitepaper
___



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


