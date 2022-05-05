// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

contract favorite {

    // Creating variable "favoriteNumber" of type uint256
    uint256 public favoriteNumber = 5;

    // Updating variable "favoriteNumber"
    function update(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // structures a new type called "People", which has two properties
    struct People {
        uint256 favNumber;
        string name;
    }

    // Creates variable named "person" of type "People"
    People public person = People({favNumber: 7, name: "Claude"});
    
    // Creates Array named "people" of type "People", with no entries so far
    People[] public people;

    // Creates a mapping, which related a string to a uint256
    mapping(string => uint256) public nameToFavoriteNumber;

    // returns the favoriteNumber
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    // Add a Person to the People[] Array
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People({favNumber: _favoriteNumber, name: _name}));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}