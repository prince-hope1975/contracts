// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

/**
 * @title A simple contract to which you can send money and then withdraw it.
 * @author The Everest team.
 */
contract Fund {
    
    mapping(address => uint256) public addressToAmountFunded;
    address[] public funders;

    /**
     * @notice Send money to the fund.
     */
    function fund() public payable {
        // make sure money is being deposited
        require(msg.value !=0, "You need to deposit some amount of money");
        addressToAmountFunded[msg.sender] += msg.value;
        funders.push(msg.sender);
    }

    /**
     * @notice Withdraw money from the fund.
     * It will withdraw all the money the user sent to the fund to its wallet.
     */
    function withdraw() public payable {
        payable(msg.sender).transfer(addressToAmountFunded[msg.sender]);
    }
    
    /**
     * @notice Enable the user to withdraw only a fraction of its funding.
    */
    function withdrawFraction(address payable _to, uint256 _total ) public{
        require(_total <= addressToAmountFunded[msg.sender],"You have insufficient funds");
        addressToAmountFunded[msg.sender] -= _total;
        _to.transfer(_total);
    }


    /**
     * @notice Get the list of users who have funded the smart contract.
     * @return _ the list of funders
     */
    function getFunders() public view returns (address[] memory) {
        return funders;
    }
}
