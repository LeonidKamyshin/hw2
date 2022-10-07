// SPDX-License-Identifier: LGPL-3.0-only

pragma solidity >=0.8.0 <0.9.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title
 */
contract LeoToken is ERC20, Ownable {

    constructor(uint256 _initialSupply) ERC20("LeoToken", "LTK") {
        mint(msg.sender, _initialSupply);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function transfer(uint256 _amount, address _to) external {
        transferFrom(msg.sender, _to, _amount);
    }
    
}
