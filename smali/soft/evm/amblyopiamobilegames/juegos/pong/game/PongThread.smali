.class public Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;
.super Ljava/lang/Thread;
.source "PongThread.java"


# static fields
.field private static final KEY_BALL_DATA:Ljava/lang/String; = "ball"

.field private static final KEY_COMPUTER_PLAYER_DATA:Ljava/lang/String; = "computerPlayer"

.field private static final KEY_HUMAN_PLAYER_DATA:Ljava/lang/String; = "humanPlayer"

.field private static PHYS_BALL_SPEED:I = 0x0

.field private static final PHYS_BALL_SPEED_VALUE:I

.field private static final PHYS_COLLISION_FRAMES:I = 0x5

.field private static final PHYS_FPS:I = 0x3c

.field private static final PHYS_MAX_BOUNCE_ANGLE:D = 1.3089969389957472

.field private static final PHYS_PADDLE_SPEED:I

.field public static final STATE_LOSE:I = 0x3

.field public static final STATE_PAUSE:I = 0x0

.field public static final STATE_READY:I = 0x1

.field public static final STATE_RUNNING:I = 0x2

.field public static final STATE_WIN:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PongThread"


# instance fields
.field private final BallRadius:I

.field private final PaddleHeight:I

.field private final PaddleWidth:I

.field chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

.field dificultad:I

.field private mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

.field private mCanvasBoundsPaint:Landroid/graphics/Paint;

.field private mCanvasHeight:I

.field private mCanvasWidth:I

.field private mComputerMoveProbability:F

.field private mComputerPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

.field private final mContext:Landroid/content/Context;

.field private mHumanPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

.field private mMedianLinePaint:Landroid/graphics/Paint;

.field private mRandomGen:Ljava/util/Random;

.field private mRun:Z

.field private final mScoreHandler:Landroid/os/Handler;

.field private mState:I

.field private final mStatusHandler:Landroid/os/Handler;

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field prefs:Landroid/content/SharedPreferences;

.field user:Landroid/content/SharedPreferences;

.field private final vidas:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->screenX:I

    div-int/lit8 v0, v0, 0x4b

    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->PHYS_BALL_SPEED_VALUE:I

    .line 66
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->screenX:I

    div-int/lit8 v0, v0, 0x32

    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->PHYS_PADDLE_SPEED:I

    return-void
.end method

.method constructor <init>(Landroid/view/SurfaceHolder;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Landroid/util/AttributeSet;)V
    .locals 5

    .line 152
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->dificultad:I

    const/4 v1, 0x5

    .line 42
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->vidas:I

    .line 47
    sget v1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->screenY:I

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->PaddleHeight:I

    .line 48
    sget v2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->screenX:I

    div-int/lit8 v2, v2, 0x14

    iput v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->PaddleWidth:I

    .line 49
    sget v3, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;->screenY:I

    div-int/lit8 v3, v3, 0x14

    iput v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->BallRadius:I

    .line 103
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mRun:Z

    const/4 v4, 0x1

    .line 130
    iput v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mCanvasHeight:I

    .line 135
    iput v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mCanvasWidth:I

    .line 153
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 154
    iput-object p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mStatusHandler:Landroid/os/Handler;

    .line 155
    iput-object p4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mScoreHandler:Landroid/os/Handler;

    .line 156
    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mContext:Landroid/content/Context;

    .line 158
    sget-object p1, Lsoft/evm/amblyopiamobilegames/R$styleable;->PongView:[I

    invoke-virtual {p2, p5, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 160
    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    const/4 p4, 0x2

    .line 161
    invoke-virtual {p1, p4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p5

    .line 162
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 164
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 167
    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 168
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    new-instance v2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    invoke-direct {v2, p5, p3, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;-><init>(IILandroid/graphics/Paint;)V

    iput-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mHumanPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    .line 172
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 173
    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 174
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_vago()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    new-instance v2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    invoke-direct {v2, p5, p3, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;-><init>(IILandroid/graphics/Paint;)V

    iput-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    .line 178
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 179
    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 180
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_vago()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    new-instance p3, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    invoke-direct {p3, v1, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;-><init>(ILandroid/graphics/Paint;)V

    iput-object p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    .line 184
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mMedianLinePaint:Landroid/graphics/Paint;

    .line 185
    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 186
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mMedianLinePaint:Landroid/graphics/Paint;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mMedianLinePaint:Landroid/graphics/Paint;

    const/16 p3, 0x50

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 188
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mMedianLinePaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 189
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mMedianLinePaint:Landroid/graphics/Paint;

    const/high16 p3, 0x40000000    # 2.0f

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 190
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mMedianLinePaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/DashPathEffect;

    new-array p4, p4, [F

    fill-array-data p4, :array_0

    const/4 p5, 0x0

    invoke-direct {p3, p4, p5}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 192
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mCanvasBoundsPaint:Landroid/graphics/Paint;

    .line 193
    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 194
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mCanvasBoundsPaint:Landroid/graphics/Paint;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mCanvasBoundsPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 196
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mCanvasBoundsPaint:Landroid/graphics/Paint;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 198
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mRandomGen:Ljava/util/Random;

    const p1, 0x3f19999a    # 0.6f

    .line 199
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerMoveProbability:F

    const-string p1, "MisPreferencias"

    .line 201
    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->prefs:Landroid/content/SharedPreferences;

    .line 202
    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->ajustarColores(Landroid/content/SharedPreferences;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private ballCollidedWithLeftWall()Z
    .locals 2

    .line 489
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->cx:F

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v1, v1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->radius:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ballCollidedWithRightWall()Z
    .locals 3

    .line 493
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->cx:F

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v1, v1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->radius:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mCanvasWidth:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private ballCollidedWithTopOrBottomWall()Z
    .locals 3

    .line 497
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->cy:F

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v1, v1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->radius:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->cy:F

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v2, v2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->radius:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mCanvasHeight:I

    sub-int/2addr v2, v1

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private collision(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;)Z
    .locals 4

    .line 588
    iget-object p1, p1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->bounds:Landroid/graphics/RectF;

    iget v0, p2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->cx:F

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v1, v1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->radius:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->cy:F

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v2, v2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->radius:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->cx:F

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v3, v3, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->radius:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget p2, p2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->cy:F

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v3, v3, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->radius:I

    int-to-float v3, v3

    add-float/2addr p2, v3

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/RectF;->intersects(FFFF)Z

    move-result p1

    return p1
.end method

.method private doAI()V
    .locals 4

    .line 475
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget-object v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->bounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v1, v1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->cy:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 477
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->bounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget-object v2, v2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sget v3, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->PHYS_PADDLE_SPEED:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->movePlayer(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;FF)V

    goto :goto_0

    .line 480
    :cond_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget-object v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->bounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget v1, v1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->paddleHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v1, v1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->cy:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 482
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->bounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget-object v2, v2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sget v3, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->PHYS_PADDLE_SPEED:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->movePlayer(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleCollision(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;)V
    .locals 6

    .line 599
    iget-object v0, p1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->bounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->paddleHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->cy:F

    sub-float/2addr v0, v1

    .line 600
    iget v1, p1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->paddleHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3ff4f1a6c638d03fL    # 1.3089969389957472

    mul-double/2addr v0, v2

    .line 603
    sget v2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->PHYS_BALL_SPEED:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->PHYS_BALL_SPEED:I

    .line 605
    iget v2, p2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->dx:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    neg-float v2, v2

    sget v3, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->PHYS_BALL_SPEED:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->dx:F

    .line 606
    sget v2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->PHYS_BALL_SPEED:I

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    neg-double v0, v0

    mul-double/2addr v2, v0

    double-to-float v0, v2

    iput v0, p2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->dy:F

    .line 608
    iget v0, p2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->dx:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->dy:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 609
    iget v0, p2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->dx:F

    iget v1, p2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->dx:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    iget v1, p2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->dy:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->dx:F

    .line 611
    :cond_0
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mHumanPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    if-ne p1, p2, :cond_1

    .line 612
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget-object p2, p2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->bounds:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->radius:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    iput p2, p1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->cx:F

    goto :goto_0

    .line 614
    :cond_1
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget-object p2, p2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->bounds:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->radius:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    iput p2, p1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->cx:F

    :goto_0
    return-void
.end method

.method private handleHit(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;)V
    .locals 3

    .line 522
    iget v0, p1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->collision:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 523
    iget-object p1, p1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->paint:Landroid/graphics/Paint;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result v2

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 525
    :cond_0
    iget-object p1, p1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :goto_0
    return-void
.end method

.method private hideStatusText()V
    .locals 4

    .line 558
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mStatusHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 559
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "vis"

    const/4 v3, 0x4

    .line 560
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 561
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 562
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mStatusHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private moveBall()V
    .locals 3

    .line 461
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->cx:F

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v2, v2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->dx:F

    add-float/2addr v1, v2

    iput v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->cx:F

    .line 462
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->cy:F

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v2, v2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->dy:F

    add-float/2addr v1, v2

    iput v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->cy:F

    .line 464
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->cy:F

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v1, v1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->radius:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 465
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->radius:I

    int-to-float v1, v1

    iput v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->cy:F

    goto :goto_0

    .line 466
    :cond_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->cy:F

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v1, v1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->radius:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mCanvasHeight:I

    int-to-float v2, v1

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    .line 467
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v2, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->radius:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iput v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->cy:F

    :cond_1
    :goto_0
    return-void
.end method

.method private movePlayer(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;FF)V
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    move p2, v0

    goto :goto_0

    .line 576
    :cond_0
    iget v0, p1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->paddleWidth:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mCanvasWidth:I

    add-int/lit8 v2, v1, -0x2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    .line 577
    iget p2, p1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->paddleWidth:I

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x2

    int-to-float p2, v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gez v1, :cond_2

    move p3, v0

    goto :goto_1

    .line 581
    :cond_2
    iget v0, p1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->paddleHeight:I

    int-to-float v0, v0

    add-float/2addr v0, p3

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mCanvasHeight:I

    int-to-float v2, v1

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    .line 582
    iget p3, p1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->paddleHeight:I

    sub-int/2addr v1, p3

    add-int/lit8 v1, v1, -0x1

    int-to-float p3, v1

    .line 584
    :cond_3
    :goto_1
    iget-object p1, p1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-void
.end method

.method private setScoreText(Ljava/lang/String;)V
    .locals 3

    .line 566
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mScoreHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 567
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "text"

    .line 568
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 570
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mScoreHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private setStatusText(Ljava/lang/String;)V
    .locals 3

    .line 549
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mStatusHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 550
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "text"

    .line 551
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "vis"

    const/4 v2, 0x0

    .line 552
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 553
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 554
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mStatusHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private setupNewRound()V
    .locals 4

    .line 533
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->PHYS_BALL_SPEED_VALUE:I

    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->PHYS_BALL_SPEED:I

    .line 534
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mCanvasWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->cx:F

    .line 535
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mCanvasHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->cy:F

    .line 536
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    sget v1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->PHYS_BALL_SPEED:I

    neg-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->dx:F

    .line 537
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    const/4 v1, 0x0

    iput v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->dy:F

    .line 539
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mHumanPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mCanvasHeight:I

    iget v2, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->paddleHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v2, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->movePlayer(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;FF)V

    .line 543
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mCanvasWidth:I

    iget v2, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->paddleWidth:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mCanvasHeight:I

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget v3, v3, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->paddleHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->movePlayer(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;FF)V

    return-void
.end method

.method private updateDisplay(Landroid/graphics/Canvas;)V
    .locals 7

    .line 505
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getFondo()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 506
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mCanvasWidth:I

    int-to-float v4, v0

    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mCanvasHeight:I

    int-to-float v5, v0

    iget-object v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mCanvasBoundsPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 508
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mCanvasWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    .line 509
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mCanvasHeight:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    iget-object v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mMedianLinePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mHumanPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget v1, v1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->score:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget v1, v1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->score:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->setScoreText(Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mHumanPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    invoke-direct {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->handleHit(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;)V

    .line 514
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    invoke-direct {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->handleHit(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;)V

    .line 516
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mHumanPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget-object v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->bounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mHumanPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget-object v1, v1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 517
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget-object v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->bounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget-object v1, v1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 518
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->cx:F

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v1, v1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->cy:F

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v2, v2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->radius:I

    int-to-float v2, v2

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget-object v3, v3, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private updatePhysics()V
    .locals 3

    .line 430
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mHumanPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->collision:I

    if-lez v0, :cond_0

    .line 431
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mHumanPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->collision:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->collision:I

    .line 433
    :cond_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->collision:I

    if-lez v0, :cond_1

    .line 434
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->collision:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->collision:I

    .line 437
    :cond_1
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mHumanPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    invoke-direct {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->collision(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;)Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_2

    .line 438
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mHumanPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    invoke-direct {p0, v0, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->handleCollision(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;)V

    .line 439
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mHumanPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iput v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->collision:I

    goto :goto_0

    .line 440
    :cond_2
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    invoke-direct {p0, v0, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->collision(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 441
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    invoke-direct {p0, v0, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->handleCollision(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;)V

    .line 442
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iput v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->collision:I

    goto :goto_0

    .line 443
    :cond_3
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->ballCollidedWithTopOrBottomWall()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 444
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->dy:F

    neg-float v1, v1

    iput v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->dy:F

    goto :goto_0

    .line 445
    :cond_4
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->ballCollidedWithRightWall()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    .line 446
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->setState(I)V

    return-void

    .line 448
    :cond_5
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->ballCollidedWithLeftWall()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    .line 449
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->setState(I)V

    return-void

    .line 453
    :cond_6
    :goto_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mRandomGen:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerMoveProbability:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 454
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->doAI()V

    .line 457
    :cond_7
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->moveBall()V

    return-void
.end method


# virtual methods
.method handleMoveHumanPaddleEvent(Landroid/view/MotionEvent;)V
    .locals 4

    .line 404
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    .line 405
    :try_start_0
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mHumanPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget-object v2, v1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    .line 407
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mHumanPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget v3, v3, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->paddleHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr p1, v3

    .line 405
    invoke-direct {p0, v1, v2, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->movePlayer(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;FF)V

    .line 408
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method isBetweenRounds()Z
    .locals 2

    .line 385
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTouchOnHumanPaddle(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 395
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mHumanPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget-object v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method pause()V
    .locals 3

    .line 353
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    .line 354
    :try_start_0
    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 355
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->setState(I)V

    .line 357
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method restoreState(Landroid/os/Bundle;)V
    .locals 7

    .line 296
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    :try_start_0
    const-string v1, "humanPlayer"

    .line 297
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v1

    .line 298
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mHumanPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    const/4 v3, 0x2

    aget v4, v1, v3

    float-to-int v4, v4

    iput v4, v2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->score:I

    .line 299
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mHumanPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    const/4 v4, 0x0

    aget v5, v1, v4

    const/4 v6, 0x1

    aget v1, v1, v6

    invoke-direct {p0, v2, v5, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->movePlayer(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;FF)V

    const-string v1, "computerPlayer"

    .line 301
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v1

    .line 302
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    aget v5, v1, v3

    float-to-int v5, v5

    iput v5, v2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->score:I

    .line 303
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    aget v5, v1, v4

    aget v1, v1, v6

    invoke-direct {p0, v2, v5, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->movePlayer(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;FF)V

    const-string v1, "ball"

    .line 305
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object p1

    .line 306
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    aget v2, p1, v4

    iput v2, v1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->cx:F

    .line 307
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    aget v2, p1, v6

    iput v2, v1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->cy:F

    .line 308
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    aget v2, p1, v3

    iput v2, v1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->dx:F

    .line 309
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    const/4 v2, 0x3

    aget p1, p1, v2

    iput p1, v1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->dy:F

    .line 310
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 6

    .line 211
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    invoke-direct {v0}, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    .line 212
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 214
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 216
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mRun:Z

    if-eqz v2, :cond_6

    .line 217
    sget-boolean v2, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    if-nez v2, :cond_5

    const/4 v2, 0x0

    .line 220
    :try_start_0
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v2}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 222
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 223
    :try_start_1
    iget v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 224
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->updatePhysics()V

    .line 226
    :cond_1
    invoke-direct {p0, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->updateDisplay(Landroid/graphics/Canvas;)V

    .line 227
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 231
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_3
    const/16 v2, 0x10

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 235
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 238
    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "PongThread"

    const-string v4, "Interrupted"

    .line 240
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_1
    move-exception v0

    if-eqz v2, :cond_4

    .line 231
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 233
    :cond_4
    throw v0

    :cond_5
    const/4 v2, 0x1

    .line 245
    sput-boolean v2, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->jugado:Z

    .line 246
    sput-boolean v2, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->insertar:Z

    .line 247
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mContext:Landroid/content/Context;

    const-string v3, "Usuario"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->user:Landroid/content/SharedPreferences;

    const-string v3, "correo"

    const-string v5, ""

    .line 248
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->correo:Ljava/lang/String;

    .line 249
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->user:Landroid/content/SharedPreferences;

    const-string v3, "nombre"

    const-string v5, ""

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre:Ljava/lang/String;

    .line 250
    sget-object v2, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->pong:Ljava/lang/String;

    sput-object v2, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre_juego:Ljava/lang/String;

    .line 251
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mHumanPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget v2, v2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->score:I

    sput v2, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->score1:I

    .line 252
    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->dificultad:I

    sput v2, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->score2:I

    .line 253
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;->getMilis()J

    move-result-wide v2

    sput-wide v2, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->tiempo:J

    .line 254
    iput-boolean v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mRun:Z

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method saveState(Landroid/os/Bundle;)V
    .locals 8

    .line 274
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    :try_start_0
    const-string v1, "humanPlayer"

    const/4 v2, 0x3

    new-array v3, v2, [F

    .line 275
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mHumanPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget-object v4, v4, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->bounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    const/4 v5, 0x0

    aput v4, v3, v5

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mHumanPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget-object v4, v4, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->bounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    const/4 v6, 0x1

    aput v4, v3, v6

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mHumanPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget v4, v4, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->score:I

    int-to-float v4, v4

    const/4 v7, 0x2

    aput v4, v3, v7

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    const-string v1, "computerPlayer"

    new-array v3, v2, [F

    .line 280
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget-object v4, v4, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->bounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    aput v4, v3, v5

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget-object v4, v4, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->bounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    aput v4, v3, v6

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget v4, v4, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->score:I

    int-to-float v4, v4

    aput v4, v3, v7

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    const-string v1, "ball"

    const/4 v3, 0x4

    new-array v3, v3, [F

    .line 285
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v4, v4, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->cx:F

    aput v4, v3, v5

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v4, v4, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->cy:F

    aput v4, v3, v6

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v4, v4, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->dx:F

    aput v4, v3, v7

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mBall:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;

    iget v4, v4, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->dy:F

    aput v4, v3, v2

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 287
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setRunning(Z)V
    .locals 0

    .line 265
    iput-boolean p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mRun:Z

    return-void
.end method

.method setState(I)V
    .locals 4

    .line 319
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    .line 320
    :try_start_0
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mState:I

    .line 321
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 322
    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mState:I

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f11011e

    .line 330
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->setStatusText(Ljava/lang/String;)V

    .line 331
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mHumanPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget v1, p1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->score:I

    add-int/2addr v1, v2

    iput v1, p1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->score:I

    .line 332
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->setupNewRound()V

    goto :goto_0

    :cond_1
    const v1, 0x7f11011b

    .line 335
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->setStatusText(Ljava/lang/String;)V

    .line 336
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget v1, p1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->score:I

    add-int/2addr v1, v2

    iput v1, p1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->score:I

    .line 337
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iget p1, p1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->score:I

    const/4 v1, 0x5

    if-ge p1, v1, :cond_2

    .line 338
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->setupNewRound()V

    goto :goto_0

    .line 340
    :cond_2
    sput-boolean v2, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    goto :goto_0

    .line 327
    :cond_3
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->hideStatusText()V

    goto :goto_0

    .line 324
    :cond_4
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->setupNewRound()V

    goto :goto_0

    :cond_5
    const v1, 0x7f11011c

    .line 343
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->setStatusText(Ljava/lang/String;)V

    .line 346
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setSurfaceSize(II)V
    .locals 1

    .line 418
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    .line 419
    :try_start_0
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mCanvasWidth:I

    .line 420
    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mCanvasHeight:I

    .line 421
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->setupNewRound()V

    .line 422
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method startNewGame()V
    .locals 3

    .line 373
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    .line 374
    :try_start_0
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mHumanPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    const/4 v2, 0x0

    iput v2, v1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->score:I

    .line 375
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mComputerPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;

    iput v2, v1, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->score:I

    .line 376
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->setupNewRound()V

    const/4 v1, 0x2

    .line 377
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->setState(I)V

    .line 378
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unPause()V
    .locals 2

    .line 364
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    const/4 v1, 0x2

    .line 365
    :try_start_0
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongThread;->setState(I)V

    .line 366
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
