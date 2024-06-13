# Create Token
The goal of this project is to create a basic token using the Solidity programming language. Solidity is used for writing smart contracts on the Ethereum blockchain.The purpose of this project is to understand the fundamental concept of solidity,which is essential for developing decentralized application on the Ethereum blockchain.
# Description
This project involves creating a simple token named "Cryptogems" (CGM) using Solidity on the Ethereum blockchain. The project includes:
Creating a Contract: Defines the token with a name, abbreviation, and total supply.
Minting Tokens: A function to create new tokens, increasing the total supply and adding to a specified address's balance.
Burning Tokens: A function to destroy tokens, decreasing the total supply and removing from a specified address's balance.
Managing Balances: Maintains a record of token balances for each address using a mapping.
This project serves as an introduction to smart contract development and token management on the blockchain, providing foundational knowledge for more advanced decentralized applications.

# Getting Started
## Executing program
to run this program,you can use Remix,an online Solidity IDE.To get started,go to the Remix website at https://remix.ethereum.org/.
Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:
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
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile SecondProject.sol" button.
After the contract is successfully compiled, proceed to deploy it. Click on the "Deploy & Run Transactions" tab in the left-hand sidebar. In the dropdown menu, select the Token contract. Once selected, click on the "Deploy" button to deploy the contract to the blockchain. This action will make the contract available for interaction.
With the contract deployed, you will see it listed under the "Deployed Contracts" section. To interact with it, expand the deployed contract instance. You will now have access to various functions defined within your contract, such as mint, burn, and others.
To mint new tokens, locate the mint function within the contract. Input the address you wish to send tokens to in the _address field, and the number of tokens you want to mint in the val field. Clicking the "transact" button will execute the mint function, increasing the total supply and the balance of the specified address.
Similarly, to burn tokens, find the burn function. Enter the address from which you want to burn tokens in the _address field, and the number of tokens to burn in the val field. Click the "transact" button to execute the burn function. This action will reduce the total supply of tokens and decrease the balance of the specified address, provided that the address has sufficient tokens.
You can also check the balances of various addresses and the total supply of tokens. To check a balance, locate the bal mapping, input an address, and click the "call" button to retrieve the token balance of that address. To check the total supply of tokens, simply click on the totalSupply variable to view the current total supply.

# Author
Chandan
@chandan

# License
This project is licensed under the MIT License.

