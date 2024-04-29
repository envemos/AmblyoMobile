.class public Lsoft/evm/amblyopiamobilegames/juegos/Insertar;
.super Ljava/lang/Object;
.source "Insertar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsoft/evm/amblyopiamobilegames/juegos/Insertar$InsertarPartida;
    }
.end annotation


# static fields
.field public static breaker:Ljava/lang/String; = "BREAKER"

.field public static correo:Ljava/lang/String; = "null@null.com"

.field static db:Landroid/database/sqlite/SQLiteDatabase; = null

.field public static flappy:Ljava/lang/String; = "FLAPPY"

.field public static insertar:Z = false

.field public static internet:Z = false

.field public static jugado:Z = false

.field public static nombre:Ljava/lang/String; = null

.field public static nombre_juego:Ljava/lang/String; = null

.field public static pacman:Ljava/lang/String; = "PACMAN"

.field public static pinball:Ljava/lang/String; = "PINBALL"

.field public static pong:Ljava/lang/String; = "PONG"

.field public static score1:I = 0x0

.field public static score2:I = 0x0

.field public static snake:Ljava/lang/String; = "SNAKE"

.field public static space:Ljava/lang/String; = "SPACE"

.field public static tetris:Ljava/lang/String; = "TETRIS"

.field public static tiempo:J = 0x0L

.field public static final updateURLPartidas:Ljava/lang/String; = "https://amblyomobile.app/data/partidas.php"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initDB()V
    .locals 1

    .line 65
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->partidasDBHelper_historial:Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperHistorial;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperHistorial;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public static insertar(Landroid/content/Context;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteDatabaseLockedException;
        }
    .end annotation

    .line 69
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->insertar:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->jugado:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 70
    sput-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->insertar:Z

    .line 72
    sget-object v1, Lsoft/evm/amblyopiamobilegames/MainActivity;->partidasDBHelper_historial:Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperHistorial;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperHistorial;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 75
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 83
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 86
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sget-wide v5, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->tiempo:J

    sub-long/2addr v3, v5

    .line 87
    sget-object v5, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->correo:Ljava/lang/String;

    const-string v6, "CORREO"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object v5, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre:Ljava/lang/String;

    const-string v6, "USUARIO"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object v5, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre_juego:Ljava/lang/String;

    const-string v6, "JUEGO"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget v5, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->score1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "S1"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    sget v5, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->score2:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "S2"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    sget-wide v5, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->tiempo:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "TIEMPO"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "DISPOSITIVO"

    .line 93
    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "SUBIDO"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-wide/16 v7, 0x3e8

    .line 98
    rem-long v7, v3, v7

    sub-long v7, v3, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v7, "DIA"

    invoke-virtual {v1, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "TiempoDemoDiario"

    .line 101
    invoke-virtual {p0, v5, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 102
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-wide/16 v7, 0x0

    const-string v9, "tiempo"

    .line 103
    invoke-interface {p0, v9, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    sget-wide v10, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->tiempo:J

    add-long/2addr v7, v10

    invoke-interface {v5, v9, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/String;

    const/4 v5, 0x1

    .line 109
    sget-object v7, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->correo:Ljava/lang/String;

    aput-object v7, p0, v0

    const/4 v7, 0x2

    .line 110
    sget-object v8, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre:Ljava/lang/String;

    aput-object v8, p0, v5

    .line 111
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    const-string v9, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v5, v9, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v8, 0x3

    .line 112
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v7

    const/4 v3, 0x4

    .line 113
    sget-object v4, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre_juego:Ljava/lang/String;

    aput-object v4, p0, v8

    const/4 v4, 0x5

    .line 114
    sget v5, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->score1:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p0, v3

    const/4 v3, 0x6

    .line 115
    sget v5, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->score2:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p0, v4

    const/4 v4, 0x7

    .line 116
    sget-wide v7, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->tiempo:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p0, v3

    aput-object v2, p0, v4

    .line 118
    sget-boolean v2, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->internet:Z

    if-eqz v2, :cond_0

    .line 119
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar$InsertarPartida;

    invoke-direct {v0, v1, p0}, Lsoft/evm/amblyopiamobilegames/juegos/Insertar$InsertarPartida;-><init>(Landroid/content/ContentValues;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/Insertar$InsertarPartida;->start()V

    goto :goto_0

    .line 123
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, v6, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    sget-object p0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "HISTORIAL"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 126
    sget-object p0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 130
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 128
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
