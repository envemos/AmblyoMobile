.class Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/DropTargetGroupElement$1;
.super Ljava/lang/Object;
.source "DropTargetGroupElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/DropTargetGroupElement;->handleCollision(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;Lcom/badlogic/gdx/physics/box2d/Body;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/DropTargetGroupElement;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/DropTargetGroupElement;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/DropTargetGroupElement$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/DropTargetGroupElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 146
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/DropTargetGroupElement$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/DropTargetGroupElement;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/DropTargetGroupElement;->makeAllTargetsVisible()V

    return-void
.end method
