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
    bytes constant fullWalletBytecode = hex'60806040523480156200001157600080fd5b50604051620033a7380380620033a7833981810160405260608110156200003757600080fd5b50805160208201516040909201519091906200005e8383836001600160e01b036200006716565b5050506200033b565b60045474010000000000000000000000000000000000000000900460ff1615620000f257604080517f08c379a000000000000000000000000000000000000000000000000000000000815260206004820152601f60248201527f6d757374206e6f7420616c726561647920626520696e697469616c697a656400604482015290519081900360640190fd5b6004805460ff60a01b1916740100000000000000000000000000000000000000001790556001600160a01b0383811690821614156200017d576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401808060200182810382526039815260200180620033406039913960400191505060405180910390fd5b806001600160a01b0316826001600160a01b03161415620001ea576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040180806020018281038252602e81526020018062003379602e913960400191505060405180910390fd5b6001600160a01b0383166200024b576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401808060200182810382526026815260200180620032f86026913960400191505060405180910390fd5b6001600160a01b038216620002ac576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004018080602001828103825260228152602001806200331e6022913960400191505060405180910390fd5b600480546001600160a01b0319166001600160a01b03838116919091179091557401000000000000000000000000000000000000000060008181559185169081018252600160209081526040928390208590558251918252810184905281517fb39b5f240c7440b58c1c6cfd328b09ff9aa18b3c8ef4b829774e4f5bad039416929181900390910190a1505050565b612fad806200034b6000396000f3fe6080604052600436106101d85760003560e01c80637ecebe0011610102578063bc197c8111610095578063ef009e4211610064578063ef009e4214610c68578063f0b9e5ba14610cea578063f23a6e6114610d7a578063ffa1ad7414610e1a576101d8565b8063bc197c8114610a20578063bf4fb0c014610b54578063c0ee0b8a14610b8d578063ce2d4f9614610c53576101d8565b80639105d9c4116100d15780639105d9c4146108b657806391aeeedc146108cb578063a0a2daf014610971578063a3c89c4f146109a5576101d8565b80637ecebe00146107e857806388fb06e71461081b5780638bf788741461085e5780638fd45d1a14610873576101d8565b8063210d66f81161017a57806357e61e291161014957806357e61e29146106d8578063710eb26c14610769578063727b7acf1461079a57806375857eba146107d3576101d8565b8063210d66f8146105865780632698c20c146105c257806343fc00b81461066257806349efe5ae146106a5576101d8565b8063157ca6e4116101b6578063157ca6e4146103fe578063158ef93e146104bd5780631626ba7e146104d25780631cd61bad14610554576101d8565b806301ffc9a7146102b357806308405166146102fb578063150b7a021461032d575b3415610219576040805133815234602082015281517f88a5966d370b9919b20f3e2c13ff65706f196a4e32cc2c12bf57088f88525874929181900390910190a15b36156102b157600080356001600160e01b0319168152600360205260409020546001600160a01b03166001811161028d576040805162461bcd60e51b815260206004820152601360248201527224b73b30b634b2103a3930b739b0b1ba34b7b760691b604482015290519081900360640190fd5b3660008037600080366000845afa3d6000803e8080156102ac573d6000f35b3d6000fd5b005b3480156102bf57600080fd5b506102e7600480360360208110156102d657600080fd5b50356001600160e01b031916610ea4565b604080519115158252519081900360200190f35b34801561030757600080fd5b50610310610f7a565b604080516001600160e01b03199092168252519081900360200190f35b34801561033957600080fd5b506103106004803603608081101561035057600080fd5b6001600160a01b03823581169260208101359091169160408201359190810190608081016060820135600160201b81111561038a57600080fd5b82018360208201111561039c57600080fd5b803590602001918460018302840111600160201b831117156103bd57600080fd5b91908080601f016020809104026020016040519081016040528093929190818152602001838380828437600092019190915250929550610f85945050505050565b34801561040a57600080fd5b506102b16004803603606081101561042157600080fd5b810190602081018135600160201b81111561043b57600080fd5b82018360208201111561044d57600080fd5b803590602001918460018302840111600160201b8311171561046e57600080fd5b91908080601f01602080910402602001604051908101604052809392919081815260200183838082843760009201919091525092955050823593505050602001356001600160a01b0316610f95565b3480156104c957600080fd5b506102e76111ed565b3480156104de57600080fd5b50610310600480360360408110156104f557600080fd5b81359190810190604081016020820135600160201b81111561051657600080fd5b82018360208201111561052857600080fd5b803590602001918460018302840111600160201b8311171561054957600080fd5b5090925090506111fd565b34801561056057600080fd5b5061056961156a565b604080516001600160f81b03199092168252519081900360200190f35b34801561059257600080fd5b506105b0600480360360208110156105a957600080fd5b503561156f565b60408051918252519081900360200190f35b3480156105ce57600080fd5b506102b160048036036101208110156105e657600080fd5b6040820190608083019060c0840135906001600160a01b0360e086013516908501856101208101610100820135600160201b81111561062457600080fd5b82018360208201111561063657600080fd5b803590602001918460018302840111600160201b8311171561065757600080fd5b509092509050611581565b34801561066e57600080fd5b506102b16004803603606081101561068557600080fd5b506001600160a01b03813581169160208101359160409091013516611a30565b3480156106b157600080fd5b506102b1600480360360208110156106c857600080fd5b50356001600160a01b0316611c46565b3480156106e457600080fd5b506102b1600480360360808110156106fb57600080fd5b60ff8235169160208101359160408201359190810190608081016060820135600160201b81111561072b57600080fd5b82018360208201111561073d57600080fd5b803590602001918460018302840111600160201b8311171561075e57600080fd5b509092509050611d58565b34801561077557600080fd5b5061077e611fd5565b604080516001600160a01b039092168252519081900360200190f35b3480156107a657600080fd5b506102b1600480360360408110156107bd57600080fd5b506001600160a01b038135169060200135611fe4565b3480156107df57600080fd5b506105b0612199565b3480156107f457600080fd5b506105b06004803603602081101561080b57600080fd5b50356001600160a01b03166121a1565b34801561082757600080fd5b506102b16004803603604081101561083e57600080fd5b5080356001600160e01b03191690602001356001600160a01b03166121b3565b34801561086a57600080fd5b506105b0612279565b34801561087f57600080fd5b506102b16004803603606081101561089657600080fd5b506001600160a01b0381358116916020810135916040909101351661227f565b3480156108c257600080fd5b5061077e61249e565b3480156108d757600080fd5b506102b1600480360360c08110156108ee57600080fd5b60ff823516916020810135916040820135916060810135916001600160a01b03608083013516919081019060c0810160a0820135600160201b81111561093357600080fd5b82018360208201111561094557600080fd5b803590602001918460018302840111600160201b8311171561096657600080fd5b5090925090506124a3565b34801561097d57600080fd5b5061077e6004803603602081101561099457600080fd5b50356001600160e01b0319166127e6565b3480156109b157600080fd5b506102b1600480360360208110156109c857600080fd5b810190602081018135600160201b8111156109e257600080fd5b8201836020820111156109f457600080fd5b803590602001918460018302840111600160201b83111715610a1557600080fd5b509092509050612801565b348015610a2c57600080fd5b50610310600480360360a0811015610a4357600080fd5b6001600160a01b038235811692602081013590911691810190606081016040820135600160201b811115610a7657600080fd5b820183602082011115610a8857600080fd5b803590602001918460208302840111600160201b83111715610aa957600080fd5b919390929091602081019035600160201b811115610ac657600080fd5b820183602082011115610ad857600080fd5b803590602001918460208302840111600160201b83111715610af957600080fd5b919390929091602081019035600160201b811115610b1657600080fd5b820183602082011115610b2857600080fd5b803590602001918460018302840111600160201b83111715610b4957600080fd5b5090925090506128b1565b348015610b6057600080fd5b506102b160048036036040811015610b7757600080fd5b506001600160a01b0381351690602001356128c5565b348015610b9957600080fd5b506102b160048036036060811015610bb057600080fd5b6001600160a01b0382351691602081013591810190606081016040820135600160201b811115610bdf57600080fd5b820183602082011115610bf157600080fd5b803590602001918460018302840111600160201b83111715610c1257600080fd5b91908080601f016020809104026020016040519081016040528093929190818152602001838380828437600092019190915250929550612a68945050505050565b348015610c5f57600080fd5b50610569612a6d565b348015610c7457600080fd5b506102b160048036036040811015610c8b57600080fd5b81359190810190604081016020820135600160201b811115610cac57600080fd5b820183602082011115610cbe57600080fd5b803590602001918460208302840111600160201b83111715610cdf57600080fd5b509092509050612a75565b348015610cf657600080fd5b5061031060048036036060811015610d0d57600080fd5b6001600160a01b0382351691602081013591810190606081016040820135600160201b811115610d3c57600080fd5b820183602082011115610d4e57600080fd5b803590602001918460018302840111600160201b83111715610d6f57600080fd5b509092509050612b72565b348015610d8657600080fd5b50610310600480360360a0811015610d9d57600080fd5b6001600160a01b03823581169260208101359091169160408201359160608101359181019060a081016080820135600160201b811115610ddc57600080fd5b820183602082011115610dee57600080fd5b803590602001918460018302840111600160201b83111715610e0f57600080fd5b509092509050612b82565b348015610e2657600080fd5b50610e2f612b94565b6040805160208082528351818301528351919283929083019185019080838360005b83811015610e69578181015183820152602001610e51565b50505050905090810190601f168015610e965780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b60006001600160e01b031982166301ffc9a760e01b1480610ed557506001600160e01b03198216630a85bd0160e11b145b80610ef057506001600160e01b0319821663785cf2dd60e11b145b80610f0b57506001600160e01b0319821663607705c560e11b145b80610f2657506001600160e01b03198216630271189760e51b145b80610f4157506001600160e01b03198216630b135d3f60e11b145b15610f4e57506001610f75565b506001600160e01b031981166000908152600360205260409020546001600160a01b031615155b919050565b63607705c560e11b81565b630a85bd0160e11b949350505050565b600454600160a01b900460ff1615610ff4576040805162461bcd60e51b815260206004820152601f60248201527f6d757374206e6f7420616c726561647920626520696e697469616c697a656400604482015290519081900360640190fd5b6004805460ff60a01b1916600160a01b179055606061101284612bb5565b905060005b81518110156111e657600082828151811061102e57fe5b60200260200101519050836001600160a01b0316816001600160a01b031614156110895760405162461bcd60e51b8152600401808060200182810382526039815260200180612ef06039913960400191505060405180910390fd5b836001600160a01b0316856001600160a01b031614156110da5760405162461bcd60e51b815260040180806020018281038252602e815260200180612f29602e913960400191505060405180910390fd5b6001600160a01b03811661111f5760405162461bcd60e51b8152600401808060200182810382526026815260200180612ea86026913960400191505060405180910390fd5b6001600160a01b0385166111645760405162461bcd60e51b8152600401808060200182810382526022815260200180612ece6022913960400191505060405180910390fd5b600480546001600160a01b0319166001600160a01b0386811691909117909155600160a01b60008181559183169081018252600160209081526040928390208890558251918252810187905281517fb39b5f240c7440b58c1c6cfd328b09ff9aa18b3c8ef4b829774e4f5bad039416929181900390910190a150600101611017565b5050505050565b600454600160a01b900460ff1681565b60408051601960f81b6020808301919091526000602183018190523060601b602284015260368084018890528451808503909101815260569093019093528151910120611248612e1d565b611250612e1d565b611258612e1d565b6000806041881415611329576112ae60008a8a8080601f016020809104026020016040519081016040528093929190818152602001838380828437600092019190915250929392505063ffffffff612c49169050565b60ff908116865290865281875284518651604080516000815260208181018084528d9052939094168482015260608401949094526080830152915160019260a0808401939192601f1981019281900390910190855afa158015611315573d6000803e3d6000fd5b5050506020604051035191508190506114cd565b60828814156114bd5761137c60008a8a8080601f016020809104026020016040519081016040528093929190818152602001838380828437600092019190915250929392505063ffffffff612c49169050565b60ff16855285528552604080516020601f8b018190048102820181019092528981526113cf91604191908c908c9081908401838280828437600092019190915250929392505063ffffffff612c49169050565b60ff908116602087810191909152878101929092528188019290925284518751875160408051600081528086018083528d9052939095168386015260608301919091526080820152915160019260a08082019392601f1981019281900390910190855afa158015611444573d6000803e3d6000fd5b505060408051601f19808201516020808901518b8201518b830151600087528387018089528f905260ff909216868801526060860152608085015293519096506001945060a08084019493928201928290030190855afa1580156114ac573d6000803e3d6000fd5b5050506020604051035190506114cd565b5060009550611563945050505050565b6001600160a01b0382166114eb575060009550611563945050505050565b6001600160a01b038116611509575060009550611563945050505050565b806001600160a01b031660016000846001600160a01b0316600054018152602001908152602001600020546001600160a01b031614611552575060009550611563945050505050565b50630b135d3f60e11b955050505050505b9392505050565b600081565b60016020526000908152604090205481565b601b60ff88351614806115985750601c60ff883516145b6115e9576040805162461bcd60e51b815260206004820152601e60248201527f696e76616c6964207369676e61747572652076657273696f6e20765b305d0000604482015290519081900360640190fd5b601b60ff60208901351614806116065750601c60ff602089013516145b611657576040805162461bcd60e51b815260206004820152601e60248201527f696e76616c6964207369676e61747572652076657273696f6e20765b315d0000604482015290519081900360640190fd5b604051601960f81b6020820181815260006021840181905230606081811b6022870152603686018a905288901b6bffffffffffffffffffffffff1916605686015290938492899189918991899190606a018383808284378083019250505097505050505050505060405160208183030381529060405280519060200120905060006001828a6000600281106116e857fe5b602002013560ff168a6000600281106116fd57fe5b604080516000815260208181018084529690965260ff90941684820152908402919091013560608301528a3560808301525160a08083019392601f198301929081900390910190855afa158015611758573d6000803e3d6000fd5b505060408051601f1980820151600080845260208085018087528990528f81013560ff16858701528e81013560608601528d81013560808601529451919650945060019360a0808501949193830192918290030190855afa1580156117c1573d6000803e3d6000fd5b5050604051601f1901519150506001600160a01b038216611829576040805162461bcd60e51b815260206004820152601d60248201527f496e76616c6964207369676e617475726520666f72207369676e65722e000000604482015290519081900360640190fd5b6001600160a01b038116611884576040805162461bcd60e51b815260206004820152601f60248201527f496e76616c6964207369676e617475726520666f7220636f7369676e65722e00604482015290519081900360640190fd5b856001600160a01b0316826001600160a01b0316146118d45760405162461bcd60e51b8152600401808060200182810382526022815260200180612f576022913960400191505060405180910390fd5b6001600160a01b0382166000908152600260205260409020548711611940576040805162461bcd60e51b815260206004820152601f60248201527f6d757374207573652076616c6964206e6f6e636520666f72207369676e657200604482015290519081900360640190fd5b600080546001600160a01b0380851691820183526001602052604090922054918216148061197f5750816001600160a01b0316816001600160a01b0316145b6119c9576040805162461bcd60e51b815260206004820152601660248201527524b73b30b634b21030baba3437b934bd30ba34b7b71760511b604482015290519081900360640190fd5b6001600160a01b0383166000908152600260209081526040918290208a90558151601f8801829004820281018201909252868252611a239186918990899081908401838280828437600092019190915250612c6592505050565b5050505050505050505050565b600454600160a01b900460ff1615611a8f576040805162461bcd60e51b815260206004820152601f60248201527f6d757374206e6f7420616c726561647920626520696e697469616c697a656400604482015290519081900360640190fd5b6004805460ff60a01b1916600160a01b1790556001600160a01b038381169082161415611aed5760405162461bcd60e51b8152600401808060200182810382526039815260200180612ef06039913960400191505060405180910390fd5b806001600160a01b0316826001600160a01b03161415611b3e5760405162461bcd60e51b815260040180806020018281038252602e815260200180612f29602e913960400191505060405180910390fd5b6001600160a01b038316611b835760405162461bcd60e51b8152600401808060200182810382526026815260200180612ea86026913960400191505060405180910390fd5b6001600160a01b038216611bc85760405162461bcd60e51b8152600401808060200182810382526022815260200180612ece6022913960400191505060405180910390fd5b600480546001600160a01b0319166001600160a01b0383811691909117909155600160a01b60008181559185169081018252600160209081526040928390208590558251918252810184905281517fb39b5f240c7440b58c1c6cfd328b09ff9aa18b3c8ef4b829774e4f5bad039416929181900390910190a1505050565b333014611c9a576040805162461bcd60e51b815260206004820152601e60248201527f6d7573742062652063616c6c65642066726f6d2060696e766f6b652829600000604482015290519081900360640190fd5b600080546001600160a01b03838116909101825260016020526040909120541615611cf65760405162461bcd60e51b8152600401808060200182810382526039815260200180612e3c6039913960400191505060405180910390fd5b600480546001600160a01b038381166001600160a01b0319831617928390556040805192821680845293909116602083015280517f568ab3dedd6121f0385e007e641e74e1f49d0fa69cab2957b0b07c4c7de5abb69281900390910190a15050565b8460ff16601b1480611d6d57508460ff16601c145b611dbe576040805162461bcd60e51b815260206004820152601a60248201527f496e76616c6964207369676e61747572652076657273696f6e2e000000000000604482015290519081900360640190fd5b336000818152600260209081526040808320549051601960f81b9281018381526021820185905230606081811b60228501526036840185905287901b6056840152929585939287928a918a9190606a0183838082843780830192505050975050505050505050604051602081830303815290604052805190602001209050600060018289898960405160008152602001604052604051808581526020018460ff1660ff1681526020018381526020018281526020019450505050506020604051602081039080840390855afa158015611e9b573d6000803e3d6000fd5b5050604051601f1901519150506001600160a01b038116611ef8576040805162461bcd60e51b815260206004820152601260248201527124b73b30b634b21039b4b3b730ba3ab9329760711b604482015290519081900360640190fd5b6000805433018152600160205260409020546001600160a01b038181169083161480611f2c57506001600160a01b03811633145b611f76576040805162461bcd60e51b815260206004820152601660248201527524b73b30b634b21030baba3437b934bd30ba34b7b71760511b604482015290519081900360640190fd5b336000908152600260209081526040918290206001870190558151601f8801829004820281018201909252868252611fca9185918990899081908401838280828437600092019190915250612c6592505050565b505050505050505050565b6004546001600160a01b031681565b6004546001600160a01b03163314612043576040805162461bcd60e51b815260206004820152601f60248201527f73656e646572206d757374206265207265636f76657279206164647265737300604482015290519081900360640190fd5b6001600160a01b0382166120885760405162461bcd60e51b8152600401808060200182810382526026815260200180612ea86026913960400191505060405180910390fd5b6004546001600160a01b03838116911614156120d55760405162461bcd60e51b8152600401808060200182810382526039815260200180612ef06039913960400191505060405180910390fd5b6001600160a01b038116612130576040805162461bcd60e51b815260206004820152601e60248201527f54686520636f7369676e6572206d757374206e6f74206265207a65726f2e0000604482015290519081900360640190fd5b60008054600160a01b81810183556001600160a01b038516918201018252600160209081526040928390208490558251918252810183905281517fa9364fb2836862098c2b593d2d3f46759b4c6d5b054300f96172b0394430008a929181900390910190a15050565b600160a01b81565b60026020526000908152604090205481565b333014612207576040805162461bcd60e51b815260206004820152601e60248201527f6d7573742062652063616c6c65642066726f6d2060696e766f6b652829600000604482015290519081900360640190fd5b6001600160e01b0319821660008181526003602090815260409182902080546001600160a01b0319166001600160a01b03861690811790915582519384529083015280517fd09b01a1a877e1a97b048725e0697d9be07bb94320c536e72b976c81016891fb9281900390910190a15050565b60005481565b6004546001600160a01b031633146122de576040805162461bcd60e51b815260206004820152601f60248201527f73656e646572206d757374206265207265636f76657279206164647265737300604482015290519081900360640190fd5b6001600160a01b0383166123235760405162461bcd60e51b8152600401808060200182810382526026815260200180612ea86026913960400191505060405180910390fd5b806001600160a01b0316836001600160a01b031614156123745760405162461bcd60e51b8152600401808060200182810382526039815260200180612ef06039913960400191505060405180910390fd5b6001600160a01b0382166123cf576040805162461bcd60e51b815260206004820152601e60248201527f54686520636f7369676e6572206d757374206e6f74206265207a65726f2e0000604482015290519081900360640190fd5b60008054600160a01b81810183556001600160a01b0380871690920101825260016020908152604092839020859055600480548584166001600160a01b03198216179182905584519084168082529190931691830191909152825190927f568ab3dedd6121f0385e007e641e74e1f49d0fa69cab2957b0b07c4c7de5abb6928290030190a1604080516001600160a01b03861681526020810185905281517fa9364fb2836862098c2b593d2d3f46759b4c6d5b054300f96172b0394430008a929181900390910190a150505050565b600181565b8660ff16601b14806124b857508660ff16601c145b612509576040805162461bcd60e51b815260206004820152601a60248201527f496e76616c6964207369676e61747572652076657273696f6e2e000000000000604482015290519081900360640190fd5b604051601960f81b6020820181815260006021840181905230606081811b6022870152603686018a905288901b6bffffffffffffffffffffffff1916605686015290938492899189918991899190606a018383808284378083019250505097505050505050505060405160208183030381529060405280519060200120905060006001828a8a8a60405160008152602001604052604051808581526020018460ff1660ff1681526020018381526020018281526020019450505050506020604051602081039080840390855afa1580156125e7573d6000803e3d6000fd5b5050604051601f1901519150506001600160a01b038116612644576040805162461bcd60e51b815260206004820152601260248201527124b73b30b634b21039b4b3b730ba3ab9329760711b604482015290519081900360640190fd5b6001600160a01b03811660009081526002602052604090205486116126b0576040805162461bcd60e51b815260206004820152601f60248201527f6d757374207573652076616c6964206e6f6e636520666f72207369676e657200604482015290519081900360640190fd5b846001600160a01b0316816001600160a01b0316146127005760405162461bcd60e51b8152600401808060200182810382526022815260200180612f576022913960400191505060405180910390fd5b600080546001600160a01b0380841691820183526001602052604090922054918216148061273657506001600160a01b03811633145b612780576040805162461bcd60e51b815260206004820152601660248201527524b73b30b634b21030baba3437b934bd30ba34b7b71760511b604482015290519081900360640190fd5b6001600160a01b0382166000908152600260209081526040918290208990558151601f87018290048202810182019092528582526127da9185918890889081908401838280828437600092019190915250612c6592505050565b50505050505050505050565b6003602052600090815260409020546001600160a01b031681565b6000805433908101825260016020526040909120546001600160a01b03161461286a576040805162461bcd60e51b815260206004820152601660248201527524b73b30b634b21030baba3437b934bd30ba34b7b71760511b604482015290519081900360640190fd5b6128ad6000801b83838080601f016020809104026020016040519081016040528093929190818152602001838380828437600092019190915250612c6592505050565b5050565b63bc197c8160e01b98975050505050505050565b333014612919576040805162461bcd60e51b815260206004820152601e60248201527f6d7573742062652063616c6c65642066726f6d2060696e766f6b652829600000604482015290519081900360640190fd5b6001600160a01b03821661295e5760405162461bcd60e51b8152600401808060200182810382526026815260200180612ea86026913960400191505060405180910390fd5b6004546001600160a01b03838116911614156129ab5760405162461bcd60e51b8152600401808060200182810382526039815260200180612ef06039913960400191505060405180910390fd5b6001600160a01b03811615806129cf57506004546001600160a01b03828116911614155b612a0a5760405162461bcd60e51b815260040180806020018281038252602e815260200180612f29602e913960400191505060405180910390fd5b600080546001600160a01b0384169081018252600160209081526040928390208490558251918252810183905281517fb39b5f240c7440b58c1c6cfd328b09ff9aa18b3c8ef4b829774e4f5bad039416929181900390910190a15050565b505050565b601960f81b81565b600083118015612a88575063ffffffff83105b612ad9576040805162461bcd60e51b815260206004820152601760248201527f496e76616c69642076657273696f6e206e756d6265722e000000000000000000604482015290519081900360640190fd5b60005460a084901b908110612b1f5760405162461bcd60e51b8152600401808060200182810382526033815260200180612e756033913960400191505060405180910390fd5b60005b828110156111e65760016000858584818110612b3a57fe5b905060200201356001600160a01b03166001600160a01b03168401815260200190815260200160002060009055806001019050612b22565b63785cf2dd60e11b949350505050565b63f23a6e6160e01b9695505050505050565b604051806040016040528060058152602001640312e312e360dc1b81525081565b60606014825181612bc257fe5b04604051908082528060200260200182016040528015612bec578160200160208202803883390190505b50905060005b8251811015612c4357600080826014019050808501519150818460148581612c1657fe5b0481518110612c2157fe5b6001600160a01b03909216602092830291909101909101525050601401612bf2565b50919050565b0160208101516040820151606090920151909260009190911a90565b60008060606040518060400160405280601481526020017311185d1848199a595b19081d1bdbc81cda1bdc9d60621b815250905060606040518060400160405280600b81526020016a10d85b1b0819985a5b195960aa1b81525090506055855110158290612d515760405162461bcd60e51b81526004018080602001828103825283818151815260200191508051906020019080838360005b83811015612d16578181015183820152602001612cfe565b50505050905090810190601f168015612d435780820380516001836020036101000a031916815260200191505b509250505060405180910390fd5b5060208501805160001a865182016001830192505b80831015612dd157603483015160548401810182811115612d8957865160208801fd5b60008083605488016014890151895160601c5af1612dc1578360018114612db7578960020a89179850612dbf565b865160208801fd5b505b6001890198508094505050612d66565b5050604080518881526020810186905280820187905290517f101214446435ebbb29893f3348e3aae5ea070b63037a3df346d09d3396a34aee92509081900360600190a1505050505050565b6040518060400160405280600290602082028038833950919291505056fe446f206e6f742075736520616e20617574686f72697a6564206164647265737320617320746865207265636f7665727920616464726573732e596f752063616e206f6e6c79207265636f766572206761732066726f6d2065787069726564206175746856657273696f6e732e417574686f72697a656420616464726573736573206d757374206e6f74206265207a65726f2e496e697469616c20636f7369676e6572206d757374206e6f74206265207a65726f2e446f206e6f742075736520746865207265636f76657279206164647265737320617320616e20617574686f72697a656420616464726573732e446f206e6f742075736520746865207265636f766572792061646472657373206173206120636f7369676e65722e617574686f72697a656420616464726573736573206d75737420626520657175616ca265627a7a723058202bf5771700693f16c2ca90585279bc0b2313fd2ebde70ff6d3e41bd74a5838a964736f6c634300050a0032417574686f72697a656420616464726573736573206d757374206e6f74206265207a65726f2e496e697469616c20636f7369676e6572206d757374206e6f74206265207a65726f2e446f206e6f742075736520746865207265636f76657279206164647265737320617320616e20617574686f72697a656420616464726573732e446f206e6f742075736520746865207265636f766572792061646472657373206173206120636f7369676e65722e000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
}

