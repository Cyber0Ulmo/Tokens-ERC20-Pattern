
---

# Contratos de Token ERC20

Este repositório contém dois contratos inteligentes ERC20 implementados em Solidity. Um deles é um exemplo básico de um token ERC20 personalizado (`DioToken`), e o outro utiliza a biblioteca OpenZeppelin para criar um token ERC20 (`MeuToken`).

## Índice de Idiomas
- [Português 🇧🇷](#português)
- [Inglês 🇺🇸](#inglês)
- [Chinês 🇨🇳](#chinês)

---

## Português 🇧🇷 <a name="português"></a>

### 1. `DioToken`

O contrato `DioToken` é uma implementação básica de um token ERC20. Ele inclui todas as funções e eventos necessários para conformidade com o padrão ERC20.

#### Características:
- **Nome do Token**: `DIO Token Test`
- **Símbolo do Token**: `DTT`
- **Decimais**: `18`
- **Fornecimento Total Inicial**: `10 ether` (10 tokens, considerando 18 decimais)

#### Funções Principais:
- `totalSupply()`: Retorna o fornecimento total de tokens.
- `balanceOf(address tokenOwner)`: Retorna o saldo de um endereço específico.
- `transfer(address receiver, uint256 valueTokens)`: Transfere tokens para outro endereço.
- `approve(address delegate, uint256 valueTokens)`: Permite que um endereço gaste tokens em nome do proprietário.
- `allowance(address owner, address delegate)`: Retorna a quantidade de tokens que um delegado pode gastar em nome do proprietário.
- `transferFrom(address owner, address buyer, uint256 valueTokens)`: Transfere tokens de um endereço para outro, usando a permissão concedida.

#### Eventos:
- `Transfer`: Emitido quando tokens são transferidos.
- `Approval`: Emitido quando uma permissão é concedida.

### 2. `MeuToken`

O contrato `MeuToken` é uma implementação de um token ERC20 utilizando a biblioteca OpenZeppelin. Ele herda as funcionalidades básicas do contrato `ERC20` e adiciona proteção contra reentrância com `ReentrancyGuard`.

#### Características:
- **Nome do Token**: `OutroToken`
- **Símbolo do Token**: `OTK`
- **Decimais**: `18` (definido pela biblioteca ERC20)
- **Fornecimento Total Inicial**: Definido no construtor.

#### Funções Principais:
- `constructor(uint256 initialSupply)`: Construtor que define o nome, símbolo e fornecimento inicial do token.
- `_mint(address account, uint256 amount)`: Função interna para cunhar novos tokens.

#### Dependências:
- **OpenZeppelin**: Utiliza as bibliotecas `ERC20` e `ReentrancyGuard` da OpenZeppelin.

## Como Usar

### Compilação e Implantação

1. **Instale as Dependências**:
   Certifique-se de ter o Node.js e o npm instalados. Em seguida, instale as dependências do projeto:
   ```bash
   npm install @openzeppelin/contracts
   ```

2. **Compile os Contratos**:
   Use o Remix IDE ou uma ferramenta como Hardhat ou Truffle para compilar os contratos.

3. **Implante os Contratos**:
   - Para `DioToken`, implante diretamente no Remix ou em uma rede de teste.
   - Para `MeuToken`, passe o fornecimento inicial no construtor ao implantar.

### Exemplos de Uso

#### `DioToken`
```solidity
// Implante o contrato
DioToken token = new DioToken();

// Transfira tokens
token.transfer(0xEnderecoDoDestinatario, 1000000000000000000); // 1 token

// Verifique o saldo
uint256 saldo = token.balanceOf(0xEnderecoDoDestinatario);
```

#### `MeuToken`
```solidity
// Implante o contrato com um fornecimento inicial de 1000 tokens
MeuToken token = new MeuToken(1000);

// Transfira tokens
token.transfer(0xEnderecoDoDestinatario, 1000000000000000000); // 1 token

// Verifique o saldo
uint256 saldo = token.balanceOf(0xEnderecoDoDestinatario);
```

## Licença

Este projeto está licenciado sob a licença MIT. Consulte o arquivo [LICENSE](LICENSE) para mais detalhes.

---

## Inglês 🇺🇸 <a name="inglês"></a>

### 1. `DioToken`

The `DioToken` contract is a basic implementation of an ERC20 token. It includes all the necessary functions and events for ERC20 compliance.

#### Features:
- **Token Name**: `DIO Token Test`
- **Token Symbol**: `DTT`
- **Decimals**: `18`
- **Initial Total Supply**: `10 ether` (10 tokens, considering 18 decimals)

#### Main Functions:
- `totalSupply()`: Returns the total supply of tokens.
- `balanceOf(address tokenOwner)`: Returns the balance of a specific address.
- `transfer(address receiver, uint256 valueTokens)`: Transfers tokens to another address.
- `approve(address delegate, uint256 valueTokens)`: Allows an address to spend tokens on behalf of the owner.
- `allowance(address owner, address delegate)`: Returns the amount of tokens a delegate can spend on behalf of the owner.
- `transferFrom(address owner, address buyer, uint256 valueTokens)`: Transfers tokens from one address to another using an allowance.

#### Events:
- `Transfer`: Emitted when tokens are transferred.
- `Approval`: Emitted when an allowance is granted.

### 2. `MeuToken`

The `MeuToken` contract is an ERC20 token implementation using the OpenZeppelin library. It inherits basic functionalities from the `ERC20` contract and adds reentrancy protection with `ReentrancyGuard`.

#### Features:
- **Token Name**: `OutroToken`
- **Token Symbol**: `OTK`
- **Decimals**: `18` (defined by the ERC20 library)
- **Initial Total Supply**: Defined in the constructor.

#### Main Functions:
- `constructor(uint256 initialSupply)`: Constructor that sets the token name, symbol, and initial supply.
- `_mint(address account, uint256 amount)`: Internal function to mint new tokens.

#### Dependencies:
- **OpenZeppelin**: Uses the `ERC20` and `ReentrancyGuard` libraries from OpenZeppelin.

## How to Use

### Compilation and Deployment

1. **Install Dependencies**:
   Ensure Node.js and npm are installed. Then, install the project dependencies:
   ```bash
   npm install @openzeppelin/contracts
   ```

2. **Compile the Contracts**:
   Use Remix IDE or tools like Hardhat or Truffle to compile the contracts.

3. **Deploy the Contracts**:
   - For `DioToken`, deploy directly on Remix or a test network.
   - For `MeuToken`, pass the initial supply in the constructor during deployment.

### Usage Examples

#### `DioToken`
```solidity
// Deploy the contract
DioToken token = new DioToken();

// Transfer tokens
token.transfer(0xRecipientAddress, 1000000000000000000); // 1 token

// Check balance
uint256 balance = token.balanceOf(0xRecipientAddress);
```

#### `MeuToken`
```solidity
// Deploy the contract with an initial supply of 1000 tokens
MeuToken token = new MeuToken(1000);

// Transfer tokens
token.transfer(0xRecipientAddress, 1000000000000000000); // 1 token

// Check balance
uint256 balance = token.balanceOf(0xRecipientAddress);
```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## Chinês 🇨🇳 <a name="chinês"></a>

### 1. `DioToken`

`DioToken` 合约是一个基本的 ERC20 代币实现。它包含了 ERC20 标准所需的所有函数和事件。

#### 特点：
- **代币名称**: `DIO Token Test`
- **代币符号**: `DTT`
- **小数位数**: `18`
- **初始总供应量**: `10 ether` (10 个代币，考虑 18 位小数)

#### 主要函数：
- `totalSupply()`: 返回代币的总供应量。
- `balanceOf(address tokenOwner)`: 返回特定地址的余额。
- `transfer(address receiver, uint256 valueTokens)`: 将代币转移到另一个地址。
- `approve(address delegate, uint256 valueTokens)`: 允许一个地址代表所有者花费代币。
- `allowance(address owner, address delegate)`: 返回委托者可以代表所有者花费的代币数量。
- `transferFrom(address owner, address buyer, uint256 valueTokens)`: 使用授权额度从一个地址转移代币到另一个地址。

#### 事件：
- `Transfer`: 当代币被转移时触发。
- `Approval`: 当授权被授予时触发。

### 2. `MeuToken`

`MeuToken` 合约是一个使用 OpenZeppelin 库实现的 ERC20 代币。它继承了 `ERC20` 合约的基本功能，并通过 `ReentrancyGuard` 添加了防重入保护。

#### 特点：
- **代币名称**: `OutroToken`
- **代币符号**: `OTK`
- **小数位数**: `18` (由 ERC20 库定义)
- **初始总供应量**: 在构造函数中定义。

#### 主要函数：
- `constructor(uint256 initialSupply)`: 构造函数，设置代币名称、符号和初始供应量。
- `_mint(address account, uint256 amount)`: 内部函数，用于铸造新代币。

#### 依赖：
- **OpenZeppelin**: 使用 OpenZeppelin 的 `ERC20` 和 `ReentrancyGuard` 库。

## 使用方法

### 编译与部署

1. **安装依赖**：
   确保已安装 Node.js 和 npm。然后安装项目依赖：
   ```bash
   npm install @openzeppelin/contracts
   ```

2. **编译合约**：
   使用 Remix IDE 或 Hardhat、Truffle 等工具编译合约。

3. **部署合约**：
   - 对于 `DioToken`，可以直接在 Remix 或测试网络上部署。
   - 对于 `MeuToken`，在部署时传递初始供应量。

### 使用示例

#### `DioToken`
```solidity
// 部署合约
DioToken token = new DioToken();

// 转移代币
token.transfer(0x接收地址, 1000000000000000000); // 1 个代币

// 检查余额
uint256 balance = token.balanceOf(0x接收地址);
```

#### `MeuToken`
```solidity
// 部署合约，初始供应量为 1000 个代币
MeuToken token = new MeuToken(1000);

// 转移代币
token.transfer(0x接收地址, 1000000000000000000); // 1 个代币

// 检查余额
uint256 balance = token.balanceOf(0x接收地址);
```

## 许可证

本项目基于 MIT 许可证。详情请参阅 [LICENSE](LICENSE) 文件。

---



### Links para as Seções:
- [Português 🇧🇷](#português)
- [Inglês 🇺🇸](#inglês)
- [Chinês 🇨🇳](#chinês)

---
