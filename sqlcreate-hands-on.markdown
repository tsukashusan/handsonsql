#　SQL Server 作成

## 準備
SQL Serverを作る前の準備です。
### DataStudio のインストール

[Azure Data Studio のダウンロードとインストール][1]

![Azure Data Studio ](images/azure-datastudio.png "Azure Data Studio インストール")

[ダウンロード][2]


## 構築
### SQL用のサブネットを作成してみましょう。

|  設定値 |  値  |
| ---- | ---- |
|  サブネット名 |  sqlsubment  |
|  サブネット マスク  |  172.0.0.1/27  |

### SQL on IaaSの展開

![リソースの作成](images/resource-create.png "サンプル")


[1]:https://docs.microsoft.com/ja-jp/sql/azure-data-studio/download-azure-data-studio?view=sql-server-ver15
[2]:https://go.microsoft.com/fwlink/?linkid=2138608
