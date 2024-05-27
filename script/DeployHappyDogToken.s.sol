// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {HappyDogToken} from "../src/HappyDogToken.sol";

contract DeployHappyDogToken is Script {
    HappyDogToken public happyDogToken;

    function run(address tokenOwner) external returns (HappyDogToken) {
        // deploying with a specific waller/account
        if (tokenOwner != address(0)) {
            vm.startBroadcast(tokenOwner);
            happyDogToken = new HappyDogToken();
            vm.stopBroadcast();
            return happyDogToken;
        }
        // deploying w/o specific wallet/account
        vm.startBroadcast();
        happyDogToken = new HappyDogToken();
        vm.stopBroadcast();
        return happyDogToken;
    }
}