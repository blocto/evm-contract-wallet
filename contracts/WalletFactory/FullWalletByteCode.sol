pragma solidity ^0.5.10;

/// @title FullWalletByteCode
/// @dev A contract containing the FullWallet bytecode, for use in deployment.
contract FullWalletByteCode {
    /// @notice This is the raw bytecode of the full wallet. It is encoded here as a raw byte
    ///  array to support deployment with CREATE2, as Solidity's 'new' constructor system does
    ///  not support CREATE2 yet.
    ///
    ///  NOTE: Be sure to update this whenever the wallet bytecode changes!
    ///  Simply run `npm run build` and then copy the `"bytecode"`
    ///  portion from the `build/contracts/FullWallet.json` file to here,
    ///  then append 64x3 0's.
    bytes constant fullWalletBytecode = hex'60806040523480156200001157600080fd5b506040516200317c3803806200317c833981810160405260608110156200003757600080fd5b50805160208201516040909201519091906200005e8383836001600160e01b036200006716565b5050506200033b565b60045474010000000000000000000000000000000000000000900460ff1615620000f257604080517f08c379a000000000000000000000000000000000000000000000000000000000815260206004820152601f60248201527f6d757374206e6f7420616c726561647920626520696e697469616c697a656400604482015290519081900360640190fd5b6004805460ff60a01b1916740100000000000000000000000000000000000000001790556001600160a01b0383811690821614156200017d576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401808060200182810382526039815260200180620031156039913960400191505060405180910390fd5b806001600160a01b0316826001600160a01b03161415620001ea576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040180806020018281038252602e8152602001806200314e602e913960400191505060405180910390fd5b6001600160a01b0383166200024b576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401808060200182810382526026815260200180620030cd6026913960400191505060405180910390fd5b6001600160a01b038216620002ac576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401808060200182810382526022815260200180620030f36022913960400191505060405180910390fd5b600480546001600160a01b0319166001600160a01b03838116919091179091557401000000000000000000000000000000000000000060008181559185169081018252600160209081526040928390208590558251918252810184905281517fb39b5f240c7440b58c1c6cfd328b09ff9aa18b3c8ef4b829774e4f5bad039416929181900390910190a1505050565b612d82806200034b6000396000f3fe6080604052600436106101c25760003560e01c806375857eba116100f7578063a0a2daf011610095578063ce2d4f9611610064578063ce2d4f9614610b09578063ef009e4214610b1e578063f0b9e5ba14610ba0578063ffa1ad7414610c30576101c2565b8063a0a2daf01461095b578063a3c89c4f1461098f578063bf4fb0c014610a0a578063c0ee0b8a14610a43576101c2565b80638bf78874116100d15780638bf78874146108485780638fd45d1a1461085d5780639105d9c4146108a057806391aeeedc146108b5576101c2565b806375857eba146107bd5780637ecebe00146107d257806388fb06e714610805576101c2565b8063210d66f81161016457806349efe5ae1161013e57806349efe5ae1461068f57806357e61e29146106c2578063710eb26c14610753578063727b7acf14610784576101c2565b8063210d66f8146105705780632698c20c146105ac57806343fc00b81461064c576101c2565b8063157ca6e4116101a0578063157ca6e4146103e8578063158ef93e146104a75780631626ba7e146104bc5780631cd61bad1461053e576101c2565b806301ffc9a71461029d57806308405166146102e5578063150b7a0214610317575b3415610203576040805133815234602082015281517f88a5966d370b9919b20f3e2c13ff65706f196a4e32cc2c12bf57088f88525874929181900390910190a15b361561029b57600080356001600160e01b0319168152600360205260409020546001600160a01b031660018111610277576040805162461bcd60e51b815260206004820152601360248201527224b73b30b634b2103a3930b739b0b1ba34b7b760691b604482015290519081900360640190fd5b3660008037600080366000845afa3d6000803e808015610296573d6000f35b3d6000fd5b005b3480156102a957600080fd5b506102d1600480360360208110156102c057600080fd5b50356001600160e01b031916610cba565b604080519115158252519081900360200190f35b3480156102f157600080fd5b506102fa610d75565b604080516001600160e01b03199092168252519081900360200190f35b34801561032357600080fd5b506102fa6004803603608081101561033a57600080fd5b6001600160a01b03823581169260208101359091169160408201359190810190608081016060820135600160201b81111561037457600080fd5b82018360208201111561038657600080fd5b803590602001918460018302840111600160201b831117156103a757600080fd5b91908080601f016020809104026020016040519081016040528093929190818152602001838380828437600092019190915250929550610d80945050505050565b3480156103f457600080fd5b5061029b6004803603606081101561040b57600080fd5b810190602081018135600160201b81111561042557600080fd5b82018360208201111561043757600080fd5b803590602001918460018302840111600160201b8311171561045857600080fd5b91908080601f01602080910402602001604051908101604052809392919081815260200183838082843760009201919091525092955050823593505050602001356001600160a01b0316610d90565b3480156104b357600080fd5b506102d1610fe8565b3480156104c857600080fd5b506102fa600480360360408110156104df57600080fd5b81359190810190604081016020820135600160201b81111561050057600080fd5b82018360208201111561051257600080fd5b803590602001918460018302840111600160201b8311171561053357600080fd5b509092509050610ff8565b34801561054a57600080fd5b50610553611365565b604080516001600160f81b03199092168252519081900360200190f35b34801561057c57600080fd5b5061059a6004803603602081101561059357600080fd5b503561136a565b60408051918252519081900360200190f35b3480156105b857600080fd5b5061029b60048036036101208110156105d057600080fd5b6040820190608083019060c0840135906001600160a01b0360e086013516908501856101208101610100820135600160201b81111561060e57600080fd5b82018360208201111561062057600080fd5b803590602001918460018302840111600160201b8311171561064157600080fd5b50909250905061137c565b34801561065857600080fd5b5061029b6004803603606081101561066f57600080fd5b506001600160a01b0381358116916020810135916040909101351661182b565b34801561069b57600080fd5b5061029b600480360360208110156106b257600080fd5b50356001600160a01b0316611a41565b3480156106ce57600080fd5b5061029b600480360360808110156106e557600080fd5b60ff8235169160208101359160408201359190810190608081016060820135600160201b81111561071557600080fd5b82018360208201111561072757600080fd5b803590602001918460018302840111600160201b8311171561074857600080fd5b509092509050611b53565b34801561075f57600080fd5b50610768611dd0565b604080516001600160a01b039092168252519081900360200190f35b34801561079057600080fd5b5061029b600480360360408110156107a757600080fd5b506001600160a01b038135169060200135611ddf565b3480156107c957600080fd5b5061059a611f94565b3480156107de57600080fd5b5061059a600480360360208110156107f557600080fd5b50356001600160a01b0316611f9c565b34801561081157600080fd5b5061029b6004803603604081101561082857600080fd5b5080356001600160e01b03191690602001356001600160a01b0316611fae565b34801561085457600080fd5b5061059a612074565b34801561086957600080fd5b5061029b6004803603606081101561088057600080fd5b506001600160a01b0381358116916020810135916040909101351661207a565b3480156108ac57600080fd5b50610768612299565b3480156108c157600080fd5b5061029b600480360360c08110156108d857600080fd5b60ff823516916020810135916040820135916060810135916001600160a01b03608083013516919081019060c0810160a0820135600160201b81111561091d57600080fd5b82018360208201111561092f57600080fd5b803590602001918460018302840111600160201b8311171561095057600080fd5b50909250905061229e565b34801561096757600080fd5b506107686004803603602081101561097e57600080fd5b50356001600160e01b0319166125e1565b34801561099b57600080fd5b5061029b600480360360208110156109b257600080fd5b810190602081018135600160201b8111156109cc57600080fd5b8201836020820111156109de57600080fd5b803590602001918460018302840111600160201b831117156109ff57600080fd5b5090925090506125fc565b348015610a1657600080fd5b5061029b60048036036040811015610a2d57600080fd5b506001600160a01b0381351690602001356126ac565b348015610a4f57600080fd5b5061029b60048036036060811015610a6657600080fd5b6001600160a01b0382351691602081013591810190606081016040820135600160201b811115610a9557600080fd5b820183602082011115610aa757600080fd5b803590602001918460018302840111600160201b83111715610ac857600080fd5b91908080601f01602080910402602001604051908101604052809392919081815260200183838082843760009201919091525092955061284f945050505050565b348015610b1557600080fd5b50610553612854565b348015610b2a57600080fd5b5061029b60048036036040811015610b4157600080fd5b81359190810190604081016020820135600160201b811115610b6257600080fd5b820183602082011115610b7457600080fd5b803590602001918460208302840111600160201b83111715610b9557600080fd5b50909250905061285c565b348015610bac57600080fd5b506102fa60048036036060811015610bc357600080fd5b6001600160a01b0382351691602081013591810190606081016040820135600160201b811115610bf257600080fd5b820183602082011115610c0457600080fd5b803590602001918460018302840111600160201b83111715610c2557600080fd5b509092509050612959565b348015610c3c57600080fd5b50610c45612969565b6040805160208082528351818301528351919283929083019185019080838360005b83811015610c7f578181015183820152602001610c67565b50505050905090810190601f168015610cac5780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b60006001600160e01b031982166301ffc9a760e01b1480610ceb57506001600160e01b03198216630a85bd0160e11b145b80610d0657506001600160e01b0319821663785cf2dd60e11b145b80610d2157506001600160e01b0319821663607705c560e11b145b80610d3c57506001600160e01b03198216630b135d3f60e11b145b15610d4957506001610d70565b506001600160e01b031981166000908152600360205260409020546001600160a01b031615155b919050565b63607705c560e11b81565b630a85bd0160e11b949350505050565b600454600160a01b900460ff1615610def576040805162461bcd60e51b815260206004820152601f60248201527f6d757374206e6f7420616c726561647920626520696e697469616c697a656400604482015290519081900360640190fd5b6004805460ff60a01b1916600160a01b1790556060610e0d8461298a565b905060005b8151811015610fe1576000828281518110610e2957fe5b60200260200101519050836001600160a01b0316816001600160a01b03161415610e845760405162461bcd60e51b8152600401808060200182810382526039815260200180612cc56039913960400191505060405180910390fd5b836001600160a01b0316856001600160a01b03161415610ed55760405162461bcd60e51b815260040180806020018281038252602e815260200180612cfe602e913960400191505060405180910390fd5b6001600160a01b038116610f1a5760405162461bcd60e51b8152600401808060200182810382526026815260200180612c7d6026913960400191505060405180910390fd5b6001600160a01b038516610f5f5760405162461bcd60e51b8152600401808060200182810382526022815260200180612ca36022913960400191505060405180910390fd5b600480546001600160a01b0319166001600160a01b0386811691909117909155600160a01b60008181559183169081018252600160209081526040928390208890558251918252810187905281517fb39b5f240c7440b58c1c6cfd328b09ff9aa18b3c8ef4b829774e4f5bad039416929181900390910190a150600101610e12565b5050505050565b600454600160a01b900460ff1681565b60408051601960f81b6020808301919091526000602183018190523060601b602284015260368084018890528451808503909101815260569093019093528151910120611043612bf2565b61104b612bf2565b611053612bf2565b6000806041881415611124576110a960008a8a8080601f016020809104026020016040519081016040528093929190818152602001838380828437600092019190915250929392505063ffffffff612a1e169050565b60ff908116865290865281875284518651604080516000815260208181018084528d9052939094168482015260608401949094526080830152915160019260a0808401939192601f1981019281900390910190855afa158015611110573d6000803e3d6000fd5b5050506020604051035191508190506112c8565b60828814156112b85761117760008a8a8080601f016020809104026020016040519081016040528093929190818152602001838380828437600092019190915250929392505063ffffffff612a1e169050565b60ff16855285528552604080516020601f8b018190048102820181019092528981526111ca91604191908c908c9081908401838280828437600092019190915250929392505063ffffffff612a1e169050565b60ff908116602087810191909152878101929092528188019290925284518751875160408051600081528086018083528d9052939095168386015260608301919091526080820152915160019260a08082019392601f1981019281900390910190855afa15801561123f573d6000803e3d6000fd5b505060408051601f19808201516020808901518b8201518b830151600087528387018089528f905260ff909216868801526060860152608085015293519096506001945060a08084019493928201928290030190855afa1580156112a7573d6000803e3d6000fd5b5050506020604051035190506112c8565b506000955061135e945050505050565b6001600160a01b0382166112e657506000955061135e945050505050565b6001600160a01b03811661130457506000955061135e945050505050565b806001600160a01b031660016000846001600160a01b0316600054018152602001908152602001600020546001600160a01b03161461134d57506000955061135e945050505050565b50630b135d3f60e11b955050505050505b9392505050565b600081565b60016020526000908152604090205481565b601b60ff88351614806113935750601c60ff883516145b6113e4576040805162461bcd60e51b815260206004820152601e60248201527f696e76616c6964207369676e61747572652076657273696f6e20765b305d0000604482015290519081900360640190fd5b601b60ff60208901351614806114015750601c60ff602089013516145b611452576040805162461bcd60e51b815260206004820152601e60248201527f696e76616c6964207369676e61747572652076657273696f6e20765b315d0000604482015290519081900360640190fd5b604051601960f81b6020820181815260006021840181905230606081811b6022870152603686018a905288901b6bffffffffffffffffffffffff1916605686015290938492899189918991899190606a018383808284378083019250505097505050505050505060405160208183030381529060405280519060200120905060006001828a6000600281106114e357fe5b602002013560ff168a6000600281106114f857fe5b604080516000815260208181018084529690965260ff90941684820152908402919091013560608301528a3560808301525160a08083019392601f198301929081900390910190855afa158015611553573d6000803e3d6000fd5b505060408051601f1980820151600080845260208085018087528990528f81013560ff16858701528e81013560608601528d81013560808601529451919650945060019360a0808501949193830192918290030190855afa1580156115bc573d6000803e3d6000fd5b5050604051601f1901519150506001600160a01b038216611624576040805162461bcd60e51b815260206004820152601d60248201527f496e76616c6964207369676e617475726520666f72207369676e65722e000000604482015290519081900360640190fd5b6001600160a01b03811661167f576040805162461bcd60e51b815260206004820152601f60248201527f496e76616c6964207369676e617475726520666f7220636f7369676e65722e00604482015290519081900360640190fd5b856001600160a01b0316826001600160a01b0316146116cf5760405162461bcd60e51b8152600401808060200182810382526022815260200180612d2c6022913960400191505060405180910390fd5b6001600160a01b038216600090815260026020526040902054871161173b576040805162461bcd60e51b815260206004820152601f60248201527f6d757374207573652076616c6964206e6f6e636520666f72207369676e657200604482015290519081900360640190fd5b600080546001600160a01b0380851691820183526001602052604090922054918216148061177a5750816001600160a01b0316816001600160a01b0316145b6117c4576040805162461bcd60e51b815260206004820152601660248201527524b73b30b634b21030baba3437b934bd30ba34b7b71760511b604482015290519081900360640190fd5b6001600160a01b0383166000908152600260209081526040918290208a90558151601f880182900482028101820190925286825261181e9186918990899081908401838280828437600092019190915250612a3a92505050565b5050505050505050505050565b600454600160a01b900460ff161561188a576040805162461bcd60e51b815260206004820152601f60248201527f6d757374206e6f7420616c726561647920626520696e697469616c697a656400604482015290519081900360640190fd5b6004805460ff60a01b1916600160a01b1790556001600160a01b0383811690821614156118e85760405162461bcd60e51b8152600401808060200182810382526039815260200180612cc56039913960400191505060405180910390fd5b806001600160a01b0316826001600160a01b031614156119395760405162461bcd60e51b815260040180806020018281038252602e815260200180612cfe602e913960400191505060405180910390fd5b6001600160a01b03831661197e5760405162461bcd60e51b8152600401808060200182810382526026815260200180612c7d6026913960400191505060405180910390fd5b6001600160a01b0382166119c35760405162461bcd60e51b8152600401808060200182810382526022815260200180612ca36022913960400191505060405180910390fd5b600480546001600160a01b0319166001600160a01b0383811691909117909155600160a01b60008181559185169081018252600160209081526040928390208590558251918252810184905281517fb39b5f240c7440b58c1c6cfd328b09ff9aa18b3c8ef4b829774e4f5bad039416929181900390910190a1505050565b333014611a95576040805162461bcd60e51b815260206004820152601e60248201527f6d7573742062652063616c6c65642066726f6d2060696e766f6b652829600000604482015290519081900360640190fd5b600080546001600160a01b03838116909101825260016020526040909120541615611af15760405162461bcd60e51b8152600401808060200182810382526039815260200180612c116039913960400191505060405180910390fd5b600480546001600160a01b038381166001600160a01b0319831617928390556040805192821680845293909116602083015280517f568ab3dedd6121f0385e007e641e74e1f49d0fa69cab2957b0b07c4c7de5abb69281900390910190a15050565b8460ff16601b1480611b6857508460ff16601c145b611bb9576040805162461bcd60e51b815260206004820152601a60248201527f496e76616c6964207369676e61747572652076657273696f6e2e000000000000604482015290519081900360640190fd5b336000818152600260209081526040808320549051601960f81b9281018381526021820185905230606081811b60228501526036840185905287901b6056840152929585939287928a918a9190606a0183838082843780830192505050975050505050505050604051602081830303815290604052805190602001209050600060018289898960405160008152602001604052604051808581526020018460ff1660ff1681526020018381526020018281526020019450505050506020604051602081039080840390855afa158015611c96573d6000803e3d6000fd5b5050604051601f1901519150506001600160a01b038116611cf3576040805162461bcd60e51b815260206004820152601260248201527124b73b30b634b21039b4b3b730ba3ab9329760711b604482015290519081900360640190fd5b6000805433018152600160205260409020546001600160a01b038181169083161480611d2757506001600160a01b03811633145b611d71576040805162461bcd60e51b815260206004820152601660248201527524b73b30b634b21030baba3437b934bd30ba34b7b71760511b604482015290519081900360640190fd5b336000908152600260209081526040918290206001870190558151601f8801829004820281018201909252868252611dc59185918990899081908401838280828437600092019190915250612a3a92505050565b505050505050505050565b6004546001600160a01b031681565b6004546001600160a01b03163314611e3e576040805162461bcd60e51b815260206004820152601f60248201527f73656e646572206d757374206265207265636f76657279206164647265737300604482015290519081900360640190fd5b6001600160a01b038216611e835760405162461bcd60e51b8152600401808060200182810382526026815260200180612c7d6026913960400191505060405180910390fd5b6004546001600160a01b0383811691161415611ed05760405162461bcd60e51b8152600401808060200182810382526039815260200180612cc56039913960400191505060405180910390fd5b6001600160a01b038116611f2b576040805162461bcd60e51b815260206004820152601e60248201527f54686520636f7369676e6572206d757374206e6f74206265207a65726f2e0000604482015290519081900360640190fd5b60008054600160a01b81810183556001600160a01b038516918201018252600160209081526040928390208490558251918252810183905281517fa9364fb2836862098c2b593d2d3f46759b4c6d5b054300f96172b0394430008a929181900390910190a15050565b600160a01b81565b60026020526000908152604090205481565b333014612002576040805162461bcd60e51b815260206004820152601e60248201527f6d7573742062652063616c6c65642066726f6d2060696e766f6b652829600000604482015290519081900360640190fd5b6001600160e01b0319821660008181526003602090815260409182902080546001600160a01b0319166001600160a01b03861690811790915582519384529083015280517fd09b01a1a877e1a97b048725e0697d9be07bb94320c536e72b976c81016891fb9281900390910190a15050565b60005481565b6004546001600160a01b031633146120d9576040805162461bcd60e51b815260206004820152601f60248201527f73656e646572206d757374206265207265636f76657279206164647265737300604482015290519081900360640190fd5b6001600160a01b03831661211e5760405162461bcd60e51b8152600401808060200182810382526026815260200180612c7d6026913960400191505060405180910390fd5b806001600160a01b0316836001600160a01b0316141561216f5760405162461bcd60e51b8152600401808060200182810382526039815260200180612cc56039913960400191505060405180910390fd5b6001600160a01b0382166121ca576040805162461bcd60e51b815260206004820152601e60248201527f54686520636f7369676e6572206d757374206e6f74206265207a65726f2e0000604482015290519081900360640190fd5b60008054600160a01b81810183556001600160a01b0380871690920101825260016020908152604092839020859055600480548584166001600160a01b03198216179182905584519084168082529190931691830191909152825190927f568ab3dedd6121f0385e007e641e74e1f49d0fa69cab2957b0b07c4c7de5abb6928290030190a1604080516001600160a01b03861681526020810185905281517fa9364fb2836862098c2b593d2d3f46759b4c6d5b054300f96172b0394430008a929181900390910190a150505050565b600181565b8660ff16601b14806122b357508660ff16601c145b612304576040805162461bcd60e51b815260206004820152601a60248201527f496e76616c6964207369676e61747572652076657273696f6e2e000000000000604482015290519081900360640190fd5b604051601960f81b6020820181815260006021840181905230606081811b6022870152603686018a905288901b6bffffffffffffffffffffffff1916605686015290938492899189918991899190606a018383808284378083019250505097505050505050505060405160208183030381529060405280519060200120905060006001828a8a8a60405160008152602001604052604051808581526020018460ff1660ff1681526020018381526020018281526020019450505050506020604051602081039080840390855afa1580156123e2573d6000803e3d6000fd5b5050604051601f1901519150506001600160a01b03811661243f576040805162461bcd60e51b815260206004820152601260248201527124b73b30b634b21039b4b3b730ba3ab9329760711b604482015290519081900360640190fd5b6001600160a01b03811660009081526002602052604090205486116124ab576040805162461bcd60e51b815260206004820152601f60248201527f6d757374207573652076616c6964206e6f6e636520666f72207369676e657200604482015290519081900360640190fd5b846001600160a01b0316816001600160a01b0316146124fb5760405162461bcd60e51b8152600401808060200182810382526022815260200180612d2c6022913960400191505060405180910390fd5b600080546001600160a01b0380841691820183526001602052604090922054918216148061253157506001600160a01b03811633145b61257b576040805162461bcd60e51b815260206004820152601660248201527524b73b30b634b21030baba3437b934bd30ba34b7b71760511b604482015290519081900360640190fd5b6001600160a01b0382166000908152600260209081526040918290208990558151601f87018290048202810182019092528582526125d59185918890889081908401838280828437600092019190915250612a3a92505050565b50505050505050505050565b6003602052600090815260409020546001600160a01b031681565b6000805433908101825260016020526040909120546001600160a01b031614612665576040805162461bcd60e51b815260206004820152601660248201527524b73b30b634b21030baba3437b934bd30ba34b7b71760511b604482015290519081900360640190fd5b6126a86000801b83838080601f016020809104026020016040519081016040528093929190818152602001838380828437600092019190915250612a3a92505050565b5050565b333014612700576040805162461bcd60e51b815260206004820152601e60248201527f6d7573742062652063616c6c65642066726f6d2060696e766f6b652829600000604482015290519081900360640190fd5b6001600160a01b0382166127455760405162461bcd60e51b8152600401808060200182810382526026815260200180612c7d6026913960400191505060405180910390fd5b6004546001600160a01b03838116911614156127925760405162461bcd60e51b8152600401808060200182810382526039815260200180612cc56039913960400191505060405180910390fd5b6001600160a01b03811615806127b657506004546001600160a01b03828116911614155b6127f15760405162461bcd60e51b815260040180806020018281038252602e815260200180612cfe602e913960400191505060405180910390fd5b600080546001600160a01b0384169081018252600160209081526040928390208490558251918252810183905281517fb39b5f240c7440b58c1c6cfd328b09ff9aa18b3c8ef4b829774e4f5bad039416929181900390910190a15050565b505050565b601960f81b81565b60008311801561286f575063ffffffff83105b6128c0576040805162461bcd60e51b815260206004820152601760248201527f496e76616c69642076657273696f6e206e756d6265722e000000000000000000604482015290519081900360640190fd5b60005460a084901b9081106129065760405162461bcd60e51b8152600401808060200182810382526033815260200180612c4a6033913960400191505060405180910390fd5b60005b82811015610fe1576001600085858481811061292157fe5b905060200201356001600160a01b03166001600160a01b03168401815260200190815260200160002060009055806001019050612909565b63785cf2dd60e11b949350505050565b604051806040016040528060058152602001640312e312e360dc1b81525081565b6060601482518161299757fe5b046040519080825280602002602001820160405280156129c1578160200160208202803883390190505b50905060005b8251811015612a18576000808260140190508085015191508184601485816129eb57fe5b04815181106129f657fe5b6001600160a01b039092166020928302919091019091015250506014016129c7565b50919050565b0160208101516040820151606090920151909260009190911a90565b60008060606040518060400160405280601481526020017311185d1848199a595b19081d1bdbc81cda1bdc9d60621b815250905060606040518060400160405280600b81526020016a10d85b1b0819985a5b195960aa1b81525090506055855110158290612b265760405162461bcd60e51b81526004018080602001828103825283818151815260200191508051906020019080838360005b83811015612aeb578181015183820152602001612ad3565b50505050905090810190601f168015612b185780820380516001836020036101000a031916815260200191505b509250505060405180910390fd5b5060208501805160001a865182016001830192505b80831015612ba657603483015160548401810182811115612b5e57865160208801fd5b60008083605488016014890151895160601c5af1612b96578360018114612b8c578960020a89179850612b94565b865160208801fd5b505b6001890198508094505050612b3b565b5050604080518881526020810186905280820187905290517f101214446435ebbb29893f3348e3aae5ea070b63037a3df346d09d3396a34aee92509081900360600190a1505050505050565b6040518060400160405280600290602082028038833950919291505056fe446f206e6f742075736520616e20617574686f72697a6564206164647265737320617320746865207265636f7665727920616464726573732e596f752063616e206f6e6c79207265636f766572206761732066726f6d2065787069726564206175746856657273696f6e732e417574686f72697a656420616464726573736573206d757374206e6f74206265207a65726f2e496e697469616c20636f7369676e6572206d757374206e6f74206265207a65726f2e446f206e6f742075736520746865207265636f76657279206164647265737320617320616e20617574686f72697a656420616464726573732e446f206e6f742075736520746865207265636f766572792061646472657373206173206120636f7369676e65722e617574686f72697a656420616464726573736573206d75737420626520657175616ca265627a7a7230582075d811dae4869ef6ca99fe3c0b7842ac040c148dcacfa8cb1241f6e4135aea6d64736f6c634300050a0032417574686f72697a656420616464726573736573206d757374206e6f74206265207a65726f2e496e697469616c20636f7369676e6572206d757374206e6f74206265207a65726f2e446f206e6f742075736520746865207265636f76657279206164647265737320617320616e20617574686f72697a656420616464726573732e446f206e6f742075736520746865207265636f766572792061646472657373206173206120636f7369676e65722e000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
}

