.class Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field1Delegate$1;
.super Ljava/lang/Object;
.source "Field1Delegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field1Delegate;->startMultiball(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field1Delegate;

.field final synthetic val$field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field1Delegate;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field1Delegate$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field1Delegate;

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field1Delegate$1;->val$field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 47
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field1Delegate$1;->val$field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getBalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field1Delegate$1;->val$field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->launchBall()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;

    :cond_0
    return-void
.end method
