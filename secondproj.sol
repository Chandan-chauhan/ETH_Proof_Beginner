// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Token{

    // public variables here
    string public tokenName="Cryptogems";
    string public tokenabbrv="CGM";
    uint public totalSupply=0;

    // mapping variable here
    mapping(address => uint) public bal;

    // mint function
    function mint(address _address, uint val) public{
        totalSupply+=val;
        bal[_address]+=val;
    }
    // burn function
    function burn(address _address, uint val) public{
        if(bal[_address]>=val){
        totalSupply-=val;
        bal[_address]-=val;
    }
  }
}
