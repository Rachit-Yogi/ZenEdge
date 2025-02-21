pragma solidity ^0.8.0;

contract AIGeneratedArtNFT {
    // Struct to store metadata for each NFT
    struct ArtMetadata {
        string name;
        string description;
        string imageURL;
    }

    // Counter for token IDs
    uint256 private _tokenIdCounter;

    // Mapping from token ID to metadata
    mapping(uint256 => ArtMetadata) private _tokenMetadata;

    // Event emitted when a new NFT is minted
    event Minted(uint256 indexed tokenId, string name, string description, string imageURL);

    // Mint a new NFT with predefined metadata
    function mint() external {
        // Increment token ID counter
        _tokenIdCounter++;

        // Generate dynamic metadata (example values)
        string memory name = string(abi.encodePacked("AI Art #", uint2str(_tokenIdCounter)));
        string memory description = "This is a unique AI-generated artwork.";
        string memory imageURL = string(abi.encodePacked("https://example.com/ai-art/", uint2str(_tokenIdCounter), ".png"));

        // Store metadata
        _tokenMetadata[_tokenIdCounter] = ArtMetadata(name, description, imageURL);

        // Emit mint event
        emit Minted(_tokenIdCounter, name, description, imageURL);
    }

    // Get metadata for a specific token ID
    function getMetadata(uint256 tokenId) external view returns (string memory, string memory, string memory) {
        require(tokenId <= _tokenIdCounter, "Token does not exist");
        ArtMetadata memory metadata = _tokenMetadata[tokenId];
        return (metadata.name, metadata.description, metadata.imageURL);
    }

    // Helper function to convert uint to string
    function uint2str(uint256 _i) internal pure returns (string memory) {
        if (_i == 0) {
            return "0";
        }
        uint256 j = _i;
        uint256 length;
        while (j != 0) {
            length++;
            j /= 10;
        }
        bytes memory bstr = new bytes(length);
        uint256 k = length;
        while (_i != 0) {
            k = k - 1;
            uint8 temp = uint8(48 + (_i % 10));
            bstr[k] = bytes1(temp);
            _i /= 10;
        }
        return string(bstr);
    }
}
