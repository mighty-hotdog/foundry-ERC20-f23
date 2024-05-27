// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {HappyDogToken} from "../../src/HappyDogToken.sol";
import {DeployHappyDogToken} from "../../script/DeployHappyDogToken.s.sol";

contract HappyDogTokenTest is Test {
    HappyDogToken public happyDogToken;
    DeployHappyDogToken public deployer;
    address public tokenOwner;

    address public PLAYER_1 = makeAddr("player_1");

    ///////////////////////////////////////////////////////////////////////
    // All events emitted by HappyDogToken contract and to be tested for
    ///////////////////////////////////////////////////////////////////////
    event HappyDogToken__InitialSupplyMinted(address tokenOwner, uint256 initialSupply);
    ///////////////////////////////////////////////////////////////////////

    function setUp() external {
        deployer = new DeployHappyDogToken();
        tokenOwner = vm.envOr("INITIAL_TOKEN_OWNER",address(0));
        happyDogToken = deployer.run(tokenOwner);
    }

    ///////////////////////////////////////////////////////////////////////
    // Unit tests for constructor()
    ///////////////////////////////////////////////////////////////////////
    function testInitialTokenOwner() public view {
        assert(vm.envAddress("INITIAL_TOKEN_OWNER") == happyDogToken.getTokenOwner());
    }
    function testInitialTotalSupply() public view {
        assert(happyDogToken.totalSupply() == vm.envUint("INITIAL_SUPPLY"));
    }
    ///////////////////////////////////////////////////////////////////////
    // This emit can't be tested for as it happens in the constructor.
    /*
    function testExpectEmitInitialSupplyMinted() public view {}
    */
    ///////////////////////////////////////////////////////////////////////
    
    ///////////////////////////////////////////////////////////////////////
    // Unit tests for getTokenOwner()
    ///////////////////////////////////////////////////////////////////////
    function testGetTokenOwner() public view {
        testInitialTokenOwner();
    }
}