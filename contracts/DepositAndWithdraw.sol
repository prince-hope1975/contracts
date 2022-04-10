// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract DepositAndWithdraw {
    mapping(address => uint256) public addressToAmountFunded;
    address[] public funders;


    function fund() public payable {
        addressToAmountFunded[msg.sender] += msg.value;
        funders.push(msg.sender);
    }

    function withdraw() public payable {
       payable(msg.sender).transfer(addressToAmountFunded[msg.sender]);
    }

    function getFunders() public view returns (address[] memory) {
        return funders;
    }
}