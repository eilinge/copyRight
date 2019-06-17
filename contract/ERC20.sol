pragma solidity ^0.4.23;

contract ERC20 {
    function totalSupply() constant public returns (uint totalsupply);//获取总的发行量
    
    function balanceOf(address _owner) constant public returns (uint balance); //查询账户余额
    
    function transfer(address _to, uint _value) public returns(bool success); // 发送Token到某个地址(转账)
    
    function transferFrom(address _from, address _to, uint _value) public returns (bool success); //从地址from 发送token到to地址
    
    function approve(address _spender, uint _value) public returns(bool success);//允许_spender从你的账户转出token
    
    function allowance(address _owner, address _spender) constant public returns (uint remaining);//查询允许spender转移的Token数量
    
    event Transfer(address indexed _from, address indexed _to, uint _value);//transfer方法调用时的通知事件
    
    event Approval(address indexed _owner, address indexed _spender, uint _value); //approve方法调用时的通知事件
}