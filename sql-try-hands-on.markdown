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

    |  項目|  値  |
    | ---- | ---- |
    |  接続の種類 |  Microsoft SQL Server  |
    |  Server  |  SQL on IaaSのipアドレス  |
    |  Authentication type |  SQL Login  |
    |  User name |  仮想マシンで設定した値 |
    |  Password |  【仮想マシンで設定した値   |
    |  Database | <既定>  |
    |  サーバーグループ  |  <既定>   |
    |  Name(optional) |  SQL on IaaS  |
    |自動バックアップ| 有効化 |
    |SQL Server Machine Learning Services (データベース内)|無効化|


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
## [前の演習へ][1]

[1]:sqlcreate-hands-on.markdown
