.class public Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;
.super Landroid/app/Activity;
.source "Pong.java"


# static fields
.field private static final MENU_EXIT:I = 0x3

.field private static final MENU_NEW_GAME:I = 0x1

.field private static final MENU_RESUME:I = 0x2

.field public static screenX:I

.field public static screenY:I


# instance fields
.field private final handler:Landroid/os/Handler;

.field private mGameThread:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;

.field prefs:Landroid/content/SharedPreferences;

.field private updateDelay:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    .line 79
    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->updateDelay:J

    return-void
.end method

.method static synthetic access$000(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;)J
    .locals 2

    .line 22
    iget-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->updateDelay:J

    return-wide v0
.end method

.method static synthetic access$100(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;)Landroid/os/Handler;
    .locals 0

    .line 22
    iget-object p0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private iniciarScreen()V
    .locals 2

    .line 29
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 31
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 33
    iget v0, v1, Landroid/graphics/Point;->x:I

    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->screenX:I

    .line 34
    iget v0, v1, Landroid/graphics/Point;->y:I

    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->screenY:I

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 140
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 134
    sput-object p0, Lsoft/evm/amblyopiamobilegames/juegos/Pausa;->context:Landroid/content/Context;

    .line 135
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Pausa;->pausa()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "MisPreferencias"

    const/4 v1, 0x0

    .line 48
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->prefs:Landroid/content/SharedPreferences;

    .line 50
    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->ajustarColores(Landroid/content/SharedPreferences;)V

    .line 52
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->iniciarScreen()V

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d002a

    .line 56
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->setContentView(I)V

    const v0, 0x7f0a0150

    .line 58
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;

    const v1, 0x7f0a0217

    .line 59
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;->setStatusView(Landroid/widget/TextView;)V

    const v2, 0x7f0a01d3

    .line 60
    invoke-virtual {p0, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;->setScoreView(Landroid/widget/TextView;)V

    .line 62
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 63
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_vago()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;->getGameThread()Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->mGameThread:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 67
    invoke-virtual {v0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->setState(I)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->restoreState(Landroid/os/Bundle;)V

    .line 73
    :goto_0
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->startUpdateHandler()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f110112

    .line 109
    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v2, 0x2

    const v3, 0x7f110114

    .line 110
    invoke-interface {p1, v0, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v2, 0x3

    const v3, 0x7f110110

    .line 111
    invoke-interface {p1, v0, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 118
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 123
    :cond_0
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->finish()V

    return v0

    .line 126
    :cond_1
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->mGameThread:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->unPause()V

    return v0

    .line 120
    :cond_2
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->mGameThread:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->startNewGame()V

    return v0
.end method

.method protected onPause()V
    .locals 1

    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 97
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->mGameThread:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->pause()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 103
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->mGameThread:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;

    invoke-virtual {v0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->saveState(Landroid/os/Bundle;)V

    return-void
.end method

.method public startUpdateHandler()V
    .locals 4

    .line 82
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->handler:Landroid/os/Handler;

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong$1;

    invoke-direct {v1, p0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong$1;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;)V

    iget-wide v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->updateDelay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
