.class Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame$1;
.super Ljava/lang/Object;
.source "PacManGame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->startUpdateHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 92
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;

    iget-object v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 94
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->finish()V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->access$100(Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;

    invoke-static {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->access$000(Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
