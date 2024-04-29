.class public Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperRanking;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PartidasDBHelperRanking.java"


# static fields
.field private static final COMMA_SEPARATOR:Ljava/lang/String; = ", "

.field public static final DATABASE_NAME:Ljava/lang/String; = "Ranking.db"

.field public static final DATABASE_VERSION:I = 0x1

.field private static final DEFAULT_0:Ljava/lang/String; = " DEFAULT 0"

.field private static final INTEGER_TYPE:Ljava/lang/String; = " INTEGER"

.field private static final SQL_CREATE_PARTIDAS:Ljava/lang/String; = "CREATE TABLE RANKING (_id INTEGER PRIMARY KEY, CORREO TEXT, USUARIO TEXT, DIA INTEGER, JUEGO TEXT, S1 INTEGER, S2 INTEGER, TIEMPO INTEGER, DISPOSITIVO TEXT, SUBIDO INTEGER DEFAULT 0)"

.field private static final SQL_DELETE_PARTIDAS:Ljava/lang/String; = "DROP TABLE IF EXISTS RANKING"

.field private static final TEXT_TYPE:Ljava/lang/String; = " TEXT"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "Ranking.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 43
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public eliminarTablaPartidas(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS RANKING"

    .line 66
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE RANKING (_id INTEGER PRIMARY KEY, CORREO TEXT, USUARIO TEXT, DIA INTEGER, JUEGO TEXT, S1 INTEGER, S2 INTEGER, TIEMPO INTEGER, DISPOSITIVO TEXT, SUBIDO INTEGER DEFAULT 0)"

    .line 50
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2, p3}, Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperRanking;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "DROP TABLE IF EXISTS RANKING"

    .line 56
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperRanking;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
