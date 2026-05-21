<?php
    session_start();
    require_once('library/connect.php');

    if(isset($_POST['submit'])){
        $email = $_POST['email'];
        $password = hash('sha256',$_POST['password']);
        $sql = "SELECT * from user where email='".$email."' and password ='".$password."'";
        $result = $connection->query($sql);
        if($result->num_rows > 0){
            $row = $result->fetch_assoc();
            $_SESSION['name'] = $row['name'];
            $_SESSION['id'] = $row['id'];
            header("location: index.php");
        }
        else {
            echo '<p style: text-align="center">Login Gagal</p>';
        }
    }

?>

<html>
    <head>
        <title>Login</title>
        <script src="script.js"></script>
    </head>
    <body>
        <h1>Login Account</h1>
        <a href="register.php"><h1>Register</h1></a>
        <form method="POST">
            <div>
                <label for="email">Email</label>
                <input type="email" id="email" placeholder="Email" name="email" required>
            </div>

            <div>
                <label for="password">Password</label>
                <input type="password" id="password" placeholder="Password" name="password" required>
                <br>
                <input type="checkbox" onclick="showPassword()">Show Password
            </div>
            <div>
                <button type="submit" id="submit" name="submit">Login</button>
            </div>
        
        </form>

    </body>
</html>