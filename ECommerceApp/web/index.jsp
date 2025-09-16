<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home - E-Commerce App</title>
    <style>
        /* =========================== */
        /* General Reset & Typography  */
        /* =========================== */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #f9f9fb, #eef2f7);
            color: #2d3436;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            scroll-behavior: smooth;
            overflow-x: hidden;
            position: relative;
        }

        /* =========================== */
        /* Floating Gradient Shapes     */
        /* =========================== */
        body::before,
        body::after {
            content: "";
            position: fixed;
            border-radius: 50%;
            z-index: 0;
        }

        body::before {
            width: 280px;
            height: 280px;
            top: -120px;
            left: -100px;
            background: radial-gradient(circle at 20% 20%, rgba(155, 89, 182, 0.08), transparent 70%);
            animation: floatShape1 22s linear infinite;
        }

        body::after {
            width: 220px;
            height: 220px;
            bottom: -90px;
            right: -80px;
            background: radial-gradient(circle at 80% 80%, rgba(0, 206, 201, 0.08), transparent 70%);
            animation: floatShape2 28s linear infinite;
        }

        @keyframes floatShape1 {
            0% { transform: translate(0,0) rotate(0deg); }
            50% { transform: translate(60px, 100px) rotate(180deg); }
            100% { transform: translate(0,0) rotate(360deg); }
        }

        @keyframes floatShape2 {
            0% { transform: translate(0,0) rotate(0deg); }
            50% { transform: translate(-50px, -110px) rotate(180deg); }
            100% { transform: translate(0,0) rotate(360deg); }
        }

        /* =========================== */
        /* Header with Gradient         */
        /* =========================== */
        header {
            background: linear-gradient(135deg, #6c5ce7, #00cec9);
            color: #fff;
            padding: 45px 20px;
            text-align: center;
            box-shadow: 0 6px 15px rgba(0,0,0,0.25);
            position: relative;
            z-index: 1;
        }

        header h1 {
            font-size: 3rem;
            font-weight: 700;
            letter-spacing: 1px;
            text-shadow: 2px 2px 10px rgba(0,0,0,0.25);
        }

        /* =========================== */
        /* Navigation Bar               */
        /* =========================== */
        nav {
            background: #2d3436;
            padding: 18px 0;
            text-align: center;
            position: relative;
            z-index: 1;
        }

        nav a {
            color: #ecf0f1;
            text-decoration: none;
            margin: 0 18px;
            font-weight: 600;
            padding: 10px 18px;
            border-radius: 8px;
            transition: all 0.4s ease;
        }

        nav a:hover {
            background: linear-gradient(135deg, #00cec9, #6c5ce7);
            color: #fff;
            transform: translateY(-3px) scale(1.05);
            box-shadow: 0 6px 15px rgba(0,0,0,0.25);
        }

        /* =========================== */
        /* Main Container               */
        /* =========================== */
        .container {
            flex: 1;
            padding: 60px 20px;
            text-align: center;
            animation: fadeIn 1.5s ease-in-out;
            position: relative;
            z-index: 1;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px);}
            to { opacity: 1; transform: translateY(0);}
        }

        /* =========================== */
        /* Welcome Message              */
        /* =========================== */
        .welcome {
            font-size: 1.2rem;
            margin-bottom: 25px;
            color: #6c5ce7;
        }

        .welcome a {
            color: #e74c3c;
            text-decoration: none;
            font-weight: bold;
            padding: 6px 12px;
            border-radius: 6px;
            background-color: #fff;
            box-shadow: 0 3px 8px rgba(0,0,0,0.12);
            transition: all 0.4s ease;
        }

        .welcome a:hover {
            background-color: #e74c3c;
            color: #fff;
            transform: translateY(-2px);
            box-shadow: 0 6px 12px rgba(0,0,0,0.2);
        }

        /* =========================== */
        /* Messages                     */
        /* =========================== */
        .message {
            color: #0984e3;
            font-size: 1rem;
            margin-bottom: 30px;
            font-weight: 500;
        }

        /* =========================== */
        /* Call to Action Button        */
        /* =========================== */
        .cta {
            background: linear-gradient(135deg, #00cec9, #6c5ce7);
            color: #fff;
            display: inline-block;
            padding: 18px 40px;
            border-radius: 12px;
            text-decoration: none;
            font-weight: 700;
            margin-top: 25px;
            transition: all 0.4s ease;
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
            position: relative;
            overflow: hidden;
        }

        .cta:hover {
            background: linear-gradient(135deg, #6c5ce7, #0984e3);
            transform: translateY(-3px) scale(1.07);
            box-shadow: 0 12px 35px rgba(0,0,0,0.25);
        }

        /* =========================== */
        /* Feature Boxes                */
        /* =========================== */
        .features {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            margin-top: 60px;
            gap: 25px;
        }

        .feature-box {
            background: #fff;
            border-radius: 15px;
            padding: 35px 25px;
            width: 280px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.12);
            transition: transform 0.4s ease, box-shadow 0.4s ease;
        }

        .feature-box:hover {
            transform: translateY(-10px);
            box-shadow: 0 16px 40px rgba(0,0,0,0.25);
        }

        .feature-box h3 {
            color: #6c5ce7;
            margin-bottom: 15px;
            font-size: 1.4rem;
        }

        .feature-box p {
            color: #636e72;
            font-size: 0.95rem;
            line-height: 1.6;
        }

        /* =========================== */
        /* Footer                       */
        /* =========================== */
        footer {
            background: #2d3436;
            color: #dfe6e9;
            padding: 25px 20px;
            text-align: center;
            margin-top: auto;
            box-shadow: 0 -3px 8px rgba(0,0,0,0.2);
            font-size: 0.95rem;
            position: relative;
            z-index: 1;
        }

        /* =========================== */
        /* Responsive Styles            */
        /* =========================== */
        @media (max-width: 992px) {
            header h1 { font-size: 2.5rem; }
            .cta { padding: 16px 30px; }
        }

        @media (max-width: 768px) {
            .features { flex-direction: column; align-items: center; }
            nav a { margin: 8px 10px; display: inline-block; }
        }

        @media (max-width: 480px) {
            header h1 { font-size: 2rem; }
            .feature-box { width: 90%; padding: 25px 15px; }
        }
    </style>
</head>
<body>

<header>
    <h1>Welcome to E-Commerce App</h1>
</header>

<nav>
    <a href="login.jsp">Login</a>
    <a href="register.jsp">Register</a>
    <a href="products.jsp">Products</a>
    <a href="cart.jsp">Cart</a>
</nav>

<div class="container">
    <%
        String user = (session != null) ? (String) session.getAttribute("userName") : null;
        if (user != null) {
    %>
        <p class="welcome">Hello, <b><%= user %></b>! You are logged in. 
            <a href="logout">Logout</a>
        </p>
    <%
        }
    %>

    <p class="message">
        <%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>
    </p>

    <h2>Shop the Latest Products</h2>
    <p>Browse through our wide collection of amazing products and add them to your cart easily!</p>
    <a href="products.jsp" class="cta">Start Shopping</a>

    <div class="features">
        <div class="feature-box">
            <h3>🚚 Fast Delivery</h3>
            <p>Get your products delivered quickly with our reliable shipping partners.</p>
        </div>
        <div class="feature-box">
            <h3>🔒 Secure Payment</h3>
            <p>All transactions are encrypted and fully secure for your peace of mind.</p>
        </div>
        <div class="feature-box">
            <h3>🛍️ Wide Variety</h3>
            <p>Explore thousands of products across categories and brands.</p>
        </div>
        <div class="feature-box">
            <h3>📞 24/7 Support</h3>
            <p>Our customer support is available anytime to help you with your orders.</p>
        </div>
    </div>
</div>

<footer>
    <p>&copy; 2025 E-Commerce App | Designed with ❤</p>
</footer>

</body>
</html>
