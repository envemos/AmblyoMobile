.class Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad;
.super Landroid/os/AsyncTask;
.source "SesionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsoft/evm/amblyopiamobilegames/SesionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "iniciarActividad"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field progressDialog:Landroid/app/ProgressDialog;

.field r:Ljava/lang/Runnable;

.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/SesionActivity;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/SesionActivity;Landroid/content/Context;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad;->this$0:Lsoft/evm/amblyopiamobilegames/SesionActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 205
    new-instance p1, Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad$1;

    invoke-direct {p1, p0}, Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad$1;-><init>(Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad;)V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad;->r:Ljava/lang/Runnable;

    .line 117
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 112
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 19

    const-string v0, "registro"

    const-string v1, "marketing"

    const-string v2, "mail_list"

    const-string v3, "premium"

    const-string v4, "pais"

    const-string v5, "/"

    const-string v6, "genero"

    const-string v7, "nombre"

    const-string v8, "="

    const-string v9, "UTF-8"

    const-string v10, "correo"

    const-string v11, ""

    move-object/from16 v12, p0

    .line 123
    iget-object v13, v12, Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad;->this$0:Lsoft/evm/amblyopiamobilegames/SesionActivity;

    const-string v14, "Usuario"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    sput-object v13, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    :try_start_0
    const-string v13, "https://amblyomobile.app/data/usuarios.php"

    .line 126
    new-instance v14, Ljava/net/URL;

    invoke-direct {v14, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    check-cast v13, Ljava/net/HttpURLConnection;

    const-string v14, "POST"

    .line 128
    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v14, 0x1

    .line 129
    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 130
    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 132
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    .line 133
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v15, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    invoke-interface {v15, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "&"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v11, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v11, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 134
    new-instance v9, Ljava/io/BufferedWriter;

    new-instance v12, Ljava/io/OutputStreamWriter;

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v12, v14, v15}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v9, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 135
    invoke-virtual {v9, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->flush()V

    .line 137
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V

    .line 138
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    .line 139
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 140
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    sget-object v14, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v12, v8, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v9, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 143
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    :goto_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 145
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 148
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 149
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 150
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 151
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "[]"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 152
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "success"

    .line 153
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "2"

    .line 154
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "usuario"

    .line 155
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const/4 v9, 0x0

    .line 156
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 157
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 158
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "edad"

    .line 159
    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "-"

    .line 160
    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 162
    :try_start_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x2

    aget-object v14, v12, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v14, v12, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v5, "1/1/1900"

    .line 166
    :goto_1
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 167
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "ultima"

    .line 168
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 169
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 p1, v14

    .line 170
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v2

    .line 171
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 173
    sget-object v17, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 174
    invoke-interface {v0, v10, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 175
    invoke-interface {v0, v7, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v7, "nacimiento"

    .line 176
    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 177
    invoke-interface {v0, v6, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-interface {v0, v4, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    invoke-interface {v0, v3, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v3, v16

    .line 180
    invoke-interface {v0, v3, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ultima modificacion"

    move-object/from16 v2, p1

    .line 182
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v1, v18

    .line 183
    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 184
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 112
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 214
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 215
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad;->this$0:Lsoft/evm/amblyopiamobilegames/SesionActivity;

    new-instance v0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad;->this$0:Lsoft/evm/amblyopiamobilegames/SesionActivity;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lsoft/evm/amblyopiamobilegames/SesionActivity;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    .line 216
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad;->this$0:Lsoft/evm/amblyopiamobilegames/SesionActivity;

    const v0, 0x7f0d002d

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->setContentView(I)V

    .line 217
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad;->this$0:Lsoft/evm/amblyopiamobilegames/SesionActivity;

    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->access$000(Lsoft/evm/amblyopiamobilegames/SesionActivity;)V

    const/4 p1, 0x0

    .line 218
    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/SesionActivity;->actualizar:Z

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 195
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 196
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 197
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad;->this$0:Lsoft/evm/amblyopiamobilegames/SesionActivity;

    const v2, 0x7f110070

    invoke-virtual {v1, v2}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 199
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad;->progressDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 200
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 201
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 202
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
