.class public interface abstract Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$Delegate;
.super Ljava/lang/Object;
.source "Field.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract allDropTargetsInGroupHit(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/DropTargetGroupElement;)V
.end method

.method public abstract allRolloversInGroupActivated(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;)V
.end method

.method public abstract ballInSensorRange(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/SensorElement;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)V
.end method

.method public abstract ballLost(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
.end method

.method public abstract flippersActivated(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;",
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gameEnded(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
.end method

.method public abstract gameStarted(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
.end method

.method public abstract isFieldActive(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)Z
.end method

.method public abstract processCollision(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;Lcom/badlogic/gdx/physics/box2d/Body;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)V
.end method

.method public abstract tick(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;J)V
.end method
