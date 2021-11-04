// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.3.2 (token/ERC1155/ERC1155.sol)

pragma solidity ^0.8.0;

//Import ERC1155 token contract from Openzeppelin

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC1155/ERC1155.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract NFTContract is ERC1155, Ownable {
    
    uint256 public constant BuddhaArtwork = 0;
    constructor () ERC1155("https://qydbyobb4okq.usemoralis.com/{id}.json") {
        _mint(msg.sender, BuddhaArtwork, 1,"");
    }
    
    function mint(address account, uint256 id, uint256 amount) public onlyOwner {
        _mint(account, id, amount, "");
    }
    
    function burn(address account, uint256 id, uint256 amount) public {
        require(msg.sender == account);
        _burn(account, id, amount);
    }
}

