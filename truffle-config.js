require("dotenv").config();
const HDWalletProvider = require("@truffle/hdwallet-provider");

const CONSISTENT_ADDR_TEST = "0x22F607Abfc0805FdA97b4e9dEC3A7469aF5928d9";

module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  networks: {
    sepolia: {
      provider: new HDWalletProvider(
        process.env.SAME_ADDR_KEY,
        process.env.SEPOLIA_URL
      ),
      network_id: 11155111,
      url: process.env.SEPOLIA_URL,
      from: CONSISTENT_ADDR_TEST,
      gas: 8000000, // 8M
      gasPrice: 2000000000, // 2 gwei
    },
    mumbai: {
      provider: () =>
        new HDWalletProvider(
          process.env.SAME_ADDR_KEY,
          `https://polygon-testnet.public.blastapi.io`
        ),
      network_id: 80001,
      confirmations: 2,
      timeoutBlocks: 200,
      skipDryRun: true,
      gas: 8000000, // 8M
      gasPrice: 10000000000, // 10 gwei
    },
    bsc_testnet: {
      provider: new HDWalletProvider(
        process.env.SAME_ADDR_KEY,
        "https://data-seed-prebsc-1-s3.binance.org:8545"
      ),
      network_id: 97,
      from: CONSISTENT_ADDR_TEST,
      gas: 5000000, // 5M
      gasPrice: 10000000000, // 10 gwei
    },
    avalanche_testnet: {
      provider: new HDWalletProvider(
        process.env.SAME_ADDR_KEY,
        "https://api.avax-test.network/ext/bc/C/rpc"
      ),
      network_id: 43113,
      from: CONSISTENT_ADDR_TEST,
      gasPrice: 25000000000, // 25 nAVAX
    },

    development: {
      provider: new HDWalletProvider(
        "creek honey mixture input soccer soccer waste tube also pluck hundred already",
        "http://localhost:7545"
      ),
      host: "127.0.0.1",
      port: 7545,
      gas: 10000000, // Gas limit used for deploys
      gasPrice: 10000000000,
      network_id: "*", // Match any network id
    },
  },
  solc: {
    optimizer: {
      enabled: true,
      runs: 1000,
    },
  },
  mocha: {
    bail: true,
  },
  compilers: {
    solc: {
      version: "0.5.10",
      settings: {
        evmVersion: "constantinople",
        optimizer: {
          enabled: true,
          runs: 1000,
        },
      },
    },
  },
};
