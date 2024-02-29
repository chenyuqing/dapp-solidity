var EaseContract = artifacts.require("../contracts/EaseContract.sol");
module.exports = function(deployer) {
    // 部署合约
    deployer.deploy(EaseContract);
}