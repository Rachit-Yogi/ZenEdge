# ZenEdge - AI-Generated Art NFT

ZenEdge is a smart contract for minting NFTs of AI-generated artwork. Each NFT is unique and comes with dynamic metadata, including a name, description, and image URL. The contract is written in Solidity and is designed to be simple, self-contained, and easy to use.

---

## Features

1. **AI-Generated Art NFTs**:
   - Mint unique NFTs for AI-generated artwork.
   - Each NFT has dynamically generated metadata, including a name, description, and image URL.

2. **Dynamic Metadata**:
   - The `name` includes a prefix like "Zenedge AI Art #" followed by the token ID.
   - The `description` describes the artwork as "A unique AI-generated artwork by Zenedge."
   - The `imageURL` is dynamically generated using the token ID.

3. **No Imports or Constructors**:
   - The contract is self-contained and does not rely on external libraries or a constructor.

4. **No Input Fields**:
   - The `mint` function does not require any input fields, making it simple to use.

5. **Events**:
   - The `Minted` event is emitted when a new NFT is minted, providing transparency.

6. **Edu Chain Deployment**:
   - The contract is deployed on the **Edu Chain**, a blockchain tailored for educational purposes.

---

## Smart Contract Details

- **Contract Name**: `Zenedge`
- **Solidity Version**: `^0.8.0`
- **Deployed Address**: `0xBA4Ad6b21378b0669FbB9Cf74BD5eBD734f117dB` 

---

## How to Use

### Minting an NFT
1. Connect your wallet to the Edu Chain.
2. Call the `mint` function in the deployed contract.
3. A new NFT will be minted with dynamically generated metadata.

### Retrieving Metadata
1. Use the `getMetadata` function to retrieve the metadata for a specific token ID.
2. Pass the `tokenId` as an argument to the function.

---

## Example Metadata

For token ID `1`, the metadata might look like this:
- **Name**: `Zenedge AI Art #1`
- **Description**: `A unique AI-generated artwork by Zenedge.`
- **Image URL**: `https://zenedge.com/ai-art/1.png`

---

## Deployment Details

- **Network**: Edu Chain
- **Deployed Address**: `0xBA4Ad6b21378b0669FbB9Cf74BD5eBD734f117dB` 

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## Contributing

Contributions are welcome! If you have any suggestions or improvements, feel free to open an issue or submit a pull request.

---

## Contact

For any questions or inquiries, please reach out to [Your Email Address] or open an issue in this repository.
