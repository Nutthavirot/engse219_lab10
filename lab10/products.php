<?php
header("Content-Type: application/json");
require "db.php"; // include database connection

$method = $_SERVER['REQUEST_METHOD'];

switch ($method) {
    case 'GET': // Read data
        if (isset($_GET['id'])) {
            $id = intval($_GET['id']);
            $result = $conn->query("SELECT * FROM products WHERE id=$id");
            echo json_encode($result->fetch_assoc());
        } else {
            $result = $conn->query("SELECT * FROM products");
            echo json_encode($result->fetch_all(MYSQLI_ASSOC));
        }
        break;

    case 'POST': // Create new product
        $data = json_decode(file_get_contents("php://input"), true);
        $stmt = $conn->prepare("INSERT INTO products (title, price, description, category, rating_rate, rating_count) VALUES (?, ?, ?, ?, ?, ?)");
        $stmt->bind_param("sdssdi", 
            $data['title'], 
            $data['price'], 
            $data['description'], 
            $data['category'], 
            $data['rating']['rate'], 
            $data['rating']['count']
        );
        $stmt->execute();
        echo json_encode(["id" => $stmt->insert_id]);
        break;

    case 'PUT': // Update product
        if (isset($_GET['id'])) {
            $id = intval($_GET['id']);
            $data = json_decode(file_get_contents("php://input"), true);
            $stmt = $conn->prepare("UPDATE products SET title=?, price=?, description=?, category=?, rating_rate=?, rating_count=? WHERE id=?");
            $stmt->bind_param("sdssdii", 
                $data['title'], 
                $data['price'], 
                $data['description'], 
                $data['category'], 
                $data['rating']['rate'], 
                $data['rating']['count'], 
                $id
            );
            $stmt->execute();
            echo json_encode(["updated" => $stmt->affected_rows]);
        }
        break;

    case 'DELETE': // Delete product
        if (isset($_GET['id'])) {
            $id = intval($_GET['id']);
            $conn->query("DELETE FROM products WHERE id=$id");
            echo json_encode(["deleted" => $conn->affected_rows]);
        }
        break;
}
?>

