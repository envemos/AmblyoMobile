.class Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;
.super Landroid/view/SurfaceView;
.source "BreakoutView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

.field beep1ID:I

.field beep2ID:I

.field beep3ID:I

.field bricks:[Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;

.field canvas:Landroid/graphics/Canvas;

.field explodeID:I

.field fps:J

.field loseLifeID:I

.field numBricks:I

.field ourHolder:Landroid/view/SurfaceHolder;

.field paddle:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;

.field paint:Landroid/graphics/Paint;

.field paused:Z

.field screenX:F

.field screenY:F

.field soundPool:Landroid/media/SoundPool;

.field private timeThisFrame:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 89
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->paused:Z

    const/16 v1, 0xc8

    new-array v1, v1, [Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;

    .line 72
    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->bricks:[Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;

    const/4 v1, 0x0

    .line 73
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->numBricks:I

    const/4 v2, -0x1

    .line 77
    iput v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->beep1ID:I

    .line 78
    iput v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->beep2ID:I

    .line 79
    iput v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->beep3ID:I

    .line 80
    iput v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->loseLifeID:I

    .line 81
    iput v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->explodeID:I

    .line 92
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iput-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ourHolder:Landroid/view/SurfaceHolder;

    .line 93
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->paint:Landroid/graphics/Paint;

    .line 96
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 97
    sget-object v2, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->display:Landroid/view/Display;

    invoke-virtual {v2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 99
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iput v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->screenX:F

    .line 100
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->screenY:F

    .line 102
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->screenX:F

    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->screenY:F

    invoke-direct {v0, v2, v3}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;-><init>(FF)V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->paddle:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;

    .line 105
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->screenX:F

    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->screenY:F

    sget v4, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->level:I

    invoke-direct {v0, v2, v3, v4}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;-><init>(FFI)V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    .line 110
    new-instance v0, Landroid/media/SoundPool;

    const/16 v2, 0xa

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->soundPool:Landroid/media/SoundPool;

    .line 114
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "sounds/breaker/beep1.ogg"

    .line 118
    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 119
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v2, v0, v1}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->beep1ID:I

    const-string v0, "sounds/breaker/beep2.ogg"

    .line 121
    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 122
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v2, v0, v1}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->beep2ID:I

    const-string v0, "sounds/breaker/beep3.ogg"

    .line 124
    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 125
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v2, v0, v1}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->beep3ID:I

    const-string v0, "sounds/breaker/loseLife.ogg"

    .line 127
    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 128
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v2, v0, v1}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->loseLifeID:I

    const-string v0, "sounds/breaker/explode.ogg"

    .line 130
    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 131
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1, v1}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result p1

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->explodeID:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "error"

    const-string v0, "failed to load sound files"

    .line 135
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_0
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->createBricksAndRestart()V

    return-void
.end method

.method private levelUp()V
    .locals 4

    .line 338
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->level:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->level:I

    .line 339
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->lives:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->lives:I

    .line 340
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    iget v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->xVelocity:F

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->screenX:F

    const/high16 v3, 0x41a00000    # 20.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->xVelocity:F

    .line 341
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    iget v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->yVelocity:F

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->screenY:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->yVelocity:F

    return-void
.end method

.method private nohaybloques()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 331
    :goto_0
    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->numBricks:I

    if-ge v1, v2, :cond_1

    .line 332
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->bricks:[Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;->getVisibility()Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public createBricksAndRestart()V
    .locals 10

    .line 145
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->screenX:F

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->screenY:F

    invoke-virtual {v0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->reset(FF)V

    .line 149
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->screenX:F

    const/high16 v1, 0x41000000    # 8.0f

    div-float/2addr v0, v1

    .line 150
    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->screenY:F

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    .line 153
    iput v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->numBricks:I

    move v3, v2

    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    move v4, v2

    :goto_1
    const/4 v5, 0x6

    if-ge v4, v5, :cond_0

    .line 156
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->bricks:[Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;

    iget v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->numBricks:I

    new-instance v7, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;

    int-to-float v8, v4

    int-to-float v9, v3

    invoke-direct {v7, v8, v9, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;-><init>(FFFF)V

    aput-object v7, v5, v6

    .line 157
    iget v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->numBricks:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->numBricks:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public draw()V
    .locals 8

    .line 348
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ourHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 350
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ourHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->canvas:Landroid/graphics/Canvas;

    .line 353
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getFondo()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 356
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->paint:Landroid/graphics/Paint;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_vago()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 362
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->paint:Landroid/graphics/Paint;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 365
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->paddle:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/4 v0, 0x0

    .line 368
    :goto_0
    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->numBricks:I

    if-ge v0, v1, :cond_1

    .line 369
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->bricks:[Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->paint:Landroid/graphics/Paint;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 372
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->bricks:[Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    :cond_1
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->paint:Landroid/graphics/Paint;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_vago()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 379
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->canvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->paddle:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->screenX:F

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->paddle:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 382
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x11

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 383
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->canvas:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1100d0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->level:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f110007

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->score:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1100d5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->lives:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x42480000    # 50.0f

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 386
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ourHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->canvas:Landroid/graphics/Canvas;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->paddle:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->setMovementState(I)V

    goto :goto_0

    .line 421
    :cond_1
    iput-boolean v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->paused:Z

    .line 422
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->screenX:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 423
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->paddle:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->setMovementState(I)V

    goto :goto_0

    .line 425
    :cond_2
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->paddle:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->setMovementState(I)V

    :goto_0
    return v2
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    .line 393
    sput-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->pause:Z

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    .line 406
    sput-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->pause:Z

    return-void
.end method

.method public run()V
    .locals 4

    .line 164
    :cond_0
    :goto_0
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    if-nez v0, :cond_2

    .line 166
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->pause:Z

    if-nez v0, :cond_0

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 171
    iget-boolean v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->paused:Z

    if-nez v2, :cond_1

    .line 172
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->update()V

    .line 176
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->draw()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 178
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string v2, "42"

    .line 179
    invoke-static {v2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->timeThisFrame:J

    const-wide/16 v0, 0x1

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x186a0

    .line 186
    div-long/2addr v0, v2

    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->fps:J

    goto :goto_0

    :cond_2
    return-void
.end method

.method public update()V
    .locals 14

    .line 200
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->paddle:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;

    iget-wide v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->fps:J

    invoke-virtual {v0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->update(J)V

    .line 202
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    iget-wide v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->fps:J

    invoke-virtual {v0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->update(J)V

    .line 204
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v5}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 205
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v5}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v7}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v6

    sub-float/2addr v5, v7

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 207
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v5}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v7}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-direct {v2, v3, v4, v5, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 208
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v5}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v7}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v8}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    invoke-direct {v3, v4, v5, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v4, 0x0

    .line 211
    :goto_0
    iget v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->numBricks:I

    if-ge v4, v5, :cond_4

    .line 212
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->bricks:[Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 215
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->bricks:[Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->bricks:[Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 222
    :cond_0
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->bricks:[Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->bricks:[Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 223
    :cond_1
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->bricks:[Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;->setInvisible()V

    .line 224
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v5}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->reverseXVelocity()V

    .line 225
    sget v5, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->score:I

    sget v7, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->level:I

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v5, v7

    sput v5, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->score:I

    .line 226
    sget-boolean v5, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->sonido:Z

    if-eqz v5, :cond_3

    .line 227
    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->soundPool:Landroid/media/SoundPool;

    iget v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->explodeID:I

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual/range {v7 .. v13}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_2

    .line 216
    :cond_2
    :goto_1
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->bricks:[Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;->setInvisible()V

    .line 217
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v5}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->reverseYVelocity()V

    .line 218
    sget v5, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->score:I

    sget v7, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->level:I

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v5, v7

    sput v5, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->score:I

    .line 219
    sget-boolean v5, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->sonido:Z

    if-eqz v5, :cond_3

    .line 220
    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->soundPool:Landroid/media/SoundPool;

    iget v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->explodeID:I

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual/range {v7 .. v13}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 233
    :cond_4
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v5}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 234
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->paddle:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->screenX:F

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->paddle:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;

    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->getRect()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 235
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->paddle:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    .line 236
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    iget v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->yVelocity:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_5

    .line 237
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->reverseYVelocity()V

    .line 238
    :cond_5
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->sonido:Z

    if-eqz v0, :cond_8

    .line 239
    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->soundPool:Landroid/media/SoundPool;

    iget v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->beep1ID:I

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual/range {v7 .. v13}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_3

    .line 244
    :cond_6
    invoke-static {v0, v1}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 245
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->reverseYVelocity()V

    .line 248
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->lives:I

    sub-int/2addr v0, v3

    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->lives:I

    .line 249
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->sonido:Z

    if-eqz v0, :cond_7

    .line 250
    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->soundPool:Landroid/media/SoundPool;

    iget v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->loseLifeID:I

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual/range {v7 .. v13}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 253
    :cond_7
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->lives:I

    if-gez v0, :cond_8

    .line 254
    sput-boolean v3, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    .line 259
    :cond_8
    :goto_3
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->paddle:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    .line 260
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->reverseYVelocity()V

    .line 261
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->screenY:F

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->paddle:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v1, v6

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->clearObstacleY(F)V

    .line 264
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->lives:I

    sub-int/2addr v0, v3

    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->lives:I

    .line 265
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->sonido:Z

    if-eqz v0, :cond_9

    .line 266
    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->soundPool:Landroid/media/SoundPool;

    iget v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->loseLifeID:I

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual/range {v7 .. v13}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 268
    :cond_9
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->lives:I

    if-gez v0, :cond_a

    .line 269
    sput-boolean v3, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    .line 274
    :cond_a
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    .line 276
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 277
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 278
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->reverseYVelocity()V

    .line 279
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    cmpg-float v0, v0, v5

    if-gez v0, :cond_b

    .line 280
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    add-float/2addr v1, v6

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->clearObstacleY(F)V

    .line 282
    :cond_b
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->sonido:Z

    if-eqz v0, :cond_c

    .line 283
    iget-object v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->soundPool:Landroid/media/SoundPool;

    iget v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->beep2ID:I

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual/range {v6 .. v12}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 287
    :cond_c
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_d

    .line 289
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->reverseXVelocity()V

    .line 290
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->sonido:Z

    if-eqz v0, :cond_e

    .line 291
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->soundPool:Landroid/media/SoundPool;

    iget v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->beep3ID:I

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual/range {v4 .. v10}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_4

    .line 293
    :cond_d
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_e

    .line 295
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->reverseXVelocity()V

    .line 296
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v0, v5}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->clearObstacleX(F)V

    .line 297
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->sonido:Z

    if-eqz v0, :cond_e

    .line 298
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->soundPool:Landroid/media/SoundPool;

    iget v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->beep3ID:I

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual/range {v4 .. v10}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 302
    :cond_e
    :goto_4
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->screenX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_f

    .line 304
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->reverseXVelocity()V

    .line 306
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->sonido:Z

    if-eqz v0, :cond_10

    .line 307
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->soundPool:Landroid/media/SoundPool;

    iget v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->beep3ID:I

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual/range {v4 .. v10}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_5

    .line 309
    :cond_f
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->screenX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_10

    .line 311
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->reverseXVelocity()V

    .line 313
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->ball:Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->screenX:F

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->clearObstacleX(F)V

    .line 315
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;->sonido:Z

    if-eqz v0, :cond_10

    .line 316
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->soundPool:Landroid/media/SoundPool;

    iget v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->beep3ID:I

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual/range {v4 .. v10}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 320
    :cond_10
    :goto_5
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->nohaybloques()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->paused:Z

    if-nez v0, :cond_11

    .line 322
    iput-boolean v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->paused:Z

    .line 323
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->createBricksAndRestart()V

    .line 324
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutView;->levelUp()V

    :cond_11
    return-void
.end method
