<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Shopping Cart</title>
    <style>
    /* Style the cart container */
.cart {
    background-color: #fff;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

/* Style the cart items */
.cart-item {
    display: flex;
    justify-content: space-between;
    align-items: center;
    border-bottom: 1px solid #ccc;
    padding: 10px 0;
}

.cart-item img {
    max-width: 60px;
    max-height: 60px;
}

.cart-item h3 {
    font-size: 1rem;
    margin: 0;
}

.cart-item p {
    font-size: 0.9rem;
    color: #666;
}

.cart-item button {
    background-color: #e60000;
    color: #fff;
    border: none;
    border-radius: 5px;
    padding: 5px 10px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.cart-item button:hover {
    background-color: #cc0000;
}

/* Style the total and proceed button */
.cart-total {
    display: flex;
    justify-content: space-between;
    margin-top: 10px;
    font-weight: bold;
}

.cart-total p {
    font-size: 1.2rem;
}

.proceed-button {
    background-color: #0077cc;
    color: #fff;
    border: none;
    border-radius: 5px;
    padding: 10px 20px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.proceed-button:hover {
    background-color: #0056aa;
}
    
    </style>
</head>
<body>
    <h1>Shopping Cart</h1>

    <div class="cart">
        <div id="cart-items">
            <!-- Cart items will be displayed here using JavaScript -->
        </div>
        <div class="cart-total">
            <p>Total: $<span id="total">0.00</span></p>
        </div>
        <button onclick="proceedToPayment()">Proceed to Payment</button>
    </div>

    <a href="products">Back to Product List</a>

    <script>
    const cart = [];

    function addToCart(productName, productPrice) {
        cart.push({ name: productName, price: productPrice });
        updateCart();
    }

    function updateCart() {
        const cartItems = document.getElementById("cart-items");
        const totalElement = document.getElementById("total");

        // Clear the cart
        cartItems.innerHTML = "";

        // Update cart items
        let total = 0;
        cart.forEach((item) => {
            const cartItem = document.createElement("div");
            cartItem.innerHTML = `${item.name} - $${item.price.toFixed(2)}`;
            cartItems.appendChild(cartItem);
            total += item.price;
        });

        totalElement.innerText = total.toFixed(2);
    }

    function proceedToPayment() {
        // Replace with your logic to navigate to the payment page or perform further actions.
        alert("Proceeding to Payment...");
    }

    updateCart();

    </script>
</body>
</html>
    