#　SQL Server 作成

## 準備
SQL Serverを作る前の準備です。
### DataStudio のインストール

前回の演習で作成した仮想マシンにAzure Bastion でログイン

[Azure Data Studio のダウンロードとインストール][1]

![Azure Data Studio ](images/azure-datastudio.png "Azure Data Studio インストール")

[Data Studio の ダウンロード][2]


## 構築
### SQL用のサブネットを作成してみましょう。

|  項目 |  値  |
| ---- | ---- |
|  サブネット名 |  sqlsubment  |
|  サブネット マスク  |  172.0.0.1/27  |

### SQL on IaaSの展開

![リソースの作成](images/resource-create.png "リソースの作成")

**SQL Server** と入力し、**Enter**を押下

![SQL Server](images/sql-server-input.png "SQL Server")


公開元を**Microsoft**とし、**SQL Server 2019 on Windows Server 2019**を選択する

![公開とSQL Serverの選択](images/pub-microsoft-win2019.png "sqlpub")

**Free SQL Server License: SQL 2019 Developer on Windows Server 2019**を選択

![SQL Server 2019の選択](images/sql-server-choise.png "sqlpub")

仮想マシンのウィザードになります

|  項目|  値  |
| ---- | ---- |
|  サブスクリプション |  サブスクリプションを選択  |
|  リソースグループ  |  作成したリソースグループ  |
|  仮想マシン名  |  sql-dev-iaas  |
|  地域  |  (Asia Pacific)西日本  |
|  可用性オプション |  インフラストラクチャ冗長は必要ありません  |
|  イメージ  | Free SQL Server License: SQL 2019 Developer on Windows Server 2019 - Gen1   |
|  スポットインスタンス  |  いいえ  |
|  サイズ |  Standard_B2m  |
|  ユーザ名 |  saadmin  |
|  パスワード |  o9UiUlfzqRHc  |
|  パブリック受信ポート |  なし  |
|  パスワード |  o9UiUlfzqRHc  |
|Windows Server ライセンスを既にお持ちの場合| いいえ |



![SQL Server 2019の選択](images/create-vm.png "vmcreate")

**【次へ】**



[1]:https://docs.microsoft.com/ja-jp/sql/azure-data-studio/download-azure-data-studio?view=sql-server-ver15
[2]:https://go.microsoft.com/fwlink/?linkid=2138608



