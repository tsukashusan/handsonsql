# SQL Database (PaaS) を作成してみよう

## SQL Database (PaaS)

### リソースの作成

- リソースの作成を選択
![SQL Database パラメータ](images/resource-create-sql.png "SQL Database リソース作成")

- **SQL Database**を選択
![SQL Database 選択](images/sqldatabase-choice.png "SQL Database 選択")

- **パラメータを入力**を選択
![SQL Database パラメータ入力](images/sqldatabase-create-sqlserver.png "SQL Database パラメータ入力")

|項目|値|
|----|----|
|サブスクリプション|サブスクリプションを選択|
|リソースグループ|作成したリソースグループ|
|データベース名|販売管理|
|サーバー|新規作成|


- **SQL Database**を作成
![SQL Database データベース作成](images/sqldatabase-create-database.png "SQL Database データベース作成")

|項目|値|
|----|----|
|サーバー名|任意(インターネットで一意)|
|サーバー管理者ログイン|(任意)ex)saadmin|
|パスワード|o9UiUlfzqRHc|
|場所|西日本|


- **【構成】** をクリック
![SQL Database パラメータ](images/sqldatabase-next-structure.png "SQL Database パラメータ")


構成を確認する。**既定**のまま
![SQL Database 構成](images/sqldatabase-structure.png "SQL Database 構成")

**【ネットワーク】** をクリック
![SQL Database next-network](images/sqldatabase-next-network.png "SQL Database next-network")

- **【ネットワーク】**

![SQL Database network](images/sqldatabase-setting-network.png "SQL Database network")

|項目|値|
|----|----|
|接続方法|パブリック エンドポイント|
|ファイアーウォール規則|↓|
|Azure サービスおよびリソースにこのサーバーへのアクセスを許可する|はい|
|現在のクライアント IP アドレスを追加する|いいえ|

**【次:追加設定>】** をクリック

- 【追加設定】
![SQL Database additional](images/sqldatabase-additional.png "SQL Database additional")

|項目|値|
|----|----|
|既存のデータを使用します|なし|
|データベース照合順序|Japanese_Bushu_Kakusu_140_CS_AS_KS_WS_UTF8|
|Azure サービスおよびリソースにこのサーバーへのアクセスを許可する|はい|
|Advanced Data Security を有効にする|無料試用版の開始|

**【次:タグ>】** をクリック

- 【タグ】
**既定**のまま進める
![SQL Database タグ](images/sqldatabase-tags.png "SQL Database タグ")
**【次:確認および作成>】** をクリック

- 【確認および作成】
![SQL Database confirm](images/sqldatabase-confirm.png "SQL Database confirm")
**【作成】** をクリック
しばらく待ちます
![SQL Database waitting](images/sqldatabase-waitting.png "SQL Database waitting")

完了しました
![SQL Database complete](images/sqldatabase-complete.png "SQL Database complete")