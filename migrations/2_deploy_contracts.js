//var ConvertLib = artifacts.require("./ConvertLib.sol");
const helloEth = artifacts.require("./HelloEth.sol");

module.exports = function(deployer) {
  //deployer.deploy(ConvertLib);
  //deployer.link(ConvertLib, MetaCoin);
  deployer.deploy(helloEth);
};
