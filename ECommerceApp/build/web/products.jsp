<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*, util.DBConnection" %>
<html>
<head>
    <title>Products - E-Commerce App</title>
    <style>
        /* ===== Base Reset ===== */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, sans-serif;
            background: linear-gradient(to right, #f8f9fa, #e9ecef);
            color: #2c3e50;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            padding: 25px;
            font-size: 2rem;
            color: #6c63ff;
        }

        /* ===== Product Container ===== */
        .product-container {
            display: flex;
            flex-wrap: nowrap;
            overflow-x: auto;
            gap: 20px;
            padding: 30px 20px;
            scrollbar-width: thin;
        }

        .product-container::-webkit-scrollbar {
            height: 10px;
        }
        .product-container::-webkit-scrollbar-thumb {
            background: #bbb;
            border-radius: 10px;
        }

        /* ===== Product Card ===== */
        .product-card {
            flex: 0 0 auto;
            width: 240px;
            background: #fff;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.08);
            padding: 18px;
            text-align: center;
            transition: all 0.4s ease;
            cursor: pointer;
            overflow: hidden;
            max-height: 130px; /* collapsed state */
            position: relative;
        }

        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 12px 30px rgba(0,0,0,0.15);
        }

        .product-card.expanded {
            max-height: 340px; /* expanded state */
        }

        .product-card h3 {
            font-size: 18px;
            margin: 10px 0;
            color: #34495e;
        }

        .product-card p {
            font-size: 14px;
            color: #7f8c8d;
        }

        /* ===== Details Section ===== */
        .product-details {
            display: none;
            margin-top: 15px;
        }

        .product-card.expanded .product-details {
            display: block;
            animation: fadeIn 0.4s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .price {
            font-size: 18px;
            font-weight: bold;
            color: #e74c3c;
            margin: 12px 0;
        }

        /* ===== Add to Cart Button ===== */
        .add-to-cart {
            display: inline-block;
            background: linear-gradient(135deg, #6c63ff, #5a4de4);
            color: #fff;
            padding: 10px 18px;
            border-radius: 8px;
            text-decoration: none;
            transition: all 0.3s ease;
            border: none;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
        }

        .add-to-cart:hover {
            background: linear-gradient(135deg, #5a4de4, #4939d6);
            transform: translateY(-2px);
            box-shadow: 0 6px 15px rgba(0,0,0,0.15);
        }
    </style>

    <script>
        function toggleCard(card) {
            card.classList.toggle('expanded');
        }
    </script>
</head>
<body>
    <h2>Our Products</h2>
    <div class="product-container">
        <%
            try (Connection conn = DBConnection.getConnection()) {
                String sql = "SELECT id, name, description, price FROM products";
                PreparedStatement ps = conn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
                    int id = rs.getInt("id");
                    String name = rs.getString("name");
                    String desc = rs.getString("description");
                    double price = rs.getDouble("price");
        %>
            <div class="product-card" onclick="toggleCard(this)">
                <h3><%= name %></h3>
                <p><%= desc %></p>
                <div class="product-details">
                    <div class="price">₹<%= price %></div>
                    <form action="cart/add" method="post">
                        <input type="hidden" name="productId" value="<%= id %>">
                        <input type="hidden" name="quantity" value="1">
                        <button type="submit" class="add-to-cart">Add to Cart</button>
                    </form>
                </div>
            </div>
        <%
                }
            } catch (Exception e) {
                out.println("<p style='color:red;'>Error loading products: " + e.getMessage() + "</p>");
            }
        %>
    </div>
</body>
</html>
