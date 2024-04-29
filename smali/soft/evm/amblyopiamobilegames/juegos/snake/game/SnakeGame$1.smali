.class Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame$1;
.super Ljava/lang/Object;
.source "SnakeGame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->startUpdateHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 110
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->pause:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->access$000(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;

    move-result-object v0

    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;->Ready:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->setCurrentGameState(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->access$000(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;

    move-result-object v0

    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;->Running:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->setCurrentGameState(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;)V

    .line 114
    :goto_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->access$000(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;

    move-result-object v0

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->getCurrentGameState()Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

    move-result-object v0

    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;->Ready:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->access$200(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;

    invoke-static {v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->access$100(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 118
    :cond_1
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->access$000(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;

    move-result-object v0

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->Update()V

    .line 119
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->access$000(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;

    move-result-object v0

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->getCurrentGameState()Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

    move-result-object v0

    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;->Running:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

    if-ne v0, v1, :cond_3

    .line 120
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->access$300(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->access$100(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 121
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->access$200(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;

    invoke-static {v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->access$110(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;

    const-wide/16 v1, 0x4b0

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->access$100(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x64

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->access$402(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;I)I

    .line 123
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->access$000(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;

    move-result-object v0

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;

    invoke-static {v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->access$400(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)I

    move-result v1

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->setVelocidad(I)V

    goto :goto_1

    .line 125
    :cond_2
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->access$200(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;

    invoke-static {v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->access$100(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    :cond_3
    :goto_1
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->access$500(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;

    move-result-object v0

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;

    invoke-static {v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->access$000(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;

    move-result-object v1

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->getMap()[[Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->setSnakeViewMap([[Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;)V

    .line 129
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->access$500(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;

    move-result-object v0

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->invalidate()V

    .line 130
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->access$000(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;

    move-result-object v0

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->getCurrentGameState()Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

    move-result-object v0

    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;->Lost:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

    if-ne v0, v1, :cond_4

    .line 131
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->access$600(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)V

    const/4 v0, 0x1

    .line 132
    sput-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    .line 134
    :cond_4
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    if-eqz v0, :cond_5

    .line 135
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->finish()V

    :cond_5
    return-void
.end method
