# SQL にテーブルを作ろう
## SQLファイルのオープン

- ```販売管理```の```>```をクリックすると```Tables```の下に何もないことが確認できます
![DataStudio table view](images/datastudio-table-prev.png "DataStudio table view")

SQL Server(RDBMS)はテーブル構造あったの価値ですので、早速テーブルを作ってみましょう。
以下のファイルをダウンロードし、DataStudio で開きましょう
[テーブル作成 SQL][1]

- 文字化けが発生しますので、エンコーディング```Auto-Select```を選択し、```Japanese(Shift-JIS)```が選択されていることを確認
![SQLダウンロード](images/sql-download.png "SQLダウンロード")

- 拡張子を表示に変更します
![ファイル拡張子有効](images/explorer-file-extension.png "ファイル拡張子有効")

- 拡張子を表示が表示されました
![ファイル拡張子表示](images/explorer-file-extension-view.png "ファイル拡張子表示")

- 拡張子をリネームします。(```txt```⇒```sql```)
![ファイル拡張子rename](images/explorer-file-extension-rename.png "ファイル拡張子rename")

- [Yes]を選択
![ファイル拡張子yes](images/explorer-file-extension-rename-dlg.png "ファイル拡張子yes")

- ファイルがダウンロードできたら、Data Studioでファイルを開きます。Database 販売管理が選択されていることを確認して、[ファイル]をクリック
![SQLファイルオープン準備](images/datastudio-file-open-prev.png "SQLファイルオープン準備")

- [ファイルを開く]をクリック
![SQLファイルオープン](images/datastudio-file-open.png "SQLファイルオープン")

- ファイルオープンで```NorthWindJSQLDB-DDL-INSERT.sql```を開きます
![ファイルオープンダイアログ](images/datastudio-file-open-dlg.png "ファイルオープンダイアログ")

- ファイルを開くと文字化けしているので画面下部の赤枠```UTF-8```のエンコーディング指定を変更します
![エンコーディングエラー]](images/datastudio-encording-error.png "エンコーディングエラー")

- ファイルを開くと文字化けしているので画面下部の赤枠[UTF-8]をクリックし、[エンコード付きで再度ひらく]を選択
![エンコーディングreopen](images/datastudio-encording-error.png "エンコーディングreopen")


- ```japa```と入力し[Japanease(Shift JIS) コンテンツから推測]を選択する
![エンコーディング選択](images/datastudio-encording-input.png "エンコーディング選択")

- 文字化けが解消されました
![ファイル拡張子結果](images/datastudio-encording-reopne-finish.png "ファイル拡張子結果")

## オープンしたSQLファイルの実行

- オープンしたファイルを実行します。Databaseが[販売管理]と選択されていること確認し、[▷Run]を実行
![SQL実行](images/datastudio-sql-execute.png "SQL実行")

## 実行結果

- 実行中になると、[Executing Query...]と[00:00:03]の実行時間が表示される
![SQL実行中](images/datastudio-sql-execute-progress.png "SQL実行中")

- 完了すると実行中時間が止まり(今回は[00:00:07]で停止)、[Executing Query...]は表示されなくなる
![SQL完了](images/datastudio-sql-execute-complete.png "SQL完了")

## テーブルの確認

- 実行結果を確認するためにテーブルが作成されていることを確認
![Table View](images/datastudio-table-view.png "Table View")

### テーブルのデータを見てみよう
- 受注テーブルの上で右クリック⇒コンテキストメニューを表示⇒[Select Top 1000]を選択
![SELECT TOP 1000](images/datastudio-table-select-top-1000.png "SELECT TOP 1000")

- SQLが自動生成され実行される。結果が表示される。
![SELECT TOP 1000 result](images/datastudio-table-select-top-1000-result.png "SELECT TOP 1000 result")

### 他のテーブルの結果も確認してみよう

## [次の演習へ]1]
## [前の演習へ][2]

[1]:sqldatabase-create.markdown
[2]:sqlcreate-hands-on.markdown