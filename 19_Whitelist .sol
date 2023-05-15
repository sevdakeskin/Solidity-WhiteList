// SPDX-License-Identifier:MIT

  pragma solidity ^0.8.17;

  contract Whitelist {
      address[] public whitelist;

      function isWhitelisted(address _address) public view returns(bool){
         for(uint i = 0; i < whitelist.length; i++) {
            if(whitelist[i] == _address) {
                return true;
            }
        }
        return false;
    } 

    function addToWhitelist(address _address) public {
        // ! ->not->değil
        require(!isWhitelisted(_address),"Address is whitelisted");//kontrole göre gas harcar,kontrol true ise çalışır.false ise durur.
        whitelist.push(_address);
        // address başka bir listeye ekleniyor
        // addrese airdrop token yollanıyor
        //adresin balance kontrolü yapılıyor
    }
  }