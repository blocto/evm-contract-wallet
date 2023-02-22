require("dotenv").config();
const HDWalletProvider = require("@truffle/hdwallet-provider");

const {SAME_ADDR_KEY, SAME_ADDR, ETHEREUM_URL, SEPOLIA_URL,
      ETHERSCAN_API_KEY, POLYGONSCAN_API_KEY, BSCSCAN_API_KEY, SNOWTRACE_API_KEY} = process.env;


module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  networks: {
    // mainnet config
    ethereum: {
      provider: new HDWalletProvider(
        SAME_ADDR_KEY,
        ETHEREUM_URL
      ),
      network_id: 1,
      url: ETHEREUM_URL,
      from: SAME_ADDR,
      gas: 4000000, // 4M
      gasPrice: 29800000000, // 29.8 gwei
    },
    bsc: {
      provider: new HDWalletProvider(
        SAME_ADDR_KEY,
        "https://bsc-dataseed2.binance.org/"
      ),
      network_id: 56,
      from: SAME_ADDR,
      gas: 5000000, // 5M
      gasPrice: 6000000000, // 6 gwei
    },
    polygon: {
      provider: () =>
        new HDWalletProvider(
          SAME_ADDR_KEY,
          `https://rpc.ankr.com/polygon`
        ),
      network_id: 137,
      confirmations: 2,
      timeoutBlocks: 1000,
      skipDryRun: true,
      gas: 8000000, // 8M
      gasPrice: 367000000000, // 367 gwei, check from https://polygonscan.com/gastracker
    },
    avalanche: {
      provider: new HDWalletProvider(
        SAME_ADDR_KEY,
        "https://api.avax.network/ext/bc/C/rpc"
      ),
      network_id: 43114,
      from: SAME_ADDR,
      gasPrice: 25000000000, // 25 nAVAX
    },
    // testnet config
    sepolia: {
      provider: new HDWalletProvider(
        SAME_ADDR_KEY,
        SEPOLIA_URL
      ),
      network_id: 11155111,
      url: SEPOLIA_URL,
      from: SAME_ADDR,
      gas: 8000000, // 8M
      gasPrice: 32000000000, // 32 gwei
    },
    rinkeby: {
      provider: new HDWalletProvider(
        SAME_ADDR_KEY,
        "https://rinkeby.blocto.app"
      ),
      network_id: 4,
      from: SAME_ADDR,
      gasPrice: 40000000000, // 40 nAVAX
    },
    mumbai: {
      provider: () =>
        new HDWalletProvider(
          SAME_ADDR_KEY,
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
        SAME_ADDR_KEY,
        "https://data-seed-prebsc-1-s3.binance.org:8545"
      ),
      network_id: 97,
      from: SAME_ADDR,
      gas: 5000000, // 5M
      gasPrice: 10000000000, // 10 gwei
    },
    avalanche_testnet: {
      provider: new HDWalletProvider(
        SAME_ADDR_KEY,
        "https://api.avax-test.network/ext/bc/C/rpc"
      ),
      network_id: 43113,
      from: SAME_ADDR,
      gasPrice: 25000000000, // 25 nAVAX
    },

    development: {
      provider: new HDWalletProvider(
        SAME_ADDR_KEY,
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
    etherscan: ETHERSCAN_API_KEY,
    polygonscan:  POLYGONSCAN_API_KEY,
    bscscan: BSCSCAN_API_KEY,
    snowtrace: SNOWTRACE_API_KEY,
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
