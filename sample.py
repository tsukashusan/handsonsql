# Databricks notebook source
# MAGIC %md
# MAGIC # サンプルファイル

# COMMAND ----------

spark.conf.set(
  "fs.azure.account.key.<storage account name>.dfs.core.windows.net",
  dbutils.secrets.get(scope="scopesample",key="keyvaultsecret"))

# COMMAND ----------

dbutils.fs.ls("abfss://storage@<storage account name>.dfs.core.windows.net/sample")

# COMMAND ----------

shiresaki = spark.read.format("csv").option("header", "false").option("mode", "DROPMALFORMED").load("abfss://storage@<storage account name>.dfs.core.windows.net/sample/仕入先/")
zyuchu = spark.read.format("csv").option("header", "false").option("mode", "DROPMALFORMED").load("abfss://storage@<storage account name>.dfs.core.windows.net/sample/受注/")
zyuchumeisai = spark.read.format("csv").option("header", "false").option("mode", "DROPMALFORMED").load("abfss://storage@<storage account name>.dfs.core.windows.net/sample/受注明細/")
shohin = spark.read.format("csv").option("header", "false").option("mode", "DROPMALFORMED").load("abfss://storage@<storage account name>.dfs.core.windows.net/sample/商品/")
shohinkubun = spark.read.format("csv").option("header", "false").option("mode", "DROPMALFORMED").load("abfss://storage@<storage account name>.dfs.core.windows.net/sample/商品区分/")
tokuisaki = spark.read.format("csv").option("header", "false").option("mode", "DROPMALFORMED").load("abfss://storage@<storage account name>.dfs.core.windows.net/sample/得意先/")
shain = spark.read.format("csv").option("header", "false").option("mode", "DROPMALFORMED").load("abfss://storage@<storage account name>.dfs.core.windows.net/sample/社員/")
unso = spark.read.format("csv").option("header", "false").option("mode", "DROPMALFORMED").load("abfss://storage@<storage account name>.dfs.core.windows.net/sample/運送会社/")
todofuken = spark.read.format("csv").option("header", "false").option("mode", "DROPMALFORMED").load("abfss://storage@<storage account name>.dfs.core.windows.net/sample/都道府県/")

# COMMAND ----------

shiresaki = shiresaki.withColumnRenamed("_c0", "仕入先コード") \
                     .withColumnRenamed("_c1", "フリガナ") \
                     .withColumnRenamed("_c2", "仕入先名") \
                     .withColumnRenamed("_c3", "担当者名") \
                     .withColumnRenamed("_c4", "部署") \
                     .withColumnRenamed("_c5", "郵便番号") \
                     .withColumnRenamed("_c6", "トドウフケン") \
                     .withColumnRenamed("_c7", "住所1") \
                     .withColumnRenamed("_c8", "住所2") \
                     .withColumnRenamed("_c9", "電話番号") \
                     .withColumnRenamed("_c10", "ファクシミリ") \
                     .withColumnRenamed("_c11", "ホームページ")

# COMMAND ----------

zyuchu = zyuchu.withColumnRenamed("_c0", "受注コード") \
               .withColumnRenamed("_c1", "得意先コード") \
               .withColumnRenamed("_c2", "社員コード") \
               .withColumnRenamed("_c3", "出荷先名") \
               .withColumnRenamed("_c4", "出荷先郵便番号") \
               .withColumnRenamed("_c5", "出荷先都道府県") \
               .withColumnRenamed("_c6", "出荷先住所1") \
               .withColumnRenamed("_c7", "出荷先住所2") \
               .withColumnRenamed("_c8", "運送区分") \
               .withColumnRenamed("_c9", "受注日") \
               .withColumnRenamed("_c10", "締切日") \
               .withColumnRenamed("_c11", "出荷日") \
               .withColumnRenamed("_c12", "運送料")

# COMMAND ----------

zyuchumeisai = zyuchumeisai.withColumnRenamed("_c0", "受注コード") \
                           .withColumnRenamed("_c1", "商品コード") \
                           .withColumnRenamed("_c2", "単価") \
                           .withColumnRenamed("_c3", "数量") \
                           .withColumnRenamed("_c4", "割引")

# COMMAND ----------

shohin = shohin.withColumnRenamed("_c0", "商品コード") \
               .withColumnRenamed("_c1", "フリガナ") \
               .withColumnRenamed("_c2", "商品名") \
               .withColumnRenamed("_c3", "仕入先コード") \
               .withColumnRenamed("_c4", "区分コード") \
               .withColumnRenamed("_c5", "梱包単位") \
               .withColumnRenamed("_c6", "単価") \
               .withColumnRenamed("_c7", "在庫") \
               .withColumnRenamed("_c8", "発注済") \
               .withColumnRenamed("_c9", "発注点") \
               .withColumnRenamed("_c10", "生産中止")

# COMMAND ----------

shohinkubun = shohinkubun.withColumnRenamed("_c0", "区分コード") \
                         .withColumnRenamed("_c1", "区分名") \
                         .withColumnRenamed("_c2", "商品名") \
                         .withColumnRenamed("_c3", "説明") \
                         .withColumnRenamed("_c4", "図")

# COMMAND ----------

tokuisaki = tokuisaki.withColumnRenamed("_c0", "得意先コード") \
               .withColumnRenamed("_c1", "フリガナ") \
               .withColumnRenamed("_c2", "得意先名") \
               .withColumnRenamed("_c3", "担当者名") \
               .withColumnRenamed("_c4", "部署") \
               .withColumnRenamed("_c5", "郵便番号") \
               .withColumnRenamed("_c6", "トドウフケン") \
               .withColumnRenamed("_c7", "都道府県") \
               .withColumnRenamed("_c8", "住所1") \
               .withColumnRenamed("_c9", "住所2") \
               .withColumnRenamed("_c10", "電話番号") \
               .withColumnRenamed("_c11", "ファクシミリ")

# COMMAND ----------

shain = shain.withColumnRenamed("_c0", "社員コード") \
             .withColumnRenamed("_c1", "フリガナ") \
             .withColumnRenamed("_c2", "氏名") \
             .withColumnRenamed("_c3", "在籍支社") \
             .withColumnRenamed("_c4", "部署名") \
             .withColumnRenamed("_c5", "誕生日") \
             .withColumnRenamed("_c6", "入社日") \
             .withColumnRenamed("_c7", "自宅郵便番号") \
             .withColumnRenamed("_c8", "自宅都道府県") \
             .withColumnRenamed("_c9", "自宅住所1") \
             .withColumnRenamed("_c10", "自宅住所2") \
             .withColumnRenamed("_c11", "自宅電話番号") \
             .withColumnRenamed("_c11", "内線") \
             .withColumnRenamed("_c11", "写真") \
             .withColumnRenamed("_c12", "プロフィール1") \
             .withColumnRenamed("_c13", "プロフィール2") \
             .withColumnRenamed("_c14", "プロフィール3")

# COMMAND ----------

unso = unso.withColumnRenamed("_c0", "運送コード") \
           .withColumnRenamed("_c1", "運送会社") \
           .withColumnRenamed("_c2", "電話番号")

# COMMAND ----------

todofuken = todofuken.withColumnRenamed("_c0", "トドウフケン") \
           .withColumnRenamed("_c1", "都道府県") \
           .withColumnRenamed("_c2", "ローマ字") \
           .withColumnRenamed("_c3", "地域名ローマ字") \
           .withColumnRenamed("_c4", "地域")

# COMMAND ----------

display(todofuken)

# COMMAND ----------

#shiresaki.write.mode('overwrite').orc("abfss://synapse@<storage account name>.dfs.core.windows.net/shiiresaki/")
#zyuchu.write.mode('overwrite').orc("abfss://synapse@<storage account name>.dfs.core.windows.net/zyuchu/")
#zyuchumeisai.write.mode('overwrite').orc("abfss://synapse@<storage account name>.dfs.core.windows.net/zyuchumeisai/")
#shohin.write.mode('overwrite').orc("abfss://synapse@<storage account name>.dfs.core.windows.net/shohin/")
#shohinkubun.write.mode('overwrite').orc("abfss://synapse@<storage account name>.dfs.core.windows.net/shohinkubun/")
#tokuisaki.write.mode('overwrite').orc("abfss://synapse@<storage account name>.dfs.core.windows.net/tokuisaki/")
#shain.write.mode('overwrite').orc("abfss://synapse@<storage account name>.dfs.core.windows.net/shain/")
#unso.write.mode('overwrite').orc("abfss://synapse@<storage account name>.dfs.core.windows.net/unso/")
#todofuken.write.mode('overwrite').orc("abfss://synapse@<storage account name>.dfs.core.windows.net/todofuken/")
