.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate;
.super Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/BaseFieldDelegate;
.source "Field2Delegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;
    }
.end annotation


# static fields
.field static final TAU:D = 6.283185307179586


# instance fields
.field rotatingGroups:[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/BaseFieldDelegate;-><init>()V

    return-void
.end method

.method private restoreLeftBallSaver(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 1

    const-string v0, "BallSaver-left"

    .line 107
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

    .line 111
    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object p1

    check-cast p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    return-void
.end method


# virtual methods
.method public allDropTargetsInGroupHit(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/DropTargetGroupElement;)V
    .locals 6

    .line 168
    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/DropTargetGroupElement;->getElementId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DropTargetLeft"

    .line 169
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x5dc

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate;->restoreLeftBallSaver(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    const-string p2, "Left Save Enabled"

    .line 171
    invoke-virtual {p1, p2, v2, v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "DropTargetRight"

    .line 174
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate;->restoreRightBallSaver(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    const-string p2, "Right Save Enabled"

    .line 176
    invoke-virtual {p1, p2, v2, v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    const-string v0, "DropTargetTopLeft"

    .line 179
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move p2, v1

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    :goto_0
    if-ltz p2, :cond_4

    const-string v0, "ExtraBallRollovers"

    .line 185
    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v0

    check-cast v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    .line 186
    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->numberOfRollovers()I

    move-result v4

    :goto_1
    if-ge p2, v4, :cond_4

    .line 188
    invoke-virtual {v0, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->isRolloverActiveAtIndex(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 189
    invoke-virtual {v0, p2, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setRolloverActiveAtIndex(IZ)V

    .line 191
    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->allRolloversActive()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "Shoot Red Bumper"

    .line 192
    invoke-virtual {p1, p2, v2, v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    goto :goto_2

    :cond_3
    add-int/lit8 p2, p2, 0x3

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public allRolloversInGroupActivated(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;)V
    .locals 2

    const/4 v0, 0x0

    .line 136
    invoke-virtual {p2, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setAllRolloversActivated(Z)V

    .line 137
    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object p2

    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->incrementScoreMultiplier()V

    .line 138
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object v0

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->getScoreMultiplier()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "x Multiplier"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, p2, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    return-void
.end method

.method public ballInSensorRange(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/SensorElement;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)V
    .locals 1

    .line 212
    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/SensorElement;->getElementId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LaunchBarrierSensor"

    .line 214
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    .line 215
    invoke-virtual {p0, p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate;->setLaunchBarrierEnabled(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Z)V

    goto :goto_0

    :cond_0
    const-string v0, "LaunchBarrierRetract"

    .line 217
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    .line 218
    invoke-virtual {p0, p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate;->setLaunchBarrierEnabled(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Z)V

    goto :goto_0

    :cond_1
    const-string v0, "LeftTubeSensor"

    .line 220
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 221
    invoke-virtual {p3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-lez p2, :cond_2

    const-wide/16 p2, 0x3e8

    .line 223
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$2;

    invoke-direct {v0, p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$2;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    invoke-virtual {p1, p2, p3, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->scheduleAction(JLjava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public ballLost(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 1

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate;->setLaunchBarrierEnabled(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Z)V

    return-void
.end method

.method createRotatingGroup(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Ljava/lang/String;[Ljava/lang/String;D)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;
    .locals 9

    .line 73
    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object p2

    .line 74
    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->getBodies()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {p2}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    .line 75
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-double v3, v0

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-double v5, p2

    move-object v1, p1

    move-object v2, p3

    move-wide v7, p4

    invoke-static/range {v1 .. v8}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;->create(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;[Ljava/lang/String;DDD)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;

    move-result-object p1

    return-object p1
.end method

.method public gameStarted(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 1

    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate;->setLaunchBarrierEnabled(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Z)V

    return-void
.end method

.method public isFieldActive(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public processCollision(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;Lcom/badlogic/gdx/physics/box2d/Body;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)V
    .locals 0

    .line 144
    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->getElementId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CenterBumper1"

    .line 145
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "LeftTubeBarrier"

    .line 146
    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object p2

    check-cast p2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const-string p3, "ExtraBallRollovers"

    .line 148
    invoke-virtual {p1, p3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object p3

    check-cast p3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    .line 150
    invoke-virtual {p3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->allRolloversActive()Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x0

    .line 151
    invoke-virtual {p2, p4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    .line 152
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate;->startMultiball(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 153
    invoke-virtual {p3, p4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setAllRolloversActivated(Z)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getBalls()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    .line 158
    invoke-virtual {p2, p3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method setLaunchBarrierEnabled(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Z)V
    .locals 1

    const-string v0, "LaunchBarrier"

    .line 206
    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object p1

    check-cast p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    xor-int/lit8 p2, p2, 0x1

    .line 207
    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    return-void
.end method

.method setupRotatingGroups(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 14

    const-string v0, "RotatingBumper1Speed"

    .line 80
    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getValueWithKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const-string v1, "RotatingBumper2Speed"

    .line 81
    invoke-virtual {p1, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getValueWithKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const-string v2, "RotatingBumper2CenterX"

    .line 82
    invoke-virtual {p1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getValueWithKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    const-string v3, "RotatingBumper2CenterY"

    .line 83
    invoke-virtual {p1, v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getValueWithKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    const-string v4, "RotatingBumper1A"

    const-string v5, "RotatingBumper1B"

    const-string v6, "RotatingBumper1C"

    const-string v7, "RotatingBumper1D"

    .line 84
    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v11

    const/4 v4, 0x2

    new-array v4, v4, [Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;

    float-to-double v12, v0

    const-string v10, "CenterBumper1"

    move-object v8, p0

    move-object v9, p1

    .line 88
    invoke-virtual/range {v8 .. v13}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate;->createRotatingGroup(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Ljava/lang/String;[Ljava/lang/String;D)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-string v0, "RotatingBumper2A"

    const-string v5, "RotatingBumper2B"

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v7

    float-to-double v8, v2

    float-to-double v10, v3

    float-to-double v12, v1

    move-object v6, p1

    .line 89
    invoke-static/range {v6 .. v13}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;->create(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;[Ljava/lang/String;DDD)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v4, v0

    iput-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate;->rotatingGroups:[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;

    return-void
.end method

.method startMultiball(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 3

    const-string v0, "Multiball!"

    const-wide/16 v1, 0x7d0

    .line 115
    invoke-virtual {p1, v0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    .line 116
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate;->restoreLeftBallSaver(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 117
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate;->restoreRightBallSaver(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 119
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$1;

    invoke-direct {v0, p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$1;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    const-wide/16 v1, 0x3e8

    .line 125
    invoke-virtual {p1, v1, v2, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->scheduleAction(JLjava/lang/Runnable;)V

    const-wide/16 v1, 0xdac

    .line 126
    invoke-virtual {p1, v1, v2, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->scheduleAction(JLjava/lang/Runnable;)V

    return-void
.end method

.method public tick(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;J)V
    .locals 3

    .line 96
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate;->rotatingGroups:[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate;->setupRotatingGroups(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    :cond_0
    long-to-double p2, p2

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr p2, v0

    const/4 v0, 0x0

    .line 101
    :goto_0
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate;->rotatingGroups:[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 102
    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;->applyRotation(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
