
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
