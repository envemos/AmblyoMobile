.class public Lsoft/evm/amblyopiamobilegames/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsoft/evm/amblyopiamobilegames/MainActivity$UpdatesBBDD;,
        Lsoft/evm/amblyopiamobilegames/MainActivity$PartidasNoSubidas;,
        Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;
    }
.end annotation


# static fields
.field public static final ACTUALIZAR:Ljava/lang/String; = "actualizar"

.field public static final BREAKER:Ljava/lang/String; = "Breaker"

.field public static final CORREO:Ljava/lang/String; = "correo"

.field public static final FLAPPY:Ljava/lang/String; = "Flappy"

.field public static final GENERO:Ljava/lang/String; = "genero"

.field public static final MAIN:Ljava/lang/String; = "main"

.field public static final NACIMIENTO:Ljava/lang/String; = "nacimiento"

.field public static final NOMBRE:Ljava/lang/String; = "nombre"

.field public static final PACMAN:Ljava/lang/String; = "PacMan"

.field public static final PAIS:Ljava/lang/String; = "pais"

.field public static final PINBALL:Ljava/lang/String; = "Pinball"

.field public static final PONG:Ljava/lang/String; = "Pong"

.field public static final REQUEST_CODE_EMAIL:I = 0x1

.field public static final REQUEST_CODE_GAMEACTIVITY:I = 0x3

.field public static final REQUEST_CODE_SESION:I = 0x2

.field public static final SESION:Ljava/lang/String; = "sesion"

.field public static final SNAKE:Ljava/lang/String; = "Snake"

.field public static final SPACE_INVADERS:Ljava/lang/String; = "Space Invaders"

.field public static final TETRIS:Ljava/lang/String; = "Tetris"

.field public static final USUARIO:Ljava/lang/String; = "Usuario"

.field public static accountPicker:Z = false

.field private static activity:Landroid/app/Activity; = null

.field static buttonActividad:Landroid/widget/ImageView; = null

.field static buttonSesion:Landroid/widget/ImageView; = null

.field public static isRate:Z = false

.field public static juego:Ljava/lang/String; = ""

.field public static mensaje:I = 0x0

.field public static final n_params_sesion:I = 0x3

.field public static final no:Ljava/lang/String; = "NO"

.field public static final no_registrado:Ljava/lang/String; = ""

.field public static partidasDBHelper_historial:Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperHistorial; = null

.field public static partidasDBHelper_ranking:Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperRanking; = null

.field static progressDialog:Landroid/app/ProgressDialog; = null

.field static sesionCargando:Lsoft/evm/amblyopiamobilegames/utils/GifImageView; = null

.field public static final si:Ljava/lang/String; = "SI"

.field public static final updateURLPartidas:Ljava/lang/String; = "https://amblyomobile.app/data/partidas.php"

.field public static final updateURLUsuarios:Ljava/lang/String; = "https://amblyomobile.app/data/usuarios.php"

.field public static final updateURLUsuariosActualizar:Ljava/lang/String; = "https://amblyomobile.app/data/usuarios_actualizar.php"

.field public static user:Landroid/content/SharedPreferences;

.field public static veces:I


# instance fields
.field IVsesion:Landroid/widget/ImageView;

.field actividadCargando:Lsoft/evm/amblyopiamobilegames/utils/GifImageView;

.field aviso:Landroid/content/SharedPreferences;

.field buttonBreake:Landroid/widget/Button;

.field buttonFlappy:Landroid/widget/Button;

.field buttonPacMan:Landroid/widget/Button;

.field buttonPinball:Landroid/widget/Button;

.field buttonPong:Landroid/widget/Button;

.field buttonSnake:Landroid/widget/Button;

.field buttonSpace:Landroid/widget/Button;

.field buttonTetris:Landroid/widget/Button;

.field editor:Landroid/content/SharedPreferences$Editor;

.field element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

.field prefs:Landroid/content/SharedPreferences;

.field title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static abrirSesion(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2

    const-string v0, "sesion"

    .line 268
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 269
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/MainActivity;->finishLoadBar()V

    .line 270
    :cond_0
    new-instance p0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lsoft/evm/amblyopiamobilegames/SesionActivity;

    invoke-direct {p0, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x2

    .line 271
    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$000(Lsoft/evm/amblyopiamobilegames/MainActivity;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->sesion()V

    return-void
.end method

.method static synthetic access$100(Lsoft/evm/amblyopiamobilegames/MainActivity;)Z
    .locals 0

    .line 84
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->haySesion()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lsoft/evm/amblyopiamobilegames/MainActivity;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->selectAccount()V

    return-void
.end method

.method static synthetic access$300(Lsoft/evm/amblyopiamobilegames/MainActivity;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->updateUsuario()V

    return-void
.end method

.method static synthetic access$400(Lsoft/evm/amblyopiamobilegames/MainActivity;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->noSubidas()V

    return-void
.end method

.method static synthetic access$500()V
    .locals 0

    .line 84
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/MainActivity;->updateMysql()V

    return-void
.end method

.method static synthetic access$600()Landroid/app/Activity;
    .locals 1

    .line 84
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 84
    invoke-static {p0, p1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->abrirSesion(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$800()V
    .locals 0

    .line 84
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/MainActivity;->deshabilitar_botones()V

    return-void
.end method

.method static synthetic access$900()V
    .locals 0

    .line 84
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/MainActivity;->habilitar_botones()V

    return-void
.end method

.method private actualizarSesion()V
    .locals 1

    .line 507
    new-instance v0, Lsoft/evm/amblyopiamobilegames/MainActivity$4;

    invoke-direct {v0, p0}, Lsoft/evm/amblyopiamobilegames/MainActivity$4;-><init>(Lsoft/evm/amblyopiamobilegames/MainActivity;)V

    .line 511
    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/MainActivity$4;->start()V

    .line 512
    new-instance v0, Lsoft/evm/amblyopiamobilegames/MainActivity$5;

    invoke-direct {v0, p0}, Lsoft/evm/amblyopiamobilegames/MainActivity$5;-><init>(Lsoft/evm/amblyopiamobilegames/MainActivity;)V

    .line 516
    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/MainActivity$5;->start()V

    return-void
.end method

.method private caragarBotonesSesion()V
    .locals 2

    const v0, 0x7f0a0093

    .line 294
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->actividadCargando:Lsoft/evm/amblyopiamobilegames/utils/GifImageView;

    const v1, 0x7f0e001e

    .line 295
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->setGifImageResource(I)V

    const v0, 0x7f0a0094

    .line 296
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;

    sput-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->sesionCargando:Lsoft/evm/amblyopiamobilegames/utils/GifImageView;

    .line 297
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->setGifImageResource(I)V

    return-void
.end method

.method public static cargarPartidas(Landroid/content/SharedPreferences;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1144
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1145
    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 1146
    new-instance v3, Ljava/net/URL;

    const-string v4, "https://amblyomobile.app/data/partidas.php"

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    const-string v4, "POST"

    .line 1148
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 1149
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1150
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1151
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 1152
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v5, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const-string v1, "correo"

    const-string v7, ""

    .line 1154
    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ultimo_id"

    const-wide/16 v10, 0x0

    .line 1155
    invoke-interface {v0, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 1156
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UTF-8"

    invoke-static {v1, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v8, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "&"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, "tipo"

    .line 1158
    invoke-static {v15, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, "historial"

    invoke-static {v15, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "id"

    .line 1160
    invoke-static {v12, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1161
    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1162
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    .line 1163
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V

    .line 1164
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 1165
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 1166
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1170
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1171
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1173
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1174
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 1175
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 1176
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1179
    sget-object v3, Lsoft/evm/amblyopiamobilegames/MainActivity;->partidasDBHelper_historial:Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperHistorial;

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperHistorial;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1180
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1181
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "partidas"

    .line 1182
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v6, 0x0

    .line 1183
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 1184
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 1185
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v13, "usuario"

    .line 1186
    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "fecha"

    .line 1187
    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1188
    new-instance v15, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v15, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1189
    invoke-virtual {v15, v14}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 1190
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-string v14, "juego"

    .line 1191
    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "score1"

    .line 1192
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    const-string v0, "score2"

    .line 1193
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v16, v1

    const-string v1, "tiempo"

    .line 1194
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v17

    const-string v1, "dispositivo"

    .line 1195
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1197
    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v19

    cmp-long v19, v10, v19

    if-gez v19, :cond_1

    .line 1198
    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1201
    :cond_1
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v19, v2

    const-string v2, "CORREO"

    .line 1203
    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "USUARIO"

    .line 1204
    invoke-virtual {v7, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v13, "DIA"

    invoke-virtual {v7, v13, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "JUEGO"

    .line 1206
    invoke-virtual {v7, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v13, "S1"

    invoke-virtual {v7, v13, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1208
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "S2"

    invoke-virtual {v7, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1209
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "TIEMPO"

    invoke-virtual {v7, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "DISPOSITIVO"

    .line 1210
    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1211
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v13, "SUBIDO"

    invoke-virtual {v7, v13, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v8, v2, v13

    aput-object v14, v2, v0

    const/4 v8, 0x2

    .line 1214
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    const/4 v4, 0x3

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x4

    aput-object v1, v2, v4

    const-string v1, "SELECT * FROM HISTORIAL WHERE CORREO=? AND JUEGO=? AND DIA=? AND TIEMPO=? AND DISPOSITIVO=?"

    invoke-virtual {v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1215
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    const-string v4, "HISTORIAL"

    .line 1216
    invoke-virtual {v3, v4, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1217
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    add-int/lit8 v6, v6, 0x1

    move v4, v0

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    move-object/from16 v0, p0

    goto/16 :goto_1

    .line 1221
    :cond_3
    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1222
    invoke-interface {v0, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1223
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1227
    :cond_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method private static deshabilitar_botones()V
    .locals 3

    .line 1232
    :try_start_0
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->buttonSesion:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1233
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->buttonSesion:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1234
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->buttonActividad:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1235
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->buttonActividad:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1236
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->sesionCargando:Lsoft/evm/amblyopiamobilegames/utils/GifImageView;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1238
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static finishLoadBar()V
    .locals 1

    .line 1033
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    return-void
.end method

.method public static formatearMilis(J)Ljava/lang/String;
    .locals 7

    .line 1273
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v0

    .line 1274
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v3, 0x36ee80

    rem-long v3, p0, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v2

    .line 1275
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v5, 0xea60

    rem-long/2addr p0, v5

    invoke-virtual {v4, p0, p1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p0

    .line 1276
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v5, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v5, v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v5, p1

    const-string p0, "%02d:%02d:%02d"

    invoke-static {v4, p0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static habilitar_botones()V
    .locals 3

    .line 1244
    :try_start_0
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->buttonActividad:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1245
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->buttonActividad:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1246
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->buttonSesion:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1247
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->buttonSesion:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1248
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->sesionCargando:Lsoft/evm/amblyopiamobilegames/utils/GifImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->setVisibility(I)V

    .line 1249
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v1, "genero"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    .line 1250
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1251
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->buttonSesion:Landroid/widget/ImageView;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/MainActivity;->activity:Landroid/app/Activity;

    const v2, 0x7f0e0008

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1253
    :cond_0
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->buttonSesion:Landroid/widget/ImageView;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/MainActivity;->activity:Landroid/app/Activity;

    const v2, 0x7f0e0021

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1255
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private haySesion()Z
    .locals 3

    .line 275
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v1, "correo"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private hilo()V
    .locals 0

    .line 224
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->tareasEnHiloPrincipal()V

    .line 227
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->tareasEnSegundoPlano()V

    .line 230
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->mostrarEstadisticas()V

    return-void
.end method

.method private hiloSesion()V
    .locals 1

    .line 279
    new-instance v0, Lsoft/evm/amblyopiamobilegames/MainActivity$1;

    invoke-direct {v0, p0}, Lsoft/evm/amblyopiamobilegames/MainActivity$1;-><init>(Lsoft/evm/amblyopiamobilegames/MainActivity;)V

    .line 283
    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/MainActivity$1;->start()V

    return-void
.end method

.method private iniAlarma()V
    .locals 4

    .line 301
    new-instance v0, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;

    invoke-direct {v0, p0}, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;-><init>(Landroid/content/Context;)V

    .line 302
    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->getReminderStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lsoft/evm/amblyopiamobilegames/remindMe/AlarmReceiver;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->get_hour()I

    move-result v3

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->get_min()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lsoft/evm/amblyopiamobilegames/remindMe/NotificationScheduler;->setReminder(Landroid/content/Context;Ljava/lang/Class;II)V

    goto :goto_0

    .line 305
    :cond_0
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lsoft/evm/amblyopiamobilegames/remindMe/AlarmReceiver;

    invoke-static {v0, v1}, Lsoft/evm/amblyopiamobilegames/remindMe/NotificationScheduler;->cancelReminder(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method private inicializarSQLite()V
    .locals 1

    .line 320
    new-instance v0, Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperHistorial;

    invoke-direct {v0, p0}, Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperHistorial;-><init>(Landroid/content/Context;)V

    sput-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->partidasDBHelper_historial:Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperHistorial;

    .line 321
    new-instance v0, Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperRanking;

    invoke-direct {v0, p0}, Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperRanking;-><init>(Landroid/content/Context;)V

    sput-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->partidasDBHelper_ranking:Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperRanking;

    .line 322
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->initDB()V

    return-void
.end method

.method private inicializarSharedPreferences()V
    .locals 2

    const-string v0, "MisPreferencias"

    const/4 v1, 0x0

    .line 311
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "Usuario"

    .line 312
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v0, "Aviso"

    .line 313
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->aviso:Landroid/content/SharedPreferences;

    .line 314
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->inicializarSharedPreferencesPrefs()V

    .line 315
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->inicializarSharedPreferencesUsuario()V

    .line 316
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->iniciarSharedPreferencesAviso()V

    return-void
.end method

.method private inicializarSharedPreferencesPrefs()V
    .locals 4

    .line 327
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "ojo_izquierdo"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 328
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "ojo_derecho"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 329
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "ojo_vago"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 330
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "fondo"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    return-void
.end method

.method private inicializarSharedPreferencesUsuario()V
    .locals 3

    .line 335
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v1, "correo"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 336
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v1, "nombre"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 337
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v1, "nacimiento"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v1, "pais"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v1, "genero"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 341
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v1, "ultima modificacion"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v1, "registro"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v1, "premium"

    const-string v2, "NO"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 344
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v1, "mail_list"

    const-string v2, "SI"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 345
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v1, "marketing"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private iniciarBotonesSesion()V
    .locals 1

    const v0, 0x7f0a007f

    .line 287
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->buttonSesion:Landroid/widget/ImageView;

    const v0, 0x7f0a0084

    .line 288
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->buttonActividad:Landroid/widget/ImageView;

    .line 289
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->haySesion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->caragarBotonesSesion()V

    :cond_0
    return-void
.end method

.method private iniciarSharedPreferencesAviso()V
    .locals 3

    .line 359
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->aviso:Landroid/content/SharedPreferences;

    const-string v1, "estrabismo"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-direct {p0, v1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->mostrarAlertDialog(Ljava/lang/String;)V

    .line 361
    :cond_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->aviso:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x0

    .line 362
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 363
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private mostrarAlertDialog(Ljava/lang/String;)V
    .locals 6

    .line 367
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 368
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0038

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a025b

    .line 369
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a009d

    .line 370
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 374
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "informacion"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_1
    const-string v4, "configuracion"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_2
    const-string v4, "estrabismo"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_3
    const-string v4, "actividad"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_4
    const-string v4, "aviso"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_5
    const-string v4, "sesion"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_6
    const-string v4, "alarma"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_7
    const-string v4, "recordatorio"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    const/4 v5, 0x0

    :goto_0
    const-string v4, ""

    packed-switch v5, :pswitch_data_0

    move-object v5, v4

    goto/16 :goto_1

    :pswitch_0
    const v4, 0x7f1101a4

    .line 388
    invoke-virtual {p0, v4}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f11004c

    .line 389
    invoke-virtual {p0, v5}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :pswitch_1
    const v4, 0x7f1101a2

    .line 392
    invoke-virtual {p0, v4}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f11004a

    .line 393
    invoke-virtual {p0, v5}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :pswitch_2
    const v4, 0x7f1101a3

    .line 380
    invoke-virtual {p0, v4}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f11004b

    .line 381
    invoke-virtual {p0, v5}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :pswitch_3
    const v4, 0x7f1101a0

    .line 396
    invoke-virtual {p0, v4}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f110048

    .line 397
    invoke-virtual {p0, v5}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :pswitch_4
    const v4, 0x7f110047

    .line 376
    invoke-virtual {p0, v4}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f11017a

    .line 377
    invoke-virtual {p0, v5}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :pswitch_5
    const v4, 0x7f1101a6

    .line 384
    invoke-virtual {p0, v4}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f11004e

    .line 385
    invoke-virtual {p0, v5}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :pswitch_6
    const v4, 0x7f1101a1

    .line 400
    invoke-virtual {p0, v4}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f110049

    .line 401
    invoke-virtual {p0, v5}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :pswitch_7
    const v4, 0x7f1101a5

    .line 404
    invoke-virtual {p0, v4}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f11004d

    .line 405
    invoke-virtual {p0, v5}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 409
    :goto_1
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 410
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f110156

    .line 413
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lsoft/evm/amblyopiamobilegames/MainActivity$2;

    invoke-direct {v2, p0, p1}, Lsoft/evm/amblyopiamobilegames/MainActivity$2;-><init>(Lsoft/evm/amblyopiamobilegames/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 454
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 456
    new-instance v1, Lsoft/evm/amblyopiamobilegames/MainActivity$3;

    invoke-direct {v1, p0, p1}, Lsoft/evm/amblyopiamobilegames/MainActivity$3;-><init>(Lsoft/evm/amblyopiamobilegames/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 465
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a44eb73 -> :sswitch_7
        -0x545a2fd0 -> :sswitch_6
        -0x35fd8bf9 -> :sswitch_5
        0x58e2430 -> :sswitch_4
        0xc32303d -> :sswitch_3
        0x4762c299 -> :sswitch_2
        0x732bbaa7 -> :sswitch_1
        0x754ebadd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private mostrarEstadisticas()V
    .locals 2

    .line 260
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->iniciarDias()V

    .line 261
    sget v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->dias:I

    if-lez v0, :cond_0

    .line 262
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private noSubidas()V
    .locals 7

    .line 573
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->partidasDBHelper_historial:Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperHistorial;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperHistorial;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    const-string v1, "SELECT * FROM HISTORIAL WHERE SUBIDO = 0"

    const/4 v2, 0x0

    .line 577
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :cond_0
    const-string v3, "{"

    .line 587
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"CORREO\":\""

    .line 589
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    .line 590
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\","

    .line 591
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"USUARIO\":\""

    .line 592
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    .line 593
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "yyyy:MM:dd hh:mm:ss"

    invoke-direct {v4, v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v5, 0x3

    .line 596
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\"DIA\":\""

    .line 597
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"JUEGO\":\""

    .line 600
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    .line 601
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"S1\":\""

    .line 603
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    .line 604
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"S2\":\""

    .line 606
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    .line 607
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"TIEMPO\":\""

    .line 609
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x7

    .line 610
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"DISPOSITIVO\":\""

    .line 612
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x8

    .line 613
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    .line 614
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "},"

    .line 616
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ","

    .line 618
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    .line 619
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 621
    new-instance v3, Lsoft/evm/amblyopiamobilegames/MainActivity$PartidasNoSubidas;

    invoke-direct {v3, v2}, Lsoft/evm/amblyopiamobilegames/MainActivity$PartidasNoSubidas;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/MainActivity$PartidasNoSubidas;->start()V

    .line 623
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 624
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void

    :catch_0
    const-string v0, "39"

    const-string v1, "Error"

    .line 580
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private pintarBotones()V
    .locals 2

    const-string v0, "MisPreferencias"

    const/4 v1, 0x0

    .line 479
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->prefs:Landroid/content/SharedPreferences;

    .line 480
    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->ajustarColores(Landroid/content/SharedPreferences;)V

    .line 481
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->titulo()V

    .line 482
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->pintarSesionGenero()V

    .line 483
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->pintarBotonesJuego()V

    return-void
.end method

.method private pintarBotonesJuego()V
    .locals 3

    .line 713
    new-instance v0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    const v0, 0x7f0a0008

    .line 714
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->buttonSnake:Landroid/widget/Button;

    .line 715
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setButtonGameMenu(Landroid/widget/Button;I)V

    const v0, 0x7f0a000a

    .line 716
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->buttonTetris:Landroid/widget/Button;

    .line 717
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_vago()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setButtonGameMenu(Landroid/widget/Button;I)V

    const v0, 0x7f0a0004

    .line 718
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->buttonFlappy:Landroid/widget/Button;

    .line 719
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_vago()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setButtonGameMenu(Landroid/widget/Button;I)V

    const v0, 0x7f0a0003

    .line 720
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->buttonBreake:Landroid/widget/Button;

    .line 721
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setButtonGameMenu(Landroid/widget/Button;I)V

    const v0, 0x7f0a0009

    .line 722
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->buttonSpace:Landroid/widget/Button;

    .line 723
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setButtonGameMenu(Landroid/widget/Button;I)V

    const v0, 0x7f0a0007

    .line 724
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->buttonPong:Landroid/widget/Button;

    .line 725
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_vago()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setButtonGameMenu(Landroid/widget/Button;I)V

    const v0, 0x7f0a0005

    .line 726
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->buttonPacMan:Landroid/widget/Button;

    .line 727
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_vago()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setButtonGameMenu(Landroid/widget/Button;I)V

    const v0, 0x7f0a0006

    .line 728
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->buttonPinball:Landroid/widget/Button;

    .line 729
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setButtonGameMenu(Landroid/widget/Button;I)V

    return-void
.end method

.method private pintarSesionGenero()V
    .locals 3

    const v0, 0x7f0a007f

    .line 487
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->IVsesion:Landroid/widget/ImageView;

    .line 488
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v1, "genero"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    .line 489
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->IVsesion:Landroid/widget/ImageView;

    const v1, 0x7f0e0008

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 492
    :cond_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->IVsesion:Landroid/widget/ImageView;

    const v1, 0x7f0e0021

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private rate()V
    .locals 8

    .line 786
    invoke-static {p0}, Lsoft/evm/amblyopiamobilegames/rate/AppRater;->app_launched(Landroid/content/Context;)V

    const-string v0, "apprater"

    const/4 v1, 0x0

    .line 790
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 791
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "dontshowagain"

    .line 792
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "launch_count"

    const-wide/16 v2, 0x0

    .line 793
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x14

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x1e

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 794
    new-instance v0, Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment;

    invoke-direct {v0}, Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment;-><init>()V

    .line 795
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 796
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget v2, Lsoft/evm/amblyopiamobilegames/MainActivity;->veces:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 797
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private selectAccount()V
    .locals 2

    .line 675
    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;-><init>()V

    const-string v1, "com.google"

    .line 678
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;->setAllowableAccountsTypes(Ljava/util/List;)Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;

    move-result-object v0

    .line 679
    invoke-virtual {v0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;->build()Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;

    move-result-object v0

    .line 676
    invoke-static {v0}, Lcom/google/android/gms/common/AccountPicker;->newChooseAccountIntent(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    .line 680
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private sesion()V
    .locals 1

    .line 497
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->haySesion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->actualizarSesion()V

    :cond_0
    return-void
.end method

.method public static setUltimaVez()Ljava/lang/String;
    .locals 4

    .line 1260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1261
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1262
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v3, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v0, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1263
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1265
    sget-object v1, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ultima modificacion"

    .line 1266
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1267
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1268
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private tareasEnHiloPrincipal()V
    .locals 1

    .line 243
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->inicializarSharedPreferences()V

    .line 246
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->inicializarSQLite()V

    .line 249
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->rate()V

    const-string v0, "aviso"

    .line 252
    invoke-direct {p0, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->mostrarAlertDialog(Ljava/lang/String;)V

    .line 255
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->iniAlarma()V

    return-void
.end method

.method private tareasEnSegundoPlano()V
    .locals 1

    .line 235
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->iniciarBotonesSesion()V

    .line 236
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->haySesion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->hiloSesion()V

    :cond_0
    return-void
.end method

.method private titulo()V
    .locals 2

    const v0, 0x7f0a0255

    .line 471
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->title:Landroid/widget/TextView;

    .line 472
    new-instance v0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    const-string v0, "MisPreferencias"

    const/4 v1, 0x0

    .line 473
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->prefs:Landroid/content/SharedPreferences;

    .line 474
    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->ajustarColores(Landroid/content/SharedPreferences;)V

    .line 475
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setTitle(Landroid/widget/TextView;)V

    return-void
.end method

.method private static updateMysql()V
    .locals 3

    .line 628
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v1, "correo"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 629
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, v2

    .line 631
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 632
    new-instance v0, Lsoft/evm/amblyopiamobilegames/MainActivity$UpdatesBBDD;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1}, Lsoft/evm/amblyopiamobilegames/MainActivity$UpdatesBBDD;-><init>(Landroid/content/SharedPreferences;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/MainActivity$UpdatesBBDD;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method private updateUser(Ljava/lang/String;)V
    .locals 10

    const-string v0, "connectivity"

    .line 528
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 529
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 530
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "main"

    .line 531
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "1970-01-15 00:00:00"

    const-string v2, "registro"

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "correo"

    const/4 v7, 0x0

    const-string v8, ""

    if-nez v0, :cond_1

    const-string v0, "actualizar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "sesion"

    .line 551
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-array v0, v3, [Ljava/lang/String;

    aput-object p1, v0, v7

    .line 554
    sget-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    invoke-interface {p1, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v5

    .line 555
    sget-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    .line 556
    new-instance p1, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;

    invoke-direct {p1, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;-><init>([Ljava/lang/String;)V

    new-array v0, v7, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 532
    :cond_1
    :goto_0
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    invoke-interface {v0, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v0, v8

    .line 535
    :cond_2
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v9, "Usuario"

    .line 537
    invoke-virtual {p0, v9, v7}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    sput-object v9, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    aput-object p1, v0, v7

    .line 539
    invoke-interface {v9, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v5

    .line 540
    sget-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v5, "ultima modificacion"

    invoke-interface {p1, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    .line 541
    sget-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v4, "nombre"

    const-string v5, "Username"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    const/4 p1, 0x4

    .line 542
    sget-object v3, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v4, "nacimiento"

    const-string v5, "15/01/1970"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, p1

    const/4 p1, 0x5

    .line 543
    sget-object v3, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v4, "genero"

    const-string v5, "N"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, p1

    const/4 p1, 0x6

    .line 544
    sget-object v3, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pais"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, p1

    const/4 p1, 0x7

    .line 545
    sget-object v3, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v4, "premium"

    const-string v5, "NO"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, p1

    const/16 p1, 0x8

    .line 546
    sget-object v3, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v4, "mail_list"

    const-string v5, "SI"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, p1

    const/16 p1, 0x9

    .line 547
    sget-object v3, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v4, "marketing"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, p1

    const/16 p1, 0xa

    .line 548
    sget-object v3, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 549
    new-instance p1, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;

    invoke-direct {p1, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;-><init>([Ljava/lang/String;)V

    new-array v0, v7, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 560
    :cond_3
    :try_start_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const v0, 0x7f110042

    .line 561
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f11014d

    .line 562
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 563
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 564
    sget-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->hide()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 566
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateUsuario()V
    .locals 3

    .line 520
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v1, "correo"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 521
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, v2

    .line 523
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "main"

    .line 524
    invoke-direct {p0, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->updateUser(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public Breaker(Landroid/view/View;)V
    .locals 1

    const-string p1, "Breaker"

    .line 751
    sput-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->juego:Ljava/lang/String;

    .line 752
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x3

    .line 753
    invoke-virtual {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public Flappy(Landroid/view/View;)V
    .locals 1

    const-string p1, "Flappy"

    .line 745
    sput-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->juego:Ljava/lang/String;

    .line 746
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x3

    .line 747
    invoke-virtual {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public PacMan(Landroid/view/View;)V
    .locals 1

    const-string p1, "PacMan"

    .line 770
    sput-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->juego:Ljava/lang/String;

    .line 771
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x3

    .line 772
    invoke-virtual {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public Pinball(Landroid/view/View;)V
    .locals 1

    const-string p1, "Pinball"

    .line 776
    sput-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->juego:Ljava/lang/String;

    .line 777
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x3

    .line 778
    invoke-virtual {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public Pong(Landroid/view/View;)V
    .locals 1

    const-string p1, "Pong"

    .line 764
    sput-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->juego:Ljava/lang/String;

    .line 765
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x3

    .line 766
    invoke-virtual {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public Snake(Landroid/view/View;)V
    .locals 1

    const-string p1, "Snake"

    .line 733
    sput-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->juego:Ljava/lang/String;

    .line 734
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x3

    .line 735
    invoke-virtual {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public Space(Landroid/view/View;)V
    .locals 1

    const-string p1, "Space Invaders"

    .line 758
    sput-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->juego:Ljava/lang/String;

    .line 759
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x3

    .line 760
    invoke-virtual {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public Tetris(Landroid/view/View;)V
    .locals 1

    const-string p1, "Tetris"

    .line 739
    sput-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->juego:Ljava/lang/String;

    .line 740
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x3

    .line 741
    invoke-virtual {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 170
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 173
    sget-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "authAccount"

    .line 174
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "correo"

    .line 175
    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 178
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 179
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v5, v7, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 180
    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "registro"

    .line 181
    invoke-interface {p1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-wide/32 v4, 0x5265c00

    .line 183
    rem-long v4, v2, v4

    sub-long/2addr v2, v4

    .line 184
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 185
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 186
    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "inicio"

    .line 187
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "sesion"

    .line 188
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 189
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 190
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 191
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->startLoadBar()V

    .line 192
    sget-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v3, ""

    invoke-interface {p1, p3, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->correo:Ljava/lang/String;

    const-string p1, "@"

    .line 193
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre:Ljava/lang/String;

    .line 194
    sput-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->insertar:Z

    .line 195
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->insertar(Landroid/content/Context;)V

    .line 196
    sput-boolean v1, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->insertar:Z

    .line 197
    sput-boolean v1, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->jugado:Z

    .line 198
    invoke-direct {p0, v2}, Lsoft/evm/amblyopiamobilegames/MainActivity;->updateUser(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 200
    sget-boolean p1, Lsoft/evm/amblyopiamobilegames/SesionActivity;->actualizar:Z

    if-eqz p1, :cond_2

    const-string p1, "actualizar"

    .line 201
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->updateUser(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 202
    sget-boolean p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->accountPicker:Z

    if-eqz p1, :cond_2

    .line 203
    sput-boolean v1, Lsoft/evm/amblyopiamobilegames/MainActivity;->accountPicker:Z

    .line 204
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->selectAccount()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 154
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    sput-object p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->activity:Landroid/app/Activity;

    const/4 p1, 0x1

    .line 159
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->requestWindowFeature(I)Z

    .line 160
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f0d0024

    .line 162
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->setContentView(I)V

    .line 164
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->hilo()V

    return-void
.end method

.method protected onRestart()V
    .locals 0

    .line 217
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 218
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->pintarBotones()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 211
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 212
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->pintarBotones()V

    return-void
.end method

.method public sharedApp(Landroid/view/View;)V
    .locals 2

    .line 702
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.SEND"

    .line 703
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    const-string v1, "https://play.google.com/store/apps/details?id=soft.evm.amblyopiamobilegames"

    .line 704
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "text/plain"

    .line 705
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startLoadBar()V
    .locals 3

    .line 1026
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1027
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f110070

    invoke-virtual {p0, v2}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1028
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1029
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public verActividad(Landroid/view/View;)V
    .locals 2

    .line 648
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->haySesion()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "actividad"

    .line 650
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->aviso:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->mostrarAlertDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 653
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 654
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 657
    :cond_1
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->selectAccount()V

    :goto_0
    return-void
.end method

.method public verDailyTime(Landroid/view/View;)V
    .locals 2

    .line 817
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->aviso:Landroid/content/SharedPreferences;

    const-string v0, "alarma"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 818
    invoke-direct {p0, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->mostrarAlertDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 820
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 821
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public verInfo(Landroid/view/View;)V
    .locals 2

    .line 693
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->aviso:Landroid/content/SharedPreferences;

    const-string v0, "informacion"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 694
    invoke-direct {p0, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->mostrarAlertDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 696
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/info/InfoActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 697
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public verOpciones(Landroid/view/View;)V
    .locals 2

    .line 639
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->aviso:Landroid/content/SharedPreferences;

    const-string v0, "configuracion"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 640
    invoke-direct {p0, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->mostrarAlertDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 642
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 643
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public verRemidMe(Landroid/view/View;)V
    .locals 2

    .line 807
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->aviso:Landroid/content/SharedPreferences;

    const-string v0, "recordatorio"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 808
    invoke-direct {p0, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->mostrarAlertDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 810
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 811
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public verSesion(Landroid/view/View;)V
    .locals 2

    .line 662
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->aviso:Landroid/content/SharedPreferences;

    const-string v0, "sesion"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 663
    invoke-direct {p0, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->mostrarAlertDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 665
    :cond_0
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->haySesion()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 666
    sget-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->activity:Landroid/app/Activity;

    const-string v0, "main"

    invoke-static {v0, p1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->abrirSesion(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 668
    :cond_1
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->selectAccount()V

    :goto_0
    return-void
.end method
