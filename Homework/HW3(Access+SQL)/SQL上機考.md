# 50題抽選5題考試
- 使用sql語法作答
- 可以用access做驗證
- 15分鐘
- 分為5題(查詢、更新、新增建立、刪除、困難題)
## 幾種常見語法
- select 欄位名稱 from 資料表 where 給定條件
- 子查詢 : where 欄位名稱 = (select + from + where))
- 子查詢 : where private-key in (select + from + where)
- count(欄位名稱) 計算數量
- distinct(欄位名稱) 避免重複
- order by ASC/DESC (由上至下，遞增遞減排序條件)
- group by : 結合其他欄位
- having : 附加條件

## 新增/刪除索引與變更資料表
- 改變資料表名稱(結構與欄位不變)
``` sql
alter table name_1
rename to name_2
```

- 新增欄位、結構成為一份新的資料表
```sql
create table name
(
quantity int not null
pname varchar not null
order_date date not null
primary key(no)
);
```
- 新增一份資料表(全部欄位)&(部分欄位)
```sql
select * into newname
from oldname;
```
``` sql
select pname,order_date
into newname
from oldname
where buyer='blah';
```
- 插入新的訂單紀錄(從別處資料表新增資料(詳細資訊)/從別處複製到此新增)
```sql
insert into 資料表名稱 select (a,b,c,d,e) from 使用者 where name='123'
```
```sql
insert into name
where buyer='blah';
```
- 刪除紀錄
```sql
delete from name
where pname = 'blah';
```
- 新增索引
``` sql
create index name on table(oID)
```
- 新增欄位
```SQL
alter table 資料表名稱 add column name 資料型別
```
- 刪除欄位
```SQL
alter table 資料表名稱 drop column name
```
- 刪除索引
``` sql
drop index name on table
```
- 刪除資料表
```sql
drop table name
```

