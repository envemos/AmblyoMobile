.class Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;
.super Landroid/os/AsyncTask;
.source "TableViewRanking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 437
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 21

    move-object/from16 v1, p0

    const-string v0, "RANKING"

    const-string v2, "juego"

    const-string v3, "&"

    const-string v4, ""

    const-string v5, "="

    const-string v6, "correo"

    const-string v7, "UTF-8"

    .line 451
    sget-boolean v8, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->actividad:Z

    const-string v9, "correcto"

    if-eqz v8, :cond_0

    .line 452
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->insertarPuntuaciones()V

    .line 453
    iget-object v0, v1, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    iget-object v2, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->partidas:Lsoft/evm/amblyopiamobilegames/table/Partidas;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/table/Partidas;->getPartidasRanking()[Lsoft/evm/amblyopiamobilegames/table/PartidaData;

    move-result-object v2

    iput-object v2, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->data:[Lsoft/evm/amblyopiamobilegames/table/PartidaData;

    return-object v9

    .line 462
    :cond_0
    :try_start_0
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 463
    sget-object v10, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 464
    new-instance v11, Ljava/net/URL;

    const-string v12, "https://amblyomobile.app/data/partidas.php"

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    check-cast v11, Ljava/net/HttpURLConnection;

    const-string v12, "POST"

    .line 466
    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v12, 0x1

    .line 467
    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 468
    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 469
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    .line 470
    new-instance v14, Ljava/io/BufferedWriter;

    new-instance v15, Ljava/io/OutputStreamWriter;

    invoke-direct {v15, v13, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v14, v15}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 472
    iget-object v8, v1, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    const-string v15, "Usuario"

    const/4 v12, 0x0

    invoke-virtual {v8, v15, v12}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 473
    invoke-interface {v8, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 474
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v9

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v15, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "tipo"

    .line 476
    invoke-static {v12, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "ranking"

    invoke-static {v12, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 478
    invoke-static {v2, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juegoSQL:Ljava/lang/String;

    invoke-static {v5, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 479
    invoke-virtual {v14, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v14}, Ljava/io/BufferedWriter;->flush()V

    .line 481
    invoke-virtual {v14}, Ljava/io/BufferedWriter;->close()V

    .line 482
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 483
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 484
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v3, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 486
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 487
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 488
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 490
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 491
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 492
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 493
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 496
    sget-object v3, Lsoft/evm/amblyopiamobilegames/MainActivity;->partidasDBHelper_ranking:Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperRanking;

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperRanking;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 497
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    .line 498
    invoke-virtual {v3, v0, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 499
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "partidas"

    .line 500
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v12, 0x0

    .line 501
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v12, v7, :cond_3

    .line 502
    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 503
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "usuario"

    .line 504
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "fecha"

    .line 505
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 506
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 507
    invoke-virtual {v13, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 508
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    .line 509
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v15, "score1"

    .line 510
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    const-string v5, "score2"

    .line 511
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v17, v2

    const-string v2, "tiempo"

    .line 512
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    const-string v2, "dispositivo"

    .line 513
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 516
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v20, v4

    const-string v4, "CORREO"

    .line 518
    invoke-virtual {v7, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "USUARIO"

    .line 519
    invoke-virtual {v7, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "DIA"

    .line 520
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "JUEGO"

    .line 521
    invoke-virtual {v7, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "S1"

    .line 522
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "S2"

    .line 523
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "TIEMPO"

    .line 524
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "DISPOSITIVO"

    .line 525
    invoke-virtual {v7, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SUBIDO"

    const/4 v4, 0x1

    .line 526
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x0

    .line 528
    invoke-virtual {v3, v0, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 530
    invoke-interface {v8, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 531
    iget-object v4, v1, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->access$002(Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;Z)Z

    goto :goto_2

    :cond_2
    const/4 v5, 0x1

    :goto_2
    add-int/lit8 v12, v12, 0x1

    move-object v5, v2

    move-object/from16 v2, v17

    move-object/from16 v4, v20

    goto/16 :goto_1

    .line 536
    :cond_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v9, v16

    goto :goto_3

    :catch_0
    move-exception v0

    .line 539
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    .line 540
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "38"

    const-string v2, "Error"

    .line 541
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :goto_3
    iget-object v0, v1, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    iget-object v2, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->partidas:Lsoft/evm/amblyopiamobilegames/table/Partidas;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/table/Partidas;->getPartidasRanking()[Lsoft/evm/amblyopiamobilegames/table/PartidaData;

    move-result-object v2

    iput-object v2, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->data:[Lsoft/evm/amblyopiamobilegames/table/PartidaData;

    return-object v9
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 437
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4

    .line 549
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->access$100(Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 550
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "correcto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f110156

    const/4 v2, -0x1

    if-nez v0, :cond_1

    const-string v0, "noInternet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    iget-object v0, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 586
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    iget-object p1, p1, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->alertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask$3;

    invoke-direct {v1, p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask$3;-><init>(Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 592
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    iget-object p1, p1, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 575
    :cond_0
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    iget-object p1, p1, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->alertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    const v3, 0x7f11014d

    invoke-virtual {v0, v3}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 576
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    iget-object p1, p1, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->alertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask$2;

    invoke-direct {v1, p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask$2;-><init>(Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 582
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    iget-object p1, p1, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 553
    :cond_1
    :try_start_0
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->loadData()V

    .line 554
    sget-boolean p1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->actividad:Z

    if-nez p1, :cond_3

    .line 555
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->access$000(Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 556
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    iget-object p1, p1, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->alertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    const v3, 0x7f110178

    invoke-virtual {v0, v3}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 558
    :cond_2
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    iget-object p1, p1, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->alertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    const v3, 0x7f110177

    invoke-virtual {v0, v3}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 559
    :goto_0
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    iget-object p1, p1, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->alertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask$1;

    invoke-direct {v1, p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask$1;-><init>(Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 564
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    iget-object p1, p1, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 570
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 567
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string p1, "39"

    const-string v0, "Error"

    .line 568
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 437
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
