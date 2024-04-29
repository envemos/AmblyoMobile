.class Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$1;
.super Ljava/lang/Object;
.source "Field5Delegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->startMultiball(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;

.field final synthetic val$field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$1;->val$field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 236
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$1;->val$field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->launchBall()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$1;->val$field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-static {v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->access$000(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;

    move-result-object v1

    invoke-static {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->access$100(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;)V

    .line 238
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$1;->val$field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-static {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->access$200(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    return-void
.end method
