.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;
.super Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/BaseFieldDelegate;
.source "Field4Delegate.java"


# static fields
.field static COLOR_SUFFIXES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ballsLocked:I

.field baseJackpot:I

.field bumperMultiplierIncrease:I

.field inMultiball:Z

.field isMultiballStarting:Z

.field jackpot:I

.field jackpotIncrease:I

.field launchBarrier:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

.field lockedBallKickers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;",
            ">;"
        }
    .end annotation
.end field

.field lockedBallRollovers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;",
            ">;"
        }
    .end annotation
.end field

.field multiballKickers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;",
            ">;"
        }
    .end annotation
.end field

.field multiballStatusRollovers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;",
            ">;"
        }
    .end annotation
.end field

.field rightKicker:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

.field topBlocker:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "Blue"

    const-string v1, "Cyan"

    const-string v2, "Green"

    const-string v3, "Yellow"

    const-string v4, "Red"

    const-string v5, "Magenta"

    .line 32
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->COLOR_SUFFIXES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/BaseFieldDelegate;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->inMultiball:Z

    .line 29
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->isMultiballStarting:Z

    const/4 v1, 0x1

    .line 30
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->bumperMultiplierIncrease:I

    .line 35
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->ballsLocked:I

    .line 38
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->jackpot:I

    const/16 v0, 0x19

    .line 39
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->baseJackpot:I

    const/4 v0, 0x5

    .line 40
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->jackpotIncrease:I

    return-void
.end method

.method private restoreLeftBallSaver(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 1

    const-string v0, "BallSaver-left"

    .line 64
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

    .line 68
    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object p1

    check-cast p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    return-void
.end method


# virtual methods
.method public allDropTargetsInGroupHit(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/DropTargetGroupElement;)V
    .locals 3

    .line 203
    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/DropTargetGroupElement;->getElementId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DropTargetLeftSave"

    .line 204
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x5dc

    if-eqz v0, :cond_0

    .line 205
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->restoreLeftBallSaver(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    const-string p2, "Left Save Enabled"

    .line 206
    invoke-virtual {p1, p2, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const-string v0, "DropTargetRightSave"

    .line 208
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->restoreRightBallSaver(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    const-string p2, "Right Save Enabled"

    .line 210
    invoke-virtual {p1, p2, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const-string v0, "DropTargetTop"

    .line 212
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    .line 213
    invoke-virtual {p0, p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->increaseExtraBumperMultiplier(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public allRolloversInGroupActivated(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;)V
    .locals 6

    .line 245
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->lockedBallRollovers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    const/4 v4, 0x1

    if-ne p2, v0, :cond_0

    .line 246
    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getBalls()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;

    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->removeBallWithoutBallLoss(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)V

    .line 247
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->lockedBallKickers:Ljava/util/List;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    invoke-virtual {p2, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    const-string p2, "Ball 1 Locked"

    .line 248
    invoke-virtual {p1, p2, v2, v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    .line 249
    iput v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->ballsLocked:I

    goto/16 :goto_1

    .line 251
    :cond_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->lockedBallRollovers:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v5, 0x2

    if-ne p2, v0, :cond_1

    .line 252
    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getBalls()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;

    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->removeBallWithoutBallLoss(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)V

    .line 253
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->lockedBallKickers:Ljava/util/List;

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    invoke-virtual {p2, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    const-string p2, "Ball 2 Locked"

    .line 254
    invoke-virtual {p1, p2, v2, v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    .line 255
    iput v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->ballsLocked:I

    goto :goto_1

    .line 257
    :cond_1
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->lockedBallRollovers:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v0, :cond_2

    .line 258
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->startMultiball(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    goto :goto_1

    .line 260
    :cond_2
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->inMultiball:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->multiballStatusRollovers:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 262
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->multiballStatusRollovers:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    .line 263
    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->allRolloversActive()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_4
    move v1, v4

    :goto_0
    if-eqz v1, :cond_6

    .line 268
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->doJackpot(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    goto :goto_1

    .line 270
    :cond_5
    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->getElementId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FlipperRollovers"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 271
    invoke-virtual {p0, p1, v5}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->increaseExtraBumperMultiplier(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;I)V

    .line 272
    invoke-virtual {p2, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setAllRolloversActivated(Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method allStatusRolloversActiveForIndex(I)Z
    .locals 2

    .line 43
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->multiballStatusRollovers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    .line 44
    invoke-virtual {v1, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->isRolloverActiveAtIndex(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public ballInSensorRange(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/SensorElement;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)V
    .locals 1

    .line 181
    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/SensorElement;->getElementId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LaunchBarrierRetract"

    .line 183
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    .line 184
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->launchBarrier:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    invoke-virtual {p1, p3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    goto :goto_0

    :cond_0
    const-string p2, "TopRampSensor"

    .line 186
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 187
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->launchBarrier:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    .line 188
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->topBlocker:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    invoke-virtual {p1, p3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    .line 189
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->rightKicker:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    goto :goto_0

    :cond_1
    const-string p2, "RightRampSensor"

    .line 191
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 192
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->topBlocker:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    .line 193
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->rightKicker:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    invoke-virtual {p1, p3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    goto :goto_0

    :cond_2
    const-string p2, "AfterRampKickerSensor"

    .line 195
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 196
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->topBlocker:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    .line 197
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->rightKicker:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public ballLost(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 1

    .line 175
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->launchBarrier:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    const/4 p1, 0x1

    .line 176
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->bumperMultiplierIncrease:I

    return-void
.end method

.method clearMultiballStatus()V
    .locals 2

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->setAllMultiballStatusRolloversActive(Z)V

    const/4 v1, 0x1

    .line 73
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->setIgnoreBallForMultiballStatusRollovers(Z)V

    .line 74
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->ballsLocked:I

    .line 75
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->inMultiball:Z

    .line 76
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->isMultiballStarting:Z

    return-void
.end method

.method doJackpot(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 4

    .line 119
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->jackpot:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->addScore(J)V

    const-string v0, "Jackpot!"

    const-wide/16 v1, 0xbb8

    .line 120
    invoke-virtual {p1, v0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    .line 123
    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getScoreMultiplier()D

    move-result-wide v0

    .line 124
    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->jackpot:I

    add-int/lit8 v2, v2, 0x64

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 125
    invoke-virtual {p1, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->setScoreMultiplier(D)V

    .line 126
    iget p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->jackpot:I

    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->jackpotIncrease:I

    add-int/2addr p1, v0

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->jackpot:I

    const/4 p1, 0x0

    .line 127
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->setAllMultiballStatusRolloversActive(Z)V

    return-void
.end method

.method public gameStarted(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 6

    const-string v0, "LaunchBarrier"

    .line 131
    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v0

    check-cast v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->launchBarrier:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const-string v0, "TopRampBlocker"

    .line 132
    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v0

    check-cast v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->topBlocker:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const-string v0, "RightRampKicker"

    .line 133
    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v0

    check-cast v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->rightKicker:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const/4 v0, 0x3

    new-array v1, v0, [Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const-string v2, "MultiballKicker1"

    .line 135
    invoke-virtual {p1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "MultiballKicker2"

    .line 136
    invoke-virtual {p1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "MultiballKicker3"

    .line 137
    invoke-virtual {p1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 134
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->multiballKickers:Ljava/util/List;

    new-array v1, v0, [Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    const-string v2, "LockedBallRollover1"

    .line 142
    invoke-virtual {p1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    aput-object v2, v1, v3

    const-string v2, "LockedBallRollover2"

    .line 143
    invoke-virtual {p1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    aput-object v2, v1, v4

    const-string v2, "LockedBallRollover3"

    .line 144
    invoke-virtual {p1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    aput-object v2, v1, v5

    .line 141
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->lockedBallRollovers:Ljava/util/List;

    .line 146
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    .line 147
    invoke-virtual {v2, v3, v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setRolloverActiveAtIndex(IZ)V

    .line 148
    invoke-virtual {v2, v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setVisible(Z)V

    .line 149
    invoke-virtual {v2, v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setIgnoreBall(Z)V

    goto :goto_0

    :cond_0
    new-array v0, v0, [Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const-string v1, "LockedBallKicker1"

    .line 154
    invoke-virtual {p1, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v1

    check-cast v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    aput-object v1, v0, v3

    const-string v1, "LockedBallKicker2"

    .line 155
    invoke-virtual {p1, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v1

    check-cast v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    aput-object v1, v0, v4

    const-string v1, "LockedBallKicker3"

    .line 156
    invoke-virtual {p1, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v1

    check-cast v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    aput-object v1, v0, v5

    .line 153
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->lockedBallKickers:Ljava/util/List;

    .line 158
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    invoke-virtual {v0, v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    .line 159
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->lockedBallKickers:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    invoke-virtual {v0, v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->multiballStatusRollovers:Ljava/util/Map;

    .line 163
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->COLOR_SUFFIXES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 164
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->multiballStatusRollovers:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rollovers."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-virtual {p1, v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v3

    check-cast v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    .line 164
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 167
    :cond_1
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->clearMultiballStatus()V

    .line 170
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->launchBarrier:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    invoke-virtual {p1, v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    .line 171
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->rightKicker:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    invoke-virtual {p1, v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    return-void
.end method

.method increaseExtraBumperMultiplier(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;I)V
    .locals 2

    .line 80
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->bumperMultiplierIncrease:I

    add-int/2addr v0, p2

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->bumperMultiplierIncrease:I

    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bumper Multiplier "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->bumperMultiplierIncrease:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "%"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, p2, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    return-void
.end method

.method public processCollision(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;Lcom/badlogic/gdx/physics/box2d/Body;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)V
    .locals 4

    .line 218
    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->getElementId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p3, "Bumper."

    .line 219
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x7

    .line 220
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 222
    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getScoreMultiplier()D

    move-result-wide p3

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p3, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide p3

    .line 223
    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->bumperMultiplierIncrease:I

    int-to-long v2, v2

    add-long/2addr p3, v2

    long-to-double p3, p3

    div-double/2addr p3, v0

    .line 224
    invoke-virtual {p1, p3, p4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->setScoreMultiplier(D)V

    .line 226
    iget p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->ballsLocked:I

    const/4 p4, 0x3

    if-ge p3, p4, :cond_1

    .line 227
    iget-object p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->multiballStatusRollovers:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    .line 228
    iget p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->ballsLocked:I

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setRolloverActiveAtIndex(IZ)V

    .line 229
    iget p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->ballsLocked:I

    invoke-virtual {p0, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->allStatusRolloversActiveForIndex(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 231
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->lockedBallRollovers:Ljava/util/List;

    iget p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->ballsLocked:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    .line 232
    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->getIgnoreBall()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    .line 233
    invoke-virtual {p2, p3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setIgnoreBall(Z)V

    .line 234
    invoke-virtual {p2, p4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setVisible(Z)V

    .line 235
    invoke-virtual {p2, p3, p3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setRolloverActiveAtIndex(IZ)V

    .line 236
    iget p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->ballsLocked:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    const-string p2, "Multiball Ready"

    goto :goto_0

    :cond_0
    const-string p2, "Ball Lock Ready"

    :goto_0
    const-wide/16 p3, 0xbb8

    .line 237
    invoke-virtual {p1, p2, p3, p4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method setAllMultiballStatusRolloversActive(Z)V
    .locals 3

    .line 50
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->multiballStatusRollovers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    const/4 v2, 0x0

    .line 51
    invoke-virtual {v1, v2, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setRolloverActiveAtIndex(IZ)V

    const/4 v2, 0x1

    .line 52
    invoke-virtual {v1, v2, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setRolloverActiveAtIndex(IZ)V

    const/4 v2, 0x2

    .line 53
    invoke-virtual {v1, v2, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setRolloverActiveAtIndex(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method setIgnoreBallForMultiballStatusRollovers(Z)V
    .locals 2

    .line 58
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->multiballStatusRollovers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    .line 59
    invoke-virtual {v1, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setIgnoreBall(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method startMultiball(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 3

    const-string v0, "Multiball!"

    const-wide/16 v1, 0xbb8

    .line 85
    invoke-virtual {p1, v0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    .line 86
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->restoreLeftBallSaver(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 87
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->restoreRightBallSaver(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 88
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->lockedBallRollovers:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setIgnoreBall(Z)V

    .line 89
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->lockedBallRollovers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setVisible(Z)V

    const/4 v0, 0x3

    .line 90
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->ballsLocked:I

    .line 91
    iput-boolean v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->inMultiball:Z

    .line 92
    iput-boolean v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->isMultiballStarting:Z

    .line 93
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->setAllMultiballStatusRolloversActive(Z)V

    .line 94
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->setIgnoreBallForMultiballStatusRollovers(Z)V

    .line 95
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->baseJackpot:I

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->jackpot:I

    .line 97
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate$1;

    invoke-direct {v0, p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate$1;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v1, v2, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->scheduleAction(JLjava/lang/Runnable;)V

    .line 107
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate$2;

    invoke-direct {v0, p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate$2;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    const-wide/16 v1, 0xdac

    invoke-virtual {p1, v1, v2, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->scheduleAction(JLjava/lang/Runnable;)V

    return-void
.end method

.method public tick(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;J)V
    .locals 0

    .line 277
    iget-boolean p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->inMultiball:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->isMultiballStarting:Z

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getBalls()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    .line 278
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->clearMultiballStatus()V

    :cond_0
    return-void
.end method
