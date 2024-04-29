.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/BaseFieldDelegate;
.super Ljava/lang/Object;
.source "BaseFieldDelegate.java"

# interfaces
.implements Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$Delegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allDropTargetsInGroupHit(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/DropTargetGroupElement;)V
    .locals 0

    return-void
.end method

.method public allRolloversInGroupActivated(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;)V
    .locals 0

    return-void
.end method

.method public ballInSensorRange(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/SensorElement;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)V
    .locals 0

    return-void
.end method

.method public ballLost(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 0

    return-void
.end method

.method public flippersActivated(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;",
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public gameEnded(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 0

    return-void
.end method

.method public gameStarted(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 0

    return-void
.end method

.method public isFieldActive(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public processCollision(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;Lcom/badlogic/gdx/physics/box2d/Body;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)V
    .locals 0

    return-void
.end method

.method public tick(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;J)V
    .locals 0

    return-void
.end method
