<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <style>
        /* --- Body & Background --- */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            overflow-x: hidden;
        }

        /* --- Container --- */
        .register-container {
            background: #fff;
            padding: 45px 35px;
            border-radius: 20px;
            box-shadow: 0 12px 40px rgba(0,0,0,0.2);
            width: 370px;
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            position: relative;
            z-index: 1;
        }

        .register-container:hover {
            transform: translateY(-6px);
            box-shadow: 0 18px 50px rgba(0,0,0,0.25);
        }

        h2 {
            margin-bottom: 25px;
            color: #333;
            font-size: 2.2rem;
            font-weight: 700;
        }

        /* --- Input Fields --- */
        form input[type="text"],
        form input[type="email"],
        form input[type="password"] {
            width: 100%;
            padding: 14px 12px;
            margin: 12px 0 20px 0;
            border: 1px solid #ddd;
            border-radius: 10px;
            font-size: 15px;
            background: #f9f9f9;
            transition: all 0.3s ease;
        }

        form input[type="text"]:focus,
        form input[type="email"]:focus,
        form input[type="password"]:focus {
            border-color: #6a11cb;
            box-shadow: 0 0 10px rgba(106,17,203,0.3);
            outline: none;
            background: #fff;
        }

        /* --- Submit Button --- */
        form input[type="submit"] {
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            color: white;
            border: none;
            padding: 14px 22px;
            border-radius: 10px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        }

        form input[type="submit"]:hover {
            background: linear-gradient(135deg, #2575fc, #6a11cb);
            transform: scale(1.05);
            box-shadow: 0 12px 35px rgba(0,0,0,0.3);
        }

        /* --- Message --- */
        .message {
            color: #e74c3c;
            font-size: 14px;
            margin-top: 15px;
            min-height: 20px;
        }

        /* --- Responsive --- */
        @media (max-width: 400px) {
            .register-container {
                width: 90%;
                padding: 35px 20px;
            }
        }

        /* --- Floating Shapes in Background --- */
        body::before, body::after {
            content: "";
            position: fixed;
            border-radius: 50%;
            z-index: 0;
            pointer-events: none;
        }

        body::before {
            width: 280px;
            height: 280px;
            top: -100px;
            left: -100px;
            background: radial-gradient(circle, rgba(255,255,255,0.15), transparent 70%);
            animation: float1 20s linear infinite;
        }

        body::after {
            width: 220px;
            height: 220px;
            bottom: -80px;
            right: -60px;
            background: radial-gradient(circle, rgba(0,0,0,0.1), transparent 70%);
            animation: float2 25s linear infinite;
        }

        @keyframes float1 { 
            0%{transform:translate(0,0)} 
            50%{transform:translate(60px,40px)} 
            100%{transform:translate(0,0)} 
        }
        @keyframes float2 { 
            0%{transform:translate(0,0)} 
            50%{transform:translate(-50px,-40px)} 
            100%{transform:translate(0,0)} 
        }
    </style>
</head>
<body>
<div class="register-container">
    <h2>Create Account</h2>
    <form action="register" method="post">
        <input type="text" name="name" placeholder="Full Name" required><br>
        <input type="email" name="email" placeholder="Email Address" required><br>
        <input type="password" name="password" placeholder="Password" required><br>
        <input type="text" name="phone" placeholder="Phone Number"><br>
        <input type="submit" value="Register">
    </form>
    <p class="message"><%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %></p>
</div>
</body>
</html>
