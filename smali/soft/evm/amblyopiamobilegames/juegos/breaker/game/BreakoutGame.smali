.class public Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;
.super Landroid/app/Activity;
.source "BreakoutGame.java"


# static fields
.field static display:Landroid/view/Display; = null

.field static level:I = 0x1

.field static lives:I = 0xa

.field static score:I = 0x0

.field static sonido:Z = true


# instance fields
.field breaker:Landroid/content/SharedPreferences;

.field breakoutView:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;

.field chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

.field private handler:Landroid/os/Handler;

.field prefs:Landroid/content/SharedPreferences;

.field progressDialog:Landroid/app/ProgressDialog;

.field updateDelay:I

.field user:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->handler:Landroid/os/Handler;

    const/16 v0, 0x3e8

    .line 88
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->updateDelay:I

    return-void
.end method

.method static synthetic access$000(Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->onGameLost()V

    return-void
.end method

.method static synthetic access$100(Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;)Landroid/os/Handler;
    .locals 0

    .line 27
    iget-object p0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private insertar()V
    .locals 3

    const/4 v0, 0x1

    .line 116
    sput-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->jugado:Z

    .line 117
    sput-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->insertar:Z

    const-string v0, "Usuario"

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->user:Landroid/content/SharedPreferences;

    const-string v1, "correo"

    const-string v2, ""

    .line 119
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->correo:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->user:Landroid/content/SharedPreferences;

    const-string v1, "nombre"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre:Ljava/lang/String;

    .line 121
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->breaker:Ljava/lang/String;

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre_juego:Ljava/lang/String;

    .line 122
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->score:I

    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->score1:I

    .line 123
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->level:I

    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->score2:I

    .line 124
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;->getMilis()J

    move-result-wide v0

    sput-wide v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->tiempo:J

    .line 125
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->startProgressDialog()V

    return-void
.end method

.method private onGameLost()V
    .locals 2

    .line 106
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->sonido:Z

    if-eqz v0, :cond_0

    const v0, 0x7f100003

    .line 107
    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Score "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->score:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 111
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->insertar()V

    .line 112
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->finish()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 160
    sput-object p0, Lsoft/evm/amblyopiamobilegames/juegos/Pausa;->context:Landroid/content/Context;

    .line 161
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Pausa;->pausa()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 62
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->requestWindowFeature(I)Z

    .line 63
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const/4 v0, 0x0

    .line 67
    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->score:I

    const/16 v1, 0xa

    .line 69
    sput v1, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->lives:I

    .line 70
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    sput-object v1, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->display:Landroid/view/Display;

    const-string v1, "Breaker"

    .line 71
    invoke-virtual {p0, v1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->breaker:Landroid/content/SharedPreferences;

    const-string v2, "level"

    .line 72
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->level:I

    const-string v1, "MisPreferencias"

    .line 73
    invoke-virtual {p0, v1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->prefs:Landroid/content/SharedPreferences;

    .line 74
    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->ajustarColores(Landroid/content/SharedPreferences;)V

    .line 75
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "sonido"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->sonido:Z

    .line 76
    new-instance p1, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;

    invoke-direct {p1, p0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->breakoutView:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;

    .line 77
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->setContentView(Landroid/view/View;)V

    .line 78
    new-instance p1, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    invoke-direct {p1}, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;-><init>()V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    .line 79
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->progressDialog:Landroid/app/ProgressDialog;

    .line 82
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->startUpdateHandler()V

    .line 83
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 84
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->breakoutView:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 54
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public startProgressDialog()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/WindowManager$BadTokenException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 130
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->progressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f110070

    invoke-virtual {p0, v2}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 133
    :try_start_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    const-string v0, "39"

    const-string v1, "Error"

    .line 136
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startUpdateHandler()V
    .locals 4

    .line 91
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->handler:Landroid/os/Handler;

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame$1;

    invoke-direct {v1, p0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame$1;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;)V

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->updateDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
