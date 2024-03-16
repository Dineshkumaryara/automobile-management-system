<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    
     <title>Products</title>
    <!-- Style CSS -->
    <link rel="stylesheet" href="css/style.css">
	<!-- Demo CSS (No need to include it into your project) -->
	<link rel="stylesheet" href="css/demo.css">
  
  </head>
  <body>
 
  
      
 <main>
     <!-- Start DEMO HTML (Use the following code into your project)-->
   <header class="header">
  <div class="container header__top">
    
    <div class="header__cart">
      <ul>
        <li class="header__submenu" id="submenu">
          <button class="header__cart-btn" id="toggle-cart-btn"><svg class="cart" width="24" height="24" viewBox="0 0 24 24">
  <path d="M17,18C15.89,18 15,18.89 15,20A2,2 0 0,0 17,22A2,2 0 0,0 19,20C19,18.89 18.1,18 17,18M1,2V4H3L6.6,11.59L5.24,14.04C5.09,14.32 5,14.65 5,15A2,2 0 0,0 7,17H19V15H7.42A0.25,0.25 0 0,1 7.17,14.75C7.17,14.7 7.18,14.66 7.2,14.63L8.1,13H15.55C16.3,13 16.96,12.58 17.3,11.97L20.88,5.5C20.95,5.34 21,5.17 21,5A1,1 0 0,0 20,4H5.21L4.27,2M7,18C5.89,18 5,18.89 5,20A2,2 0 0,0 7,22A2,2 0 0,0 9,20C9,18.89 8.1,18 7,18Z"></path>
</svg> Your Cart</button>
          <div id="shopping-cart" class="shopping-cart-container">
            <table id="cart-content">
              <thead>
                <tr>
                  <th>Image</th>
                  <th>Name</th>
                  <th>Price</th>
                  <th></th>
                </tr>
              </thead>
              <tbody></tbody>
            </table>
            <p class="total-container" id="total-price"></p>
            <a href="#" id="checkout-btn" class="cart-btn">Checkout</a>
            <a href="#" id="clear-cart" class="cart-btn">Clear Cart</a>
          </div>
        </li>
      </ul>
    </div>
  </div>
  <div class="header__main">
    <p class="display-title text-light">
      Awesome Stuff In our AutoFleet!
    </p>
  </div>
  <div class="arrow"><svg width="24" height="24" viewBox="0 0 24 24">
  <path d="M11,4H13V16L18.5,10.5L19.92,11.92L12,19.84L4.08,11.92L5.5,10.5L11,16V4Z"></path>
</svg></div>
</header>
<main class="container page-content">
  <h2 class="page-title">Auto Fleet Products</h2>
  <div class="grid" id="grid">
    <div class="card">
      <img src="images/image1.jpg" class="card__image" alt="">
      <div class="card__info">
        <h4 class="card__title">PVC Car Seat Cover</h4>
        <p class="card__price">10000/-</p>
        <button class="card__btn add-to-cart" data-id="6">Add to Cart</button>
      </div>
    </div>
    <!--.card-->
    <div class="card">
      <img src="images/image2.jpg" class="card__image" alt="">
      <div class="card__info">
        <h4 class="card__title">Lead Battery</h4>
        <p class="card__price">1550/-</p>
        <button class="card__btn add-to-cart" data-id="7">Add to Cart</button>
      </div>
    </div>
    <!--.card-->
    <div class="card">
      <img src="images/image3.jpg" class="card__image" alt="">
      <div class="card__info">
        <h4 class="card__title">Petrogate Energy 100 20W50 3 LTR API SL</h4>
        <p class="card__price">233/-</p>
        <button class="card__btn add-to-cart" data-id="8">Add to Cart</button>
      </div>
    </div>
    <!--.card-->
    <div class="card">
      <img src="imgages/image4.jpg" alt="" class="card__image">
      <div class="card__info">
        <h4 class="card__title">Nesco Natural Car Gear Knob</h4>
        <p class="card__price">100/-</p>
        <button class="card__btn add-to-cart" data-id="9">Add to Cart</button>
      </div>
    </div>
    <!--.card-->
    <div class="card">
      <img src="./img/image-5.jpg" alt="" class="card__image">
      <div class="card__info">
        <h4 class="card__title">Cook a Home-Made Cake</h4>
        <p class="card__text">Antonietta Perna</p>
        <p class="card__price">$100</p>
        <button class="card__btn add-to-cart" data-id="10">Add to Cart</button>
      </div>
    </div>
    <!--.card-->
    <div class="card">
      <img src="./img/image-6.jpg" alt="" class="card__image">
      <div class="card__info">
        <h4 class="card__title">Modern JavaScript</h4>
        <p class="card__text">Maria A. Perna</p>
        <p class="card__price">$300</p>
        <button class="card__btn add-to-cart" data-id="11">Add to Cart</button>
      </div>
    </div>
    <!--.card-->
    <div class="card">
      <img src="./img/image-7.jpg" alt="" class="card__image">
      <div class="card__info">
        <h4 class="card__title">Build Layouts with CSS Grid</h4>
        <p class="card__text">John Doe</p>
        <p class="card__price">$200</p>
        <button class="card__btn add-to-cart" data-id="12">Add to Cart</button>
      </div>
    </div>
    <!--.card-->
  </div>
</main>
<footer class="footer">
  <div class="container footer__container">
    <div class="footer__links">
    <ul class="footer__list">
      <li class="footer__list-item"><a class="footer__link-item" href="#">About us</a></li>
      <li class="footer__list-item"><a class="footer__link-item" href="#">Become an instructor</a></li>
      <li class="footer__list-item"><a class="footer__link-item" href="#">Legal</a></li>
    </ul>
  </div>
  <div class="credits">
    <p class="credits__small-text">&copy;2045 Maria Antonietta Perna</p>
  </div>  
  </div>
</footer>  
     <!-- END EDMO HTML (Happy Coding!)-->
 </main>
 
      
  <footer class="credit">Author: Ksenia - Distributed By: <a title="Awesome web design code & scripts" href="https://www.codehim.com?source=demo-page" target="_blank">CodeHim</a></footer>
  
  <script>
  (function() {
	  // VARS
	  const productsContainer = document.querySelector("#grid");
	  const cartContainer = document.querySelector("#shopping-cart");
	  const cartContent = document.querySelector("#cart-content");
	  const toggleCartBtn = document.querySelector("#toggle-cart-btn");
	  const clearCartBtn = document.querySelector("#clear-cart");
	  const checkoutBtn = document.querySelector("#checkout-btn");
	  const totalPriceContainer = document.querySelector("#total-price");

	  // FUNCTIONS

	  function toggleCart() {
	    // toggle shopping cart visibility
	    cartContainer.classList.toggle("open");
	  }

	  function getLSContent() {
	    // get contents from local storage.
	    // if nothing is there, create an empty array
	    const lsContent = JSON.parse(localStorage.getItem("products")) || [];
	    return lsContent;
	  }

	  function setLSContent(lsContent) {
	    // save content inside local storage
	    localStorage.setItem("products", JSON.stringify(lsContent));
	  }

	  function calculateTotal(prices) {
	    // calculate the total price in the cart
	    return prices.reduce(function(prev, next) {
	      return prev + next;
	    }, 0);
	  }

	  function getCartItemPrices() {
	    // extract the price numbers from the cart items to calculate total
	    const prices = [];
	    // retrieve the td element in the cart where the product price is stored
	    // for each product in the cart
	    let nums = cartContent.querySelectorAll("tr td:nth-child(3)");

	    // iterate over each td node and extract the price
	    // strip the $ sign from the text, turn the string into
	    // a number and push the number into the prices array
	    if (nums.length > 0) {
	      for (let cell = 0; cell < nums.length; cell++) {
	        let num = nums[cell].innerText;
	        num = num.replace(/[^\d]/g, "");
	        num = parseFloat(num);
	        prices.push(num);
	      }
	      // return the prices array
	      return prices;
	    } else {
	      return;
	    }
	  }

	  function displayCartTotal() {
	    // display the total cost in the cart
	    const prices = getCartItemPrices();
	    let total = 0;
	    if (prices) {
	      total = calculateTotal(prices);
	      totalPriceContainer.innerHTML = `<span class="total">Total: $${total.toFixed(
	        2
	      )}</span>`;
	    } else {
	      totalPriceContainer.innerHTML = '<span class="total">Total: $0</span>';
	    }
	  }

	  function displayProducts() {
	    // display all products in the cart

	    // get contents from local storage
	    const lsContent = getLSContent();
	    let productMarkup = "";
	    // if local storage is not empty, build the
	    // cart items markup and the appropriate details
	    if (lsContent !== null) {
	      for (let product of lsContent) {
	        productMarkup += `
	          <tr>
	          <td><img class="cart-image" src="${product.image}" alt="${
	          product.name
	        }" width="120"></td>
	          <td>
	            ${product.name}
	          </td>
	          <td>${product.price}</td>
	          <td><a href="#" data-id="${product.id}" class="remove">X</a></td>
	          </tr>
	        `;
	      }
	    } else {
	      // if no content is in local storage, alert user
	      productMarkup = "Your cart is empty.";
	    }
	    // add markup to DOM
	    cartContent.querySelector("tbody").innerHTML = productMarkup;
	  }

	  function saveProduct(clickedBtn) {
	    // save selected product in local storage and display it in the cart together

	    // vars
	    const productId = clickedBtn.getAttribute("data-id");
	    const card = clickedBtn.parentElement.parentElement;
	    const cardInfo = clickedBtn.parentElement;
	    const prodImage = card.querySelector("img").src;
	    const prodName = cardInfo.querySelector("h4").textContent;
	    const prodPrice = cardInfo.querySelector(".card__price").textContent;

	    let isProductInCart = false;

	    // get local storage array
	    const lsContent = getLSContent();

	    // to avoid user adds the same course twice, check
	    // the product is not in LS already before adding it
	    lsContent.forEach(function(product) {
	      if (product.id === productId) {
	        alert("This course is already in your cart.");
	        isProductInCart = true;
	      }
	    });

	    // only if the product is not already in the cart,
	    // create an object representing selected product info
	    // and push it into local storage array
	    if (!isProductInCart) {
	      lsContent.push({
	        id: productId,
	        image: prodImage,
	        name: prodName,
	        price: prodPrice
	      });

	      // add product into into local storage
	      setLSContent(lsContent);
	      // update the display of courses in the shopping cart
	      displayProducts();
	    }
	  }

	  function removeProduct(productId) {
	    // remove product from cart (and from local storage)

	    // retrieve list of products from LS
	    const lsContent = getLSContent();

	    // get the index of the product item to remove
	    // inside the local storage content array
	    let productIndex;
	    lsContent.forEach(function(product, i) {
	      if (product.id === productId) {
	        productIndex = i;
	      }
	    });

	    // modify the items in local storage array
	    // to remove the selected product item

	    lsContent.splice(productIndex, 1);
	    // update local storage content
	    setLSContent(lsContent);

	    displayProducts();
	  }

	  function clearCart() {
	    // clear all products from cart (and local storage)

	    // retrieve list of products from LS
	    const lsContent = getLSContent();
	    // empty array in local storage
	    lsContent.splice(0, lsContent.length);
	    // update local storage
	    setLSContent(lsContent);
	    // display cart content again
	    displayProducts();
	  }

	  function checkout() {
	    // checkout: just clear the cart
	    // after user confirms the checkout process
	    const cartProducts = cartContent.querySelector("tbody").innerHTML;
	    if (cartProducts !== "" && confirm("Are you sure you want to checkout?")) {
	      clearCart();
	    } else {
	      return;
	    }
	  }

	  // BIND EVENTS AND CALL FUNCTIONS

	  // Page load:
	  document.addEventListener("DOMContentLoaded", function(e) {
	    // display list of products in cart, if any, on page load
	    displayProducts();
	    // display cart total
	    displayCartTotal();
	  });

	  // open and close shopping cart
	  // when cart button is clicked
	  toggleCartBtn.addEventListener("click", function(e) {
	    e.preventDefault();
	    toggleCart();
	  });

	  // Save product in cart and Local Storage
	  // when add to cart button is clicked
	  productsContainer.addEventListener("click", function(e) {
	    if (e.target.classList.contains("add-to-cart")) {
	      e.preventDefault();
	      const clickedBtn = e.target;
	      saveProduct(clickedBtn);
	    }
	  });

	  productsContainer.addEventListener("click", function(e) {
	    if (e.target.classList.contains("add-to-cart")) {
	      displayCartTotal();
	    }
	  });

	  // bind removeProduct to click event of the cartContent table
	  cartContent.querySelector("tbody").addEventListener("click", function(e) {
	    e.preventDefault();
	    // identify the button that was clicked
	    const clickedBtn = e.target;
	    // if it's a remove button
	    if (e.target.classList.contains("remove")) {
	      // get the value of the data-id property, which contains the
	      // id of the selected product
	      const productId = clickedBtn.getAttribute("data-id");
	      // use the id to remove the selected product
	      removeProduct(productId);
	      // display products in the cart again,
	      // now the list should be displayed with 1 less product
	      // or empty if no products are left in the cart

	      // adjust the total
	      displayCartTotal();
	    }
	  });

	  // bind the button to clear the cart both to the function that
	  // clears the cart and to the function that adjusts the total price
	  clearCartBtn.addEventListener("click", function(e) {
	    e.preventDefault();
	    clearCart();
	  });
	  clearCartBtn.addEventListener("click", displayCartTotal);

	  // bind the button that does the checkout both to the function that
	  // controls the checkout and and to the function that adjusts the total price
	  checkoutBtn.addEventListener("click", function(e) {
	    e.preventDefault();
	    checkout();
	  });
	  checkoutBtn.addEventListener("click", displayCartTotal);
	})();
  </script>
  </body>
</html>
    