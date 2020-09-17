# SQL Server 作成

## 準備
SQL Serverを作る前の準備です。
### DataStudio のインストール

前回の演習で作成した仮想マシンにAzure Bastion でログイン

- 仮想マシンにインストールするために、IE11のセキュリティを一旦外す

![IE11](images/winserver-ie11-0.png "Prev IEセッティング")

-  **Administrators**のみ**off**

![IE11](images/winserver-ie11.png "IEセッティング")


- [Azure Data Studio のダウンロードとインストール][1]

![Azure Data Studio ](images/azure-datastudio.png "Azure Data Studio インストール")

- [Data Studio の ダウンロード][2]

![Azure Data Studio Bastion](images/datastudio-install-4-bastion.png "Azure Data Studio Bastion View")

- こちらのワーニングは気にせず**OK**で進めましょう

![Azure Data Studio Warning](images/datastudio-install-warning.png "Azure Data Studio 警告")


## 構築
### SQL用のサブネットを作成してみましょう。

#### **【基本】**

|  項目 |  値  |
| ---- | ---- |
|  サブネット名 |  sqlsubment  |
|  サブネット マスク  |  172.16.2.0/24  |

### SQL on IaaSの展開

![リソースの作成](images/resource-create.png "リソースの作成")

- **SQL Server** と入力し、**Enter**を押下

![SQL Server](images/sql-server-input.png "SQL Server")


- 公開元を**Microsoft**とし、**SQL Server 2019 on Windows Server 2019**を選択する

![公開とSQL Serverの選択](images/pub-microsoft-win2019.png "sqlpub")

- **Free SQL Server License: SQL 2019 Developer on Windows Server 2019**を選択

![SQL Server 2019の選択](images/sql-server-choise.png "sqlpub")

- 仮想マシンのウィザードになります

|  項目|  値  |
| ---- | ---- |
|  サブスクリプション |  サブスクリプションを選択  |
|  リソースグループ  |  作成したリソースグループ  |
|  仮想マシン名  |  sql-dev-iaas  |
|  地域  |  (Asia Pacific)西日本  |
|  可用性オプション |  インフラストラクチャ冗長は必要ありません  |
|  イメージ  | Free SQL Server License: SQL 2019 Developer on Windows Server 2019 - Gen1   |
|  スポットインスタンス  |  いいえ  |
|  サイズ |  Standard_D4s_v3  |
|  ユーザ名 |  saadmin  |
|  パスワード |  o9UiUlfzqRHc  |
|  パブリック受信ポート |  なし  |
|Windows Server ライセンスを既にお持ちの場合| いいえ |



- ![SQL Server 2019の選択](images/create-vm.png "vmcreate")

**【次:ディスク>】** をクリック

- #### **【ディスク】** 全て規定 **【次:ネットワーク>】**
![ディスク](images/vmcreate-disk.png "vmdisk")

- **【ネットワーク】**

|  項目|  値  |
| ---- | ---- |
|  仮想ネットワーク |  作成した仮想ネットワークを選択  |
|  サブネット  |  作成したサブネットを選択  |
|  パブリックIP  |  なし  |
|  NIC ネットワーク セキュリティ グループ  |  なし |
|  パブリック受信ポート |  なし  |
|  高速ネットワーク | オン(既定)  |
|  負荷分散  |  いいえ  |
|  この仮想マシンを既存の負荷分散ソリューションの後ろに配置しますか? |  いいえ  |


![NIC](images/vmcreate-nic.png "vmnic")


**【次:管理>】** へ

- #### **【管理】**

|  項目|  値  |
| ---- | ---- |
|  ブート診断 |  マネージド ストレージ アカウントで有効にする (推奨)  |
|  OS のゲスト診断  |  オン  |
|  診断ストレージアカウント |  既存 or 新規作成でストレージアカウント  |
|  システム割り当てマネージド ID |  オフ |
|  自動シャットダウンを有効にする |  オン  |
|  シャットダウン時刻 | 19:00  |
|  タイムゾーン  |  (UTC+09:00)大阪、札幌、東京  |
|  電子メール |  自身のメールアドレス  |
|修正プログラムのオプション| OS によって調整される修正: 修正プログラムは OS によってインストールされます |
![管理](images/vmcreate-manage.png "vmmanage")

**【詳細】** へ
**【詳細】**は特にすべて既定のそのまま****
![詳細](images/vmcreate-detail.png "vmdetail")

**【SQL Server の設定】** へ

#### **【SQL Server の設定】**

|  項目|  値  |
| ---- | ---- |
|  SQLの接続 |  プライベート(Virtual Network 内)  |
|  ポート  |  443  |
|  SQL認証 |  有効化  |
|  ログイン名 |  【基本】で設定したまま |
|  パスワード |  【基本】で設定したまま  |
|  Azure Key Vault の統合 | 無効化  |
|  Storage  |  既定   |
|  自動修正 |  既定  |
|自動バックアップ| 有効化 |
|SQL Server Machine Learning Services (データベース内)|無効化|
![SQL Server の設定](images/vmcreate-sql.png "vmsql")
**【次:タグ>】** へ

- #### **【タグ】** 全て規定 **【次:確認および作成>】 **
**【確認および作成】 **

[検証に成功しました]と表示されていることを確認し、
**【作成】**をクリック
![確認および作成](images/vmcreate-confirm.png "vmconfirm")

## [次の演習へ][3]

[1]:https://docs.microsoft.com/ja-jp/sql/azure-data-studio/download-azure-data-studio?view=sql-server-ver15
[2]:https://go.microsoft.com/fwlink/?linkid=2138608
[3]:sql-try-hands-on.markdown


