# 🧮 Counter — Foundry Practice Project

This project is a simple **Counter** smart contract used to practice the full Foundry workflow:

- writing a Solidity contract  
- compiling  
- testing  
- deploying  
- and organizing a clean Foundry project  

This serves as a complete learning mini–project before starting more advanced development.

---

## 📁 Project Structure

src/ → Main smart contracts
└─ Counter.sol

test/ → Solidity tests using forge-std
└─ Counter.t.sol

script/ → Deployment scripts
└─ Counter.s.sol

foundry.toml → Foundry configuration

yaml
Copiar código

---

## 🚀 Getting Started

### Build

```sh
forge build
Test
sh
Copiar código
forge test -vv
Format
sh
Copiar código
forge fmt
📦 Deployment
Start a local node:

sh
Copiar código
anvil
Deploy using the script:

sh
Copiar código
forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key> --broadcast
🧪 What I Practiced
How to structure a Foundry project

How to write and run unit tests in Solidity

Using forge-std (Test.sol, console.log, etc.)

Running Anvil as a local Ethereum node

Writing and executing deployment scripts

Understanding Foundry CLI commands (forge, cast, anvil)

This project is now complete and closed as a foundational practice.

📚 Foundry Documentation (Reference)
Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.

It includes:

Forge: Testing framework

Cast: CLI tools for interacting with smart contracts

Anvil: Local Ethereum node

Chisel: Solidity REPL

Documentation:
https://book.getfoundry.sh/

🛠️ Foundry Commands Reference
Build
sh
Copiar código
forge build
Test
sh
Copiar código
forge test
Format
sh
Copiar código
forge fmt
Gas Snapshots
sh
Copiar código
forge snapshot
Anvil (local node)
sh
Copiar código
anvil
Deploy Script
sh
Copiar código
forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key> --broadcast
Cast (utility commands)
sh
Copiar código
cast <subcommand>
Help
sh
Copiar código
forge --help
anvil --help
cast --help
🏁 Status
✅ Project completed as a practice exercise with Foundry.
Next step: build a full custom project from scratch.

👩‍💻 Author
Created by Daniela, practicing Solidity and Foundry step by step.