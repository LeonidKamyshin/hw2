async function main() {
    
    const initialSupply = ethers.utils.parseEther("100000");

    console.log("Deploying contracts with the account:", initialSupply);
  }
  
  main()
    .then(() => process.exit(0))
    .catch((error) => {
      console.error(error);
      process.exit(1);
    });