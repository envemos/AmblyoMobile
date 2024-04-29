.class Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame$1;
.super Ljava/lang/Object;
.source "FlappyGame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->startUpdateHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 92
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->pause:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->finish()V

    goto :goto_0

    .line 94
    :cond_0
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;

    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;->getMilis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->access$002(Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;J)J

    .line 96
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->saltos:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->saltos:I

    .line 97
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->access$100(Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;)V

    .line 98
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->access$200(Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;)V

    const/4 v0, 0x0

    .line 99
    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->saltos:I

    .line 100
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->finish()V

    goto :goto_0

    .line 102
    :cond_1
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->pause:Z

    if-nez v0, :cond_2

    .line 103
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->access$300(Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;)V

    .line 104
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->access$400(Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;

    iget v1, v1, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->updateDelay:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;

    const/4 v1, 0x1

    iput v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->updateDelay:I

    .line 106
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;

    iget-object v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->flappyView:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;

    iget-object v1, v1, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->bird:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;

    invoke-static {v2}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->access$500(Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;->setBird(Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;Ljava/util/ArrayList;)V

    .line 107
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;

    iget-object v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->flappyView:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;->invalidate()V

    goto :goto_0

    .line 110
    :cond_2
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->access$400(Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;

    iget v1, v1, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->updateDelay:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
