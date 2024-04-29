.class public Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;
.super Landroid/app/Activity;
.source "SnakeGame.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;


# instance fields
.field private auto:Z

.field private fin:Landroid/media/MediaPlayer;

.field private gameEngine:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;

.field private final handler:Landroid/os/Handler;

.field prefs:Landroid/content/SharedPreferences;

.field private prevX:F

.field private prevY:F

.field progressDialog:Landroid/app/ProgressDialog;

.field snake:Landroid/content/SharedPreferences;

.field private snakeView:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;

.field private updateDelay:J

.field user:Landroid/content/SharedPreferences;

.field private velocidad:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x4b0

    .line 39
    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->updateDelay:J

    return-void
.end method

.method private OnGameLost()V
    .locals 3

    .line 141
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->gameEngine:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->isSonido()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->fin:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f1100ba

    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->gameEngine:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->getManzanas()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f1100e8

    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 144
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->insertar()V

    return-void
.end method

.method static synthetic access$000(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;
    .locals 0

    .line 34
    iget-object p0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->gameEngine:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;

    return-object p0
.end method

.method static synthetic access$100(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)J
    .locals 2

    .line 34
    iget-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->updateDelay:J

    return-wide v0
.end method

.method static synthetic access$110(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)J
    .locals 4

    .line 34
    iget-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->updateDelay:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->updateDelay:J

    return-wide v0
.end method

.method static synthetic access$200(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)Landroid/os/Handler;
    .locals 0

    .line 34
    iget-object p0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->auto:Z

    return p0
.end method

.method static synthetic access$400(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)I
    .locals 0

    .line 34
    iget p0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->velocidad:I

    return p0
.end method

.method static synthetic access$402(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;I)I
    .locals 0

    .line 34
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->velocidad:I

    return p1
.end method

.method static synthetic access$500(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;
    .locals 0

    .line 34
    iget-object p0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->snakeView:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;

    return-object p0
.end method

.method static synthetic access$600(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->OnGameLost()V

    return-void
.end method

.method private ajustarJuego()V
    .locals 3

    .line 101
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->ajustarColores(Landroid/content/SharedPreferences;)V

    .line 102
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->snake:Landroid/content/SharedPreferences;

    const-string v1, "auto"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 103
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->snake:Landroid/content/SharedPreferences;

    const-string v1, "muros"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    return-void
.end method

.method private insertar()V
    .locals 3

    const/4 v0, 0x1

    .line 148
    sput-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->jugado:Z

    .line 149
    sput-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->insertar:Z

    const-string v0, "Usuario"

    const/4 v1, 0x0

    .line 150
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->user:Landroid/content/SharedPreferences;

    const-string v1, "correo"

    const-string v2, ""

    .line 151
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->correo:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->user:Landroid/content/SharedPreferences;

    const-string v1, "nombre"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->gameEngine:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->getScore()I

    move-result v0

    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->score1:I

    .line 154
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->gameEngine:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->getManzanas()I

    move-result v0

    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->score2:I

    .line 155
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;->getMilis()J

    move-result-wide v0

    sput-wide v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->tiempo:J

    .line 156
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->muros:Z

    if-eqz v0, :cond_0

    const-string v0, "SNAKE (CON MUROS)"

    .line 157
    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre_juego:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "SNAKE (SIN MUROS)"

    .line 159
    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre_juego:Ljava/lang/String;

    .line 160
    :goto_0
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->startProgressDialog()V

    return-void
.end method

.method private pintarFondo()V
    .locals 3

    .line 94
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "fondo"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 214
    sput-object p0, Lsoft/evm/amblyopiamobilegames/juegos/Pausa;->context:Landroid/content/Context;

    .line 215
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Pausa;->pausa()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 65
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->requestWindowFeature(I)Z

    .line 66
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f0d0030

    .line 69
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->setContentView(I)V

    const v0, 0x7f0a01fd

    .line 71
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->snakeView:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;

    .line 72
    invoke-virtual {v0, p0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->startUpdateHandler()V

    const-string v0, "MisPreferencias"

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "Snake"

    .line 77
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->snake:Landroid/content/SharedPreferences;

    .line 78
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->pintarFondo()V

    .line 79
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->ajustarJuego()V

    .line 80
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->snake:Landroid/content/SharedPreferences;

    const-string v2, "velocidad"

    const/4 v3, 0x5

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->velocidad:I

    .line 81
    iget-wide v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->updateDelay:J

    mul-int/lit8 v0, v0, 0x64

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->updateDelay:J

    .line 82
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->snake:Landroid/content/SharedPreferences;

    const-string v2, "auto"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->auto:Z

    const v0, 0x7f100003

    .line 83
    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->fin:Landroid/media/MediaPlayer;

    .line 85
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->snake:Landroid/content/SharedPreferences;

    const-string v2, "muros"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "sonido"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->velocidad:I

    invoke-direct {v0, p0, v1, p1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;-><init>(Landroid/content/Context;ZZI)V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->gameEngine:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;

    .line 86
    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->initGame()V

    .line 87
    new-instance p1, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    invoke-direct {p1}, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;-><init>()V

    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    .line 88
    new-instance p1, Ljava/lang/Thread;

    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 89
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 57
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 177
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 184
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 187
    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->prevX:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->prevY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 189
    iget p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->prevX:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 191
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->gameEngine:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;

    sget-object p2, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;->East:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->UpdateDirection(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;)V

    goto :goto_0

    .line 194
    :cond_1
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->gameEngine:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;

    sget-object p2, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;->West:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->UpdateDirection(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;)V

    goto :goto_0

    .line 198
    :cond_2
    iget p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->prevY:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    .line 200
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->gameEngine:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;

    sget-object p2, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;->South:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->UpdateDirection(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;)V

    goto :goto_0

    .line 204
    :cond_3
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->gameEngine:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;

    sget-object p2, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;->North:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->UpdateDirection(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;)V

    goto :goto_0

    .line 179
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->prevX:F

    .line 180
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->prevY:F

    :goto_0
    return v0
.end method

.method public startProgressDialog()V
    .locals 3

    .line 164
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 165
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->progressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f110070

    invoke-virtual {p0, v2}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 168
    :try_start_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    const-string v0, "39"

    const-string v1, "Error"

    .line 171
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startUpdateHandler()V
    .locals 4

    .line 107
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->handler:Landroid/os/Handler;

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame$1;

    invoke-direct {v1, p0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame$1;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;)V

    iget-wide v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->updateDelay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
