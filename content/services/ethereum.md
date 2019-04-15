---
title: Ethereum
linktitle: Ethereum
description: Configurations for Ethereum service
date: 2018-01-02
categories: [config_services]
menu:
  docs:
    parent: "services"
    weight: 110
weight: 100
toc: true
---
## What is Ethereum?

Ethereum is a decentralised platform for smart contracts in a blockchain.

## Description

The HoneyTrap Ethereum-service will simulate a ethereum-node.

## Syntax

```bash
[service.<nickname_of_ethereumService>]
type="ethereum"
```

## Arguments in config file

There are no arguments in Ethereum service.

## Example

```bash
[service.ethereum]
type="ethereum"

[[port]]
port="tcp/8545"
services=["ethereum"]
```

## How to test

```bash
curl -H Content-Type:application/json \
[IP_ADDRESS]:8545 -XPOST \
--data '{"jsonrpc":"2.0","method":"eth_getBlockByNumber","params":["0x1b4", true],"id":1}'
```

#### The test explained
To test the `ethereum` service we send a `curl` request with a `application/json header` set to the [IP_ADDRESS]:[PORT].

With the `-XPOST --data` we post the request in `json` format.

#### The result
The result should show something like this:
```json
{"id":1,"jsonrpc":"2.0","result":{"difficulty":"0x027f07","extraData":"0x0000000000000000000000000000000000000000000000000000000000000000","gasLimit":"0x9f759","gasUsed":"0x9f759","hash":"0xe670ec64341771606e55d6b4ca35a1a6b75ee3d5145a99d05921026d1527331","logsBloom":"0xe670ec64341771606e55d6b4ca35a1a6b75ee3d5145a99d05921026d1527331","minGasPrice":"0x9f759","miner":"0x4e65fda2159562a496f9f3522f89122a3088497a","nonce":"0xe04d296d2460cfb8472af2c5fd05b5a214109c25688d3704aed5484f9a7792f2","number":"0x1b4","parentHash":"0x9646252be9520f6e71339a8df9c55e4d7619deeb018d2a3f2d21fc165dde5eb5","sha3Uncles":"0x1dcc4de8dec75d7aab85b567b6ccd41ad312451b948a7413f0a142fd40d49347","size":"0x027f07","stateRoot":"0xd5855eb08b3387c0af375e9cdb6acfc05eb8f519e419b874b6ff2ffda7ed1dff","timestamp":"0x54e34e8e","totalDifficulty":"0x027f07","transactions":[],"transactionsRoot":"0x56e81f171bcc55a6ff8345e692c0f86e5b48e01b996cadc001622fb5e363b421","uncles":[]}}
```

## Availability

 | Linux | MacOS |
--- | --- | --- |
Ethereum  | <span style="color:green">yes</span> | <span style="color:green">yes</span>



## Commands implemented

 | available |
 --- | --- |
admin_peers | [<span style="text-decoration: underline; color:red">not yet</span>](/faq/ethereum-admin-peers/#notification)
eth_accounts | <span style="color:green">yes</span>
eth_blockNumber | <span style="color:green">yes</span>
eth_clientVersion | <span style="color:green">yes</span>
eth_coinbase | <span style="color:green">yes</span>
eth_getBalance | <span style="color:green">yes</span>
eth_getBlockByNumber | <span style="color:green">yes</span>
eth_getTransactionCount | <span style="color:green">yes</span>
eth_mining | <span style="color:green">yes</span>
eth_sendTransaction | <span style="color:green">yes</span>
miner_setEtherbase | <span style="color:green">yes</span>
net_version | <span style="color:green">yes</span>
personal_unlockAccount | <span style="color:green">yes</span>
rpc_modules | <span style="color:green">yes</span>
