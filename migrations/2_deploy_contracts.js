const Gact = artifacts.require("Gact");

module.exports = async function(deployer) {
  await deployer.deploy(Gact);
};
