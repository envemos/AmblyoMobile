.class public Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;
.super Landroid/app/Activity;
.source "SpaceInvadersGame.java"


# instance fields
.field private final handler:Landroid/os/Handler;

.field spaceInvadersView:Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;

.field private updateDelay:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    .line 43
    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;->updateDelay:J

    return-void
.end method

.method static synthetic access$000(Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;)J
    .locals 2

    .line 12
    iget-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;->updateDelay:J

    return-wide v0
.end method

.method static synthetic access$100(Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;)Landroid/os/Handler;
    .locals 0

    .line 12
    iget-object p0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 87
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 81
    sput-object p0, Lsoft/evm/amblyopiamobilegames/juegos/Pausa;->context:Landroid/content/Context;

    .line 82
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Pausa;->pausa()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 24
    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->pause:Z

    const/4 p1, 0x0

    .line 25
    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    .line 28
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 30
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 34
    new-instance p1, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p1, p0, v1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;-><init>(Landroid/content/Context;II)V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;->spaceInvadersView:Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;

    .line 35
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;->setContentView(Landroid/view/View;)V

    .line 38
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;->startUpdateHandler()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 76
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;->spaceInvadersView:Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->pause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 67
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;->spaceInvadersView:Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->resume()V

    return-void
.end method

.method public startUpdateHandler()V
    .locals 4

    .line 46
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;->handler:Landroid/os/Handler;

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame$1;

    invoke-direct {v1, p0}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame$1;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;)V

    iget-wide v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;->updateDelay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
