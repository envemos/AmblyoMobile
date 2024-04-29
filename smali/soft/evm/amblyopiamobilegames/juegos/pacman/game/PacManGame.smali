.class public Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;
.super Landroid/app/Activity;
.source "PacManGame.java"


# static fields
.field static activity:Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;


# instance fields
.field private drawingView:Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;

.field private globals:Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/Globals;

.field private final handler:Landroid/os/Handler;

.field private pacman:Landroid/content/SharedPreferences;

.field player:Landroid/media/MediaPlayer;

.field private prefs:Landroid/content/SharedPreferences;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private updateDelay:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x2710

    .line 86
    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->updateDelay:J

    return-void
.end method

.method static synthetic access$000(Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;)J
    .locals 2

    .line 15
    iget-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->updateDelay:J

    return-wide v0
.end method

.method static synthetic access$100(Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;)Landroid/os/Handler;
    .locals 0

    .line 15
    iget-object p0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static getInstance()Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;
    .locals 1

    .line 72
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->activity:Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 80
    sput-object p0, Lsoft/evm/amblyopiamobilegames/juegos/Pausa;->context:Landroid/content/Context;

    .line 81
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Pausa;->pausa()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "Pacman"

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->pacman:Landroid/content/SharedPreferences;

    const-string v1, "level"

    const/4 v2, 0x1

    .line 31
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->levels:I

    .line 34
    new-instance p1, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;

    invoke-direct {p1, p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->drawingView:Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;

    .line 35
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->setContentView(Landroid/view/View;)V

    .line 36
    sput-object p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->activity:Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;

    .line 37
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/Globals;->getInstance()Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/Globals;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->globals:Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/Globals;

    const-string p1, "info"

    .line 38
    invoke-virtual {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "high_score"

    .line 39
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 40
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->globals:Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/Globals;

    invoke-virtual {v1, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/Globals;->setHighScore(I)V

    const p1, 0x7f100004

    .line 43
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->player:Landroid/media/MediaPlayer;

    const/high16 v1, 0x42c80000    # 100.0f

    .line 44
    invoke-virtual {p1, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 45
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 46
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "MisPreferencias"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "sonido"

    .line 47
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 51
    :cond_0
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->startUpdateHandler()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    const-string v0, "info"

    const-string v1, "onPause"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 58
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->drawingView:Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->pause()V

    .line 59
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->globals:Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/Globals;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/Globals;->getHighScore()I

    move-result v1

    const-string v2, "high_score"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "info"

    const-string v1, "onResume"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 68
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->drawingView:Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->resume()V

    return-void
.end method

.method public startUpdateHandler()V
    .locals 4

    .line 89
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->handler:Landroid/os/Handler;

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame$1;

    invoke-direct {v1, p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame$1;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;)V

    iget-wide v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;->updateDelay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
