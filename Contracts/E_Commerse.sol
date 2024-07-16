// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

    contract E_commerse {
        struct product {
            string title;
            string desc;
            uint price;
            uint productID;
            bool deliverd;
            address payable  buyer;
            address payable  seller;
        }

     uint counter = 1;

     bool destroyed;
     modifier protect() {
         require(!destroyed, "contract is no more valid");
         _;
     }

     address payable public   manager ;
     constructor() payable {
         manager = payable(msg.sender);
     }

     product [] products;

     function list(string memory _title , string memory _desc , uint _price ) public  {
        require(_price > 0, "price should be of valid price");
        product memory registered ;

        registered.title = _title;
        registered.desc = _desc;
        registered.price = _price *10**10;
        registered.seller = payable(msg.sender);
        registered.buyer = payable(address(0));
        registered.deliverd = false;
        registered.productID = counter;
        products.push(registered);
        counter++;
     }

     function buy(uint _productID) public payable  {
        require( products[_productID-1].seller != msg.sender , "You are seller can not buy this product");
        require(msg.value == products[_productID-1].price, "please pay full price");
        products[_productID-1].buyer = payable(msg.sender);
    
        products[_productID-1].seller.transfer(products[_productID-1].price);
        products[_productID -1].deliverd = true;
     }

     function getAllProducts() public view returns(product[] memory){
         return products;
     }

     function getProduct(uint _productID) public view returns(product memory){
        require(_productID > 0 && _productID <= products.length, "Product ID out of range");
         return products[_productID-1];
     }

     function destroy() public protect{
        require(msg.sender==manager);
        manager.transfer(address(this).balance);
        destroyed=true;
        // selfdestruct (payable(manager));
     }

     fallback() external payable {
        payable (msg.sender).tranfer(msg.value); 
      }
    

    }
    

