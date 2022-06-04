// SPX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract SimpleStroage {
    uint256 public favNumber;
    bool public favBool;
    bool public  favBool2;
    /*im at 2:03:17 */
    // public means anyone can call  it
    // external means it has to be called from a different contract (!)
    function store(uint _favNumber) public {
        favNumber = _favNumber;
    }

    struct People {
        uint256 favNumber;
        string name;
    }

    People[] public people;

    mapping(string => uint256) public nameToFavoriteNumber;

    People public person = People({favNumber: 2, name: "Tom"});


    // view, pure dont actaully make a transaction 
    // pure means you just do some math without reading state
    // view means you are reading state 
    function retrieve_view() public view returns(uint256) {
        return favNumber;
    }

    // string is object, you have to decide where to store it
    // memory means you just need it for the duration of the function, it is deleted after
    // storage means keep it forever
    function addPerson(string memory _name, uint256 _favNumber) public {
        people.push(People(_favNumber, _name));
        nameToFavoriteNumber[_name] = _favNumber;
    }

}