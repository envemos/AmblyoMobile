.class Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong$1;
.super Ljava/lang/Object;
.source "Pong.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->startUpdateHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 85
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->finish()V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->access$100(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;

    invoke-static {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->access$000(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
