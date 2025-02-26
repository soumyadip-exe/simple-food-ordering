<?php include 'db.php'; ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gourab Fast Food Center</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<header>
<img src="rr.png" alt="Fast Food Center Logo" class="logo">
    <h1>Fast Food Center</h1>
    <p>50% Off upto ₹250 Above order ₹1999</p>
</header>

<!-- Menu Section -->
<div class="menu-container">
    <?php
    $categories = ["Indian", "Chinese", "Biryani", "Beverages", "Desserts"];
    
    foreach ($categories as $category) {
        echo "<h2 class='category-title'>$category</h2>";
        echo "<table class='menu-table'>";
        echo "<tr><th>Item</th><th>Price (₹)</th><th>Order</th></tr>";
        
        $result = $conn->query("SELECT * FROM menu WHERE category='$category'");
        while ($row = $result->fetch_assoc()) {
            echo "<tr>
                    <td>{$row['name']}</td>
                    <td>₹{$row['price']}</td>
                    <td><a href='order.php?name={$row['name']}&price={$row['price']}' class='order-btn'>Order Now</a></td>
                  </tr>";
        }
        
        echo "</table>";
    }
    ?>
</div>

</body>
</html>
