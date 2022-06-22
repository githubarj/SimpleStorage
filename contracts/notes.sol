/* // SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

//importing a contract to another
import "./SimpleStorage.sol";


contract StorageFactory  is SimpleStorage //This is solodity's way of implimenting inheritence{

    //creating an array to save the instance of the contract that we create
    SimpleStorage[] public simpleStorageArray;


    //function that creates  a contract(the ones that we have imported) 
    //function definition , function nameoffunction(parameters) visibility

    function createSimpleStorageContract() public {

        //declare by: type(name of contract) name = new(keyword) contractName(parameters)
        SimpleStorage simplestorage = new SimpleStorage();


        //adding the information to the array
        simpleStorageArray.push(simplestorage);

        //this will return the adress to which the above contract was deployed to 

    }

    //the above function deploys one contract from another contract you can also interact with the contract with the function below

    // to intercat with it you need the adress and ABI : the adress we can get by the function of createSimpleStorageContract


    //function to interact with the contract
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public{

        //to call the contract/access it
        SimpleStorage simplestorage = SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
        
        //calling a function inside the contact we called using the new name for it 
        simplestorage.store(_simpleStorageNumber);
    } 

    //in order to view anything in the contract we have to retrieve it, we can do this with a view function

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        
        //to do this we have to fiest access the contract once again
        SimpleStorage simplestorage = SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
        
        //calling the function that shows 
        return simplestorage.retrieve();

    }

} */