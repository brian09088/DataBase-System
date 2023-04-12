<?php

$is_invalid = false;

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    
    $mysqli = require __DIR__ . "/登入.php";
    
    $sql = sprintf("SELECT * FROM 使用者
                    WHERE `Email` = '%s'",
                   $mysqli->real_escape_string($_POST["Email"]));
    
    $result = $mysqli->query($sql);
    
    $使用者 = $result->fetch_assoc();
    
    if ($使用者) {
        
        if (password_verify($_POST["password"], $使用者["密碼"])) {
            
            session_start();
            
            session_regenerate_id();
            
            $_SESSION["user_id"] = $使用者["id"];
            
            header("Location: connect.php");
            exit;
        }
    }
    
    $is_invalid = true;
}

?>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
</head>
<body>
    
    <h1>Login</h1>
    
    <?php if ($is_invalid): ?>
        <em>Invalid login</em>
    <?php endif; ?>
    
    <form method="post">
        <label for="Email">Email</label>
        <input type="Email" name="Email" id="Email"
               value="<?= htmlspecialchars($_POST["Email"] ?? "") ?>">
        
        <label for="password">Password</label>
        <input type="password" name="password" id="password">
        
        <button>Log in</button>
    </form>
    
</body>
</html>







