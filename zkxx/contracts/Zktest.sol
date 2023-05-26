// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract Zktest is Ownable, ERC20, ERC20Burnable {
    string private constant NAME = "Zktest";
    string private constant SYMBOL = "ZT";

    uint256 private _totalSupply = 100000000000000 * 10 ** decimals();

    constructor() ERC20(NAME, SYMBOL) {
        _mint(msg.sender, _totalSupply);
    }
}
