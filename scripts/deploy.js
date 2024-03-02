const hre = require("hardhat");

async function main() {
  const TokenContract = await hre.ethers.getContractFactory("Token");
  const tokenContract = await TokenContract.deploy();

  await tokenContract.waitForDeployment(); // Wait for deployment to be finalized

  console.log("CONTRACT DEPLOYED TO:", tokenContract.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});