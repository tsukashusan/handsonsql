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

- ファイルがダウンロードできたら、Data Studioでファイルを開きます
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



[1]:https://miscstrage.blob.core.windows.net/hands-on/sql/NorthWindJSQLDB-DDL-INSERT.sql?sv=2019-10-10&st=2020-09-15T15%3A00%3A00Z&se=2021-09-16T15%3A00%3A00Z&sr=b&sp=r&sig=nfK4lzrsscm7QuYTvPHzNbqsMl5b%2F0G57TvDWut%2FWJg%3D