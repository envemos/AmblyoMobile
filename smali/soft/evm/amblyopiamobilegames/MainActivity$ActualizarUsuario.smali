.class Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsoft/evm/amblyopiamobilegames/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActualizarUsuario"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static UIHandler:Landroid/os/Handler; = null

.field static correo:Ljava/lang/String; = ""

.field static edad:Ljava/lang/String; = ""

.field static genero:Ljava/lang/String; = ""

.field static mail_list:Ljava/lang/String; = ""

.field static marketing:Ljava/lang/String; = ""

.field static nombre:Ljava/lang/String; = ""

.field static pais:Ljava/lang/String; = ""

.field static params:[Ljava/lang/String; = null

.field static premium:Ljava/lang/String; = ""

.field static registro:Ljava/lang/String; = ""

.field static tipo:Ljava/lang/String; = ""

.field static ultimaModificacion:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 951
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->UIHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 833
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 834
    sput-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->params:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 835
    aget-object p1, p1, v0

    sput-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->tipo:Ljava/lang/String;

    return-void
.end method

.method private static insertar(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "/"

    if-eqz p0, :cond_0

    const-string v1, ""

    .line 979
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 980
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "success"

    .line 981
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "2"

    .line 982
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "usuario"

    .line 983
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    .line 984
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v2, "correo"

    .line 985
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->correo:Ljava/lang/String;

    const-string v3, "nombre"

    .line 986
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->nombre:Ljava/lang/String;

    const-string v4, "edad"

    .line 987
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->edad:Ljava/lang/String;

    const-string v5, "-"

    .line 988
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 990
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x2

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->edad:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "1/1/1900"

    .line 992
    sput-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->edad:Ljava/lang/String;

    :goto_0
    const-string v0, "genero"

    .line 994
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->genero:Ljava/lang/String;

    const-string v1, "pais"

    .line 995
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->pais:Ljava/lang/String;

    const-string v4, "ultima"

    .line 996
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->ultimaModificacion:Ljava/lang/String;

    const-string v4, "premium"

    .line 998
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->premium:Ljava/lang/String;

    const-string v5, "mail_list"

    .line 999
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->mail_list:Ljava/lang/String;

    const-string v6, "marketing"

    .line 1000
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->marketing:Ljava/lang/String;

    const-string v7, "registro"

    .line 1002
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->registro:Ljava/lang/String;

    .line 1004
    sget-object p0, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1005
    sget-object v8, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->correo:Ljava/lang/String;

    invoke-interface {p0, v2, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1006
    sget-object v2, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->nombre:Ljava/lang/String;

    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1007
    sget-object v2, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->edad:Ljava/lang/String;

    const-string v3, "nacimiento"

    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1008
    sget-object v2, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->genero:Ljava/lang/String;

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1009
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->pais:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1010
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->premium:Ljava/lang/String;

    invoke-interface {p0, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1011
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->mail_list:Ljava/lang/String;

    invoke-interface {p0, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1012
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->marketing:Ljava/lang/String;

    invoke-interface {p0, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1013
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->ultimaModificacion:Ljava/lang/String;

    const-string v1, "ultima modificacion"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1014
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->registro:Ljava/lang/String;

    invoke-interface {p0, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1015
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onPostExecute$0()V
    .locals 0

    .line 966
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/MainActivity;->access$900()V

    return-void
.end method

.method static synthetic lambda$onPreExecute$1()V
    .locals 0

    .line 975
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/MainActivity;->access$800()V

    return-void
.end method

.method public static runOnUI(Ljava/lang/Runnable;)V
    .locals 1

    .line 954
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->UIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 829
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 13

    .line 855
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 856
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 858
    :try_start_0
    sget-object v1, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->params:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v3, v1, v2

    sput-object v3, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->correo:Ljava/lang/String;

    .line 860
    array-length v3, v1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-le v3, v6, :cond_0

    .line 862
    :try_start_1
    aget-object v3, v1, v5

    sput-object v3, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->ultimaModificacion:Ljava/lang/String;

    .line 863
    aget-object v3, v1, v6

    sput-object v3, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->nombre:Ljava/lang/String;

    const/4 v5, 0x4

    .line 864
    aget-object v5, v1, v5

    sput-object v5, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->edad:Ljava/lang/String;

    const/4 v5, 0x5

    .line 865
    aget-object v5, v1, v5

    sput-object v5, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->genero:Ljava/lang/String;

    const/4 v5, 0x6

    .line 866
    aget-object v5, v1, v5

    sput-object v5, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->pais:Ljava/lang/String;

    const/4 v5, 0x7

    .line 867
    aget-object v5, v1, v5

    sput-object v5, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->premium:Ljava/lang/String;

    const/16 v5, 0x8

    .line 868
    aget-object v5, v1, v5

    sput-object v5, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->mail_list:Ljava/lang/String;

    const/16 v5, 0x9

    .line 869
    aget-object v5, v1, v5

    sput-object v5, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->marketing:Ljava/lang/String;

    const/16 v5, 0xa

    .line 870
    aget-object v1, v1, v5

    sput-object v1, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->registro:Ljava/lang/String;

    .line 872
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 873
    sget-object v1, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->correo:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "@"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->nombre:Ljava/lang/String;

    goto :goto_0

    .line 877
    :cond_0
    aget-object v1, v1, v5

    sput-object v1, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->registro:Ljava/lang/String;

    .line 878
    sput-object v4, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->nombre:Ljava/lang/String;

    :cond_1
    :goto_0
    const-string v1, "https://amblyomobile.app/data/usuarios.php"

    .line 881
    sget-object v3, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->tipo:Ljava/lang/String;

    const-string v5, "actualizar"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "https://amblyomobile.app/data/usuarios_actualizar.php"

    .line 883
    :cond_2
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 884
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    const-string v3, "POST"

    .line 885
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 886
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 887
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 888
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 889
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 891
    sget-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->params:[Ljava/lang/String;

    array-length p1, p1
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "registro"

    const-string v7, "idioma"

    const-string v8, "nombre"

    const-string v9, "correo"

    const-string v10, "&"

    const-string v11, "="

    const-string v12, "UTF-8"

    if-le p1, v6, :cond_3

    .line 892
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v6, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->correo:Ljava/lang/String;

    invoke-static {v6, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v6, "ultima"

    .line 894
    invoke-static {v6, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v6, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->ultimaModificacion:Ljava/lang/String;

    invoke-static {v6, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 896
    invoke-static {v8, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v6, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->nombre:Ljava/lang/String;

    invoke-static {v6, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v6, "edad"

    .line 898
    invoke-static {v6, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v6, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->edad:Ljava/lang/String;

    invoke-static {v6, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v6, "genero"

    .line 900
    invoke-static {v6, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v6, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->genero:Ljava/lang/String;

    invoke-static {v6, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v6, "pais"

    .line 902
    invoke-static {v6, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v6, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->pais:Ljava/lang/String;

    invoke-static {v6, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v6, "premium"

    .line 904
    invoke-static {v6, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v6, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->premium:Ljava/lang/String;

    invoke-static {v6, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v6, "mail_list"

    .line 906
    invoke-static {v6, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v6, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->mail_list:Ljava/lang/String;

    invoke-static {v6, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v6, "marketing"

    .line 908
    invoke-static {v6, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v6, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->marketing:Ljava/lang/String;

    invoke-static {v6, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 910
    invoke-static {v7, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 912
    invoke-static {v5, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v5, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->registro:Ljava/lang/String;

    invoke-static {v5, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 914
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v6, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->correo:Ljava/lang/String;

    invoke-static {v6, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 916
    invoke-static {v8, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v6, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->nombre:Ljava/lang/String;

    invoke-static {v6, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 918
    invoke-static {v7, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 920
    invoke-static {v5, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v5, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->registro:Ljava/lang/String;

    invoke-static {v5, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 922
    :goto_1
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 923
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 924
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 925
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 926
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 927
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 931
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 932
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 934
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 935
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 936
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 937
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 945
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "38"

    const-string v0, "Error"

    .line 946
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception p1

    .line 943
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception p1

    .line 941
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 829
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 959
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 961
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 962
    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->insertar(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 964
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 966
    :cond_0
    :goto_0
    sget-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario$$ExternalSyntheticLambda0;->INSTANCE:Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario$$ExternalSyntheticLambda0;

    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->runOnUI(Ljava/lang/Runnable;)V

    .line 967
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/MainActivity;->access$500()V

    .line 968
    sget-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->tipo:Ljava/lang/String;

    const-string v0, "sesion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 969
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/MainActivity;->access$600()Landroid/app/Activity;

    move-result-object p1

    invoke-static {v0, p1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->access$700(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 974
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 975
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario$$ExternalSyntheticLambda1;->INSTANCE:Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario$$ExternalSyntheticLambda1;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/MainActivity$ActualizarUsuario;->runOnUI(Ljava/lang/Runnable;)V

    return-void
.end method
