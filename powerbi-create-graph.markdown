# PowerBI でグラフを作成して、PowerBI Proへ展開しましょう。

## 以下のようなグラフを作ることをゴールとします
![powerbi language"](images/powerbi-graph-create.png "powerbi language")

## まずは、**都道府県別区分別売上**を作成します。
- 棒グラフのアイコンをクリックし、[小計],[都道府県]をクリックします
!["powerbi graph view"](images/powerbi-graph-view1.png "powerbi graph view1")

- 次に、[区分名]をクリックします
!["powerbi graph view"](images/powerbi-graph-view2.png "powerbi graph view2")
これで都道府県別区分別売上グラフが完成しました。最後にグラフのタイトルを修正してみましょう。

- 次に、[書式]を選択し、[タイトル]をクリック、[タイトルテキスト]を**都道府県別区分別売上**と入力します。
!["powerbi graph view"](images/powerbi-graph-view3.png "powerbi graph view"3)
これで都道府県別区分別内訳グラフが完成しました。最後にグラフのタイトルを修正してみましょう。

## 次に、**担当営業別売上実績**の表を作成します
- まず、何もコンポーネントが配置されてない、キャンパスで一度クリックし、コンポーネントを非選択状態にします。
!["powerbi graph create1"](images/powerbi-graph-create1.png "powerbi graph create1")

- 次に[円グラフ]を選択し、[小計]、[都道府県]、[氏名]を選択します。凡例の順序も[都道府県]、[氏名]となっていることが重要です。
!["powerbi graph view4"](images/powerbi-graph-view4.png "powerbi graph view4")

## 最後にグラフのタイトルも変更しましょう。
- [書式]を選択し、[タイトル]をクリック、[タイトルテキスト]を**担当者別売上**と入力します。
!["powerbi graph view5"](images/powerbi-graph-view5.png "powerbi graph view5")


## 円グラフを表形式に変更してみましょう。
- [円グラフ]の上にマウスを移動させクリックし、選択状態にします。
!["powerbi component choice"](images/powerbi-component-choice.png "powerbi component choice")

- [円グラフ]の上にマウスを移動させクリックし、選択状態にします。
!["powerbi component change matrix"](images/powerbi-component-change-matrix.png "powerbi component change matrix")
これで担当者別の売上表に変更することができました。

## ドリルスルー演習
- [棒グラフ]上の[東京都]を選択してみましょう。
!["powerbi drill through"](images/powerbi-drill-through.png "powerbi drill through")
東京都だけの担当者が表示されていることが確認できます。

## PowerBI Pro へ発行
最後にPowerBI Pro(Web)へ発行しWebでダッシュボードとして見れるようにします。
- まずは、作成したPowerBIを保存します。
!["powerbi menu file"](images/powerbi-menu-file.png "powerbi menu file")
!["powerbi saveas"](images/powerbi-saveas.png "powerbi saveas")

- [都道府県売上分析]とし、pbixファイルを保存します。
!["powerbi save dialog"](images/powerbi-save-dialog.png "powerbi save dialog")

- [発行]をクリックします。
!["powerbi publish"](images/powerbi-publish.png "powerbi publish")

- PowerBIのアカウント情報を入力します。
!["powerbi publish input id"](images/powerbi-publish-input-id.png "powerbi publish input id")

- PowerBIの発行先をPowerBIと選択します。
!["powerbi publishi choice powerbi"](images/powerbi-publish-choice-powerbi.png "powerbi publish choice powerbi")

- PowerBIのアカウント情報でサインインします。
!["powerbi publishi signin"](images/powerbi-publish-signin.png "powerbi publish signin")

- PowerBIのワークスペースを選択します。この例では[マイワークスペース]としています。
!["powerbi publishi signin"](images/powerbi-publish-workspace-choice.png "powerbi publish signin")

- 発行中になります。
!["powerbi publishi signin"](images/powerbi-publish-progress.png "powerbi publish signin")

- 完了すると図の画面になり、Webのリンクが表示されるので、リンクをクリックします。
!["powerbi publishi signin"](images/powerbi-publish-complete.png "powerbi publish signin")


## [前の演習へ][2]
## [はじめに戻る][3]

[1]:https://powerbi.microsoft.com/ja-jp/downloads/

[2]:powerbi-create.markdown
[3]:sqlcreate-hands-on.markdown