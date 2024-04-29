.class Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame$1;
.super Ljava/lang/Object;
.source "SpaceInvadersGame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;->startUpdateHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 49
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;

    iget-object v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;->spaceInvadersView:Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->postInvalidate()V

    .line 51
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;

    iget-object v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;->spaceInvadersView:Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->clearAnimation()V

    .line 52
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;

    iget-object v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;->spaceInvadersView:Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->destroyDrawingCache()V

    .line 53
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;->finish()V

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;->access$100(Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;

    invoke-static {v1}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;->access$000(Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
