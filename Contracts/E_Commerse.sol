// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

    contract Ecommerse {
        // A structure to contain multiple data types and entries
        struct product{
            string desc;
            uint productID;
            address payable seller;
            uint amount;
            address payable buyer;
            string title; 
            uint price;
            bool delivered;
            uint counter;
        }

        // initialising counter to not have multiple product into same array.
        uint counter = 1;

        // A funtion to emmit message opon satisfaction of contract --> Fixing error...
        event registered (address seller, string  title,  uint productID);
        event bougt (string  buyer,  uint productID);
        event deliverd (uint productID);

    
        // initialising th product arrray. To contaim multiple registered (each-product) item
        product [] public   products;

        // Registering stocks/item with users input
        function stock( string memory _title, string memory _desc, uint _price) public {
            require(_price>0, "Price should be a valild amount"); // condition

            // pointing to our structure created above
            product memory each_product;

            // setting values for each_product variables
            each_product.title = _title;
            each_product.desc = _desc;
            each_product.productID = counter;
            each_product.seller = payable (msg.sender);
            each_product.price = _price * 10**18;
            counter++;
            products.push (each_product);
            //  emit registered( _title, each_product.productID, msg.sender);
        }

        // A function to buy items and restric seller from buying.
        function buy(uint _productID) payable public {
            require(products[_productID-1].price ==msg.value, "pay exact price");
            require(products[_productID-1].seller != msg.sender, "pay exact price");
            products[_productID-1].buyer ==msg.sender;
            //  emit bougt(, _productID);
        }

        // A function to make payment by buyer to confirm delivery making chaging to the boolean state 
        function delivery(uint _productID) public  {
            require(products[_productID-1].buyer == msg.sender, "only buyer can confirm delivery");
            products[_productID-1].delivered = true;
            products[_productID-1].seller.transfer(products[_productID-1].price);
             emit deliverd(_productID);
        }
        }
    
