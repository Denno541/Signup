<?php
// Database connection details
$servername = "localhost"; // Change if needed
$username = "root"; // Your MySQL username
$password = ""; // Your MySQL password
$database = "sign_up"; // Database name
// Connect to MySQL
$conn = new mysqli($servername, $username, $password, $database);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
// Handle form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get form data
    $full_name = trim($_POST["full_name"]);
    $email = trim($_POST["email"]);
    $password = trim($_POST["password"]);
    $confirm_password = trim($_POST["confirm_password"]);
    // Validate passwords match
    if ($password !== $confirm_password) {
        echo "<script>alert('Passwords do not match!'); window.history.back();</script>";
        exit();
    }
    // Hash the password for security
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);
    // Insert user into database
    $stmt = $conn->prepare("INSERT INTO new_users (full_name, email, password) VALUES (?, ?, ?)");
    $stmt->bind_param("sss", $full_name, $email, $hashed_password);

    if ($stmt->execute()) {
        die("Redirecting to index.html...");
        header("Location: index.html");
        exit();
    }
    
    $stmt->close();
}
$conn->close();
?>
