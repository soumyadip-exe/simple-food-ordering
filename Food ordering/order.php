<?php
include 'db.php';

if (isset($_GET['name']) && isset($_GET['price'])) {
    $name = $_GET['name'];
    $price = $_GET['price'];

    $stmt = $conn->prepare("INSERT INTO orders (item_name, price) VALUES (?, ?)");
    $stmt->bind_param("sd", $name, $price);
    $stmt->execute();
    echo "<h2>Order placed successfully for $name (₹$price)!</h2>";
    echo "<a href='index.php'>Back to Menu</a>";
} else {
    echo "<h3>Invalid Order</h3>";
}
?>
<html>
<head>

    <link rel="stylesheet" type="text/css" href="style.css">