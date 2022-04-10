# Everest Contracts
Contracts for Everest

## Install Dependencies
If npx is not installed yet: 
`npm install -g npx`

Install packages: 
`npm i`

## Setup your env
Copy the sample environement file and populate it with your wallet private keys.\
Your .env file should never be committed (it is specified in the *.gitignore*)!\
`$ cp .env.sample .env && vi .env`

## Compile Contracts
`npx hardhat compile`

## Deploy Contracts 
`npx hardhat run scripts/deploy.js`

## Run Contracts
`npx hardhat run scripts/run.js`



