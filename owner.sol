// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Own{
    address public owner;
    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "not owner");
        _;
    }

    function setowner(address _newo) external onlyOwner{
        require(_newo != address(0), "zero address");
        owner = _newo;
    }

    function onlyownercan() external onlyOwner{

    }

    function anyonecan() external {
        
    }
}