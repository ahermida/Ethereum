const helloEth = artifacts.require("./HelloEth.sol");

module.exports = function(deployer) {
  deployer.deploy(helloEth);
};
