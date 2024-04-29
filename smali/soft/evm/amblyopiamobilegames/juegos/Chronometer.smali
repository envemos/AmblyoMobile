.class public Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;
.super Ljava/lang/Object;
.source "Chronometer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private milis:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;->milis:J

    return-void
.end method


# virtual methods
.method public getMilis()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;->milis:J

    return-wide v0
.end method

.method public run()V
    .locals 4

    .line 18
    :cond_0
    :goto_0
    :try_start_0
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x1

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 20
    sget-boolean v2, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->pause:Z

    if-nez v2, :cond_0

    .line 21
    iget-wide v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;->milis:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;->milis:J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return-void
.end method
