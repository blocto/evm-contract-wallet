// /**
//  * If deploy second contract (WalletFactory) fail, you can use this script to deploy it.
//  */

var WalletFactory = artifacts.require("./WalletFactory/WalletFactory.sol");
var CloneableWallet = artifacts.require("./Wallet/CloneableWallet.sol");

module.exports = function (deployer) {
  deployer.deploy(WalletFactory, "0x2B7c55A5abA0667eeC775b3Fac044Fcc0387Fd83");
};
