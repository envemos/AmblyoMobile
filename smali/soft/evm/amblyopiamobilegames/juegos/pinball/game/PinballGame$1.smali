.class Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame$1;
.super Ljava/lang/Object;
.source "PinballGame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 79
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->tick()V

    return-void
.end method
