// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
import {ERC721URIStorage, ERC721} from "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract MyFirstNFT is ERC721{
    uint public tokenId;
    constructor() ERC721("Techzeen NFT", "TNFT"){}

    function mintNFT() public{
        tokenId++;
        _safeMint(msg.sender, tokenId);
    }
}