# KALICHAIN – Avalanche Subnet

KALICHAIN is an innovative Layer 1 (L1) blockchain specializing in the certification and traceability of physical products through blockchain technology. By combining NFC, blockchain, and NFTs, KALICHAIN provides each item with a tamper-proof digital passport accessible via a simple mobile scan.

Initially launched as an Ethereum fork, KALICHAIN evolved in 2025 to become an Avalanche subnet, benefiting from the speed, scalability, and security of the Avalanche network while maintaining its mission to authenticate products and combat counterfeiting in the luxury and e-commerce sectors.

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

| Parameter               | Details                                                                                                                    |
|-------------------------|----------------------------------------------------------------------------------------------------------------------------|
| **Networks**            | **Mainnet** (Chain ID **654**), **mainnet Subnet** (Chain ID **6533**), and **Testnet** (Chain ID **653**)                   |
| **RPC Endpoints**       | - Mainnet: `https://mainnet.kalichain.com`<br/>- mainnet Subnet: `https://subnets.avax.network/kalichain/mainnet/rpc`<br/>- Testnet: `https://testnet.kalichain.com` |
| **Native Token**        | **KALIS** (used for gas fees and governance)                                                                               |
| **Consensus**           | Proof of Stake (PoS) – Avalanche consensus (Snowman/Avalanche protocols)                                                  |
| **Virtual Machine**     | EVM (100% Solidity-compatible, smart contract support)                                                                     |
| **Performance**         | Transaction finality ~1–2 seconds, high scalability (thousands of TPS possible)                                           |
| **Blockchain Explorers**| - Mainnet Explorer: `explorer.kalichain.com` <br/>- mainnet Explorer: `scan.kalichain.com`                                    |

KALICHAIN functions as an EVM-compatible blockchain, meaning developers can deploy Solidity smart contracts and use the same tools as on Ethereum. The **KALIS** token is the native currency of the network: it is used to pay transaction fees (gas) and powers the ecosystem’s applications. By default, Chain ID **654** identifies the main Kalichain network; Chain ID **653** is used for the Testnet; and Chain ID **6533** is used for the new mainnet Subnet. Avalanche consensus (PoS) provides Kalichain with a high level of security and high performance without mining, through a network of validators that quickly reach agreement on the ledger’s state.

---

## Architecture

As an Avalanche subnet, Kalichain benefits from the underlying infrastructure and advantages of Avalanche:

- **Scalability & Speed**: Avalanche is known for its high speed and near-instant confirmations (finality in ~1 second). By adopting Avalanche consensus, Kalichain can support a high volume of transactions without congestion, ensuring a smooth user experience even during peak activity.

- **Innovative Consensus**: Avalanche’s metastable consensus mechanism (Avalanche/Snowman) does not require a single leader, ensuring high Byzantine fault tolerance and robust security. This distributed Proof-of-Stake consensus allows Kalichain to avoid centralization and to rely on a broader validator network.

- **Subnet Sovereignty**: As an Avalanche subnet, Kalichain remains a sovereign blockchain that defines its own rules, tokenomics, and membership. The Kalichain subnet can choose its validators and configure parameters (e.g., fee structure, block size) while benefiting from Avalanche’s multiverse interoperability.

- **Ecosystem Interoperability**: Integration with Avalanche facilitates interactions between Kalichain and other networks. Bridges can be more easily established to enable cross-chain token and asset exchanges. Additionally, Kalichain is compatible with Avalanche-supporting wallets, as well as MetaMask.

- **Proven Infrastructure**: By migrating to Avalanche, Kalichain leverages a robust toolkit and gains additional visibility in the crypto community. This transition has been supported by programs that foster promising new subnets. Ultimately, the Avalanche architecture provides Kalichain with a modern technical foundation offering speed, security, and interoperability.

---

## History

- **Project Origins (2021-2022)**: The Kalichain concept was developed by the French company Kalissa to address issues of counterfeiting and lack of transparency in luxury and collectible products. The initial ambition was to “tokenize” physical goods via NFTs and guarantee their authenticity using a dedicated blockchain. Technical development led to creating an Ethereum fork blockchain under Proof of Authority (PoA) using Geth. This first version of Kalichain used a Clique (PoA) consensus with a few authorized validators and adopted Chain ID **654** from the network genesis.

- **Launch of Kalichain v1 (2023)**: Kalichain launched its mainnet in 2023, marking a key milestone with the deployment of **KALICERTIF**, the NFT-based certification service. An ICO took place at the end of 2023 to support the ecosystem’s development, allowing investors to acquire KALIS tokens and participate in the project’s growth. During this period, Kalichain set up its dedicated block explorer and published its whitepaper detailing its vision. Late 2023 saw initial strategic partnerships and the listing of KALIS on exchanges, providing token liquidity.

- **Ecosystem Expansion (2024)**: In 2024, Kalichain enriched its application ecosystem. The Kalissa brand began selling certified products, illustrating blockchain’s real-world consumer utility. The **KalisWallet** (browser and mobile) was introduced for managing KALIS and certification NFTs. In parallel, **KALISMARKET** (marketplace) and **KALISHARE** (real-asset tokenization) advanced in development. Kalichain’s community grew steadily, with new users joining Telegram and Discord. Expansion efforts were undertaken abroad, particularly in Africa, to use KALICERTIF in the fight against counterfeit goods.

- **Transition to Avalanche (2025)**: A major turning point came in early 2025, with Kalichain becoming an Avalanche subnet. The move brought significant infrastructure improvements (scalability, security, and broader compatibility) and marked a new era for Kalichain. Technically, the network shifted from a proprietary PoA consensus to a decentralized Avalanche consensus. RPC endpoints and the Chain ID remained the same for smooth continuity with existing dApps and wallets, while PoA nodes were replaced by Avalanche nodes. Close coordination between the Kalichain team and Ava Labs ensured a seamless migration.

- **Future Steps (2025+)**: After repositioning on Avalanche, Kalichain plans to further decentralize by expanding its validator set (potentially via a future KALIS staking mechanism). The 2025 roadmap includes the official launch of **KALISMARKET** (NFT marketplace for physical products) and on-chain governance to involve the community in decision-making. Ongoing improvements to **KALICERTIF** are planned (integration of AI for fraud detection, NFT royalties on resales) alongside broader industry partnerships. The roadmap also includes possible open source expansion and collaboration with external developers, backed by the Kalichain Foundation.

---

## Usage

### Adding Kalichain to MetaMask

1. **Manual Addition**  
   - Open MetaMask and choose “Add Network.”  
   - Enter the following Kalichain Mainnet details:  
     - **Network Name**: Kalichain Mainnet  
     - **New RPC URL**: `https://mainnet.kalichain.com`  
     - **Chain ID**: 654  
     - **Symbol**: KALIS  
     - **Block Explorer**: `https://explorer.kalichain.com`  
   - Confirm to save. You can then select Kalichain in MetaMask and see your KALIS balance (import the KALIS token if needed).
  
   -  **UPDATE KALICHAIN **  
   - Open MetaMask and choose “Add Network.”  
   - Enter the following Kalichain Mainnet details:  
     - **Network Name**: Kalichain Mainnet  
     - **New RPC URL**: `https://subnets.avax.network/kalichain/mainnet/rpc`  
     - **Chain ID**: 6533  
     - **Symbol**: KALIS  
     - **Block Explorer**: `https://scan.kalichain.com`  
   - Confirm to save. You can then select Kalichain in MetaMask and see your KALIS balance (import the KALIS token if needed).

2. **Other Methods**  
   - Kalichain may also be added through network lists or tools that automate custom network addition in MetaMask. If using such a service, simply search for “Kalichain” and follow the prompts.

> **Note**: The Testnet RPC is `https://testnet.kalichain.com` with Chain ID **653**, allowing experimentation without real funds.

### Interacting with the Blockchain

- **Send and Receive KALIS**: Transfer KALIS tokens to Kalichain addresses (same format as Ethereum, `0x…`). Check transactions via the Kalichain explorer.

- **Check the Explorer**: Monitor network activity, transactions, addresses, and blocks. The explorer provides transparency into transaction details (hash, sender, receiver, gas, etc.).

- **Use Kalichain dApps**: Connect MetaMask (on Kalichain) to dApps in the ecosystem, such as **KALISMARKET** for purchasing products in KALIS or **Kalissa.io** to verify NFT certificates.

- **Get KALIS**: KALIS can be acquired on certain exchanges or DEX platforms. Once purchased, transfer them to your Kalichain address using the correct network. For Testnet usage, you can request free test KALIS from community faucets.

- **Other Wallets**: Because Kalichain is EVM-compatible, you can use any wallet supporting custom Ethereum networks by entering the appropriate RPC/Chain ID parameters.

---

## Development

Kalichain provides a full EVM environment, so developers can leverage standard Ethereum tools:

- **Remix IDE**: Deploy Solidity contracts by selecting “Injected Provider” (with MetaMask on Kalichain). Compile and deploy the contract as on Ethereum; the transaction will confirm within seconds.

- **Hardhat/Truffle**: Configure your project to include Kalichain. For example, in Hardhat, add a `kalichain` network entry (URL `https://mainnet.kalichain.com`, chainId `654`, and your deployment account). Then deploy with `npx hardhat run --network kalichain scripts/deploy.js`.

- **Avalanche Tools**: Being an Avalanche subnet, Kalichain can also work with Avalanche-related tooling. However, standard Ethereum tooling (Web3.js, Ethers.js, Hardhat, Truffle) remains the simplest path due to full EVM compatibility.

- **RPC & Web3 Calls**: Use libraries like Web3.js or Ethers.js, pointing to `https://mainnet.kalichain.com`. All functions (sending transactions, reading contract data, etc.) behave just as they do on Ethereum.

- **Debugging and Tools**: Tools such as Truffle Dashboard, Hardhat Monitor, or Remix’s debugger can help trace contracts on Kalichain. Gas settings typically work similarly to Ethereum, with any necessary adjustments made automatically by the tools.

In short, developing on Kalichain mirrors Ethereum, reducing the learning curve for Web3 developers looking to build dApps.

---

## Ecosystem

- **Official Website**: kalichain.com – Project overview, latest news, blog posts, and token purchase info.  
- **Whitepaper**: whitepaper.kalichain.com – Technical architecture, KALIS tokenomics, and long-term vision.  
- **Kalichain Explorer**: explorer.kalichain.com – Official explorer for mainnet and testnet, showing network stats in real time.  
- **Faucet (Testnet)**: TBA – Request test KALIS for development or experimentation.  
- **Kalissa (e-shop)**: kalissa.io – Showcases fashion items certified on Kalichain, each linked to a proof-of-authenticity NFT.  
- **Kalicertif**: kalicertif.fr – Info on digital product passports (DPP) and how to integrate Kalicertif for product certification.  
- **Kalishare**: kalishare.com – A developing platform for tokenizing real-world assets into fractional investments.  
- **GitHub Repo**: github.com/KalissaIO/KALICHAIN – Source code, documentation, and issue tracking for Kalichain.  

Additional resources (KALISMARKET dApp, Kalichain SDK, etc.) will be introduced as the project evolves.

---

## Roadmap

Below is an outline of the project’s major milestones:

1. **2021 – Research & Conceptualization**: Originating the Kalichain idea, studying counterfeiting/certification, defining core concepts (NFTs for physical objects, KALIS token).  
2. **2022 – Initial Development**: Building Kalichain v1 on Ethereum (Geth, PoA), establishing initial token parameters, and running internal tests.  
3. **Early 2023 – Testnet & Audit**: Launching the Kalichain testnet, conducting stress tests, performing security audits, and fixing bugs.  
4. **Mid-2023 – Mainnet v1 Launch**: Deploying the PoA Mainnet with a genesis block, distributing initial KALIS, publishing the whitepaper, and opening Kalichain.com.  
5. **Late 2023 – Products & Public ICO**: Rolling out KALICERTIF, holding a public ICO, listing KALIS on exchanges, and releasing the Kalichain explorer and wallet.  
6. **2024 – Ecosystem Growth**: Developing KALISMARKET (beta), integrating KALISPAY, launching KalisWallet, and growing strategic partnerships/community.  
7. **Q1 2025 – Avalanche Migration**: Introducing the Kalichain subnet on Avalanche, ensuring a smooth transition from PoA to Avalanche consensus.  
8. **Q2 2025 – Ecosystem Renaissance**: Marketing relaunch, KALISMARKET public release, expanding user base, initiating community governance.  
9. **2025+ – Future Roadmap**: Potential KALIS staking, Kalishare’s real-asset tokenization, integration of real-world oracles, improved UX, and further industrial partnerships.  

(*Roadmap details may evolve; official channels provide the most up-to-date information.*)

---

## Governance

Kalichain’s governance is designed to actively involve the KALIS community:

- **Token & Voting**: KALIS is both a utility and a governance token. Holding KALIS allows participation in strategic decisions (upgrades, partnerships, etc.).  
- **KIP Proposals**: Community-driven proposals (Kalichain Improvement Proposals) let any member suggest technical or community initiatives.  
- **Voting Methods**: Initially off-chain (snapshots of holdings), with plans for on-chain voting to enhance transparency and traceability.  
- **Scope**: KALIS holders influence network upgrades, treasury usage, validator management, partnerships, and more.  
- **Foundation & Council**: A non-profit foundation oversees project development. Over time, members of the council may be elected or confirmed by token holders.  
- **Transparency**: All decisions and vote outcomes will be published. Kalichain aims for increasingly decentralized governance, drawing on lessons from other DAOs and subnet models.

---

## Community & Support

Kalichain offers multiple support channels and a vibrant community:

- **Website**: kalichain.com – Official announcements, blog, and FAQ.  
- **Telegram (Community)**: An official group with thousands of community members, ideal for quick Q&A and updates https://t.me/kalichain .  
- **Discord (Developers & Support)**: Main hub for technical discussions, improvement proposals, and developer help.  
- **Twitter (X)**: Follow “@kalichainoff” for key announcements, partnerships, ecosystem highlights, and event reminders.  
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

Kalichain is released under the MIT License, granting broad permissions to use and modify the code “as is,” without warranty. Refer to the LICENSE file in the repository for details.

© 2025 Kalichain.  
This README is a living document—feel free to suggest updates or corrections via Pull Requests.
