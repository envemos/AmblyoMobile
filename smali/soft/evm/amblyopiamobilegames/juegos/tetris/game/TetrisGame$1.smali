.class Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame$1;
.super Ljava/lang/Object;
.source "TetrisGame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->startUpdateHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 207
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->pause:Z

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->finish()V

    goto/16 :goto_0

    .line 209
    :cond_0
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->pause:Z

    if-nez v0, :cond_2

    .line 210
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->access$000(Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;)Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    move-result-object v0

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->update()V

    .line 211
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->access$200(Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    invoke-static {v1}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->access$100(Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 213
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->access$400(Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;)Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;

    move-result-object v0

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    invoke-static {v1}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->access$300(Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;)[[I

    move-result-object v1

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    invoke-static {v2}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->access$000(Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;)Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->setTetrisViewBoard([[ILsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;)V

    .line 214
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->access$400(Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;)Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;

    move-result-object v0

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->invalidate()V

    .line 215
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->access$500(Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    const v3, 0x7f110183

    invoke-virtual {v2, v3}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->score:I

    add-int/lit8 v2, v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->access$600(Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    const v3, 0x7f11019d

    invoke-virtual {v2, v3}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    iget-object v3, v2, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;->getMilis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->formatearMilis(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->access$700(Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    const v3, 0x7f110002

    invoke-virtual {v2, v3}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->level:I

    add-int/lit8 v2, v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->OnGameLost()V

    goto :goto_0

    .line 222
    :cond_2
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->access$200(Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    invoke-static {v1}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->access$100(Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
