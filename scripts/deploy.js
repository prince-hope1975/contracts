const main = async () => {
    // get contract factory from ethers (obtain contract)
    // deploy contract
    // await deployed contract
    // log address where contract deployed to
    const [deployer] = await hre.ethers.getSigner();
    
    console.log("Deploying contracts with account: ", deployer.address);

    const fundContractFactory = await hre.ethers.getContractFactory("Funding");
    const fundContract = await fundContractFactory.deploy();
    await fundContract.deployed();

    console.log("Fund contract address: ", fundContract.address);
}

const runMain = async () => {
    try {
        await main();
        process.exit(0);
    } catch (e) {
        console.log(e);
        process.exit(1);
    }
};

runMain();