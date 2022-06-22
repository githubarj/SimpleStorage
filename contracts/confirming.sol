//SPDX-License-Identifier: MIT

//always start with the SPDX

//Defining the solidity version
// To select a specific version : pragma solidity 0.8.7;
// to select a certain version and anything above that version : pragma solidity ^0.8.7;
// to select a range of versions: pragma solidity >=0.8.7 <0.9.0; 

pragma solidity 0.8.8;

contract newProgram{

    //To declare variables the format is : type(size, which is optional) visibility(optional, set to private as defalt) name
    // you can initialize the variable or leave it, if you do not initialize anything it is set to zero

    uint256 public x;
    //when we decalare a function as puclic, it implicitly gets assaigned a function that returns its value

    uint256 A;

    //Functions, identified by the keyword function
    // when declaring functions, start with the keyword, then the name, then in brackets the parameters it will take in, start with the type then the name
 

    //we can also declare objects/create our own data types to store multiple information
    //for this we use keyword struct
    struct student{
        string name;
        uint admissionNumber;
        uint marks;

    }
    //now we have a new type like integers and strings, called student
    //to initialize something to this type is as follows

    student public richard = student({name: "Richard Jeremy Githuba", admissionNumber: 115862, marks: 90});

    //(type)name of struct visibility name = type({nameofvariable1: value, nameofvariable2: value})

    //An array is a data structure that holds a list of objects or list of other types
    //denoted by [] after the type and is declared as a normal variable.
    //we can make an array of our student object to for example make a class
    student[] public class;

    //an arrray that is just [] is adynamic array, you can specify the number of items in an array by putting a number in between the brackets


    //a mapping is a data structure where a key is "mapped" to a single value
    //it is adicionary of some sorts
    //declaration is as follows: keyword(what type is being mapped to what type) visibility name
    mapping(string => uint256) public nameToAdmissionNumber;

    //we will use the mapping in a function



    function store (uint256 y) public {

        //This funcction takes a value that t takes in as uint y, and assigns it to our uint x
        A = y;
    }


    
    //This is how to declare a view function, a view function and pure function do no spend gas when claaed as they do not change the state of the blockchain
    //Pure is used for aithmetic operations
    function showA() public view returns(uint256){
        return A;
    }

    //Pure Function
    function add() public pure returns(uint256){
        return 1+1;
    }

    //Adding to an array , we use a function called push. it is done as: arrayname.push(type(data))
    function addStudent(string memory _name, uint _admissionNumber, uint _marks) public {
        student memory newStudent = student({name: _name, admissionNumber: _admissionNumber, marks: _marks});
        class.push(newStudent);

        //we can use the mapping here in order to find students by admission number 
        nameToAdmissionNumber [_name] = _admissionNumber;
        //now when we store the values of the struct, we can look up a name and it will give us the mapped admission number
    }

    //memory is to specify where the type will be dtores, it applies to string, struct, mapping

    //there are numerous ways to add to the array, in the functioon you can write 
    /* class.push(student({name: _name, admissionNumber: _admissionNumber, marks: _marks}); */
    /* class.push(student(_name, _admissionNumber, _marks); */
    // for the last one, you must arrange it in order as in the struct



}