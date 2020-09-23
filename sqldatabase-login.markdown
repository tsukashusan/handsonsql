# SQL Database への接続設定(ファイアウォール)

## Data Studioで SQL Database (販売管理)へログインする
- SQL Database (販売管理) へアクセスするためのFQDNをクリップボードへコピーする
![SQL Database clip board](images/sqldatabase-login-clip-board.png "SQL Database clip board")

- SQL Database(販売管理) へログイン
![SQL Database clip board](images/datastudio-login.png "SQL Database clip board")

- SQL Database(販売管理) へログイン
以下のようにログインできていることを確認
![SQL Database clip board](images/datastudio-login-result.png "SQL Database clip board")

## 演習 1
1. SQL on IaaS と同様に販売管理データを投入してみましょう。
1. SQL Database のファイアーウォール設定<p/>
Azure サービスおよびリソースにこのサーバーへのアクセスを許可する->**【いいえ】**　と設定し、改めて接続可能か確認する
![SQL Database firewall](images/sqldatabase-firewall-azureservice.png "SQL Database firewall")

## 仮想ネットワーク サービスエンドポイント設定
- 仮想ネットワークの選択
![virtual network resource group](images/virtual-network-setting.png "virtual network resource group")

- 仮想ネットワークの選択
![virtual network resource group](images/virtual-network-service-endpoint-from-iaas.png "virtual network resource group")

- 仮想ネットワークのサービスエンドポイントを設定する
![virtual network service endpoint](images/virtual-network-service-endpoint.png "virtual network service endpoint")
サブネットのdefaul(≠AzureBastionSubnet)を設定し、**【追加】** をクリック
![virtual network service endpoint subnet](images/virtual-network-service-endpoint-subnet.png "virtual network service endpoint subnet")
サービスエンドポイントが追加されたことを確認
![virtual network service endpoint complete](images/virtual-network-service-endpoint-result.png "virtual network service endpoint complete")


## SQL Database Firewallの設定
- SQL Database の選択
![virtual network resource group](images/virtual-network-setting.png "virtual network resource group")
【販売管理】のデータベースを選択
![販売管理データベース](images/sqldatabase-choice-hanbaikanri.png "販売管理データベース")

サーバー ファイアーウォールの設定
![firewall setting](images/sqldatabase-firewall-setting.png "firewall setting")
DataStudio がインストールされている仮想ネットワークのサブネットを選択し、**【OK】** をクリック
![firewall setting](images/sqldatabase-firewall-setting-conf.png "firewall setting")
**【OK】** が非活性になり、実行中となる
![firewall progress](images/sqldatabase-firewall-setting-progress.png "firewall progress")
DataStudio がインストールされている仮想ネットワークのサブネットが含まれることを確認する
![firewall progress](images/sqldatabase-firewall-setting-result.png "firewall progress")

## 演習 2
1. DataStudio でログインする
![SQL Database firewall](images/sqldatabase-firewall-azureservice.png "SQL Database firewall")

DataStudio でログインできたことをが確認できる
![DataStudio Confirm Login](images/datastudio-connection-reconnect-hanbaikanri.png "DataStudio Confirm Login")

ログイン結果
![DataStudio Complete Login](images/datastudio-connection-reconnect-hanbaikanri-result.png "DataStudio Complete Login")

## [前の演習へ][1]]
## [最初に戻る][2]

[1]:sqldatabase-create.markdown
[2]:sqlcreate-hands-on.markdown