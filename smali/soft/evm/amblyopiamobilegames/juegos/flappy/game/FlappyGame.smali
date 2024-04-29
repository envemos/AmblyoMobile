.class public Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;
.super Landroid/app/Activity;
.source "FlappyGame.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static height:I

.field public static saltos:I

.field public static width:I


# instance fields
.field public alto:I

.field public ancho:I

.field bird:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;

.field chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

.field flappy:Landroid/content/SharedPreferences;

.field flappyView:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;

.field private handler:Landroid/os/Handler;

.field private jumps:I

.field prefs:Landroid/content/SharedPreferences;

.field progressDialog:Landroid/app/ProgressDialog;

.field private rects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field salto:Landroid/media/MediaPlayer;

.field private scroll:I

.field private tiempo:J

.field updateDelay:I

.field user:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->jumps:I

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->tiempo:J

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->handler:Landroid/os/Handler;

    const/16 v0, 0xc8

    .line 86
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->updateDelay:I

    return-void
.end method

.method static synthetic access$002(Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;J)J
    .locals 0

    .line 32
    iput-wide p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->tiempo:J

    return-wide p1
.end method

.method static synthetic access$100(Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->mostrar()V

    return-void
.end method

.method static synthetic access$200(Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->insertar()V

    return-void
.end method

.method static synthetic access$300(Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->update()V

    return-void
.end method

.method static synthetic access$400(Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;)Ljava/util/ArrayList;
    .locals 0

    .line 32
    iget-object p0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->rects:Ljava/util/ArrayList;

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
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->user:Landroid/content/SharedPreferences;

    const-string v1, "correo"

    const-string v2, ""

    .line 119
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->correo:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->user:Landroid/content/SharedPreferences;

    const-string v1, "nombre"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre:Ljava/lang/String;

    .line 121
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->flappy:Ljava/lang/String;

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre_juego:Ljava/lang/String;

    .line 122
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->saltos:I

    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->score1:I

    .line 123
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->jumps:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->score2:I

    .line 124
    iget-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->tiempo:J

    sput-wide v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->tiempo:J

    .line 125
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->startProgressDialog()V

    return-void
.end method

.method private mostrar()V
    .locals 4

    const v0, 0x7f100003

    .line 142
    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "sonido"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f1100d6

    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->saltos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private update()V
    .locals 7

    .line 149
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->bird:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;->physics()V

    .line 150
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->bird:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;

    iget v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;->y:F

    sget v1, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->height:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-gtz v0, :cond_6

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->bird:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;

    iget v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;->y:F

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->bird:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;

    iget v2, v2, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;->radio:F

    add-float/2addr v0, v2

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    goto/16 :goto_1

    .line 154
    :cond_0
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->scroll:I

    rem-int/lit8 v0, v0, 0x5a

    if-nez v0, :cond_1

    .line 155
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 156
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    sget v4, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->height:I

    int-to-double v5, v4

    mul-double/2addr v2, v5

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    div-double/2addr v2, v5

    const v5, 0x3e4ccccd    # 0.2f

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-int v2, v2

    .line 157
    sget v3, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->width:I

    iget v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->ancho:I

    sub-int v4, v3, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 158
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 159
    sget v4, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->width:I

    iget v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->ancho:I

    sub-int v5, v4, v5

    iget v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->alto:I

    add-int/2addr v2, v6

    sget v6, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->height:I

    invoke-virtual {v3, v5, v2, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 161
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->rects:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->rects:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->rects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 166
    iget v4, v3, Landroid/graphics/Rect;->left:I

    sget v5, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->width:I

    div-int/lit16 v5, v5, 0xaf

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 167
    iget v4, v3, Landroid/graphics/Rect;->right:I

    sget v5, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->width:I

    div-int/lit16 v5, v5, 0xaf

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 168
    iget v4, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v4, v5

    if-gtz v4, :cond_3

    .line 169
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_3
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->bird:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;

    iget v4, v4, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;->x:F

    float-to-int v4, v4

    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->bird:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;

    iget v5, v5, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;->y:F

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 172
    sput-boolean v1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    goto :goto_0

    .line 174
    :cond_4
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->bird:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;

    iget v4, v4, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;->x:F

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpl-float v3, v4, v3

    if-nez v3, :cond_2

    .line 175
    sget v3, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->saltos:I

    add-int/2addr v3, v1

    sput v3, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->saltos:I

    goto :goto_0

    .line 181
    :cond_5
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->rects:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 182
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->scroll:I

    add-int/2addr v0, v1

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->scroll:I

    return-void

    .line 151
    :cond_6
    :goto_1
    sput-boolean v1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 209
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 203
    sput-object p0, Lsoft/evm/amblyopiamobilegames/juegos/Pausa;->context:Landroid/content/Context;

    .line 204
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Pausa;->pausa()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 60
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->requestWindowFeature(I)Z

    .line 61
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 64
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v0

    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->width:I

    .line 66
    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    sput p1, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->height:I

    .line 67
    div-int/lit8 p1, p1, 0x6

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->alto:I

    .line 68
    sget p1, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->width:I

    div-int/lit8 p1, p1, 0x9

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->ancho:I

    const p1, 0x7f0d0022

    .line 69
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->setContentView(I)V

    const p1, 0x7f0a0107

    .line 70
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->flappyView:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;

    .line 71
    invoke-virtual {p1, p0}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    new-instance p1, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;

    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->width:I

    invoke-direct {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;-><init>(I)V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->bird:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->rects:Ljava/util/ArrayList;

    const-string p1, "MisPreferencias"

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->prefs:Landroid/content/SharedPreferences;

    const-string p1, "Flappy"

    .line 75
    invoke-virtual {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->flappy:Landroid/content/SharedPreferences;

    .line 76
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->prefs:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->ajustarColores(Landroid/content/SharedPreferences;)V

    .line 77
    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->saltos:I

    .line 78
    new-instance p1, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    invoke-direct {p1}, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;-><init>()V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    .line 79
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 80
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->startUpdateHandler()V

    const p1, 0x7f100001

    .line 81
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->salto:Landroid/media/MediaPlayer;

    .line 82
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 198
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 188
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->prefs:Landroid/content/SharedPreferences;

    const-string p2, "sonido"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 189
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->salto:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 190
    :cond_0
    iget p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->jumps:I

    add-int/2addr p1, v0

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->jumps:I

    .line 191
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->bird:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;->jump()V

    return v0
.end method

.method public startProgressDialog()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/WindowManager$BadTokenException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 130
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->progressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f110070

    invoke-virtual {p0, v2}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 133
    :try_start_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->progressDialog:Landroid/app/ProgressDialog;

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

    .line 89
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->handler:Landroid/os/Handler;

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame$1;

    invoke-direct {v1, p0}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame$1;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;)V

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->updateDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
