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
7.  我這邊即使設定好新的密碼，ini檔也修改pw了，依然無法開啟主控版，直接登入(不輸入帳號密碼也可以)但是相對不安全

## 為了確保大家可以最低限度的執行 PHP ，我們先寫一支 echo 測試程式，程式如下：
以 XAMPP 為例，請在路徑 XAMPP/htdocs 底下新增一個 「connect.php」檔案，
``` PHP
<?php
  echo "我是誰?"
?>
```
由於網址路徑與檔案路徑相同，所以可以這樣寫
接下來，存檔並進入網址 (http://localhost/connect.php)
連接網頁成功
**未來若要繼續上傳到網址，我們將會使用connect.php來做編輯與上傳資料**

## php執行網頁的中間流程架構如下

![image](https://user-images.githubusercontent.com/72643996/224519400-2135fabc-ff37-4b03-a9a3-609342f9a1a1.png)

