# KALICHAIN – Avalanche Subnet

KALICHAIN is an innovative Layer 1 (L1) blockchain specializing in the certification and traceability of physical products through blockchain technology. By combining NFC, blockchain, and NFTs, KALICHAIN provides each item with a tamper-proof digital passport accessible via a simple mobile scan.

Initially launched as an Ethereum fork using Proof of Authority (PoA) consensus, KALICHAIN evolved in 2025 to become an Avalanche subnet. This migration leverages the speed, scalability, and security of the Avalanche network while maintaining its mission to authenticate products and combat counterfeiting in the luxury and e-commerce sectors. As of August 5, 2025, the migration to the new Avalanche subnet is complete, marking a significant upgrade in performance and decentralization.

---
## About

KALICHAIN aims to create a secure and transparent ecosystem where every valuable product can be certified, tracked, and exchanged with confidence. To achieve this, the KALICHAIN blockchain relies on its native cryptocurrency **KALIS** and several flagship projects that illustrate its main use cases:

- **KALICERTIF**: A digital certification platform (for both products and documents) via NFTs, guaranteeing authenticity and traceability. Each physical object is linked to a unique NFT containing its information, enabling transparent verification on the blockchain.
- **KALISMARKET**: A borderless marketplace dedicated to products certified by KALICERTIF. Users can buy and sell items with the assurance of authenticity, thanks to blockchain certification that establishes a trusted environment between sellers and buyers.
- **KALISPAY**: A payment solution integrated into the ecosystem, facilitating crypto transactions. KALISPAY enables simplified, fast payments in KALIS (and other crypto assets), enhancing the user experience for purchases on KALISMARKET and within the Kalichain ecosystem.
- **KALISSA**: A fashion and luxury products brand backed by Kalichain, serving as a real-world showcase of the technology. Kalissa certifies premium products via Kalichain, demonstrating the practical application of blockchain to guarantee the authenticity of physical items.
- **KALISHARE**: A real-asset tokenization project (e.g., real estate, artworks, companies). KALISHARE paves the way for participatory and democratized investment in real-world assets, leveraging Kalichain to ensure transparency and security in these asset-sharing transactions.

Thanks to these components, the Kalichain ecosystem aims to revolutionize how we certify product authenticity and conduct exchanges, merging the physical and digital worlds in a unified, user-friendly platform.

---
## Technical Characteristics

| Parameter | Details |
|-------------------------|----------------------------------------------------------------------------------------------------------------------------|
| **Networks** | **Mainnet Subnet** (Chain ID **6533**), **Legacy Mainnet** (Chain ID **654**), and **Testnet** (Chain ID **77972**) |
| **RPC Endpoints** | - Mainnet Subnet: `https://subnets.avax.network/kalichain/mainnet/rpc`<br/>- Legacy Mainnet: `https://mainnet.kalichain.com`<br/>- Testnet: `https://subnets.avax.network/kalichain/testnet/rpc` |
| **Native Token** | **KALIS** (used for gas fees and governance) |
| **Consensus** | Proof of Stake (PoS) – Avalanche consensus (Snowman/Avalanche protocols); originally Proof of Authority (PoA) on the Ethereum fork |
| **Virtual Machine** | EVM (100% Solidity-compatible, smart contract support) |
| **Performance** | Transaction finality ~1–2 seconds, high scalability (thousands of TPS possible) |
| **Blockchain Explorers**| - Mainnet Subnet Explorer: `https://subnets.avax.network/kalichain/` or `https://scan.kalichain.com`<br/>- Legacy Mainnet Explorer: `https://explorer.kalichain.com`<br/>- Testnet Explorer: `https://subnets-test.avax.network/kalichain` |

KALICHAIN functions as an EVM-compatible blockchain, meaning developers can deploy Solidity smart contracts and use the same tools as on Ethereum. The **KALIS** token is the native currency of the network: it is used to pay transaction fees (gas) and powers the ecosystem's applications. By default, Chain ID **6533** now identifies the primary Kalichain mainnet subnet following the 2025 migration. Avalanche consensus (PoS) provides Kalichain with a high level of security and high performance without mining, through a network of validators that quickly reach agreement on the ledger's state.

### Proof of Authority (PoA) vs. Avalanche Consensus
Originally, Kalichain used PoA consensus, a permissioned mechanism where a limited set of authorized validators (using the Clique protocol in Geth) signed blocks. This allowed for fast, low-cost transactions but was more centralized, suitable for early development and controlled environments. PoA relies on trusted nodes rather than economic incentives, making it energy-efficient but less decentralized.

In contrast, as an Avalanche subnet, Kalichain now employs Avalanche's innovative PoS consensus, combining the Avalanche (for high-throughput) and Snowman (for linear chain) protocols. This metastable mechanism enables sub-second finality, high Byzantine fault tolerance, and scalability without a single leader. Validators stake AVAX (and potentially KALIS in future) to participate, promoting decentralization. The shift from PoA to Avalanche PoS enhances security, reduces centralization risks, and aligns Kalichain with Avalanche's ecosystem for better interoperability.

---
## Architecture

As an Avalanche subnet, Kalichain benefits from the underlying infrastructure and advantages of Avalanche:

- **Scalability & Speed**: Avalanche is known for its high speed and near-instant confirmations (finality in ~1 second). By adopting Avalanche consensus, Kalichain can support a high volume of transactions without congestion, ensuring a smooth user experience even during peak activity. Subnets allow horizontal scaling by isolating traffic from the main Avalanche chains (P-Chain, X-Chain, C-Chain).
- **Innovative Consensus**: Avalanche's metastable consensus mechanism (Avalanche/Snowman) does not require a single leader, ensuring high Byzantine fault tolerance and robust security. This distributed Proof-of-Stake consensus allows Kalichain to avoid centralization and to rely on a broader validator network. Unlike traditional PoS, Avalanche uses repeated subsampling for efficiency, achieving consensus in milliseconds.
- **Subnet Sovereignty**: As an Avalanche subnet, Kalichain remains a sovereign blockchain that defines its own rules, tokenomics, and membership. The Kalichain subnet can choose its validators and configure parameters (e.g., fee structure, block size) while benefiting from Avalanche's multiverse interoperability. Validators must stake AVAX on the P-Chain to validate the subnet.
- **Ecosystem Interoperability**: Integration with Avalanche facilitates interactions between Kalichain and other networks. Bridges can be more easily established to enable cross-chain token and asset exchanges. Additionally, Kalichain is compatible with Avalanche-supporting wallets, as well as MetaMask. It participates in Avalanche's R9000 Program for enhanced support and visibility.
- **Proven Infrastructure**: By migrating to Avalanche, Kalichain leverages a robust toolkit and gains additional visibility in the crypto community. This transition has been supported by programs that foster promising new subnets. Ultimately, the Avalanche architecture provides Kalichain with a modern technical foundation offering speed, security, and interoperability, far surpassing the limitations of its initial PoA setup.

---
## Subnet Information

### Mainnet Subnet
- **Token symbol**: KALIS
- **Chain ID**: 6533
- **Date created**: Feb 12, 2025, 12:19:23 PM GMT+1
- **L1 ID**: Sq7WDskUXWefX3QW3rQxEVrPczqmNbsT9Tuw1GHwftEdT9QQN
- **Blockchain ID (Base58)**: TT2vQnjSF9VZfjaA5dB1VNKVdqkVCDzSncxaMcGVwYedGaMG3
- **Blockchain ID (Hex)**: 0x3c0e2aeb18f7894c56ed1b9d7252b7ea0518a87d2cc3cb9b456f29692bbc8403
- **VM type**: Subnet-EVM
- **VM ID**: a9Hon73tR7omv7A4iEbVNXvCnSNA9ZZJg1XRSZuqUk2hkWAnh
- **RPC URL**: https://subnets.avax.network/kalichain/mainnet/rpc

### Testnet Subnet
- **Token symbol**: KALIS
- **Chain ID**: 77972
- **Date created**: Apr 17, 2025, 4:23:18 PM GMT+2
- **L1 ID**: Sq7WDskUXWefX3QW3rQxEVrPczqmNbsT9Tuw1GHwftEdT9QQN
- **Blockchain ID (Base58)**: 4fGjku3T1n3v3vB7fPjeKGNoe23m29rtftNq3QpCSv1ouaiQp
- **Blockchain ID (Hex)**: 0x084f653a1e372d048b754b6f7fd031a403ef84c8e35730bcd976afbefc48ecc3
- **VM type**: Subnet-EVM
- **VM ID**: aCVj1TBSp42q3FJTEWp5m93hLsnkPWTvdwQtefxWdCVp81P4Q
- **RPC URL**: https://subnets.avax.network/kalichain/testnet/rpc

---
## History

- **Project Origins (2021-2022)**: The Kalichain concept was developed by the French company Kalissa to address issues of counterfeiting and lack of transparency in luxury and collectible products. The initial ambition was to "tokenize" physical goods via NFTs and guarantee their authenticity using a dedicated blockchain. Technical development led to creating an Ethereum fork blockchain under Proof of Authority (PoA) using Geth. This first version of Kalichain used a Clique (PoA) consensus with a few authorized validators and adopted Chain ID **654** from the network genesis.
- **Launch of Kalichain v1 (2023)**: Kalichain launched its mainnet in 2023, marking a key milestone with the deployment of **KALICERTIF**, the NFT-based certification service. An ICO took place at the end of 2023 to support the ecosystem's development, allowing investors to acquire KALIS tokens and participate in the project's growth. During this period, Kalichain set up its dedicated block explorer and published its whitepaper detailing its vision. Late 2023 saw initial strategic partnerships and the listing of KALIS on exchanges, providing token liquidity.
- **Ecosystem Expansion (2024)**: In 2024, Kalichain enriched its application ecosystem. The Kalissa brand began selling certified products, illustrating blockchain's real-world consumer utility. The **KalisWallet** (browser and mobile) was introduced for managing KALIS and certification NFTs. In parallel, **KALISMARKET** (marketplace) and **KALISHARE** (real-asset tokenization) advanced in development. Kalichain's community grew steadily, with new users joining Telegram and Discord. Expansion efforts were undertaken abroad, particularly in Africa, to use KALICERTIF in the fight against counterfeit goods.
- **Transition to Avalanche (Early 2025)**: A major turning point came in early 2025, with Kalichain becoming an Avalanche subnet. The move brought significant infrastructure improvements (scalability, security, and broader compatibility) and marked a new era for Kalichain. Technically, the network shifted from a proprietary PoA consensus to a decentralized Avalanche consensus. RPC endpoints and the Chain ID remained the same for smooth continuity with existing dApps and wallets, while PoA nodes were replaced by Avalanche nodes. Close coordination between the Kalichain team and Ava Labs ensured a seamless migration. Kalichain joined Avalanche's R9000 Program for additional support.
- **Network Migration (August 2025)**: On August 4, 2025, a snapshot of all balances was taken at 18:00 UTC on the legacy chain. Balances were airdropped 1:1 to the new Avalanche subnet by 22:00 UTC. This upgrade, part of the R9000 Program and OVHcloud Startup Accelerator, introduced faster transactions and lower fees. Deposits on the old chain were disabled, but the legacy chain remains operational for transparency. Post-snapshot transactions are being manually reconciled. No user action was required, ensuring a smooth transition.
- **Future Steps (2025+)**: After repositioning on Avalanche, Kalichain plans to further decentralize by expanding its validator set (potentially via a future KALIS staking mechanism). The 2025 roadmap includes the official launch of **KALISMARKET** (NFT marketplace for physical products) and on-chain governance to involve the community in decision-making. Ongoing improvements to **KALICERTIF** are planned (integration of AI for fraud detection, NFT royalties on resales) alongside broader industry partnerships. The roadmap also includes possible open source expansion and collaboration with external developers, backed by the Kalichain Foundation.

---
## Usage

### Adding Kalichain to MetaMask
1. **Mainnet Subnet**
   - Open MetaMask and choose "Add Network."
   - Enter the following details:
     - **Network Name**: Kalichain Mainnet Subnet
     - **New RPC URL**: `https://subnets.avax.network/kalichain/mainnet/rpc`
     - **Chain ID**: 6533
     - **Symbol**: KALIS
     - **Block Explorer**: `https://subnets.avax.network/kalichain/`
   - Confirm to save. You can then select Kalichain in MetaMask and see your KALIS balance.
2. **Legacy Mainnet**
   - Open MetaMask and choose "Add Network."
   - Enter the following details:
     - **Network Name**: Kalichain Legacy Mainnet
     - **New RPC URL**: `https://mainnet.kalichain.com`
     - **Chain ID**: 654
     - **Symbol**: KALIS
     - **Block Explorer**: `https://explorer.kalichain.com`
   - Confirm to save.
3. **Testnet**
   - Open MetaMask and choose "Add Network."
   - Enter the following details:
     - **Network Name**: Kalichain Testnet
     - **New RPC URL**: `https://subnets.avax.network/kalichain/testnet/rpc`
     - **Chain ID**: 77972
     - **Symbol**: KALIS
     - **Block Explorer**: `https://subnets-test.avax.network/kalichain`
   - Confirm to save.

### Interacting with the Blockchain
- **Send and Receive KALIS**: Transfer KALIS tokens to Kalichain addresses (same format as Ethereum, `0x…`). Check transactions via the Kalichain explorer.
- **Check the Explorer**: Monitor network activity, transactions, addresses, and blocks. The explorer provides transparency into transaction details (hash, sender, receiver, gas, etc.).
- **Use Kalichain dApps**: Connect MetaMask (on Kalichain) to dApps in the ecosystem, such as **KALISMARKET** for purchasing products in KALIS or **Kalissa.io** to verify NFT certificates.
- **Get KALIS**: KALIS can be acquired on certain exchanges or DEX platforms. Once purchased, transfer them to your Kalichain address using the correct network. For Testnet usage, you can request free test KALIS from community faucets.
- **Other Wallets**: Because Kalichain is EVM-compatible, you can use any wallet supporting custom Ethereum networks by entering the appropriate RPC/Chain ID parameters.

### Post-Migration Notes
Following the August 2025 migration, use the Mainnet Subnet for all new activity. Legacy chain deposits are disabled, but withdrawals from supported exchanges (e.g., MEXC) may still function. Contact support@kalichain.com for any post-snapshot reconciliation.

---
## Development

Kalichain provides a full EVM environment, so developers can leverage standard Ethereum tools:

- **Remix IDE**: Deploy Solidity contracts by selecting "Injected Provider" (with MetaMask on Kalichain). Compile and deploy the contract as on Ethereum; the transaction will confirm within seconds.
- **Hardhat/Truffle**: Configure your project to include Kalichain. For example, in Hardhat, add a `kalichain` network entry (URL `https://subnets.avax.network/kalichain/mainnet/rpc`, chainId `6533`, and your deployment account). Then deploy with `npx hardhat run --network kalichain scripts/deploy.js`.
- **Avalanche Tools**: Being an Avalanche subnet, Kalichain can also work with Avalanche-related tooling like Avalanche CLI for subnet management or Core wallet integration. However, standard Ethereum tooling (Web3.js, Ethers.js, Hardhat, Truffle) remains the simplest path due to full EVM compatibility.
- **RPC & Web3 Calls**: Use libraries like Web3.js or Ethers.js, pointing to `https://subnets.avax.network/kalichain/mainnet/rpc` for Mainnet Subnet or `https://subnets.avax.network/kalichain/testnet/rpc` for Testnet. All functions (sending transactions, reading contract data, etc.) behave just as they do on Ethereum.
- **Debugging and Tools**: Tools such as Truffle Dashboard, Hardhat Monitor, or Remix's debugger can help trace contracts on Kalichain. Gas settings typically work similarly to Ethereum, with any necessary adjustments made automatically by the tools. For Avalanche-specific insights, use the subnet explorer for validator stats.

In short, developing on Kalichain mirrors Ethereum, reducing the learning curve for Web3 developers looking to build dApps, while Avalanche integration opens doors to custom subnet features like validator customization.

---
## Ecosystem

- **Official Website**: kalichain.com – Project overview, latest news, blog posts, and token purchase info.
- **Whitepaper**: whitepaper.kalichain.com – Technical architecture, KALIS tokenomics, and long-term vision.
- **Mainnet Subnet Explorer**: https://subnets.avax.network/kalichain/ – Official explorer for the Avalanche subnet.
- **Legacy Mainnet Explorer**: explorer.kalichain.com – Explorer for the original PoA mainnet.
- **Testnet Explorer**: https://subnets-test.avax.network/kalichain – Explorer for the testnet network.
- **Faucet (Testnet)**: faucet.kalichain.com – Request test KALIS for development or experimentation.
- **Kalissa (e-shop)**: kalissa.io – Showcases fashion items certified on Kalichain, each linked to a proof-of-authenticity NFT.
- **Kalicertif**: kalicertif.fr – Info on digital product passports (DPP) and how to integrate Kalicertif for product certification.
- **Kalishare**: kalishare.com – A developing platform for tokenizing real-world assets into fractional investments.
- **GitHub Repo**: github.com/KalissaIO/KALICHAIN – Source code, documentation, and issue tracking for Kalichain.

Additional resources (KALISMARKET dApp, Kalichain SDK, etc.) will be introduced as the project evolves.

---
## Roadmap

Below is an outline of the project's major milestones:

1. **2021 – Research & Conceptualization**: Originating the Kalichain idea, studying counterfeiting/certification, defining core concepts (NFTs for physical objects, KALIS token).
2. **2022 – Initial Development**: Building Kalichain v1 on Ethereum (Geth, PoA), establishing initial token parameters, and running internal tests.
3. **Early 2023 – Testnet & Audit**: Launching the Kalichain testnet, conducting stress tests, performing security audits, and fixing bugs.
4. **Mid-2023 – Mainnet v1 Launch**: Deploying the PoA Mainnet with a genesis block, distributing initial KALIS, publishing the whitepaper, and opening Kalichain.com.
5. **Late 2023 – Products & Public ICO**: Rolling out KALICERTIF, holding a public ICO, listing KALIS on exchanges, and releasing the Kalichain explorer and wallet.
6. **2024 – Ecosystem Growth**: Developing KALISMARKET (beta), integrating KALISPAY, launching KalisWallet, and growing strategic partnerships/community.
7. **Q1 2025 – Avalanche Migration**: Introducing the Kalichain subnet on Avalanche, ensuring a smooth transition from PoA to Avalanche consensus.
8. **August 2025 – Network Upgrade & Airdrop**: Completing the full migration with 1:1 airdrop, joining R9000 Program and OVHcloud Accelerator.
9. **Q2-Q4 2025 – Ecosystem Renaissance**: Marketing relaunch, KALISMARKET public release, expanding user base, initiating community governance.
10. **2026+ – Future Roadmap**: Potential KALIS staking, Kalishare's real-asset tokenization, integration of real-world oracles, improved UX, and further industrial partnerships.

(*Roadmap details may evolve; official channels provide the most up-to-date information.*)

---
## Governance

Kalichain's governance is designed to actively involve the KALIS community:

- **Token & Voting**: KALIS is both a utility and a governance token. Holding KALIS allows participation in strategic decisions (upgrades, partnerships, etc.).
- **KIP Proposals**: Community-driven proposals (Kalichain Improvement Proposals) let any member suggest technical or community initiatives.
- **Voting Methods**: Initially off-chain (snapshots of holdings), with plans for on-chain voting to enhance transparency and traceability.
- **Scope**: KALIS holders influence network upgrades, treasury usage, validator management, partnerships, and more.
- **Foundation & Council**: A non-profit foundation oversees project development. Over time, members of the council may be elected or confirmed by token holders.
- **Transparency**: All decisions and vote outcomes will be published. Kalichain aims for increasingly decentralized governance, drawing on lessons from other DAOs and subnet models, especially post-Avalanche migration.

---
## Community & Support

Kalichain offers multiple support channels and a vibrant community:

- **Website**: kalichain.com – Official announcements, blog, and FAQ.
- **Telegram (Community)**: https://t.me/kalichain – Official group with thousands of community members, ideal for quick Q&A and updates.
- **Discord (Developers & Support)**: Main hub for technical discussions, improvement proposals, and developer help.
- **Twitter (X)**: Follow "@kalichainoff" for key announcements, partnerships, ecosystem highlights, and event reminders.
- **Email**: contact@kalichain.com – For formal or private inquiries (partnerships, media, technical issues, etc.).

Kalichain can also be found on various social media and crypto forums. User, investor, or developer—everyone is welcome to contribute ideas and feedback to help the ecosystem grow.

---
## Contribution

Kalichain is open source and encourages community contributions:

1. **GitHub Repository**: Fork and create branches from github.com/KalissaIO/KALICHAIN.
2. **Issues & Bugs**: Check or open issues for bugs and feature requests.
3. **Pull Requests**: Submit PRs with clear descriptions; the team reviews and merges approved changes.
4. **Discussion**: Use Discord or GitHub issues to clarify ideas before coding.
5. **Documentation**: Enhancements to READMEs, wikis, or the whitepaper are highly valued.
6. **Testing**: Sharing dApp scripts or test cases helps identify needs and guides others.
7. **Code of Conduct**: Show respect and courtesy. Kalichain aims to be a welcoming project for all contributors.

Your contributions strengthen a blockchain ecosystem dedicated to authenticity and transparency. Every effort, whether code or documentation, supports the entire community.

---
## License

Kalichain is released under the MIT License, granting broad permissions to use and modify the code "as is," without warranty. Refer to the LICENSE file in the repository for details.

© 2025 Kalichain.

This README is a living document—feel free to suggest updates or corrections via Pull Requests.
