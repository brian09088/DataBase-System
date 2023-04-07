<?php 
/*連接到 SQL 資料庫：使用 mysqli_connect 函式來建立到 SQL 資料庫的連接。
這個函式需要指定主機名稱、使用者名稱、密碼和資料庫名稱等相關參數*/
$servername = "127.0.0.1";
$username = "brian18088";
$password = "brian18088";
$dbname = "資料庫系統lab";

//建立連接
$con = new mysqli($servername, $username, $password, $dbname);

//檢查連接是否成功
if($con -> connect_error){
    die("Connection failed: " . $con->connect_error);
}
echo '<br>';
echo "Connected successfully";
$con -> select_db("資料庫系統lab");

$result = $con -> query("SELECT * FROM `小型圖書管理系統`");

echo "<table border='1' align='center'>";
echo "<h2 align='center'> 圖書資訊 Table </h2>";
echo "<tr>
        <th>作者</th>
        <th>指導教授</th>
        <th>論文名稱</th>
        <th>館藏地</th>
        <th>索書號</th>
        <th>可否借閱</th>
      </tr>";

while($row = mysqli_fetch_array($result)){
    echo "<tr>";
    echo "<td>".$row['作者']."</td>";
    echo "<td>".$row['指導教授']."</td>";
    echo "<td>".$row['論文名稱']."</td>";
    echo "<td>".$row['館藏地']."</td>";
    echo "<td>".$row['索書號']."</td>";
    echo "<td>".$row['可否借閱']."</td>";
    echo "</tr>";
}
echo "</table>";
$con->close();
?>