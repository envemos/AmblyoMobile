.class Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$1;
.super Ljava/lang/Object;
.source "Field.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->doBallLost()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

.field final synthetic val$msg2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Ljava/lang/String;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$1;->val$msg2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 298
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$1;->val$msg2:Ljava/lang/String;

    const-wide/16 v2, 0x5dc

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;JZ)V

    return-void
.end method
