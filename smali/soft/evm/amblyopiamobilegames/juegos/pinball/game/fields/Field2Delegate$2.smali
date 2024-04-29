.class Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$2;
.super Ljava/lang/Object;
.source "Field2Delegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate;->ballInSensorRange(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/SensorElement;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate;

.field final synthetic val$field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$2;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate;

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$2;->val$field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 226
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$2;->val$field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    const-string v1, "LeftTubeBarrier"

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v0

    check-cast v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const/4 v1, 0x0

    .line 227
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    return-void
.end method
