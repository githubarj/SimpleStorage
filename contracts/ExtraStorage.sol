//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

 import "./SimpleStorage.sol";
//The line below meansthat ExtraStorage is now completely similar to SimpleStorage
//I.E it has inherited all the variables and functions of SimpleStorage
contract ExtraStorage is SimpleStorage{

    //we can chaange a function in the Parent contract by overriding
    //Only virtual functions can be overridden so we add the keyword "virtual" to the function in the parent contract
    //We also add the keyword "override to the current contract's function which  we are changing

    function store(uint256 _favouriteNumber) public override{
        favouriteNumber = _favouriteNumber + 5;
    } 

}