.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field1Delegate;
.super Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/BaseFieldDelegate;
.source "Field1Delegate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/BaseFieldDelegate;-><init>()V

    return-void
.end method

.method private restoreLeftBallSaver(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 1

    const-string v0, "BallSaver-left"

    .line 32
    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object p1

    check-cast p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    return-void
.end method

.method private restoreRightBallSaver(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 1

    const-string v0, "BallSaver-right"

    .line 36
    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object p1

    check-cast p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    return-void
.end method

.method private setLaunchBarrierEnabled(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Z)V
    .locals 1

    const-string v0, "LaunchBarrier"

    .line 79
    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object p1

    check-cast p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    xor-int/lit8 p2, p2, 0x1

    .line 80
    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    return-void
.end method

.method private startMultiball(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 3

    const-string v0, "Multiball!"

    const-wide/16 v1, 0x7d0

    .line 40
    invoke-virtual {p1, v0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    .line 41
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field1Delegate;->restoreLeftBallSaver(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 42
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field1Delegate;->restoreRightBallSaver(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 44
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field1Delegate$1;

    invoke-direct {v0, p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field1Delegate$1;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field1Delegate;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    const-wide/16 v1, 0x3e8

    .line 50
    invoke-virtual {p1, v1, v2, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->scheduleAction(JLjava/lang/Runnable;)V

    const-wide/16 v1, 0xdac

    .line 51
    invoke-virtual {p1, v1, v2, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->scheduleAction(JLjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public allDropTargetsInGroupHit(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/DropTargetGroupElement;)V
    .locals 3

    .line 56
    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/DropTargetGroupElement;->getElementId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DropTargetLeftSave"

    .line 57
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x5dc

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field1Delegate;->restoreLeftBallSaver(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    const-string p2, "Left Save Enabled"

    .line 59
    invoke-virtual {p1, p2, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const-string v0, "DropTargetRightSave"

    .line 61
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 62
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field1Delegate;->restoreRightBallSaver(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    const-string p2, "Right Save Enabled"

    .line 63
    invoke-virtual {p1, p2, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    :cond_1
    :goto_0
    const-string p2, "ExtraBallRollovers"

    .line 67
    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object p2

    check-cast p2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    if-eqz p2, :cond_2

    .line 68
    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->allRolloversActive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 69
    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->activateFirstUnactivatedRollover()V

    .line 70
    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->allRolloversActive()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "Shoot Ramp for Multiball"

    .line 71
    invoke-virtual {p1, p2, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    :cond_2
    return-void
.end method

.method public allRolloversInGroupActivated(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;)V
    .locals 4

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p2, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setAllRolloversActivated(Z)V

    .line 17
    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object v1

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->incrementScoreMultiplier()V

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object v2

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->getScoreMultiplier()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x Multiplier"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {p1, v1, v2, v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    .line 21
    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->getElementId()Ljava/lang/String;

    move-result-object p2

    const-string v1, "RampRollovers"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "ExtraBallRollovers"

    .line 23
    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object p2

    check-cast p2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    .line 24
    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->allRolloversActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {p2, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setAllRolloversActivated(Z)V

    .line 26
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field1Delegate;->startMultiball(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    :cond_0
    return-void
.end method

.method public ballInSensorRange(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/SensorElement;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)V
    .locals 1

    .line 85
    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/SensorElement;->getElementId()Ljava/lang/String;

    move-result-object p3

    const-string v0, "LaunchBarrierSensor"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 86
    invoke-direct {p0, p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field1Delegate;->setLaunchBarrierEnabled(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Z)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/SensorElement;->getElementId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "LaunchBarrierRetract"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 89
    invoke-direct {p0, p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field1Delegate;->setLaunchBarrierEnabled(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public ballLost(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field1Delegate;->setLaunchBarrierEnabled(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Z)V

    return-void
.end method

.method public gameStarted(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field1Delegate;->setLaunchBarrierEnabled(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Z)V

    return-void
.end method
