# Solidity Smart Contracts Repository

![License](https://img.shields.io/badge/License-MIT-green) ![Solidity](https://img.shields.io/badge/Solidity-0.8.0-blue) ![Foundry](https://img.shields.io/badge/Build-Foundry-orange)

Welcome to the **Solidity Smart Contracts** repository! 🎉 This is a collection of smart contracts I've written and deployed as part of my journey into blockchain development. Here, you’ll find various projects showcasing my skills and experiments with Solidity, ranging from beginner-level implementations to advanced concepts.

## 🛠 Projects Overview

### 1. **HusteemDevs**
   - **Description:** A contract that integrates a whitelist mechanism and allows conditional NFT minting for whitelisted and non-whitelisted users.
   - **Features:**
     - Whitelist implementation via `Counter` contract.
     - Minting NFTs with distinct conditions for users.
     - Integrated with `Ownable` contract for secure ownership management.
   - **Tools:** Solidity, Foundry, OpenZeppelin.

### 2. **Husteem Exchange**
   - **Description:** A decentralized exchange (DEX) project.
   - **Features:**
     - Token swaps.
     - Constructor-based integration with previously deployed token contracts.
   - **Challenges Solved:** Import resolution for OpenZeppelin contracts.

### 3. **Other Notable Contracts**
   - **BasicToken.sol:** A minimal ERC-20 token implementation.
   - **VotingSystem.sol:** A decentralized voting mechanism.
   - **EscrowContract.sol:** A simple escrow service for secure transactions.

## 🚀 Getting Started

Follow these steps to explore or contribute to the repository:

1. **Clone the Repository**
   ```bash
   git clone https://github.com/Husteem/Solidity.git
   cd Solidity
   ```

2. **Install Dependencies**
   Make sure you have [Node.js](https://nodejs.org/) and [Foundry](https://book.getfoundry.sh/) installed.

3. **Compile Contracts**
   ```bash
   forge build
   ```

4. **Run Tests**
   ```bash
   forge test
   ```

## 📂 Directory Structure

```
Solidity/
├── contracts/        # Solidity contract files
├── scripts/          # Deployment and interaction scripts
├── test/             # Test cases for smart contracts
├── artifacts/        # Compiled contract artifacts
└── README.md         # Project documentation
```

![Directory Structure](https://via.placeholder.com/800x400.png?text=Directory+Structure)

## 📋 Prerequisites

To work with the contracts, ensure you have:
- Solidity compiler (0.8.0 or later)
- Node.js and npm
- Foundry or Hardhat for development

## 🛡 Security

Security is a priority in smart contract development. The following measures have been implemented:
- Thorough testing with edge cases.
- Use of OpenZeppelin libraries for secure implementation.
- Proper access control via `Ownable` and other patterns.

## 🌟 Contributions

Contributions are welcome! If you have ideas to improve the repository or spot any issues:

1. Fork the repository.
2. Create a new branch: `git checkout -b feature-name`.
3. Commit your changes: `git commit -m 'Add feature'`.
4. Push to your branch: `git push origin feature-name`.
5. Open a pull request.

## 📧 Contact

If you have any questions, feel free to reach out:
- **GitHub:** [Husteem](https://github.com/Husteem)
- **Email:** [your-email@example.com](mailto:your-email@example.com)

## 🔖 License

This project is licensed under the [MIT License](LICENSE).

---

Thank you for exploring this repository! 😊 If you find it useful, don't forget to star ⭐ the project!
