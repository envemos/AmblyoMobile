.class public Lsoft/evm/amblyopiamobilegames/table/Partidas;
.super Ljava/lang/Object;
.source "Partidas.java"


# static fields
.field public static final JUEGO:Ljava/lang/String; = "juego"

.field public static final USUARIO:Ljava/lang/String; = "usuario"

.field public static sql_historial:Ljava/lang/String; = "SELECT * FROM HISTORIAL"

.field public static sql_ranking:Ljava/lang/String; = "SELECT * FROM RANKING ORDER BY S1 DESC"

.field public static tabla:Ljava/lang/String; = "usuario"


# instance fields
.field cursorBBDD:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPartidasHistorial()[Lsoft/evm/amblyopiamobilegames/table/PartidaData;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 27
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->partidasDBHelper_historial:Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperHistorial;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperHistorial;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 29
    sget-object v1, Lsoft/evm/amblyopiamobilegames/table/Partidas;->sql_historial:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->cursorBBDD:Landroid/database/Cursor;

    .line 31
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v1, v1, [Lsoft/evm/amblyopiamobilegames/table/PartidaData;

    .line 33
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->cursorBBDD:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    move v3, v2

    .line 38
    :cond_0
    new-instance v4, Lsoft/evm/amblyopiamobilegames/table/PartidaData;

    invoke-direct {v4}, Lsoft/evm/amblyopiamobilegames/table/PartidaData;-><init>()V

    .line 39
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->cursorBBDD:Landroid/database/Cursor;

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->id:I

    .line 40
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->cursorBBDD:Landroid/database/Cursor;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->correo:Ljava/lang/String;

    .line 41
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->cursorBBDD:Landroid/database/Cursor;

    const/4 v7, 0x2

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->nombre:Ljava/lang/String;

    .line 42
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->cursorBBDD:Landroid/database/Cursor;

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v4, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->fecha:J

    .line 43
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->cursorBBDD:Landroid/database/Cursor;

    const/4 v7, 0x4

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->juego:Ljava/lang/String;

    .line 44
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->cursorBBDD:Landroid/database/Cursor;

    const/4 v7, 0x5

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->s1:I

    .line 45
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->cursorBBDD:Landroid/database/Cursor;

    const/4 v7, 0x6

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->s2:I

    .line 46
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->cursorBBDD:Landroid/database/Cursor;

    const/4 v7, 0x7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v4, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->tiempo:J

    .line 47
    aput-object v4, v1, v3

    add-int/2addr v3, v6

    .line 49
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->cursorBBDD:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 53
    :cond_1
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->cursorBBDD:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 54
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v1
.end method

.method public getPartidasRanking()[Lsoft/evm/amblyopiamobilegames/table/PartidaData;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 63
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->partidasDBHelper_ranking:Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperRanking;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperRanking;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 65
    sget-object v1, Lsoft/evm/amblyopiamobilegames/table/Partidas;->sql_ranking:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->cursorBBDD:Landroid/database/Cursor;

    .line 67
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v1, v1, [Lsoft/evm/amblyopiamobilegames/table/PartidaData;

    .line 69
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->cursorBBDD:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    move v3, v2

    .line 74
    :cond_0
    new-instance v4, Lsoft/evm/amblyopiamobilegames/table/PartidaData;

    invoke-direct {v4}, Lsoft/evm/amblyopiamobilegames/table/PartidaData;-><init>()V

    .line 75
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->cursorBBDD:Landroid/database/Cursor;

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->id:I

    .line 76
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->cursorBBDD:Landroid/database/Cursor;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->correo:Ljava/lang/String;

    .line 77
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->cursorBBDD:Landroid/database/Cursor;

    const/4 v7, 0x2

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->nombre:Ljava/lang/String;

    .line 78
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->cursorBBDD:Landroid/database/Cursor;

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v4, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->fecha:J

    .line 79
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->cursorBBDD:Landroid/database/Cursor;

    const/4 v7, 0x4

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->juego:Ljava/lang/String;

    .line 80
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->cursorBBDD:Landroid/database/Cursor;

    const/4 v7, 0x5

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->s1:I

    .line 81
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->cursorBBDD:Landroid/database/Cursor;

    const/4 v7, 0x6

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->s2:I

    .line 82
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->cursorBBDD:Landroid/database/Cursor;

    const/4 v7, 0x7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v4, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->tiempo:J

    .line 83
    aput-object v4, v1, v3

    add-int/2addr v3, v6

    .line 85
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->cursorBBDD:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 89
    :cond_1
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->cursorBBDD:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 90
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v1
.end method
