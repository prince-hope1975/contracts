import { 
    Contract, 
    ContractFactory 
  } from "ethers"
  import { ethers } from "hardhat"


const main = async () => {
    // get contract factory from ethers (obtain contract)
    // deploy contract
    // await deployed contract
    // log address where contract deployed to
}

main()
    .then(()=>process.exit(0))
    .catch(error=> {
        console.error(error)
        process.exit(1)
    })