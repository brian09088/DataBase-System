<?php

if (empty($_POST["使用者姓名"])) {
    die("使用者姓名 is required");
}

if ( ! filter_var($_POST["Email"], FILTER_VALIDATE_EMAIL)) {
    die("Valid Email is required");
}

if (strlen($_POST["password"]) < 8) {
    die("Password must be at least 8 characters");
}

if ( ! preg_match("/[a-z]/i", $_POST["password"])) {
    die("Password must contain at least one letter");
}

if ( ! preg_match("/[0-9]/", $_POST["password"])) {
    die("Password must contain at least one number");
}

if ($_POST["password"] !== $_POST["password_confirmation"]) {
    die("Passwords must match");
}

$password_hash = password_hash($_POST["password"], PASSWORD_DEFAULT);

$mysqli = require __DIR__ . "/登入.php";

$sql = "INSERT INTO 使用者(姓名,`Email`,密碼) 
        values (?,?,?)";

$stmt = $mysqli->stmt_init();

if ( ! $stmt->prepare($sql)) {
    die("SQL error: " . $mysqli->error);
}

$stmt->bind_param("sss",
                $_POST["使用者姓名"],
                $_POST["Email"],
                $password_hash);

if ($stmt->execute()) {

        header("Location: signup_success.html");
        exit;

} else {
                    
    if ($mysqli->errno === 1062) {
        die("Email already taken");
    } else {
        die($mysqli->error . " " . $mysqli->errno);
    }
}
                