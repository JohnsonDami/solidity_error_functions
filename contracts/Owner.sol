// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Owned {
    address public owner;

    constructor (address _owner) {
        require(_owner != address(0), "Cannot set zero address as owner");
        owner = _owner;
    }

    function changeOwner(address _newOwner) external {
        if (msg.sender != owner) {
            revert("Only Owner can run this function");
        }
        assert(_newOwner != address(0));
        owner = _newOwner;
    }   
}
// 0x0000000000000000000000000000000000000000

