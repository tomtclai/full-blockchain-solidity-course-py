pragma solidity >=0.6.0 <0.9.0;

contract SimpleStroage {
    uint256 public favNumber;
    /*im at 1:43:29 */
    function store(uint _favNumber) public {
        favNumber = _favNumber;
    }
}