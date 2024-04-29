.class Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame$2;
.super Ljava/lang/Object;
.source "PinballGame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->onCreate(Landroid/os/Bundle;)V
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

    .line 132
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame$2;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 133
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame$2;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->doStartGame(Landroid/view/View;)V

    return-void
.end method
