.class public Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;
.super Landroid/app/Activity;
.source "TetrisGame.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final boardHeight:I = 0x10

.field public static final boardWidth:I = 0xa


# instance fields
.field private board:[[I

.field chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

.field private currentShape:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

.field private final handler:Landroid/os/Handler;

.field private level:Landroid/widget/TextView;

.field prefs:Landroid/content/SharedPreferences;

.field private prevX:F

.field private prevY:F

.field private primeraVez:Z

.field progressDialog:Landroid/app/ProgressDialog;

.field put:Landroid/media/MediaPlayer;

.field private score:Landroid/widget/TextView;

.field private shapes:[Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

.field tetris:Landroid/content/SharedPreferences;

.field private tetrisView:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;

.field private time:Landroid/widget/TextView;

.field private updateDelay:J

.field user:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 35
    fill-array-data v0, :array_0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->board:[[I

    const/4 v0, 0x7

    new-array v0, v0, [Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    .line 37
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->shapes:[Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->primeraVez:Z

    .line 185
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x64

    .line 187
    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->updateDelay:J

    return-void

    nop

    :array_0
    .array-data 4
        0x10
        0xa
    .end array-data
.end method

.method static synthetic access$000(Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;)Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;
    .locals 0

    .line 31
    iget-object p0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->currentShape:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    return-object p0
.end method

.method static synthetic access$100(Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;)J
    .locals 2

    .line 31
    iget-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->updateDelay:J

    return-wide v0
.end method

.method static synthetic access$200(Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;)[[I
    .locals 0

    .line 31
    iget-object p0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->board:[[I

    return-object p0
.end method

.method static synthetic access$400(Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;)Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;
    .locals 0

    .line 31
    iget-object p0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->tetrisView:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;

    return-object p0
.end method

.method static synthetic access$500(Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->score:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->time:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->level:Landroid/widget/TextView;

    return-object p0
.end method

.method private ajustarJuego()V
    .locals 3

    .line 142
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->ajustarColores(Landroid/content/SharedPreferences;)V

    .line 143
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->tetris:Landroid/content/SharedPreferences;

    const-string v1, "level"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->level:I

    .line 144
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->tetris:Landroid/content/SharedPreferences;

    const-string v1, "auto"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->auto:Z

    return-void
.end method

.method private incicializarfiguras()V
    .locals 9

    .line 148
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->shapes:[Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    const/4 v2, 0x1

    new-array v3, v2, [[I

    const/4 v4, 0x4

    new-array v5, v4, [I

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    aput-object v5, v3, v6

    sget v5, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->level:I

    const/4 v7, 0x2

    invoke-direct {v1, v3, p0, v7, v5}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;-><init>([[ILsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;II)V

    aput-object v1, v0, v6

    .line 152
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->shapes:[Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    new-array v3, v7, [[I

    const/4 v5, 0x3

    new-array v8, v5, [I

    fill-array-data v8, :array_1

    aput-object v8, v3, v6

    new-array v8, v5, [I

    fill-array-data v8, :array_2

    aput-object v8, v3, v2

    sget v8, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->level:I

    invoke-direct {v1, v3, p0, v7, v8}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;-><init>([[ILsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;II)V

    aput-object v1, v0, v2

    .line 157
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->shapes:[Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    new-array v3, v7, [[I

    new-array v8, v5, [I

    fill-array-data v8, :array_3

    aput-object v8, v3, v6

    new-array v8, v5, [I

    fill-array-data v8, :array_4

    aput-object v8, v3, v2

    sget v8, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->level:I

    invoke-direct {v1, v3, p0, v7, v8}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;-><init>([[ILsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;II)V

    aput-object v1, v0, v7

    .line 162
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->shapes:[Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    new-array v3, v7, [[I

    new-array v8, v5, [I

    fill-array-data v8, :array_5

    aput-object v8, v3, v6

    new-array v8, v5, [I

    fill-array-data v8, :array_6

    aput-object v8, v3, v2

    sget v8, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->level:I

    invoke-direct {v1, v3, p0, v7, v8}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;-><init>([[ILsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;II)V

    aput-object v1, v0, v5

    .line 167
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->shapes:[Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    new-array v3, v7, [[I

    new-array v8, v5, [I

    fill-array-data v8, :array_7

    aput-object v8, v3, v6

    new-array v8, v5, [I

    fill-array-data v8, :array_8

    aput-object v8, v3, v2

    sget v8, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->level:I

    invoke-direct {v1, v3, p0, v7, v8}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;-><init>([[ILsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;II)V

    aput-object v1, v0, v4

    .line 172
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->shapes:[Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    new-array v3, v7, [[I

    new-array v4, v5, [I

    fill-array-data v4, :array_9

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_a

    aput-object v4, v3, v2

    sget v4, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->level:I

    invoke-direct {v1, v3, p0, v7, v4}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;-><init>([[ILsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;II)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    .line 177
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->shapes:[Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    new-array v3, v7, [[I

    new-array v4, v7, [I

    fill-array-data v4, :array_b

    aput-object v4, v3, v6

    new-array v4, v7, [I

    fill-array-data v4, :array_c

    aput-object v4, v3, v2

    sget v2, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->level:I

    invoke-direct {v1, v3, p0, v7, v2}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;-><init>([[ILsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;II)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 182
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->setNextShape()V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x1
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x0
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x1
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x1
        0x1
    .end array-data
.end method

.method private insertar()V
    .locals 3

    const/4 v0, 0x1

    .line 69
    sput-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->jugado:Z

    .line 70
    sput-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->insertar:Z

    const-string v0, "Usuario"

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->user:Landroid/content/SharedPreferences;

    const-string v1, "correo"

    const-string v2, ""

    .line 72
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->correo:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->user:Landroid/content/SharedPreferences;

    const-string v1, "nombre"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre:Ljava/lang/String;

    .line 74
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->tetris:Ljava/lang/String;

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre_juego:Ljava/lang/String;

    .line 75
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->score:I

    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->score1:I

    .line 76
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->derribadas:I

    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->score2:I

    .line 77
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;->getMilis()J

    move-result-wide v0

    sput-wide v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->tiempo:J

    .line 78
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->startProgressDialog()V

    return-void
.end method


# virtual methods
.method public OnGameLost()V
    .locals 4

    const v0, 0x7f100003

    .line 194
    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "sonido"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f1100d6

    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->score:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 198
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->insertar()V

    .line 199
    sput v1, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->score:I

    .line 200
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->finish()V

    return-void
.end method

.method public finish()V
    .locals 1

    .line 63
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    .line 64
    sput-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    return-void
.end method

.method public formatearMilis(J)Ljava/lang/String;
    .locals 6

    .line 268
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    .line 269
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 270
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sub-long/2addr p1, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    sub-long/2addr p1, v4

    const-wide/16 v4, 0x3e8

    rem-long/2addr p1, v4

    const-wide/16 v4, 0xa

    div-long/2addr p1, v4

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 271
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v4, p2

    const-string p1, "%02d:%02d:%02d"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBoard()[[I
    .locals 1

    .line 58
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->board:[[I

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 276
    sput-object p0, Lsoft/evm/amblyopiamobilegames/juegos/Pausa;->context:Landroid/content/Context;

    .line 277
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Pausa;->pausa()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 119
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->requestWindowFeature(I)Z

    .line 120
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f0d0034

    .line 122
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->setContentView(I)V

    const p1, 0x7f0a001b

    .line 123
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->tetrisView:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;

    .line 124
    invoke-virtual {p1, p0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p1, 0x7f0a0017

    .line 125
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->score:Landroid/widget/TextView;

    const p1, 0x7f0a001d

    .line 126
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->time:Landroid/widget/TextView;

    const p1, 0x7f0a000f

    .line 127
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->level:Landroid/widget/TextView;

    const-string p1, "MisPreferencias"

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->prefs:Landroid/content/SharedPreferences;

    const-string p1, "Tetris"

    .line 129
    invoke-virtual {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->tetris:Landroid/content/SharedPreferences;

    .line 130
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->ajustarJuego()V

    .line 131
    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->score:I

    .line 132
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->startUpdateHandler()V

    const p1, 0x7f100001

    .line 133
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->put:Landroid/media/MediaPlayer;

    .line 134
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->incicializarfiguras()V

    .line 135
    new-instance p1, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    invoke-direct {p1}, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;-><init>()V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    .line 136
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 137
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 54
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 231
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 238
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 241
    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->prevX:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->prevY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 243
    iget p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->prevX:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 245
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->currentShape:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->setDeltaX(I)V

    goto :goto_0

    .line 248
    :cond_1
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->currentShape:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->setDeltaX(I)V

    goto :goto_0

    .line 252
    :cond_2
    iget p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->prevY:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    .line 254
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->currentShape:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->speedDown()V

    goto :goto_0

    .line 258
    :cond_3
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->currentShape:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->rotate()V

    goto :goto_0

    .line 233
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->prevX:F

    .line 234
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->prevY:F

    :goto_0
    return v0
.end method

.method public setNextShape()V
    .locals 7

    .line 94
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "sonido"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->primeraVez:Z

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->put:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->primeraVez:Z

    .line 98
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->shapes:[Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    array-length v1, v1

    int-to-double v5, v1

    mul-double/2addr v3, v5

    double-to-int v1, v3

    .line 100
    new-instance v3, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->shapes:[Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->getCoords()[[I

    move-result-object v4

    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->shapes:[Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    aget-object v1, v5, v1

    .line 101
    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->getColor()I

    move-result v1

    sget v5, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->level:I

    invoke-direct {v3, v4, p0, v1, v5}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;-><init>([[ILsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;II)V

    iput-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->currentShape:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    move v1, v0

    .line 104
    :goto_0
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->currentShape:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->getCoords()[[I

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_3

    move v3, v0

    .line 105
    :goto_1
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->currentShape:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->getCoords()[[I

    move-result-object v4

    aget-object v4, v4, v1

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 106
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->currentShape:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->getCoords()[[I

    move-result-object v4

    aget-object v4, v4, v1

    aget v4, v4, v3

    if-eqz v4, :cond_1

    .line 107
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->board:[[I

    aget-object v4, v4, v1

    add-int/lit8 v5, v3, 0x3

    aget v4, v4, v5

    if-eqz v4, :cond_1

    .line 108
    sput-boolean v2, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public startProgressDialog()V
    .locals 3

    .line 82
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 83
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->progressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f110070

    invoke-virtual {p0, v2}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 86
    :try_start_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    const-string v0, "39"

    const-string v1, "Error"

    .line 89
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startUpdateHandler()V
    .locals 4

    .line 204
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->handler:Landroid/os/Handler;

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame$1;

    invoke-direct {v1, p0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame$1;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;)V

    iget-wide v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->updateDelay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
