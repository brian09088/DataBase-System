# DataBase-System-PHP/SQL
[CSE-585/course link](https://db.cse.nsysu.edu.tw/?course=dbs) 
 * account & pw is not public released !

## using XAMPP control panel, including SQL, Apache. Try to create DB and systems.
### 安裝注意事項
1. 下載並安裝完成(資料夾解壓縮與分類整理)[XAMPP](https://www.apachefriends.org/zh_tw/download.html)
2. 打開程式設定檔，根據步驟安裝完成後，打開control panel
3. 這邊要注意如果mysql 按下start後，admin按下去連結到php_admin 的主機localhost如果沒有反應(顯示無法連接)時，我們要打開apache的config 
   - 找到(httpd.conf)
   - 修改閘道管路，這邊把port : 80 改成port : 8080
```
#Listen 12.34.56.78:8080
Listen 8080
```
4. 成功連接，並透過預設主機管理員登入管理
```
1. 點擊使用者帳號，點選使用者名稱:root 主機名稱:local host 的編輯權限
2. 點選change password 設定新的密碼(因為原本設定沒有密碼)
```
5. 記得設定好之後，要去control panel -> apache -> config -> phpMyAdmin(config.ini.php) 看到password那行，原先空白記得修改為剛剛設定的新密碼
6. 如果想要每一次都重新登入，那就把auth_type從config改成cookie
``` ini.php
$cfg['Servers'][$i]['auth_type'] = 'cookie';
```
### Cookie
### **What** 什麼是Cookie？
Cookie 屬於一種小型的文字檔案，是伺服器端（Server Side）透過加密的方式儲存在用戶端（Client Side）上的資料。

### **Where** Cookie存放在哪？
Cookie 可以儲存的地方有兩個：記憶體或硬體內。記憶體 Cookie 是由瀏覽器來維護的，通常會在瀏覽器關閉後清除，而各個瀏覽器之間的 Cookie 是無法相互使用，也就是說對於在同一台電腦上使用 Chorme 或是 Firefox，僅管操作的是同一個人，卻是會認成兩個不一樣的角色。而硬體 Cookie 則會有一個保存期限，除非過期或是手動刪除，不然他的儲存時間會較瀏覽器來的長。

### **Why** 為什麼需要Cookie？
瀏覽器與伺服器之間是透過 HTTP 協議來進行通訊，而這樣的協議是一種無法紀錄狀態的協議。即伺服器不知道用戶上一次做了什麼。

在典型的網路購物場景中，用戶瀏覽了幾個頁面，買了一盒餅乾

7.  我這邊即使設定好新的密碼，ini檔也修改pw了，依然無法開啟主控版，打開後進入登入畫面直接按下右下角submit(不輸入帳號密碼也可以登入)但是相對不安全

## 為了確保大家可以最低限度的執行 PHP ，我們先寫一支 echo 測試程式，程式如下：
以 XAMPP 為例，請在路徑 XAMPP/htdocs 底下新增一個 「connect.php」檔案，
``` PHP
<?php
  echo "我是誰?"
?>
```
由於網址路徑與檔案路徑相同，所以可以這樣寫
接下來，存檔並進入網址 (http://localhost/connect.php) 連接網頁成功

**未來若要繼續上傳到網址，我們將會使用connect.php來做編輯與上傳資料**

## php執行網頁的中間流程架構如下

![image](https://user-images.githubusercontent.com/72643996/224519400-2135fabc-ff37-4b03-a9a3-609342f9a1a1.png)

- 1. 若您要用 PHP 來連接 SQL 資料庫，可以使用以下的步驟：
連接到 SQL 資料庫：使用 mysqli_connect 函式來建立到 SQL 資料庫的連接。這個函式需要指定主機名稱、使用者名稱、密碼和資料庫名稱等相關參數。例如：
``` php
$servername = "localhost";
$username = "username";
$password = "password";
$dbname = "myDB";

// 建立連接
$conn = mysqli_connect($servername, $username, $password, $dbname);

// 檢查連接是否成功
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
```
- 2. 執行 SQL 查詢：使用 mysqli_query 函式來執行 SQL 查詢。這個函式需要指定已建立的資料庫連接和要執行的 SQL 查詢語句。例如：
``` php
$sql = "SELECT * FROM myTable";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    // 輸出每一行的資料
    while($row = mysqli_fetch_assoc($result)) {
        echo "id: " . $row["id"] . " - Name: " . $row["name"] . "<br>";
    }
} else {
    echo "0 results";
}
```
- 3. 關閉資料庫連接：使用 mysqli_close 函式來關閉資料庫連接。例如：
``` php
// 關閉連接
mysqli_close($conn);
```
