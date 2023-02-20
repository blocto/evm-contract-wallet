require("dotenv").config();
const HDWalletProvider = require("@truffle/hdwallet-provider");

const CONSISTENT_DEPOLY_ADDR = "0xB3c12C9535626cfFef5FE76d5A4e198A5e753FD9";
// const CONSISTENT_DEPOLY_ADDR = "0x70ebDF2a1C9C7A45141760419c42056E3DDfA690";
// const CONSISTENT_DEPOLY_ADDR ="0x1Dde3A77975235E6DdB31389c3D599dE67AbA1Ad";
module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  networks: {
    // mainnet config
    ethereum: {
      provider: new HDWalletProvider(
        process.env.SAME_ADDR_KEY,
        process.env.ETHEREUM_URL
      ),
      network_id: 1,
      url: process.env.ETHEREUM_URL,
      from: CONSISTENT_DEPOLY_ADDR,
      gas: 4000000, // 8M
      gasPrice: 29800000000, // 37.6 gwei
    },
    bsc: {
      provider: new HDWalletProvider(
        process.env.SAME_ADDR_KEY,
        "https://bsc-dataseed2.binance.org/"
      ),
      network_id: 56,
      from: CONSISTENT_DEPOLY_ADDR,
      gas: 5000000, // 5M
      gasPrice: 6000000000, // 5 gwei
    },
    polygon: {
      provider: () =>
        new HDWalletProvider(
          process.env.SAME_ADDR_KEY,
          `https://rpc.ankr.com/polygon`
        ),
      network_id: 137,
      confirmations: 2,
      timeoutBlocks: 1000,
      skipDryRun: true,
      gas: 8000000, // 8M
      gasPrice: 367000000000, // 400 gwei, check from https://polygonscan.com/gastracker
    },
    avalanche: {
      provider: new HDWalletProvider(
        process.env.SAME_ADDR_KEY,
        "https://api.avax.network/ext/bc/C/rpc"
      ),
      network_id: 43114,
      from: CONSISTENT_DEPOLY_ADDR,
      gasPrice: 25000000000, // 25 nAVAX
    },


    // testnet config
    sepolia: {
      provider: new HDWalletProvider(
        process.env.SAME_ADDR_KEY,
        process.env.SEPOLIA_URL
      ),
      network_id: 11155111,
      url: process.env.SEPOLIA_URL,
      from: CONSISTENT_DEPOLY_ADDR,
      gas: 8000000, // 8M
      // gasPrice: 2000000000, // 2 gwei
      gasPrice: 32000000000, // 32 gwei
    },
    rinkeby: {
      provider: new HDWalletProvider(
        process.env.SAME_ADDR_KEY,
        "https://rinkeby.blocto.app"
      ),
      network_id: 4,
      from: CONSISTENT_DEPOLY_ADDR,
      gasPrice: 40000000000, // 25 nAVAX
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
      from: CONSISTENT_DEPOLY_ADDR,
      gas: 5000000, // 5M
      gasPrice: 10000000000, // 10 gwei
    },
    avalanche_testnet: {
      provider: new HDWalletProvider(
        process.env.SAME_ADDR_KEY,
        "https://api.avax-test.network/ext/bc/C/rpc"
      ),
      network_id: 43113,
      from: CONSISTENT_DEPOLY_ADDR,
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
  api_keys: {
    etherscan: process.env.ETHERSCAN_API_KEY,
    polygonscan:  process.env.POLYGONSCAN_API_KEY,
    bscscan: process.env.BSCSCAN_API_KEY,
    snowtrace: process.env.SNOWTRACE_API_KEY,
  },
  plugins: ['truffle-plugin-verify'],
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
