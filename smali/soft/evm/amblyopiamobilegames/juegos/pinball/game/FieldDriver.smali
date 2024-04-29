.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;
.super Ljava/lang/Object;
.source "FieldDriver.java"


# static fields
.field static INACTIVE_FRAME_MSECS:J = 0xfaL


# instance fields
.field averageFPS:D

.field canDraw:Z

.field field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

.field fieldViewManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

.field frameRateManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;

.field gameThread:Ljava/lang/Thread;

.field running:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->canDraw:Z

    .line 21
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;

    const/4 v1, 0x5

    new-array v1, v1, [D

    fill-array-data v1, :array_0

    const/4 v2, 0x4

    new-array v2, v2, [D

    fill-array-data v2, :array_1

    invoke-direct {v0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;-><init>([D[D)V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->frameRateManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;

    return-void

    :array_0
    .array-data 8
        0x404e000000000000L    # 60.0
        0x4049000000000000L    # 50.0
        0x4046800000000000L    # 45.0
        0x4044000000000000L    # 40.0
        0x403e000000000000L    # 30.0
    .end array-data

    :array_1
    .array-data 8
        0x404c800000000000L    # 57.0
        0x4048000000000000L    # 48.0
        0x4045800000000000L    # 43.0
        0x4043000000000000L    # 38.0
    .end array-data
.end method


# virtual methods
.method drawField()V
    .locals 1

    .line 112
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->fieldViewManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->draw()V

    return-void
.end method

.method public getAverageFPS()D
    .locals 2

    .line 123
    iget-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->averageFPS:D

    return-wide v0
.end method

.method public resetFrameRate()V
    .locals 1

    .line 119
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->frameRateManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->resetFrameRate()V

    return-void
.end method

.method public setAverageFPS(D)V
    .locals 0

    .line 126
    iput-wide p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->averageFPS:D

    return-void
.end method

.method public setField(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    return-void
.end method

.method public setFieldViewManager(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->fieldViewManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->running:Z

    .line 40
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver$1;

    invoke-direct {v0, p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver$1;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;)V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->gameThread:Ljava/lang/Thread;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->running:Z

    .line 53
    :try_start_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->gameThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method threadMain()V
    .locals 6

    .line 65
    :catch_0
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->running:Z

    if-eqz v0, :cond_4

    .line 66
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->frameRateManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->frameStarted()V

    const/4 v0, 0x1

    .line 68
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->fieldViewManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->canDraw()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    :try_start_0
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    .line 71
    :try_start_1
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->frameRateManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;

    .line 72
    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->targetFramesPerSecond()D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-long v2, v2

    long-to-float v2, v2

    .line 73
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getTargetTimeRatio()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    .line 75
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->hasActiveElements()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    sget-wide v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->INACTIVE_FRAME_MSECS:J

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    long-to-float v2, v2

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    .line 78
    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getTargetTimeRatio()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    .line 80
    :cond_1
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    const/4 v5, 0x4

    invoke-virtual {v4, v2, v3, v5}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->tick(JI)V

    .line 81
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :try_start_2
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->drawField()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 81
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v1

    .line 85
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 91
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->frameRateManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->clearTimestamps()V

    const-wide/16 v0, 0x0

    .line 92
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->setAverageFPS(D)V

    .line 94
    :try_start_5
    sget-wide v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->INACTIVE_FRAME_MSECS:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 100
    :cond_3
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->frameRateManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->sleepUntilNextFrame()J

    .line 103
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->frameRateManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->getTotalFrames()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->fieldViewManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->frameRateManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->fpsDebugInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->setDebugMessage(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->frameRateManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/FrameRateManager;->currentFramesPerSecond()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->setAverageFPS(D)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method
