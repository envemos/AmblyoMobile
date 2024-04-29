.class Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$1;
.super Ljava/lang/Object;
.source "RolloverGroupElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->tick(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

.field final synthetic val$rollover:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$1;->val$rollover:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 190
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    iget-object v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$1;->val$rollover:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
