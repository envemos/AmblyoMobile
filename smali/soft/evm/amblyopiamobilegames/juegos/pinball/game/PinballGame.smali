.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;
.super Landroid/app/Activity;
.source "PinballGame.java"


# static fields
.field static final ACTIVITY_PREFERENCES:I = 0x1

.field static END_GAME_DELAY:J = 0x0L

.field static HIGHSCORES_PREFS_KEY:Ljava/lang/String; = null

.field static INITIAL_LEVEL_PREFS_KEY:Ljava/lang/String; = null

.field static MAX_NUM_HIGH_SCORES:I = 0x0

.field static OLD_HIGHSCORE_PREFS_KEY:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "PinballGame"

.field public static level:I


# instance fields
.field final NIVEL_ELEGIDO:I

.field buttonPanel:Landroid/view/View;

.field callTick:Ljava/lang/Runnable;

.field canvasFieldView:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;

.field chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

.field endGameButton:Landroid/widget/Button;

.field endGameTime:Ljava/lang/Long;

.field field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

.field fieldDriver:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;

.field fieldViewManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

.field glFieldView:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;

.field handler:Landroid/os/Handler;

.field highScores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field orientationListener:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/OrientationListener;

.field prefs:Landroid/content/SharedPreferences;

.field scoreView:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;

.field switchTableButton:Landroid/widget/Button;

.field unlimitedBallsToggle:Landroid/widget/CheckBox;

.field useZoom:Z

.field user:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    invoke-static {}, Lcom/badlogic/gdx/physics/box2d/Box2D;->init()V

    const/4 v0, 0x1

    .line 83
    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->level:I

    const/4 v0, 0x5

    .line 85
    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->MAX_NUM_HIGH_SCORES:I

    const-string v0, "highScores"

    .line 86
    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->HIGHSCORES_PREFS_KEY:Ljava/lang/String;

    const-string v0, "highScore"

    .line 87
    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->OLD_HIGHSCORE_PREFS_KEY:Ljava/lang/String;

    const-string v0, "initialLevel"

    .line 88
    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->INITIAL_LEVEL_PREFS_KEY:Ljava/lang/String;

    const-wide/16 v0, 0x3e8

    .line 91
    sput-wide v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->END_GAME_DELAY:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x3

    .line 56
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->NIVEL_ELEGIDO:I

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->handler:Landroid/os/Handler;

    .line 77
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame$1;

    invoke-direct {v0, p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame$1;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;)V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->callTick:Ljava/lang/Runnable;

    .line 82
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-direct {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->useZoom:Z

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->END_GAME_DELAY:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->endGameTime:Ljava/lang/Long;

    .line 94
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;

    invoke-direct {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->fieldDriver:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;

    .line 95
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-direct {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->fieldViewManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    return-void
.end method

.method private insertar()V
    .locals 5

    const/4 v0, 0x1

    .line 481
    sput-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->jugado:Z

    .line 482
    sput-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->insertar:Z

    const-string v1, "Usuario"

    const/4 v2, 0x0

    .line 483
    invoke-virtual {p0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->user:Landroid/content/SharedPreferences;

    const-string v3, "correo"

    const-string v4, ""

    .line 484
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->correo:Ljava/lang/String;

    .line 485
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->user:Landroid/content/SharedPreferences;

    const-string v3, "nombre"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre:Ljava/lang/String;

    .line 486
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->pinball:Ljava/lang/String;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre_juego:Ljava/lang/String;

    .line 487
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getScore()J

    move-result-wide v3

    long-to-int v1, v3

    sput v1, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->score1:I

    .line 488
    sget v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->level:I

    sput v1, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->score2:I

    .line 489
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;->getMilis()J

    move-result-wide v3

    sput-wide v3, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->tiempo:J

    const-string v1, "connectivity"

    .line 492
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 493
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 494
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    sput-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->internet:Z

    goto :goto_0

    .line 497
    :cond_0
    sput-boolean v2, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->internet:Z

    .line 499
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->insertar(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 501
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public doAbout(Landroid/view/View;)V
    .locals 0

    .line 510
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->gotoAbout()V

    return-void
.end method

.method public doEndGame(Landroid/view/View;)V
    .locals 0

    .line 476
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->unpauseGame()V

    .line 477
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->endGame()V

    return-void
.end method

.method public doPreferences(Landroid/view/View;)V
    .locals 0

    .line 506
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->gotoPreferences()V

    return-void
.end method

.method public doStartGame(Landroid/view/View;)V
    .locals 6

    .line 450
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object p1

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 451
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->unpauseGame()V

    return-void

    .line 455
    :cond_0
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->endGameTime:Ljava/lang/Long;

    if-eqz p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->endGameTime:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-wide v4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->END_GAME_DELAY:J

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    goto :goto_1

    .line 456
    :cond_1
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object p1

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->isGameInProgress()Z

    move-result p1

    if-nez p1, :cond_3

    .line 457
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->buttonPanel:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 458
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->level:I

    invoke-virtual {p1, p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->resetForLevel(Landroid/content/Context;I)V

    .line 460
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->unlimitedBallsToggle:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 461
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->startGameWithUnlimitedBalls()V

    goto :goto_0

    .line 464
    :cond_2
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->startGame()V

    .line 466
    :goto_0
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->playStart()V

    const/4 p1, 0x0

    .line 467
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->endGameTime:Ljava/lang/Long;

    .line 469
    new-instance p1, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    invoke-direct {p1}, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;-><init>()V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    .line 470
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_3
    :goto_1
    return-void
.end method

.method public doSwitchTable(Landroid/view/View;)V
    .locals 2

    .line 529
    sget p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->level:I

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->numberOfLevels()I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->level:I

    add-int/2addr v1, p1

    :goto_0
    sput v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->level:I

    .line 530
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    monitor-enter p1

    .line 531
    :try_start_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    sget v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->level:I

    invoke-virtual {v0, p0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->resetForLevel(Landroid/content/Context;I)V

    .line 532
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    sget p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->level:I

    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->setInitialLevel(I)V

    .line 534
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->highScoresFromPreferencesForCurrentLevel()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->highScores:Ljava/util/List;

    .line 535
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->scoreView:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;

    invoke-virtual {v0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->setHighScores(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v0

    .line 532
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method getInitialLevel()I
    .locals 3

    .line 435
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 436
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->INITIAL_LEVEL_PREFS_KEY:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 437
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->numberOfLevels()I

    move-result v2

    if-le v0, v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method gotoAbout()V
    .locals 1

    .line 281
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->level:I

    invoke-static {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AboutActivity;->startForLevel(Landroid/content/Context;I)Landroid/content/Intent;

    return-void
.end method

.method gotoPreferences()V
    .locals 3

    .line 276
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/BouncyPreferences;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    .line 277
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method highScorePrefsKeyForLevel(I)Ljava/lang/String;
    .locals 2

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->HIGHSCORES_PREFS_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method highScoresFromPreferences(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 378
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 379
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->highScorePrefsKeyForLevel(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 380
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-wide/16 v2, 0x0

    if-lez v1, :cond_1

    :try_start_0
    const-string v0, ","

    .line 382
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 384
    array-length v1, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, p1, v4

    .line 385
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 390
    :catch_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 395
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->OLD_HIGHSCORE_PREFS_KEY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->level:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 396
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method highScoresFromPreferencesForCurrentLevel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 413
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->level:I

    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->highScoresFromPreferences(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 266
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->updateFromPreferences()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "MisPreferencias"

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->prefs:Landroid/content/SharedPreferences;

    .line 109
    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->ajustarColores(Landroid/content/SharedPreferences;)V

    .line 110
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result p1

    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AmblyoMobileColor;->valueOf(I)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object p1

    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->DEFAULT_WALL_COLOR_PINBALL:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    .line 111
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result p1

    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AmblyoMobileColor;->valueOf(I)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object p1

    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->DEFAULT_COLOR_PINBALL:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    .line 112
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result p1

    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AmblyoMobileColor;->valueOf(I)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object p1

    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->DEFAULT_COLOR_PINBALL:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    .line 113
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result p1

    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AmblyoMobileColor;->valueOf(I)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object p1

    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/BumperElement;->DEFAULT_COLOR_PINBALL:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    .line 114
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result p1

    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AmblyoMobileColor;->valueOf(I)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object p1

    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/DropTargetGroupElement;->DEFAULT_COLOR_PINBALL:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    const-string p1, "os.arch"

    .line 117
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App started, os.arch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PinballGame"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 120
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->requestWindowFeature(I)Z

    const p1, 0x7f0d0029

    .line 121
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->setContentView(I)V

    .line 123
    invoke-static {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->setContext(Landroid/content/Context;)V

    .line 124
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->getInitialLevel()I

    move-result p1

    sput p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->level:I

    .line 125
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v1, p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->resetForLevel(Landroid/content/Context;I)V

    .line 126
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool$Player;

    invoke-direct {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool$Player;-><init>()V

    invoke-virtual {p1, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->setAudioPlayer(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AudioPlayer;)V

    const p1, 0x7f0a0091

    .line 128
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->canvasFieldView:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;

    const p1, 0x7f0a0115

    .line 129
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->glFieldView:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;

    .line 131
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->fieldViewManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {p1, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->setField(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 132
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->fieldViewManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame$2;

    invoke-direct {v1, p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame$2;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;)V

    invoke-virtual {p1, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->setStartGameAction(Ljava/lang/Runnable;)V

    const p1, 0x7f0a01d4

    .line 135
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->scoreView:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;

    .line 136
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {p1, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->setField(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 138
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->fieldDriver:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->fieldViewManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {p1, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->setFieldViewManager(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;)V

    .line 139
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->fieldDriver:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {p1, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->setField(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 141
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->highScoresFromPreferencesForCurrentLevel()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->highScores:Ljava/util/List;

    .line 142
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->scoreView:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;

    invoke-virtual {v1, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->setHighScores(Ljava/util/List;)V

    const p1, 0x7f0a0087

    .line 144
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->buttonPanel:Landroid/view/View;

    const p1, 0x7f0a021d

    .line 145
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->switchTableButton:Landroid/widget/Button;

    const/16 v1, 0x8

    .line 146
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    const p1, 0x7f0a00f3

    .line 147
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->endGameButton:Landroid/widget/Button;

    const p1, 0x7f0a0293

    .line 148
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->unlimitedBallsToggle:Landroid/widget/CheckBox;

    .line 149
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 160
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->updateFromPreferences()V

    .line 163
    invoke-static {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->initSounds(Landroid/content/Context;)V

    .line 164
    new-instance p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame$3;

    invoke-direct {p1, p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame$3;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;)V

    new-array v0, v0, [Ljava/lang/Void;

    .line 170
    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 p1, 0x3

    .line 172
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->setVolumeControlStream(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 257
    :try_start_0
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->cleanup()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 262
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 214
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object v0

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->isGameInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object v0

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->pauseGame()V

    .line 216
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->showPausedButtons()V

    const/4 p1, 0x1

    return p1

    .line 220
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 0

    .line 186
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->pauseGame()V

    .line 187
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 6

    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 179
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "setSystemUiVisibility"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->scoreView:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 192
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    .line 194
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->pauseGame()V

    goto :goto_0

    .line 200
    :cond_0
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object p1

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->isGameInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->glFieldView:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 201
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->fieldDriver:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->drawField()V

    .line 202
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->showPausedButtons()V

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->unpauseGame()V

    :goto_0
    return-void
.end method

.method public pauseGame()V
    .locals 2

    .line 224
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->pauseMusic()V

    .line 225
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object v0

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->setPaused(Z)V

    .line 228
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->orientationListener:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/OrientationListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/OrientationListener;->stop()V

    .line 229
    :cond_1
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->fieldDriver:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->stop()V

    .line 230
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->glFieldView:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->onPause()V

    :cond_2
    return-void
.end method

.method public scoreViewClicked(Landroid/view/View;)V
    .locals 0

    .line 514
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object p1

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->isGameInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 515
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object p1

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 516
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->unpauseGame()V

    goto :goto_0

    .line 519
    :cond_0
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->pauseGame()V

    .line 520
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->showPausedButtons()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 524
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->doStartGame(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method setInitialLevel(I)V
    .locals 2

    .line 442
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 443
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 444
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->INITIAL_LEVEL_PREFS_KEY:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 445
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method showPausedButtons()V
    .locals 3

    .line 249
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->endGameButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->switchTableButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->unlimitedBallsToggle:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->buttonPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method tick()V
    .locals 4

    .line 327
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->scoreView:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->invalidate()V

    .line 328
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->scoreView:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->fieldDriver:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->getAverageFPS()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->setFPS(D)V

    .line 329
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->updateHighScoreAndButtonPanel()V

    .line 330
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->callTick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public unpauseGame()V
    .locals 4

    .line 234
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object v0

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->setPaused(Z)V

    .line 237
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->callTick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4b

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->orientationListener:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/OrientationListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/OrientationListener;->start()V

    .line 240
    :cond_1
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->fieldDriver:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->start()V

    .line 241
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->glFieldView:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->onResume()V

    .line 243
    :cond_2
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object v0

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->isGameInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->buttonPanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method updateFromPreferences()V
    .locals 6

    .line 286
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->fieldViewManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    const-string v2, "independentFlippers"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->setIndependentFlippers(Z)V

    .line 288
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->scoreView:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;

    const-string v2, "showFPS"

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->setShowFPS(Z)V

    const-string v1, "highQuality"

    .line 292
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 293
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->fieldViewManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->isHighQuality()Z

    move-result v2

    .line 294
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->fieldViewManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {v5, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->setHighQuality(Z)V

    .line 295
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->fieldViewManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {v5}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->isHighQuality()Z

    move-result v5

    if-eq v2, v5, :cond_0

    .line 296
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->fieldDriver:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->resetFrameRate()V

    .line 298
    :cond_0
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->scoreView:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;

    invoke-virtual {v2, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->setHighQuality(Z)V

    const-string v1, "useOpenGL"

    .line 300
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    .line 302
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->glFieldView:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 303
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->canvasFieldView:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;

    invoke-virtual {v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->setVisibility(I)V

    .line 304
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->glFieldView:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;

    invoke-virtual {v1, v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->setVisibility(I)V

    .line 305
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->fieldViewManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->glFieldView:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;

    invoke-virtual {v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->setFieldView(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;)V

    .line 306
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->fieldDriver:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->resetFrameRate()V

    goto :goto_0

    .line 310
    :cond_1
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->canvasFieldView:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 311
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->glFieldView:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;

    invoke-virtual {v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->setVisibility(I)V

    .line 312
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->canvasFieldView:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;

    invoke-virtual {v1, v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->setVisibility(I)V

    .line 313
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->fieldViewManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->canvasFieldView:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;

    invoke-virtual {v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->setFieldView(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;)V

    .line 314
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->fieldDriver:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->resetFrameRate()V

    :cond_2
    :goto_0
    const-string v1, "zoom"

    .line 318
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->useZoom:Z

    .line 319
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->fieldViewManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    if-eqz v1, :cond_3

    const v1, 0x3fb33333    # 1.4f

    goto :goto_1

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v2, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->setZoom(F)V

    const-string v1, "sound"

    .line 321
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->setSoundEnabled(Z)V

    const-string v1, "music"

    .line 322
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->setMusicEnabled(Z)V

    return-void
.end method

.method updateHighScore(IJ)V
    .locals 2

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->highScores:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 419
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 421
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 422
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    sget p3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->MAX_NUM_HIGH_SCORES:I

    if-le p2, p3, :cond_0

    const/4 p2, 0x0

    .line 423
    invoke-interface {v0, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 425
    :cond_0
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->highScores:Ljava/util/List;

    .line 426
    invoke-virtual {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->writeHighScoresToPreferences(ILjava/util/List;)V

    .line 427
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->scoreView:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;

    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->highScores:Ljava/util/List;

    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->setHighScores(Ljava/util/List;)V

    return-void
.end method

.method updateHighScoreAndButtonPanel()V
    .locals 5

    .line 339
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->buttonPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    monitor-enter v0

    .line 341
    :try_start_0
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object v1

    .line 342
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object v2

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->isGameInProgress()Z

    move-result v2

    if-nez v2, :cond_3

    .line 344
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    if-eqz v2, :cond_1

    .line 345
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->insertar()V

    .line 348
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->endGameTime:Ljava/lang/Long;

    .line 349
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->endGameButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 350
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->switchTableButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 351
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->unlimitedBallsToggle:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 352
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->buttonPanel:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 355
    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->hasUnlimitedBalls()Z

    move-result v1

    if-nez v1, :cond_3

    .line 356
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object v1

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->getScore()J

    move-result-wide v1

    .line 359
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->highScores:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-gtz v3, :cond_2

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->highScores:Ljava/util/List;

    .line 360
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sget v4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->MAX_NUM_HIGH_SCORES:I

    if-ge v3, v4, :cond_3

    .line 361
    :cond_2
    invoke-virtual {p0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->updateHighScoreForCurrentLevel(J)V

    .line 365
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateHighScoreForCurrentLevel(J)V
    .locals 1

    .line 431
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->level:I

    invoke-virtual {p0, v0, p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->updateHighScore(IJ)V

    return-void
.end method

.method writeHighScoresToPreferences(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 402
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 403
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, ","

    .line 404
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    :cond_0
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 407
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 408
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->highScorePrefsKeyForLevel(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 409
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
