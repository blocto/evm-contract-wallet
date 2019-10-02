/*
 * NB: since truffle-hdwallet-provider 0.0.5 you must wrap HDWallet providers in a
 * function when declaring them. Failure to do so will cause commands to hang. ex:
 * ```
 * mainnet: {
 *     provider: function() {
 *       return new HDWalletProvider(mnemonic, 'https://mainnet.infura.io/<infura-key>')
 *     },
 *     network_id: '1',
 *     gas: 4500000,
 *     gasPrice: 10000000000,
 *   },
 */

require("dotenv").config();

const web3 = require("web3");
const HDWalletProvider = require("truffle-hdwallet-provider");
const PrivateKeyProvider = require("truffle-privatekey-provider");
const KlaytnHDWalletProvider = require("truffle-hdwallet-provider-klaytn");

const {
  ETH_NODE_ADDRESS,
  ETH_NODE_USER,
  ETH_NODE_PASSWORD,
  ETH_FROM_ADDRESS,
  HD_MNEMONIC,
  INFURA_API_KEY
} = process.env;

function getProvider() {
  return new web3.providers.HttpProvider(
    ETH_NODE_ADDRESS,
    10000,
    ETH_NODE_USER,
    ETH_NODE_PASSWORD
  );
}

function getHDProvider() {
  return new HDWalletProvider(
    HD_MNEMONIC,
    "https://rinkeby.infura.io/v3/" + INFURA_API_KEY
  );
}

function getTangerineProvider() {
  return new PrivateKeyProvider(
      "8156E259139C77436F250BD5EA05413E6BDEFEA3F7EB63D7D2B61831D184178B",
      "https://testnet-rpc.tangerine-network.io"
  )
}

function getRinkebyProvider() {
  return new PrivateKeyProvider(
      "A74B787BFE753713ADE4C8BEA26BBE56854EAFF24D57276771A76497F9F55532",
      "https://rinkeby.infura.io/v3/4577e17259294e4a92a22090f8c2c90d"
  )
}

function getTTProvider() {
  return new PrivateKeyProvider(
      "A74B787BFE753713ADE4C8BEA26BBE56854EAFF24D57276771A76497F9F55532",
      "https://testnet-rpc.thundercore.com"
  )
}

function getKlaytnProvider() {
  return new PrivateKeyProvider(
      "A74B787BFE753713ADE4C8BEA26BBE56854EAFF24D57276771A76497F9F55532",
      "https://api.baobab.klaytn.net:8651"
  )
}

module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  networks: {
    // development: {
    //   host: "127.0.0.1",
    //   port: 8545,
    //   gas: 4500000, // Gas limit used for deploys
    //   gasPrice: 10000000000,
    //   network_id: "*" // Match any network id
    // },
    // development: {
    //   host: "127.0.0.1",
    //   port: 9545,
    //   gas: 45000000, // Gas limit used for deploys
    //   gasPrice: 10000000000,
    //   network_id: "*" // Match any network id
    // },

    // this is rinkeby for our geth node
    tangerine: {
      provider: getTangerineProvider,
      network_id: 374,
      from: '0xd5e388181bdA6A1f2B50011dFfeb47e86757e039',
      gas: 45000000,
      gasPrice: 1000000000 // 1gwei
    },
    rinkeby: {
      provider: getRinkebyProvider,
      network_id: 4,
      from: '0x015dfa162aD3f954398738796AC91c83Ea0F4ef9',
      gas: 7000000,
      gasPrice: 10000000000 // 1gwei
    },
    thunder: {
      provider: getTTProvider,
      network_id: 18,
      from: '0x015dfa162aD3f954398738796AC91c83Ea0F4ef9',
      gas: 7000000,
      gasPrice: 1000000000 // 1gwei
    },
    klaytn: {
      provider: () => new KlaytnHDWalletProvider("0xA74B787BFE753713ADE4C8BEA26BBE56854EAFF24D57276771A76497F9F55532", "https://api.baobab.klaytn.net:8651"),
      network_id: 1001,
      from: '0x015dfa162aD3f954398738796AC91c83Ea0F4ef9',
      gas: 7000000,
      gasPrice: 25000000000 // 25gwei
    },
    rinkeby_geth: {
      provider: getProvider,
      network_id: 4,
      from: ETH_FROM_ADDRESS,
      gas: 4500000, // 2M gas limit used for deploy
      gasPrice: 10000000000 // 10gwei
    },
    rinkeby_local: {
      provider: getHDProvider,
      network_id: 4,
      gas: 4500000, // 2M gas limit used for deploy
      gasPrice: 10000000000 // 10gwei
    },
    live: {
      provider: getProvider,
      network_id: 1,
      from: ETH_FROM_ADDRESS,
      gas: 1000000, // 1M
      gasPrice: 5000000000 // 5 gwei
    }
  },
  solc: {
    optimizer: {
      enabled: true,
      runs: 200
    }
  },
  // https://truffle.readthedocs.io/en/beta/advanced/configuration/
  mocha: {
    bail: true
  },
  compilers: {
    solc: {
      version: "0.5.10",
      settings: {
        evmVersion: "constantinople",
        optimizer: {
          enabled: true,
          runs: 200
        }
      }
    },
    // solc: {
    //   version: "0.5.9",
    //   settings: {
    //     // see the solidity docs for advice about optimization and evmversion
    //     evmVersion: "byzantium", // Current EVM on ThunderCore is fixed to "byzantium"
    //     optimizer: {
    //       enabled: false,
    //       runs: 200
    //     },
    //   }
    // }
  }
};
