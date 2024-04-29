.class Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame$1;
.super Ljava/lang/Object;
.source "BreakoutGame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->startUpdateHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 94
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    if-eqz v0, :cond_1

    .line 95
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->pause:Z

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->access$000(Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->finish()V

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->access$100(Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;

    iget v1, v1, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->updateDelay:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
