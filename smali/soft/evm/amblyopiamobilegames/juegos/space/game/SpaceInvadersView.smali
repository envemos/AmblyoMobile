.class public Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;
.super Landroid/view/SurfaceView;
.source "SpaceInvadersView.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static screenX:I

.field public static screenY:I


# instance fields
.field private bricks:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/DefenceBrick;

.field private canvas:Landroid/graphics/Canvas;

.field chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

.field private context:Landroid/content/Context;

.field private damageShelterID:I

.field private fps:J

.field private gameThread:Ljava/lang/Thread;

.field private invaderExplodeID:I

.field private invaders:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;

.field private invadersBullets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;",
            ">;"
        }
    .end annotation
.end field

.field private lastMenaceTime:J

.field private lives:I

.field private maxInvaderBullets:I

.field private menaceInterval:J

.field private nextBullet:I

.field private numBricks:I

.field private numInvaders:I

.field private ohID:I

.field private ourHolder:Landroid/view/SurfaceHolder;

.field private paintCircle:Landroid/graphics/Paint;

.field private paintSano:Landroid/graphics/Paint;

.field private paintVago:Landroid/graphics/Paint;

.field private playerBullet:Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

.field private playerExplodeID:I

.field private playerShip:Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;

.field private volatile playing:Z

.field prefs:Landroid/content/SharedPreferences;

.field private score:I

.field private shootID:I

.field private soundPool:Landroid/media/SoundPool;

.field space:Landroid/content/SharedPreferences;

.field private timeThisFrame:J

.field private uhID:I

.field private uhOrOh:Z

.field user:Landroid/content/SharedPreferences;

.field private wave:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 6

    const-string v0, "sounds/space/damageshelter.ogg"

    .line 112
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->gameThread:Ljava/lang/Thread;

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    const/16 v1, 0xa

    .line 70
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->maxInvaderBullets:I

    const/16 v2, 0x3c

    new-array v2, v2, [Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;

    .line 73
    iput-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invaders:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;

    const/4 v2, 0x0

    .line 74
    iput v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->numInvaders:I

    const/16 v3, 0x190

    new-array v3, v3, [Lsoft/evm/amblyopiamobilegames/juegos/space/game/DefenceBrick;

    .line 77
    iput-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->bricks:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/DefenceBrick;

    const/4 v3, -0x1

    .line 82
    iput v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerExplodeID:I

    .line 83
    iput v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invaderExplodeID:I

    .line 84
    iput v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->shootID:I

    .line 85
    iput v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->damageShelterID:I

    .line 86
    iput v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->uhID:I

    .line 87
    iput v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->ohID:I

    .line 90
    iput v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->score:I

    .line 93
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->lives:I

    const-wide/16 v3, 0x3e8

    .line 99
    iput-wide v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->menaceInterval:J

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->lastMenaceTime:J

    .line 115
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->context:Landroid/content/Context;

    .line 118
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iput-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->ourHolder:Landroid/view/SurfaceHolder;

    .line 119
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->paintSano:Landroid/graphics/Paint;

    .line 120
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->paintVago:Landroid/graphics/Paint;

    .line 121
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->paintCircle:Landroid/graphics/Paint;

    .line 122
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->paintSano:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->paintSano:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 124
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->paintVago:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->paintVago:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 126
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->paintCircle:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 127
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->paintCircle:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    sput p2, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenX:I

    .line 130
    sput p3, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenY:I

    .line 133
    new-instance p2, Landroid/media/SoundPool;

    const/4 p3, 0x3

    invoke-direct {p2, v1, p3, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->soundPool:Landroid/media/SoundPool;

    .line 137
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    const-string p3, "sounds/space/shoot.ogg"

    .line 141
    invoke-virtual {p2, p3}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p3

    .line 142
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, p3, v2}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result p3

    iput p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->shootID:I

    const-string p3, "sounds/space/invaderexplode.ogg"

    .line 144
    invoke-virtual {p2, p3}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p3

    .line 145
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, p3, v2}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result p3

    iput p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invaderExplodeID:I

    .line 147
    invoke-virtual {p2, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p3

    .line 148
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, p3, v2}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result p3

    iput p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->damageShelterID:I

    const-string p3, "sounds/space/playerexplode.ogg"

    .line 150
    invoke-virtual {p2, p3}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p3

    .line 151
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, p3, v2}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result p3

    iput p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerExplodeID:I

    .line 153
    invoke-virtual {p2, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p3

    .line 154
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p3, v2}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result p3

    iput p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->damageShelterID:I

    const-string p3, "sounds/space/uh.ogg"

    .line 156
    invoke-virtual {p2, p3}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p3

    .line 157
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p3, v2}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result p3

    iput p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->uhID:I

    const-string p3, "sounds/space/oh.ogg"

    .line 159
    invoke-virtual {p2, p3}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p2

    .line 160
    iget-object p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {p3, p2, v2}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result p2

    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->ohID:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "error"

    const-string p3, "failed to load sound files"

    .line 164
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p2, "MisPreferencias"

    .line 167
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->prefs:Landroid/content/SharedPreferences;

    .line 168
    new-instance p2, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    invoke-direct {p2}, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;-><init>()V

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    .line 169
    new-instance p2, Ljava/lang/Thread;

    iget-object p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 171
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->prefs:Landroid/content/SharedPreferences;

    invoke-static {p2}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->ajustarColores(Landroid/content/SharedPreferences;)V

    const-string p2, "Space"

    .line 172
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->space:Landroid/content/SharedPreferences;

    const-string p2, "level"

    .line 173
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->wave:I

    .line 174
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->prepareLevel()V

    return-void
.end method

.method private draw()V
    .locals 9

    .line 504
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->ourHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 506
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->ourHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->canvas:Landroid/graphics/Canvas;

    .line 509
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getFondo()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 512
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->paintSano:Landroid/graphics/Paint;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 513
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->paintVago:Landroid/graphics/Paint;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_vago()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 514
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->paintCircle:Landroid/graphics/Paint;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_vago()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 517
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerShip:Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerShip:Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->getX()F

    move-result v2

    sget v3, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenY:I

    int-to-float v3, v3

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerShip:Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;

    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->getRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->paintSano:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    move v1, v0

    .line 521
    :goto_0
    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->numInvaders:I

    if-ge v1, v2, :cond_2

    .line 522
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invaders:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->getVisibility()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 523
    iget-boolean v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->uhOrOh:Z

    if-eqz v2, :cond_0

    .line 524
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invaders:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invaders:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->getX()F

    move-result v4

    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invaders:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->getY()F

    move-result v5

    iget-object v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->paintSano:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 526
    :cond_0
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invaders:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->getBitmap2()Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invaders:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->getX()F

    move-result v4

    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invaders:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->getY()F

    move-result v5

    iget-object v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->paintSano:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 533
    :goto_2
    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->numBricks:I

    if-ge v1, v2, :cond_4

    .line 534
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->bricks:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/DefenceBrick;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/DefenceBrick;->getVisibility()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 535
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->bricks:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/DefenceBrick;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/DefenceBrick;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->paintVago:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 541
    :cond_4
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerBullet:Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->getStatus()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 542
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerBullet:Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->paintVago:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 548
    :cond_5
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 549
    :goto_3
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 550
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->getStatus()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 551
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->paintVago:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 559
    :cond_7
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->paintVago:Landroid/graphics/Paint;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 560
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->paintVago:Landroid/graphics/Paint;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 561
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->canvas:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Score: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->score:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   Lives: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->lives:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    Wave: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->wave:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x42480000    # 50.0f

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->paintVago:Landroid/graphics/Paint;

    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 565
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->paintVago:Landroid/graphics/Paint;

    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenX:I

    div-int/lit8 v3, v0, 0xc

    sget v4, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenY:I

    div-int/lit8 v5, v4, 0x2

    div-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v5

    div-int/lit8 v5, v0, 0x10

    const/4 v6, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->drawTriangle(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 566
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->paintVago:Landroid/graphics/Paint;

    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenX:I

    div-int/lit8 v3, v0, 0xc

    sub-int v3, v0, v3

    sget v4, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenY:I

    div-int/lit8 v5, v4, 0x2

    div-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v5

    div-int/lit8 v5, v0, 0x10

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->drawTriangle(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 571
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->canvas:Landroid/graphics/Canvas;

    sget v1, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenX:I

    int-to-float v2, v1

    const/high16 v3, 0x41800000    # 16.0f

    div-float/2addr v2, v3

    sget v4, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenY:I

    int-to-float v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    int-to-float v4, v4

    div-float/2addr v4, v7

    add-float/2addr v5, v4

    int-to-float v1, v1

    const/high16 v4, 0x41c00000    # 24.0f

    div-float/2addr v1, v4

    iget-object v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->paintCircle:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v5, v1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 572
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->canvas:Landroid/graphics/Canvas;

    sget v1, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenX:I

    int-to-float v2, v1

    int-to-float v5, v1

    div-float/2addr v5, v3

    sub-float/2addr v2, v5

    sget v3, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenY:I

    int-to-float v5, v3

    div-float/2addr v5, v6

    int-to-float v3, v3

    div-float/2addr v3, v7

    add-float/2addr v5, v3

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->paintCircle:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 577
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->ourHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->canvas:Landroid/graphics/Canvas;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_8
    return-void
.end method

.method private insertar()V
    .locals 3

    const/4 v0, 0x1

    .line 490
    sput-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->jugado:Z

    .line 491
    sput-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->insertar:Z

    .line 492
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->context:Landroid/content/Context;

    const-string v1, "Usuario"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->user:Landroid/content/SharedPreferences;

    const-string v1, "correo"

    const-string v2, ""

    .line 493
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->correo:Ljava/lang/String;

    .line 494
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->user:Landroid/content/SharedPreferences;

    const-string v1, "nombre"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre:Ljava/lang/String;

    .line 495
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->space:Ljava/lang/String;

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre_juego:Ljava/lang/String;

    .line 496
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->score:I

    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->score1:I

    .line 497
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->wave:I

    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->score2:I

    .line 498
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;->getMilis()J

    move-result-wide v0

    sput-wide v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->tiempo:J

    return-void
.end method

.method private prepareLevel()V
    .locals 14

    .line 182
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->context:Landroid/content/Context;

    sget v2, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenX:I

    sget v3, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenY:I

    invoke-direct {v0, v1, v2, v3}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerShip:Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;

    .line 185
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    sget v1, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenY:I

    invoke-direct {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;-><init>(I)V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerBullet:Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    const/4 v0, 0x0

    .line 188
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->numInvaders:I

    move v7, v0

    :goto_0
    const/4 v1, 0x6

    const/4 v8, 0x5

    if-ge v7, v1, :cond_1

    move v9, v0

    :goto_1
    if-ge v9, v8, :cond_0

    .line 191
    iget-object v10, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invaders:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;

    iget v11, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->numInvaders:I

    new-instance v12, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->context:Landroid/content/Context;

    sget v5, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenX:I

    sget v6, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenY:I

    move-object v1, v12

    move v3, v9

    move v4, v7

    invoke-direct/range {v1 .. v6}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;-><init>(Landroid/content/Context;IIII)V

    aput-object v12, v10, v11

    .line 192
    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->numInvaders:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->numInvaders:I

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 197
    :cond_1
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->numBricks:I

    move v7, v0

    :goto_2
    const/4 v1, 0x4

    if-ge v7, v1, :cond_4

    move v9, v0

    :goto_3
    const/16 v1, 0xa

    if-ge v9, v1, :cond_3

    move v10, v0

    .line 200
    :goto_4
    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->wave:I

    add-int/lit8 v1, v1, -0x1

    rsub-int/lit8 v1, v1, 0x5

    if-ge v10, v1, :cond_2

    .line 201
    iget-object v11, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->bricks:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/DefenceBrick;

    iget v12, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->numBricks:I

    new-instance v13, Lsoft/evm/amblyopiamobilegames/juegos/space/game/DefenceBrick;

    sget v5, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenX:I

    sget v6, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenY:I

    move-object v1, v13

    move v2, v10

    move v3, v9

    move v4, v7

    invoke-direct/range {v1 .. v6}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/DefenceBrick;-><init>(IIIII)V

    aput-object v13, v11, v12

    .line 202
    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->numBricks:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->numBricks:I

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 208
    :cond_4
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v0, 0x3e8

    .line 211
    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->menaceInterval:J

    return-void
.end method

.method private terminar()V
    .locals 1

    .line 484
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->insertar()V

    const/4 v0, 0x0

    .line 485
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playing:Z

    const/4 v0, 0x1

    .line 486
    sput-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    return-void
.end method

.method private update()V
    .locals 14

    .line 277
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerShip:Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;

    iget-wide v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->fps:J

    invoke-virtual {v0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->update(J)V

    .line 283
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerBullet:Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->getStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerBullet:Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    iget-wide v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->fps:J

    invoke-virtual {v0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->update(J)V

    .line 288
    :cond_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move v0, v1

    .line 289
    :goto_0
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 290
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->getStatus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    iget-wide v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->fps:J

    invoke-virtual {v2, v3, v4}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->update(J)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    move v2, v0

    .line 297
    :goto_1
    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->numInvaders:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v0, v3, :cond_6

    .line 298
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invaders:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->getVisibility()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 301
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invaders:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;

    aget-object v3, v3, v0

    iget-wide v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->fps:J

    invoke-virtual {v3, v6, v7}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->update(J)V

    .line 304
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invaders:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;

    aget-object v3, v3, v0

    iget-object v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerShip:Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;

    invoke-virtual {v6}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->getX()F

    move-result v6

    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerShip:Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;

    invoke-virtual {v7}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->getLength()F

    move-result v7

    invoke-virtual {v3, v6, v7}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->takeAim(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 307
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    new-instance v6, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    sget v7, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenY:I

    invoke-direct {v6, v7}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;-><init>(I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    iget-object v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invaders:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->getX()F

    move-result v6

    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invaders:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->getLength()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invaders:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->getY()F

    move-result v7

    iget-object v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerBullet:Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    iget v8, v8, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->DOWN:I

    invoke-virtual {v3, v6, v7, v8}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->shoot(FFI)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 312
    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->nextBullet:I

    add-int/2addr v3, v5

    iput v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->nextBullet:I

    .line 315
    iget v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->maxInvaderBullets:I

    if-ne v3, v6, :cond_3

    .line 318
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->nextBullet:I

    .line 324
    :cond_3
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invaders:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->getX()F

    move-result v3

    sget v6, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenX:I

    int-to-float v6, v6

    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invaders:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->getLength()F

    move-result v7

    sub-float/2addr v6, v7

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_4

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invaders:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;

    aget-object v3, v3, v0

    .line 325
    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->getX()F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    :cond_4
    move v2, v5

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_6
    if-eqz v2, :cond_9

    move v0, v1

    move v2, v0

    .line 339
    :goto_2
    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->numInvaders:I

    if-ge v0, v3, :cond_8

    .line 340
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invaders:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->dropDownAndReverse()V

    .line 343
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invaders:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->getY()F

    move-result v3

    sget v6, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenY:I

    div-int/lit8 v7, v6, 0xa

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_7

    move v2, v5

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 353
    :cond_8
    iget-wide v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->menaceInterval:J

    const-wide/16 v8, 0x50

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->menaceInterval:J

    goto :goto_3

    :cond_9
    move v2, v1

    :goto_3
    if-eqz v2, :cond_a

    .line 361
    sput-boolean v5, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    .line 368
    :cond_a
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerBullet:Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->getImpactPointY()F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_b

    .line 369
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    sget v2, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenY:I

    invoke-direct {v0, v2}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;-><init>(I)V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerBullet:Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    .line 370
    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->setInactive()V

    .line 376
    :cond_b
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    move v2, v0

    move v3, v2

    .line 377
    :goto_4
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_e

    .line 378
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->getImpactPointY()F

    move-result v4

    sget v6, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenY:I

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_c

    .line 381
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->setInactive()V

    move v2, v0

    move v3, v5

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_d
    move v2, v1

    move v3, v2

    :cond_e
    if-eqz v3, :cond_f

    .line 385
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_f

    .line 386
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 390
    :cond_f
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerBullet:Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->getStatus()Z

    move-result v0

    const-string v2, "sonido"

    if-eqz v0, :cond_13

    move v0, v1

    move v3, v5

    .line 392
    :goto_5
    iget v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->numInvaders:I

    if-ge v0, v4, :cond_14

    .line 393
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invaders:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->getVisibility()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 395
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerBullet:Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invaders:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->getRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 396
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invaders:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->setInvisible()V

    .line 397
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 398
    iget-object v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->soundPool:Landroid/media/SoundPool;

    iget v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invaderExplodeID:I

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual/range {v6 .. v12}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 399
    :cond_10
    new-instance v3, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    sget v4, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenY:I

    invoke-direct {v3, v4}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;-><init>(I)V

    iput-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerBullet:Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    .line 400
    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->setInactive()V

    .line 401
    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->score:I

    add-int/lit8 v3, v3, 0xa

    iput v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->score:I

    :cond_11
    move v3, v1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_13
    move v3, v1

    :cond_14
    if-eqz v3, :cond_15

    .line 409
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->wave:I

    add-int/2addr v0, v5

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->wave:I

    .line 410
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->lives:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->lives:I

    .line 412
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->maxInvaderBullets:I

    add-int/2addr v0, v5

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->maxInvaderBullets:I

    .line 413
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->prepareLevel()V

    .line 417
    :cond_15
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    move v0, v1

    move v3, v0

    move v4, v3

    .line 420
    :goto_6
    iget-object v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_19

    .line 421
    iget-object v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    invoke-virtual {v6}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->getStatus()Z

    move-result v6

    if-eqz v6, :cond_18

    move v6, v1

    .line 422
    :goto_7
    iget v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->numBricks:I

    if-ge v6, v7, :cond_18

    .line 423
    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->bricks:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/DefenceBrick;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/DefenceBrick;->getVisibility()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 424
    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    invoke-virtual {v7}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->getRect()Landroid/graphics/RectF;

    move-result-object v7

    iget-object v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->bricks:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/DefenceBrick;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/DefenceBrick;->getRect()Landroid/graphics/RectF;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 428
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->bricks:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/DefenceBrick;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/DefenceBrick;->setInvisible()V

    .line 429
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 430
    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->soundPool:Landroid/media/SoundPool;

    iget v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->damageShelterID:I

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual/range {v7 .. v13}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_16
    move v4, v0

    move v3, v5

    :cond_17
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_19
    if-eqz v3, :cond_1a

    .line 437
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 441
    :cond_1a
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerBullet:Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->getStatus()Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v1

    .line 442
    :goto_8
    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->numBricks:I

    if-ge v0, v3, :cond_1c

    .line 443
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->bricks:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/DefenceBrick;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/DefenceBrick;->getVisibility()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 444
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerBullet:Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->bricks:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/DefenceBrick;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/DefenceBrick;->getRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 445
    new-instance v3, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    sget v4, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenY:I

    invoke-direct {v3, v4}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;-><init>(I)V

    iput-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerBullet:Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    .line 446
    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->setInactive()V

    .line 447
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->bricks:[Lsoft/evm/amblyopiamobilegames/juegos/space/game/DefenceBrick;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/DefenceBrick;->setInvisible()V

    .line 448
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 449
    iget-object v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->soundPool:Landroid/media/SoundPool;

    iget v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->damageShelterID:I

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual/range {v6 .. v12}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 458
    :cond_1c
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    move v0, v1

    move v3, v0

    .line 459
    :goto_9
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_20

    .line 460
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->getStatus()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 461
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerShip:Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;

    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->getRect()Landroid/graphics/RectF;

    move-result-object v4

    iget-object v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    invoke-virtual {v6}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->getRect()Landroid/graphics/RectF;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->getImpactPointY()F

    move-result v4

    sget v6, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenY:I

    int-to-float v6, v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_1f

    .line 462
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->setInactive()V

    .line 465
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->lives:I

    sub-int/2addr v0, v5

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->lives:I

    .line 466
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 467
    iget-object v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->soundPool:Landroid/media/SoundPool;

    iget v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerExplodeID:I

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual/range {v6 .. v12}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 470
    :cond_1d
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->lives:I

    if-gtz v0, :cond_1e

    .line 471
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->terminar()V

    :cond_1e
    move v0, v1

    move v3, v5

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_20
    move v1, v3

    goto :goto_a

    :cond_21
    move v0, v1

    :goto_a
    if-eqz v1, :cond_22

    .line 477
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 478
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->invadersBullets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_22
    return-void
.end method


# virtual methods
.method public drawTriangle(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .locals 5

    .line 585
    div-int/lit8 v0, p5, 0x2

    mul-int/2addr p5, p5

    mul-int v1, v0, v0

    sub-int/2addr p5, v1

    int-to-double v1, p5

    .line 588
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    int-to-double p5, p6

    mul-double/2addr v1, p5

    .line 591
    new-instance p5, Landroid/graphics/Path;

    invoke-direct {p5}, Landroid/graphics/Path;-><init>()V

    int-to-double v3, p3

    add-double/2addr v3, v1

    double-to-float p6, v3

    int-to-float v1, p4

    .line 598
    invoke-virtual {p5, p6, v1}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float p3, p3

    sub-int v2, p4, v0

    int-to-float v2, v2

    .line 599
    invoke-virtual {p5, p3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/2addr p4, v0

    int-to-float p4, p4

    .line 600
    invoke-virtual {p5, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 601
    invoke-virtual {p5, p6, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 602
    invoke-virtual {p5}, Landroid/graphics/Path;->close()V

    .line 604
    invoke-virtual {p1, p5, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 632
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 664
    :cond_0
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerShip:Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->setMovementState(I)V

    goto/16 :goto_0

    .line 637
    :cond_1
    sput-boolean v1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->pause:Z

    .line 640
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sget v1, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenX:I

    int-to-float v1, v1

    const/high16 v3, 0x41000000    # 8.0f

    div-float/2addr v1, v3

    cmpg-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    if-gez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sget v4, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenY:I

    int-to-float v5, v4

    div-float/2addr v5, v1

    int-to-float v4, v4

    add-float/2addr v5, v4

    cmpg-float v0, v0, v5

    if-gez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sget v4, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenY:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sget v4, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenY:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    sget v5, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenX:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    add-float/2addr v4, v5

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    .line 641
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerShip:Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->setMovementState(I)V

    goto :goto_0

    .line 642
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sget v4, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenX:I

    int-to-float v5, v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v5, v4

    cmpl-float v0, v0, v5

    if-lez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sget v4, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenY:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenY:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    sget v4, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenX:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v0, v4

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    .line 643
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerShip:Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->setMovementState(I)V

    goto :goto_0

    .line 651
    :cond_3
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerBullet:Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerShip:Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->getX()F

    move-result v0

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerShip:Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->getLength()F

    move-result v3

    div-float/2addr v3, v1

    add-float/2addr v0, v3

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerBullet:Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    sub-float/2addr v0, v3

    sget v1, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenY:I

    int-to-float v1, v1

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playerBullet:Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;

    iget v3, v3, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->UP:I

    invoke-virtual {p1, v0, v1, v3}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->shoot(FFI)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 652
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "sonido"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 653
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->soundPool:Landroid/media/SoundPool;

    iget v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->shootID:I

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_4
    :goto_0
    return v2
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x0

    .line 610
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playing:Z

    .line 612
    :try_start_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->gameThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Error:"

    const-string v1, "joining thread"

    .line 614
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x1

    .line 622
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playing:Z

    .line 623
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->gameThread:Ljava/lang/Thread;

    .line 624
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .locals 10

    .line 217
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->playing:Z

    if-eqz v0, :cond_5

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 223
    sget-boolean v2, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->pause:Z

    if-nez v2, :cond_1

    .line 224
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->update()V

    .line 229
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->draw()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :catch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->timeThisFrame:J

    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    const-wide/16 v4, 0x3e8

    .line 239
    div-long/2addr v4, v2

    iput-wide v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->fps:J

    .line 244
    :cond_2
    sget-boolean v2, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->pause:Z

    if-nez v2, :cond_0

    .line 245
    iget-wide v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->lastMenaceTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->menaceInterval:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 246
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->uhOrOh:Z

    const-string v1, "sonido"

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 248
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 249
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->soundPool:Landroid/media/SoundPool;

    iget v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->uhID:I

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_1

    .line 253
    :cond_3
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 254
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->soundPool:Landroid/media/SoundPool;

    iget v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->ohID:I

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 258
    :cond_4
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->lastMenaceTime:J

    .line 260
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->uhOrOh:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->uhOrOh:Z

    goto :goto_0

    :cond_5
    return-void
.end method
