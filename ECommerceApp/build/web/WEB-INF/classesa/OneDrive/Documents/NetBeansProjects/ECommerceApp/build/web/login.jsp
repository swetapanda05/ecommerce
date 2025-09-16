<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <style>
        /* ===== Reset & Base ===== */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #74ebd5, #ACB6E5);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        /* ===== Card Container ===== */
        .login-container {
            background: #ffffff;
            padding: 40px 35px;
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.15);
            width: 360px;
            text-align: center;
            animation: fadeIn 1s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* ===== Heading ===== */
        h2 {
            margin-bottom: 25px;
            color: #2c3e50;
            font-size: 1.8rem;
        }

        /* ===== Form Inputs ===== */
        form input[type="email"],
        form input[type="password"] {
            width: 100%;
            padding: 14px 12px;
            margin: 10px 0 18px 0;
            border: 1px solid #dcdcdc;
            border-radius: 8px;
            font-size: 15px;
            transition: all 0.3s ease;
            background-color: #f9f9f9;
        }

        form input[type="email"]:focus,
        form input[type="password"]:focus {
            border-color: #6c63ff;
            background-color: #fff;
            outline: none;
            box-shadow: 0 0 6px rgba(108,99,255,0.3);
        }

        /* ===== Submit Button ===== */
        form input[type="submit"] {
            background: linear-gradient(135deg, #6c63ff, #5a4de4);
            color: #fff;
            border: none;
            padding: 14px 20px;
            border-radius: 8px;
            font-size: 16px;
            font-weight: 600;
            width: 100%;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        form input[type="submit"]:hover {
            background: linear-gradient(135deg, #5a4de4, #4939d6);
            transform: translateY(-2px);
            box-shadow: 0 6px 15px rgba(0,0,0,0.15);
        }

        /* ===== Error / Message ===== */
        .message {
            color: #e74c3c;
            font-size: 14px;
            margin-top: 15px;
        }

        /* ===== Extra Links ===== */
        .extra-links {
            margin-top: 20px;
            font-size: 14px;
            color: #555;
        }

        .extra-links a {
            color: #6c63ff;
            text-decoration: none;
            font-weight: 600;
            transition: color 0.3s;
        }

        .extra-links a:hover {
            color: #4939d6;
        }

        /* ===== Responsive ===== */
        @media (max-width: 400px) {
            .login-container {
                width: 90%;
                padding: 30px 20px;
            }
        }
    </style>
</head>
<body>
<div class="login-container">
    <h2>Login</h2>
    <form action="login" method="post">
        <input type="email" name="email" placeholder="Enter your email" required><br>
        <input type="password" name="password" placeholder="Enter your password" required><br>
        <input type="submit" value="Login">
    </form>
    <p class="message"><%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %></p>
    <div class="extra-links">
        Don’t have an account? <a href="register.jsp">Register</a>
    </div>
</div>
</body>
</html>
