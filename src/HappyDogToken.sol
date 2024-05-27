// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {ERC20} from "@openzeppelin-lib/contracts/token/ERC20/ERC20.sol";

contract HappyDogToken is ERC20 {
    /* Errors */
    error HappyDogToken__InsufficientBalance(address caller, uint256 callerBalance, uint256 balanceRequested);
    error HappyDogToken__NotAuthorized(address caller);

    /* State Variables */
    string private constant TOKEN_NAME = "HappyDogToken";
    string private constant TOKEN_SYMBOL = "HDOG";
    uint256 private constant INITIAL_SUPPLY = 1000 ether;   // 1e21
    address private s_tokenOwner;

    /* Events */
    event HappyDogToken__InitialSupplyMinted(address tokenLauncher, uint256 initialSupply);

    /* functions */
    constructor() ERC20(TOKEN_NAME,TOKEN_SYMBOL) {
        s_tokenOwner = msg.sender;
        _mint(msg.sender, INITIAL_SUPPLY);
        emit HappyDogToken__InitialSupplyMinted(msg.sender, INITIAL_SUPPLY);
    }

    function getTokenOwner() external view returns (address) {
        return s_tokenOwner;
    }
}