//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
//import our library
import "./ErrorCheckLibrary.sol";


contract UsingLibrary{

    address public owner;
    uint public x = 10;
    bool public locked;

    constructor() {
        // Set the transaction sender as the owner of the contract.
        owner = msg.sender;
    }


    function changeOwner(address _newOwner) public returns(bool){
        //here we make reference to the function we imported from our library
        bool isZeroAddress = ErrorChecker.checkZeroAddress(_newOwner);
        owner = _newOwner;
        return isZeroAddress;
    }
}