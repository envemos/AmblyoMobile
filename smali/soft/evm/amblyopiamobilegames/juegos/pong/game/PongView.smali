.class public Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;
.super Landroid/view/SurfaceView;
.source "PongView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private mGameThread:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;

.field private mScoreView:Landroid/widget/TextView;

.field private mStatusView:Landroid/widget/TextView;

.field private moving:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 38
    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 40
    new-instance v6, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;

    new-instance v3, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView$1;

    invoke-direct {v3, p0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView$1;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;)V

    new-instance v4, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView$2;

    invoke-direct {v4, p0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView$2;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;)V

    move-object v0, v6

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;-><init>(Landroid/view/SurfaceHolder;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Landroid/util/AttributeSet;)V

    iput-object v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;->mGameThread:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;

    const/4 p1, 0x1

    .line 59
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;->setFocusable(Z)V

    return-void
.end method

.method static synthetic access$000(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;)Landroid/widget/TextView;
    .locals 0

    .line 17
    iget-object p0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;->mStatusView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;)Landroid/widget/TextView;
    .locals 0

    .line 17
    iget-object p0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;->mScoreView:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public getGameThread()Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;
    .locals 1

    .line 141
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;->mGameThread:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;->moving:Z

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;->mGameThread:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;

    invoke-virtual {v0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->handleMoveHumanPaddleEvent(Landroid/view/MotionEvent;)V

    :cond_1
    return v2

    :cond_2
    const/4 p1, 0x0

    .line 134
    iput-boolean p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;->moving:Z

    :goto_0
    return v2

    .line 119
    :cond_3
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;->mGameThread:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->isBetweenRounds()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;->mGameThread:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;

    invoke-virtual {p1, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->setState(I)V

    goto :goto_1

    .line 123
    :cond_4
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;->mGameThread:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;

    invoke-virtual {v0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->isTouchOnHumanPaddle(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 124
    iput-boolean v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;->moving:Z

    :cond_5
    :goto_1
    return v2
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 79
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;->mGameThread:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->pause()V

    :cond_0
    return-void
.end method

.method public setScoreView(Landroid/widget/TextView;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;->mScoreView:Landroid/widget/TextView;

    return-void
.end method

.method public setStatusView(Landroid/widget/TextView;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;->mStatusView:Landroid/widget/TextView;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 85
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;->mGameThread:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;

    invoke-virtual {p1, p3, p4}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->setSurfaceSize(II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 90
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;->mGameThread:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->setRunning(Z)V

    .line 92
    :try_start_0
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;->mGameThread:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/IllegalThreadStateException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 102
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;->mGameThread:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->setRunning(Z)V

    const/4 p1, 0x1

    :catch_0
    :goto_0
    if-eqz p1, :cond_0

    .line 105
    :try_start_0
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;->mGameThread:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
