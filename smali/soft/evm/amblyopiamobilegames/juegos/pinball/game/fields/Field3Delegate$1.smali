.class Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$1;
.super Ljava/lang/Object;
.source "Field3Delegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->startMultiball(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;

.field final synthetic val$field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$1;->val$field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 333
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$1;->val$field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getBalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$1;->val$field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->launchBall()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;

    .line 334
    :cond_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;

    iget-object v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->multiballStatus:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;->ACTIVE:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;

    if-eq v0, v1, :cond_1

    .line 335
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;->ACTIVE:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;

    iput-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->multiballStatus:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;

    .line 336
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->initializeMultiballFlashers()V

    :cond_1
    return-void
.end method
