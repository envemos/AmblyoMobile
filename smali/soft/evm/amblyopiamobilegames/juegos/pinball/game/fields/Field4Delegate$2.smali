.class Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate$2;
.super Ljava/lang/Object;
.source "Field4Delegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->startMultiball(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;

.field final synthetic val$field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate$2;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate$2;->val$field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 110
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate$2;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->isMultiballStarting:Z

    .line 111
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate$2;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;

    iget-object v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->lockedBallRollovers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setIgnoreBall(Z)V

    .line 112
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate$2;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;

    iget-object v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate;->lockedBallRollovers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setVisible(Z)V

    .line 113
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate$2;->val$field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getBalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field4Delegate$2;->val$field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->launchBall()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;

    :cond_0
    return-void
.end method
