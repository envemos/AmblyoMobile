.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;
.super Ljava/lang/Object;
.source "FrameRateManager.java"


# static fields
.field static final BILLION:J = 0x3b9aca00L

.field static final MILLION:J = 0xf4240L


# instance fields
.field allowLockingFrameRate:Z

.field allowReducingFrameRate:Z

.field currentFPS:D

.field currentNanosPerFrame:J

.field currentRateIndex:I

.field frameHistorySize:I

.field frameRateLocked:Z

.field goodFrames:I

.field maxGoodFrames:I

.field maxSlowFrames:I

.field minimumFrameRates:[D

.field previousFrameTimestamps:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field slowFrames:I

.field targetFrameRateFudgeFactor:D

.field targetFrameRates:[D

.field totalFrames:J

.field unfudgedTargetFrameRates:[D


# direct methods
.method public constructor <init>(D)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    new-array p1, v1, [D

    .line 79
    invoke-direct {p0, v0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;-><init>([D[D)V

    return-void
.end method

.method public constructor <init>([D[D)V
    .locals 6

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->currentRateIndex:I

    const-wide v1, 0x3ff03d70a3d70a3dL    # 1.015

    .line 24
    iput-wide v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->targetFrameRateFudgeFactor:D

    .line 27
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->previousFrameTimestamps:Ljava/util/LinkedList;

    const/16 v1, 0xa

    .line 29
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->frameHistorySize:I

    const/4 v1, 0x1

    .line 30
    iput-boolean v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->allowReducingFrameRate:Z

    .line 31
    iput-boolean v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->allowLockingFrameRate:Z

    .line 33
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->frameRateLocked:Z

    const/16 v2, 0x1f4

    .line 35
    iput v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->maxGoodFrames:I

    const/16 v2, 0x96

    .line 36
    iput v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->maxSlowFrames:I

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 38
    iput-wide v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->currentFPS:D

    .line 39
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->goodFrames:I

    .line 40
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->slowFrames:I

    const-wide/16 v2, 0x0

    .line 42
    iput-wide v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->totalFrames:J

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 59
    array-length v2, p2

    array-length v3, p1

    sub-int/2addr v3, v1

    if-lt v2, v3, :cond_1

    .line 63
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->unfudgedTargetFrameRates:[D

    .line 64
    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->minimumFrameRates:[D

    .line 66
    array-length p2, p1

    new-array p2, p2, [D

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->targetFrameRates:[D

    move p2, v0

    .line 67
    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 68
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->targetFrameRates:[D

    iget-wide v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->targetFrameRateFudgeFactor:D

    aget-wide v4, p1, p2

    mul-double/2addr v2, v4

    aput-wide v2, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->setCurrentRateIndex(I)V

    return-void

    .line 60
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must specify as many minimum rates as target rates minus one"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public allowLockingFrameRate()Z
    .locals 1

    .line 254
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->allowLockingFrameRate:Z

    return v0
.end method

.method public allowReducingFrameRate()Z
    .locals 1

    .line 242
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->allowReducingFrameRate:Z

    return v0
.end method

.method public clearTimestamps()V
    .locals 2

    .line 87
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->previousFrameTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->goodFrames:I

    .line 89
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->slowFrames:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 90
    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->currentFPS:D

    return-void
.end method

.method public currentFramesPerSecond()D
    .locals 2

    .line 169
    iget-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->currentFPS:D

    return-wide v0
.end method

.method public formattedCurrentFramesPerSecond()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 179
    iget-wide v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->currentFPS:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%.1f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fpsDebugInfo()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 187
    iget-wide v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->currentFPS:D

    .line 188
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->targetFramesPerSecond()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->frameRateLocked:Z

    if-eqz v1, :cond_0

    const-string v1, "(locked)"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "FPS: %.1f target: %.1f %s"

    .line 187
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public frameStarted()V
    .locals 2

    .line 161
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->frameStarted(J)V

    return-void
.end method

.method public frameStarted(J)V
    .locals 4

    .line 126
    iget-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->totalFrames:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->totalFrames:J

    .line 127
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->previousFrameTimestamps:Ljava/util/LinkedList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->previousFrameTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->frameHistorySize:I

    if-le v0, v1, :cond_2

    .line 129
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->previousFrameTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p1, v0

    long-to-double p1, p1

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr p1, v0

    .line 131
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->frameHistorySize:I

    int-to-double v0, v0

    div-double/2addr v0, p1

    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->currentFPS:D

    .line 133
    iget-boolean p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->frameRateLocked:Z

    if-nez p1, :cond_2

    iget p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->currentRateIndex:I

    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->minimumFrameRates:[D

    array-length v2, p2

    if-ge p1, v2, :cond_2

    .line 134
    aget-wide p1, p2, p1

    cmpg-double p1, v0, p1

    const/4 p2, 0x1

    if-gez p1, :cond_0

    .line 136
    iget p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->slowFrames:I

    add-int/2addr p1, p2

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->slowFrames:I

    .line 137
    iget p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->maxSlowFrames:I

    if-lt p1, p2, :cond_2

    .line 138
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->reduceFPS()V

    goto :goto_0

    .line 142
    :cond_0
    iget p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->goodFrames:I

    add-int/2addr p1, p2

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->goodFrames:I

    .line 143
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->maxGoodFrames:I

    if-lez v0, :cond_2

    if-lt p1, v0, :cond_2

    .line 146
    iget-boolean p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->allowLockingFrameRate:Z

    if-eqz p1, :cond_1

    .line 147
    iput-boolean p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->frameRateLocked:Z

    :cond_1
    const/4 p1, 0x0

    .line 151
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->slowFrames:I

    .line 152
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->goodFrames:I

    :cond_2
    :goto_0
    return-void
.end method

.method public getTotalFrames()J
    .locals 2

    .line 272
    iget-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->totalFrames:J

    return-wide v0
.end method

.method public lastFrameStartTime()J
    .locals 2

    .line 193
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->previousFrameTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public nanosToWaitUntilNextFrame()J
    .locals 2

    .line 223
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->nanosToWaitUntilNextFrame(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public nanosToWaitUntilNextFrame(J)J
    .locals 8

    .line 203
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->previousFrameTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 204
    iget-wide v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->currentNanosPerFrame:J

    add-long/2addr v0, v2

    sub-long p1, v0, p1

    .line 207
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->previousFrameTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->frameHistorySize:I

    if-ne v2, v3, :cond_0

    .line 208
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->previousFrameTimestamps:Ljava/util/LinkedList;

    .line 209
    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->frameHistorySize:I

    int-to-long v4, v4

    iget-wide v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->currentNanosPerFrame:J

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    sub-long/2addr p1, v0

    :cond_0
    const-wide/32 v0, 0xf4240

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    move-wide p1, v0

    :cond_1
    return-wide p1
.end method

.method reduceFPS()V
    .locals 1

    .line 100
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->currentRateIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->setCurrentRateIndex(I)V

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->goodFrames:I

    .line 102
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->slowFrames:I

    .line 103
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->frameRateLocked:Z

    return-void
.end method

.method public resetFrameRate()V
    .locals 1

    .line 113
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->clearTimestamps()V

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->setCurrentRateIndex(I)V

    .line 115
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->frameRateLocked:Z

    return-void
.end method

.method public setAllowLockingFrameRate(Z)V
    .locals 0

    .line 264
    iput-boolean p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->allowLockingFrameRate:Z

    return-void
.end method

.method public setAllowReducingFrameRate(Z)V
    .locals 0

    .line 250
    iput-boolean p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->allowReducingFrameRate:Z

    return-void
.end method

.method setCurrentRateIndex(I)V
    .locals 5

    .line 94
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->currentRateIndex:I

    .line 95
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->targetFrameRates:[D

    aget-wide v1, v0, p1

    const-wide v3, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v3, v1

    double-to-long v0, v3

    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->currentNanosPerFrame:J

    return-void
.end method

.method public sleepUntilNextFrame()J
    .locals 6

    .line 233
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->nanosToWaitUntilNextFrame(J)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    .line 235
    :try_start_0
    div-long v4, v0, v2

    rem-long v2, v0, v2

    long-to-int v2, v2

    invoke-static {v4, v5, v2}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method public targetFramesPerSecond()D
    .locals 3

    .line 174
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->unfudgedTargetFrameRates:[D

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->currentRateIndex:I

    aget-wide v1, v0, v1

    return-wide v1
.end method
