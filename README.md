# 💰 Stablecoin on Core

## 🌐 Overview

**Stablecoin on Core** is a decentralized digital currency built on the **Core Blockchain**, designed to maintain a **stable value** pegged to a fiat currency (e.g., 1 USD = 1 cUSD).
The project ensures **price stability, transparency, and decentralization** by combining smart contract logic, collateralized reserves, and automated supply control mechanisms.

The goal is to create a **trust-minimized stable asset** that powers on-chain payments, DeFi protocols, and ecosystem dApps within the Core blockchain network.

--

## 🚀 Key Features

* 💵 **Stable Value Peg** – Maintains a 1:1 peg to fiat currency using algorithmic or collateralized mechanisms.
* 🏦 **Collateralization** – Stablecoin backed by crypto assets locked in smart contracts.
* 🔁 **Mint & Burn Mechanism** – Automated supply control to maintain price stability.
* 🔐 **Transparent Reserves** – On-chain verification of collateral backing.
* 🌍 **Multi-Wallet Support** – Compatible with MetaMask, WalletConnect, and Core wallets.
* 📊 **Dashboard Integration** – Real-time peg status, reserve ratio, and transaction volume.

---

## 🏗️ Tech Stack

| Layer                  | Technology                                            |
| ---------------------- | ----------------------------------------------------- |
| **Blockchain**         | Core Blockchain (EVM-compatible)                      |
| **Smart Contracts**    | Solidity                                              |
| **Framework**          | Hardhat / Truffle                                     |
| **Frontend**           | React.js / Next.js                                    |
| **Backend**            | Node.js / Express                                     |
| **Storage**            | IPFS / Pinata (for metadata)                          |
| **Wallet Integration** | MetaMask / WalletConnect                              |
| **Oracles**            | Chainlink / Core native oracle (for fiat price feeds) |

---

## 🧩 Smart Contract Functionalities

* `mintStablecoin()` – Mint new stablecoins by depositing collateral.
* `burnStablecoin()` – Redeem stablecoins for collateral assets.
* `updatePriceFeed()` – Fetch live fiat exchange rate from oracle.
* `checkCollateralRatio()` – Ensure minimum collateral threshold (e.g., 150%) is maintained.
* `liquidatePosition()` – Allow liquidation if collateral ratio falls below safe limits.
* `transferStablecoin()` – Peer-to-peer transfer of stablecoins.
* `getReserveBalance()` – View total collateral locked in the system.

---

## ⚙️ Installation & Setup

### 1️⃣ Clone the repository

```bash
git clone https://github.com/yourusername/Stablecoin-on-Core.git
cd Stablecoin-on-Core
```

### 2️⃣ Install dependencies

```bash
npm install
```

### 3️⃣ Configure environment variables

Create a `.env` file in the root directory and include:

```
PRIVATE_KEY=your_wallet_private_key
INFURA_PROJECT_ID=your_infura_id
CHAINLINK_ORACLE_ADDRESS=your_oracle_contract_address
```

### 4️⃣ Compile & deploy smart contracts

```bash
npx hardhat compile
npx hardhat run scripts/deploy.js --network core
```

### 5️⃣ Start the frontend

```bash
npm run dev
```

---

## 🧠 Working Mechanism

### 🪙 Collateralized Model (Example Flow)

1. **User deposits collateral** (e.g., CORE or ETH) into the smart contract.
2. The system **mints stablecoins** (e.g., 100 cUSD) at a set collateral ratio (e.g., 150%).
3. **Price Oracles** (via Chainlink) feed real-time asset prices to maintain the peg.
4. If the collateral value drops below the safe threshold, liquidation is triggered.
5. Users can **burn** stablecoins to redeem collateral at any time.

---

## 🔒 Smart Contract Example (Simplified)

```solidity
function mintStablecoin(uint256 collateralAmount) external payable {
    require(msg.value == collateralAmount, "Collateral mismatch");
    uint256 mintAmount = collateralAmount * collateralRatio / 100;
    stablecoinBalances[msg.sender] += mintAmount;
    totalSupply += mintAmount;
    emit StablecoinMinted(msg.sender, mintAmount);
}
```

---

## 📊 Example Parameters

| Parameter                 | Description          | Example            |
| ------------------------- | -------------------- | ------------------ |
| **Collateral Type**       | Supported token      | CORE / ETH         |
| **Peg Target**            | Fiat value per token | 1 USD              |
| **Collateral Ratio**      | Required minimum     | 150%               |
| **Liquidation Threshold** | Auto trigger level   | 130%               |
| **Oracle Feed**           | Price update source  | Chainlink USD feed |

---

## 🔮 Future Enhancements

* 🌐 **Multi-collateral Support** – Accept multiple assets (USDC, wETH, DAI).
* 🧠 **Algorithmic Stabilization** – Dynamic supply adjustment using on-chain governance.
* 🪶 **DAO Governance** – Community voting for interest rates and collateral ratios.
* 📱 **Mobile DApp Integration** – Stable payments via mobile wallets.
* 💹 **DeFi Integration** – Use stablecoin in lending, yield farming, and staking protocols.

---

## 🛡️ License

This project is licensed under the **MIT License** — see the [LICENSE](./LICENSE) file for details.

---

## 🤝 Contributing

Contributions and suggestions are welcome!
Fork the repository, create a branch, and submit a pull request.

---

## 📊 Vision Statement

> “A decentralized, transparent, and stable digital asset for the Core blockchain economy.”
> Enabling seamless payments, DeFi transactions, and financial inclusion through trustless stability.
