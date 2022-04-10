# Everest smart contracts

## 📦 Install dependencies
You need *node.js*, *npm* and *npx* installed.\
Install the project's dependencies with: `$ npm i`

## 🔧 Setup your env
Copy the sample environement file and populate it with your wallet private keys.\
**Your .env file should never be committed** (it is specified in the *.gitignore*)!\
`$ cp .env.sample .env && vi .env`

## ⚙️ Compile contracts
Compile the smart contracts: `$ npx hardhat compile`

## 🚀 Deploy contracts 
Deploy the smart contracts to a blockchain: `$ npx hardhat run scripts/deploy.js`
