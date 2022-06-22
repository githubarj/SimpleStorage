//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
//when importing another contract make sure the versions are compatible

//importing a contract to another
import "./SimpleStorage.sol";
//this is basically like copy pasting everything in the contract SimpleStorage

contract SimpleFactory{

    //we declare the contract we want to use as a array of type "name of the contract"
    //This helps us make a list of all the deployed contrcats
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public{

        //The "new" keyword is how solidity knows we are supposed to deploy a simple storage contract

        //declare by: type(name of contract) name = new(keyword) contractName(parameters)
        SimpleStorage simplestorage = new SimpleStorage();


        //adding the information to the array
        simpleStorageArray.push(simplestorage);

    }

    // a function that calls the function for store which is in SimpleStorage and saves a number according ro specified index or position
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // in order to interact with a contract we need its adress and ABI - Application Binary interface
        SimpleStorage simpleStorage = SimpleStorage(simpleStorageArray[_simpleStorageIndex]);
        simpleStorage.store(_simpleStorageNumber);

    }

    //We do a function to get the number stored
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){

        // to oacess the contract
        SimpleStorage simpleStorage = SimpleStorage(simpleStorageArray[_simpleStorageIndex]);
        
        //call the retrieve function and returning the thing in it
        return simpleStorage.retrieve();
    } 
}
