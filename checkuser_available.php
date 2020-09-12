<?php 

include_once('functions.php');

$usernamecheck = new DB_con();

$username = $_POST['username'];

$sql = $usernamecheck->usernameavailable($username);

$num = mysqli_num_rows($sql);

if ($num > 0) {
    echo "<spanstyle='color: red;'>ชื่อบัญชีผู้ใช้ของคุณได้ถูกใช้งานแล้ว</span>";
    echo "<script>$('#submit').prop('disabled',true);</script>";
} else {
    echo "<spanstyle='color: green;'>ชื่อบัญชีผู้ใช้ของคุณได้ถูกใช้งานแล้ว</span>";
    echo "<script>$('#submit').prop('disabled',false);</script>";
}

?>