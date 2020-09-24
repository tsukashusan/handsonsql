# PowerBI を活用してみよう

## PowerBI Desktop のダウンロード
- [こちらをクリック][1]
![powerbi download](images/powerbi-download-page.png "powerbi donwload")

- Japaneseを選択
![powerbi language"](images/powerbi-download-page-choice-language.png "powerbi language")

- 【ダウンロード】をクリック
!["powerbi submit download"](images/powerbi-download-submit.png "powerbi submit download")


- 【x64】を選択して【次へ】をクリック
!["powerbi choice arch"](images/powerbi-download-choice-arch.png "powerbi choice arch")

- 【一度だけ許可】をクリック
!["powerbi accept"](images/powerbi-download-accept.png "powerbi accept")


- 【保存】をクリック
!["powerbi save"](images/powerbi-download-save.png "powerbi save")


- 【実行】を選択して【次へ】クリック
!["powerbi execute"](images/powerbi-download-execute.png "powerbi execute")

## PowerBI Desktop のインストール
- PowerBi インストール
![powerbi install start](images/powerbi-install-start.png "powerbi install start")

- PowerBi 【次へ】
![powerbi install outin](images/powerbi-install-outin.png "powerbi install stoutin")

- PowerBi 【次へ】
![powerbi install accept](images/powerbi-install-accept.png "powerbi install accept")

- PowerBi 【次へ】
![powerbi install accept](images/powerbi-install-accept.png "powerbi install accept")

- PowerBi 【次へ】
![powerbi place](images/powerbi-install-place.png "powerbi place")

- PowerBi 【次へ】
![powerbi install](images/powerbi-install-do.png "powerbi install")

- 少し待ちます
![powerbi progress](images/powerbi-install-progress.png "powerbi progress")

- インストール完了
![powerbi progress](images/powerbi-install-complete.png "powerbi progress")

### PowerBI をさわってみよう
- データソースからデータを取得
![powerbi detasource detail](images/powerbi-datasource-detail.png "powerbi detasource detail")

- 【Azure】⇒【SQL Database】⇒【接続】
![powerbi detasource detail](images/powerbi-datasource-az-sqldb.png "powerbi detasource detail")

- 【Azure】⇒【SQL Database】⇒【接続】
![powerbi detasource connecting string](images/powerbi-datasource-connecting-string.png "powerbi detasource connecting string")
設定し【OK】を押下

|項目|値|
|----|----|
|サーバー|<作成したSQL DatabaeseのURL>|
|データベース|販売管理|
|データ接続モード|インポート|

- 認証情報を入力
![powerbi detasource credential](images/powerbi-datasource-credential.png "powerbi detasource credential")

- 対象データの選択
![powerbi detasource transform](images/powerbi-datasource-transform.png "powerbi detasource transform")


- 型の変換
![powerbi detasource convert type](images/powerbi-datasource-convert-type.png "powerbi detasource convert type")

- カスタム列(小計列)の追加
![powerbi detasource custom columun](images/powerbi-datasource-custom-col.png "powerbi detasource custom columun")
![powerbi detasource custom columun add](images/powerbi-datasource-custom-col-add.png "powerbi detasource custom columun add")
以下項目を入力し【OK】をクリック

|項目|値|
|----|----|
|新しい列名|小計|
|カスタム列の式|```=[単価]*[数量]-[割引]```|



- 小計列完成
![powerbi detasource custom result](images/powerbi-datasource-custom-col-result.png "powerbi detasource custom columun result")

- 小計列の型を通貨型(固定小数点)にします
![powerbi detasource custom type shokei](images/powerbi-datasource-convert-type-shokei.png "powerbi detasource custom type shokei")

- 適用します
![powerbi detasource apply](images/powerbi-datasource-apply.png "powerbi detasource custom apply")


[1]:https://powerbi.microsoft.com/ja-jp/downloads/