<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Checkout</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #e0eafc, #cfdef3);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        form {
            background: #fff;
            padding: 40px 35px;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.12);
            width: 380px;
            text-align: center;
            animation: fadeIn 0.8s ease-in-out;
        }

        h2 {
            margin-bottom: 25px;
            font-size: 1.8rem;
            color: #2d3436;
            letter-spacing: 1px;
        }

        label {
            display: block;
            margin-bottom: 6px;
            font-weight: 600;
            color: #444;
            text-align: left;
        }

        input[type="text"],
        select {
            width: 100%;
            padding: 12px 14px;
            margin-bottom: 22px;
            border: 1px solid #dcdde1;
            border-radius: 8px;
            font-size: 15px;
            background: #fafafa;
            transition: all 0.3s ease;
        }

        input[type="text"]:focus,
        select:focus {
            border-color: #6c5ce7;
            box-shadow: 0 0 5px rgba(108,92,231,0.4);
            outline: none;
            background: #fff;
        }

        input[type="submit"] {
            width: 100%;
            padding: 14px;
            background: linear-gradient(135deg, #6c5ce7, #00cec9);
            color: #fff;
            border: none;
            border-radius: 10px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease, transform 0.2s ease;
            box-shadow: 0 6px 18px rgba(0,0,0,0.15);
        }

        input[type="submit"]:hover {
            background: linear-gradient(135deg, #00cec9, #0984e3);
            transform: scale(1.05);
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        }

        /* Animation */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Responsive */
        @media (max-width: 420px) {
            form {
                width: 90%;
                padding: 25px;
            }
        }
    </style>
</head>
<body>
    <form action="order/place" method="post">
        <h2>🛒 Checkout</h2>

        <label for="address">Address:</label>
        <input type="text" id="address" name="address" placeholder="Enter your address" required>

        <label for="payment">Payment Method:</label>
        <select id="payment" name="payment" required>
            <option value="">Select</option>
            <option value="Cash">Cash</option>
            <option value="Card">Card</option>
        </select>

        <input type="submit" value="Place Order">
    </form>
</body>
</html>
