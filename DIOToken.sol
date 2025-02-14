
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IERC20{

    
    function totalSupply() 
    external view returns(uint256);

    function balanceOf(address account) 
    external view returns (uint256);

    function allowance( address owner, address spender) 
    external view returns(uint256);

    function transfer(address recipient, uint256 _amount)
    external returns (bool);

    function approve(address spender, uint256 amount) 
    external returns (bool);

    function transferFrom(address sender, address recipient, uint256 _amount)
    external returns (bool);

    event Transfer(address indexed from, address indexed to, uint256 value);

    event Approval(address indexed owner,address indexed spender, uint256 );
}

 contract DioToken is IERC20 {

    string public constant TOKEN_NAME  = "DIO Token Test";
    string public constant TOKEN_SYMBOL = "DTT";
    uint8 public constant decimals = 18;

    mapping (address => uint256) balances;
    mapping (address => mapping (address => uint256)) allowed;

    uint256 totalSupply_ = 10 ether;

    constructor(){
        balances[msg.sender] = totalSupply_;
    }

    function totalSupply() public override view returns (uint256){
        return totalSupply_;
    }

    function balanceOf(address tokenOwner) public override view returns (uint256){
        return balances[tokenOwner]; 
    }

    function transfer(address receiver, uint256 valueTokens) public override returns (bool){
        require(valueTokens <= balances[msg.sender]);
        balances[msg.sender] = balances[msg.sender] - valueTokens;
        balances[receiver] = balances[receiver] + valueTokens;
        emit Transfer(msg.sender, receiver, valueTokens);
        return true;
    }

    function approve(address delegate, uint256 valueTokens)public override returns (bool){
        allowed[msg.sender][delegate] = valueTokens;
        emit Approval(msg.sender, delegate, valueTokens);
        return true;
    }

    function allowance(address owner, address delegate) public override view returns (uint256){
        return allowed[owner][delegate];
    }

    function transferFrom(address owner, address buyer, uint256 valueTokens) public override returns (bool){
        require(valueTokens <=balances[owner]);
        require(valueTokens <= allowed[owner][msg.sender]);

        balances[owner] = balances[owner] - valueTokens;
        allowed[owner][msg.sender] = allowed[owner][msg.sender] -valueTokens;
        balances[buyer] = balances[buyer] = valueTokens;
        emit Transfer(owner, buyer, valueTokens);
        return true;
    } 

}