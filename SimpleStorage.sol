//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage{
    uint256 myFavoriteNumber;

    struct Person{
        string name;
        uint256 favoriteNumber;
    }

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _myFavoriteNumber) public{
        myFavoriteNumber=_myFavoriteNumber;
    }

    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }

    function addPerson(string memory _name,uint256 _favoriteNumber) public{
        listOfPeople.push(Person(_name,_favoriteNumber));
        nameToFavoriteNumber[_name]=_favoriteNumber;
    }
}