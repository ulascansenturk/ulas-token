// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";


interface ERC20Interface {
    function totalSupply() external view returns (uint);
    function balanceOf(address tokenOwner) external view returns (uint balance);
    function transfer(address to, uint tokens) external returns (bool success);

    function allowance(address tokenOwner, address spender) external view returns (uint remaining);
    function approve(address spender, uint tokens) external returns (bool success);
    function transferFrom(address from, address to, uint tokens) external returns (bool success);

    event Transfer(address indexed from, address indexed to, uint tokens);
    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
}


/// @custom:security-contact ulascansenturk1@gmail.com
contract Ulas is ERC20, ERC20Permit {
    constructor() ERC20("Ulas", "ULS") ERC20Permit("Ulas") {
        _mint(msg.sender, 4815162342 * 10 ** decimals());
    }
}


// Contract deployed

// address: 0x74E67F2d5D84aAACd17402bF6969C25CC89f2595
