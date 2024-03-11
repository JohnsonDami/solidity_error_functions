# Access-Controlled Ownership Contract**

## Overview

This Solidity smart contract implements a basic access control mechanism for contract ownership. It demonstrates the use of `require()`, `assert()`, and `revert()` statements for error handling and validation.

## Description

The contract establishes an `owner` variable that stores the address of the authorized owner. Only the current owner can call the `changeOwner()` function to transfer ownership to a new address.

* `require()` is used to ensure that the initial owner address is not zero, preventing an invalid state.
* `assert()` is used internally to verify assumptions about the contract's state during development and testing. It's expected that a failing `assert()` indicates a bug in the code.
* `revert()` is used to gracefully terminate transactions when unauthorized attempts to change ownership occur or when the new owner address is invalid.

This contract serves as a foundational example for building more complex access control systems within your Solidity projects.

## Getting Started

### Prerequisites

* **Solidity Compiler:** Ensure you have a Solidity compiler installed (version 0.8.17 or later recommended). You can find installation instructions at [https://docs.soliditylang.org/](https://docs.soliditylang.org/).
* **Solidity Development Environment:** Choose a code editor or IDE with Solidity support, such as Remix ([https://remix.ethereum.org/](https://remix.ethereum.org/)) or Visual Studio Code with the Solidity extension.

### Deployment

1. **Compile the Contract:** Use the Solidity compiler to generate the bytecode and Application Binary Interface (ABI) from the `Owned.sol` contract file. This step varies depending on your chosen environment.
2. **Deploy to Blockchain:** Interact with a blockchain network (e.g., local test network or mainnet) using a web3 provider or a blockchain explorer to deploy the contract. This typically involves sending a transaction that includes the compiled bytecode and any necessary constructor arguments.

**Note:** Deploying to a public blockchain like Ethereum incurs transaction fees. Consider using a local test network for development and testing purposes.

## Usage

1. **Set Initial Owner:** During deployment, provide the address of the initial contract owner as a constructor argument.
2. **Transfer Ownership (Authorized):** The current owner can call the `changeOwner()` function, specifying the address of the new owner. This transaction must originate from the current owner's account.

## Help

**Common Issues:**

* **Transaction Reverted:** This may occur if the caller attempts to change ownership without being the current owner or if the new owner address is invalid (zero address).

**Troubleshooting:**

* Verify that the transaction originates from the current owner's account.
* Double-check that the new owner address is valid.


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
