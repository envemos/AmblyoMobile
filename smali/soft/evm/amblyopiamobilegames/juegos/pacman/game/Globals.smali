.class public Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/Globals;
.super Ljava/lang/Object;
.source "Globals.java"


# static fields
.field private static instance:Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/Globals;


# instance fields
.field private highScore:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/Globals;
    .locals 2

    const-class v0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/Globals;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/Globals;->instance:Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/Globals;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/Globals;

    invoke-direct {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/Globals;-><init>()V

    sput-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/Globals;->instance:Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/Globals;

    .line 23
    :cond_0
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/Globals;->instance:Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/Globals;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getHighScore()I
    .locals 1

    .line 16
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/Globals;->highScore:I

    return v0
.end method

.method public setHighScore(I)V
    .locals 0

    .line 13
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/Globals;->highScore:I

    return-void
.end method
