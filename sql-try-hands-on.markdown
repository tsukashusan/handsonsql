# SQL にログインしてみよう

## DataStudio を起動・接続設定

- 日本語化をするために拡張機能設定をクリック
![DataStudio を起動](images/datastudio-start-view.png "DataStudio を起動")

-  **japa**と入力し、**install**をクリック
![DataStudio 日本語化](images/datastudio-start-extend-japanese.png "DataStudio 日本語化")

-  **Yes**をクリック
![DataStudio を再起動](images/datastudio-start-extend-japanese-restart.png "DataStudio を再起動")

-  **Add Connection**をクリック
![DataStudio をAdd Connection](images/datastudio-connection-start.png "DataStudio をAdd Connection")

-  **各種パラメータを入力**をクリック
![DataStudio パラメータ](images/datastudio-connection-param-input.png "DataStudio パラメータ")

    | 項目 | 値 |
    | ---- | ---- |
    | Server  |  SQL on IaaSのipアドレス  |
    | Authentication type |  SQL Login  |
    | User name | 仮想マシンで設定した値 |
    | Password |  仮想マシンで設定した値 |
    | Database | <既定>  |
    | サーバーグループ  |  <既定>   |
    | Name(optional) |  SQL on IaaS  |
    | 自動バックアップ| 有効化 |
    | SQL Server Machine Learning Services (データベース内)|無効化|


- 接続できたことを確認
![DataStudio 接続完了](images/datastudio-connection-complete.png "DataStudio 接続完了")

## SQL を送信してみよう
- クエリー画面の起動
![DataStudio クエリー画面](images/datastudio-new-query.png "DataStudio クエリー画面")

- はじめての**SQL**

```
SELECT 1
GO
```
と入力し、**[▷Run]**
![DataStudio クエリー結果](images/datastudio-new-query-result.png "DataStudio クエリー結果")

- alias の入力
```
SELECT 1 AS A
GO
```
と入力し、**[▷Run]**
![DataStudio クエリー結果](images/datastudio-new-query-result-a.png "DataStudio クエリー結果")


## データベースの作成

- 作成の前に照合順序について
- [照合順序について][2]
以下のSQLを実行してみよう
```
SELECT Name, Description FROM fn_helpcollations()  
WHERE Name LIKE 'Japanese_Bushu_Kakusu_140%' OR Name LIKE 'Japanese_XJIS_140%'
GO
```
132種類の照合順序についての結果が表示されていることが確認できます。
これらの照合順序のどれを使うかデータベース作成前に決定する必要があります。
![DataStudio クエリー結果](images/datastudio-collate-result.png "DataStudio クエリー結果")

- 日本語、部首画数順、日本語照合のバージョン(140)、大文字と小文字を区別する、アクセントを区別する、かなを区別する、文字幅を区別する、異体字の選択を区別する
```Japanese_Bushu_Kakusu_140_CS_AS_KS_WS_VSS```を使います。
```Japanese_Bushu_Kakusu_140_CS_AS_KS_WS_VSS_UTF8```(UTF8で格納)もありますが今回は使用しません。
[照合順序のパラメータの意味][3]
- データベース作成
[]大括弧(スクエアブラケット)で括っているのは、予約語を項目名で使う場合などに使います。
例えば、MySQL は `(バッククォート)で括ります。
```
CREATE DATABASE [販売管理] COLLATE Japanese_Bushu_Kakusu_140_CS_AS_KS_WS_VSS
GO
```
- データベース作成 結果の確認
![DataStudio データベース作成結果](images/datastudio-create-database.png "DataStudio データベース作成結果")


## [次の演習へ][4]
## [前の演習へ][1]


[1]:sqlcreate-hands-on.markdown
[2]:https://docs.microsoft.com/ja-jp/sql/relational-databases/collations/collation-and-unicode-support?view=sql-server-ver15
[3]:https://memo.itsysgroup.com/?p=1169
[4]:sql-try-create-table