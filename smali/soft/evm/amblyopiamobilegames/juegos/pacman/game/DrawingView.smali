.class public Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;
.super Landroid/view/SurfaceView;
.source "DrawingView.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static LONG_PRESS_TIME:I = 0x2ee

.field public static levels:I


# instance fields
.field private arrowDirectionDefault:I

.field private arrowDown:[Landroid/graphics/Bitmap;

.field private arrowLeft:[Landroid/graphics/Bitmap;

.field arrowMul:I

.field private arrowRight:[Landroid/graphics/Bitmap;

.field private arrowUp:[Landroid/graphics/Bitmap;

.field private blockSize:I

.field private canDraw:Z

.field chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

.field private currentArrowFrame:I

.field private currentPacmanFrame:I

.field private currentScore:I

.field dimenMoveGhost:I

.field dimenMovePlayer:I

.field private direction:I

.field private frameTicker:J

.field private ghostBitmap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private ghostDirection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private holder:Landroid/view/SurfaceHolder;

.field final inicio:I

.field leveldata1:[[S

.field private lives:I

.field private nextDirection:I

.field private pacmanDown:[Landroid/graphics/Bitmap;

.field private pacmanLeft:[Landroid/graphics/Bitmap;

.field private pacmanRight:[Landroid/graphics/Bitmap;

.field private pacmanUp:[Landroid/graphics/Bitmap;

.field private paintArrow:Landroid/graphics/Paint;

.field private paintGhost:Landroid/graphics/Paint;

.field private paintMap:Landroid/graphics/Paint;

.field private paintPacMan:Landroid/graphics/Paint;

.field private paintPellets:Landroid/graphics/Paint;

.field private paintScore:Landroid/graphics/Paint;

.field prefs:Landroid/content/SharedPreferences;

.field private screenWidth:I

.field private siguienteNivel:Z

.field private spriteSize:I

.field private final tableX:I

.field private final tableY:I

.field private thread:Ljava/lang/Thread;

.field private totalFrame:I

.field user:Landroid/content/SharedPreferences;

.field private viewDirection:I

.field private x1:F

.field private x2:F

.field xDistance:I

.field private xPosGhost:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private xPosPacman:I

.field private y1:F

.field private y2:F

.field yDistance:I

.field private yPosGhost:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private yPosPacman:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 83
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x5

    .line 33
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->lives:I

    const/4 v1, 0x0

    .line 35
    iput-boolean v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->siguienteNivel:Z

    const/16 v2, 0x12

    .line 37
    iput v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->tableX:I

    const/16 v3, 0x11

    .line 38
    iput v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->tableY:I

    .line 42
    sget v4, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->levels:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->inicio:I

    const/4 v6, 0x7

    .line 44
    iput v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowMul:I

    .line 52
    iput-boolean v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->canDraw:Z

    const/4 v7, 0x4

    .line 61
    iput v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->totalFrame:I

    .line 62
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->currentPacmanFrame:I

    .line 63
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->currentArrowFrame:I

    .line 72
    iput v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->direction:I

    .line 73
    iput v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->nextDirection:I

    const/4 v8, 0x2

    .line 74
    iput v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->viewDirection:I

    .line 76
    iput v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowDirectionDefault:I

    .line 80
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->currentScore:I

    new-array v2, v2, [[S

    new-array v9, v3, [S

    .line 865
    fill-array-data v9, :array_0

    aput-object v9, v2, v1

    new-array v9, v3, [S

    fill-array-data v9, :array_1

    aput-object v9, v2, v5

    new-array v5, v3, [S

    fill-array-data v5, :array_2

    aput-object v5, v2, v8

    new-array v5, v3, [S

    fill-array-data v5, :array_3

    const/4 v8, 0x3

    aput-object v5, v2, v8

    new-array v5, v3, [S

    fill-array-data v5, :array_4

    aput-object v5, v2, v7

    new-array v5, v3, [S

    fill-array-data v5, :array_5

    aput-object v5, v2, v0

    new-array v0, v3, [S

    fill-array-data v0, :array_6

    const/4 v5, 0x6

    aput-object v0, v2, v5

    new-array v0, v3, [S

    fill-array-data v0, :array_7

    aput-object v0, v2, v6

    new-array v0, v3, [S

    fill-array-data v0, :array_8

    const/16 v5, 0x8

    aput-object v0, v2, v5

    new-array v0, v3, [S

    fill-array-data v0, :array_9

    const/16 v5, 0x9

    aput-object v0, v2, v5

    new-array v0, v3, [S

    fill-array-data v0, :array_a

    const/16 v5, 0xa

    aput-object v0, v2, v5

    new-array v0, v3, [S

    fill-array-data v0, :array_b

    const/16 v5, 0xb

    aput-object v0, v2, v5

    new-array v0, v3, [S

    fill-array-data v0, :array_c

    const/16 v5, 0xc

    aput-object v0, v2, v5

    new-array v0, v3, [S

    fill-array-data v0, :array_d

    const/16 v5, 0xd

    aput-object v0, v2, v5

    new-array v0, v3, [S

    fill-array-data v0, :array_e

    const/16 v5, 0xe

    aput-object v0, v2, v5

    new-array v0, v3, [S

    fill-array-data v0, :array_f

    const/16 v5, 0xf

    aput-object v0, v2, v5

    new-array v0, v3, [S

    fill-array-data v0, :array_10

    const/16 v5, 0x10

    aput-object v0, v2, v5

    new-array v0, v3, [S

    fill-array-data v0, :array_11

    aput-object v0, v2, v3

    iput-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->leveldata1:[[S

    .line 84
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->holder:Landroid/view/SurfaceHolder;

    .line 85
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 86
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->totalFrame:I

    const/16 v2, 0x3e8

    div-int/2addr v2, v0

    int-to-long v2, v2

    iput-wide v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->frameTicker:J

    const-string v0, "MisPreferencias"

    .line 89
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->prefs:Landroid/content/SharedPreferences;

    .line 90
    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->ajustarColores(Landroid/content/SharedPreferences;)V

    .line 93
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintPacMan:Landroid/graphics/Paint;

    .line 94
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_vago()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintGhost:Landroid/graphics/Paint;

    .line 97
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_vago()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintScore:Landroid/graphics/Paint;

    .line 100
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintArrow:Landroid/graphics/Paint;

    .line 103
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_vago()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintPellets:Landroid/graphics/Paint;

    .line 106
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_vago()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintMap:Landroid/graphics/Paint;

    .line 109
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 112
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->screenWidth:I

    .line 113
    div-int/lit8 v0, p1, 0x11

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    const/16 v1, 0x21c

    if-gt p1, v1, :cond_0

    .line 132
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->dimenMovePlayer:I

    .line 133
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->dimenMoveGhost:I

    goto :goto_0

    .line 136
    :cond_0
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->dimenMovePlayer:I

    .line 137
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->dimenMoveGhost:I

    .line 142
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostBitmap:Ljava/util/ArrayList;

    .line 143
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosGhost:Ljava/util/ArrayList;

    .line 144
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yPosGhost:Ljava/util/ArrayList;

    .line 145
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    .line 146
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->loadBitmapImages()V

    .line 147
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->reposicionar()V

    const-string p1, "info"

    const-string v0, "Constructor"

    .line 148
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data

    nop

    :array_2
    .array-data 2
        0x13s
        0x1as
        0x1as
        0x12s
        0x1as
        0x1as
        0x1as
        0x16s
        0x0s
        0x13s
        0x1as
        0x1as
        0x1as
        0x12s
        0x1as
        0x1as
        0x16s
    .end array-data

    nop

    :array_3
    .array-data 2
        0x15s
        0x0s
        0x0s
        0x15s
        0x0s
        0x0s
        0x0s
        0x15s
        0x0s
        0x15s
        0x0s
        0x0s
        0x0s
        0x15s
        0x0s
        0x0s
        0x15s
    .end array-data

    nop

    :array_4
    .array-data 2
        0x11s
        0x1as
        0x1as
        0x10s
        0x1as
        0x12s
        0x1as
        0x18s
        0x1as
        0x18s
        0x1as
        0x12s
        0x1as
        0x10s
        0x1as
        0x1as
        0x14s
    .end array-data

    nop

    :array_5
    .array-data 2
        0x19s
        0x1as
        0x1as
        0x14s
        0x0s
        0x19s
        0x1as
        0x16s
        0x0s
        0x13s
        0x1as
        0x1cs
        0x0s
        0x11s
        0x1as
        0x1as
        0x1cs
    .end array-data

    nop

    :array_6
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x15s
        0x0s
        0x0s
        0x0s
        0x15s
        0x0s
        0x15s
        0x0s
        0x0s
        0x0s
        0x15s
        0x0s
        0x0s
        0x0s
    .end array-data

    nop

    :array_7
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x15s
        0x0s
        0x13s
        0x1as
        0x18s
        0x1as
        0x18s
        0x1as
        0x16s
        0x0s
        0x15s
        0x0s
        0x0s
        0x0s
    .end array-data

    nop

    :array_8
    .array-data 2
        0x1as
        0x1as
        0x1as
        0x10s
        0x1as
        0x14s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x11s
        0x1as
        0x10s
        0x1as
        0x1as
        0x1as
    .end array-data

    nop

    :array_9
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x15s
        0x0s
        0x11s
        0x1as
        0x1as
        0x1as
        0x1as
        0x1as
        0x14s
        0x0s
        0x15s
        0x0s
        0x0s
        0x0s
    .end array-data

    nop

    :array_a
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x15s
        0x0s
        0x15s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x15s
        0x0s
        0x15s
        0x0s
        0x0s
        0x0s
    .end array-data

    nop

    :array_b
    .array-data 2
        0x13s
        0x1as
        0x1as
        0x10s
        0x1as
        0x18s
        0x1as
        0x16s
        0x0s
        0x13s
        0x1as
        0x18s
        0x1as
        0x10s
        0x1as
        0x1as
        0x16s
    .end array-data

    nop

    :array_c
    .array-data 2
        0x15s
        0x0s
        0x0s
        0x15s
        0x0s
        0x0s
        0x0s
        0x15s
        0x0s
        0x15s
        0x0s
        0x0s
        0x0s
        0x15s
        0x0s
        0x0s
        0x15s
    .end array-data

    nop

    :array_d
    .array-data 2
        0x19s
        0x16s
        0x0s
        0x15s
        0x0s
        0x0s
        0x0s
        0x11s
        0x2s
        0x14s
        0x0s
        0x0s
        0x0s
        0x15s
        0x0s
        0x13s
        0x1cs
    .end array-data

    nop

    :array_e
    .array-data 2
        0x0s
        0x15s
        0x0s
        0x11s
        0x1as
        0x1as
        0x12s
        0x18s
        0x18s
        0x18s
        0x12s
        0x1as
        0x1as
        0x14s
        0x0s
        0x15s
        0x0s
    .end array-data

    nop

    :array_f
    .array-data 2
        0x13s
        0x18s
        0x1as
        0x1cs
        0x0s
        0x0s
        0x19s
        0x12s
        0x1as
        0x12s
        0x1cs
        0x0s
        0x0s
        0x19s
        0x1as
        0x18s
        0x16s
    .end array-data

    nop

    :array_10
    .array-data 2
        0x15s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x15s
        0x0s
        0x15s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x15s
    .end array-data

    nop

    :array_11
    .array-data 2
        0x19s
        0x1as
        0x1as
        0x1as
        0x1as
        0x1as
        0x1as
        0x18s
        0x1as
        0x18s
        0x1as
        0x1as
        0x1as
        0x1as
        0x1as
        0x1as
        0x1cs
    .end array-data
.end method

.method private calculateSwipeDirection()V
    .locals 4

    .line 579
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->x2:F

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->x1:F

    sub-float/2addr v0, v1

    .line 580
    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->y2:F

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->y1:F

    sub-float/2addr v1, v2

    .line 592
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    if-lez v2, :cond_1

    cmpg-float v0, v1, v3

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 594
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->nextDirection:I

    goto :goto_0

    :cond_0
    cmpl-float v0, v1, v3

    if-lez v0, :cond_3

    const/4 v0, 0x2

    .line 596
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->nextDirection:I

    goto :goto_0

    :cond_1
    cmpg-float v1, v0, v3

    if-gez v1, :cond_2

    const/4 v0, 0x3

    .line 600
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->nextDirection:I

    goto :goto_0

    :cond_2
    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    const/4 v0, 0x1

    .line 602
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->nextDirection:I

    :cond_3
    :goto_0
    return-void
.end method

.method private cargarBitmapGhost()Landroid/graphics/Bitmap;
    .locals 3

    .line 830
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08009d

    .line 829
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->spriteSize:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 831
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintGhost:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->replaceColor(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private choque()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 260
    :goto_0
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostBitmap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 261
    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yPosPacman:I

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yPosGhost:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    div-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_0

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosPacman:I

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosGhost:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    div-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private drawArrowIndicators(Landroid/graphics/Canvas;)V
    .locals 4

    .line 474
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->nextDirection:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 485
    :cond_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowLeft:[Landroid/graphics/Bitmap;

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->currentArrowFrame:I

    aget-object v0, v0, v1

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    mul-int/lit8 v2, v1, 0x5

    int-to-float v2, v2

    mul-int/lit8 v1, v1, 0x14

    int-to-float v1, v1

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintArrow:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 482
    :cond_1
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowDown:[Landroid/graphics/Bitmap;

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->currentArrowFrame:I

    aget-object v0, v0, v1

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    mul-int/lit8 v2, v1, 0x5

    int-to-float v2, v2

    mul-int/lit8 v1, v1, 0x14

    int-to-float v1, v1

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintArrow:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 479
    :cond_2
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowRight:[Landroid/graphics/Bitmap;

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->currentArrowFrame:I

    aget-object v0, v0, v1

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    mul-int/lit8 v2, v1, 0x5

    int-to-float v2, v2

    mul-int/lit8 v1, v1, 0x14

    int-to-float v1, v1

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintArrow:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 476
    :cond_3
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowUp:[Landroid/graphics/Bitmap;

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->currentArrowFrame:I

    aget-object v0, v0, v1

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    mul-int/lit8 v2, v1, 0x5

    int-to-float v2, v2

    mul-int/lit8 v1, v1, 0x14

    int-to-float v1, v1

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintArrow:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private insertar()V
    .locals 3

    const/4 v0, 0x1

    .line 269
    sput-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->jugado:Z

    .line 270
    sput-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->insertar:Z

    .line 271
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Usuario"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->user:Landroid/content/SharedPreferences;

    const-string v1, "correo"

    const-string v2, ""

    .line 272
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->correo:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->user:Landroid/content/SharedPreferences;

    const-string v1, "nombre"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre:Ljava/lang/String;

    .line 274
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->pacman:Ljava/lang/String;

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre_juego:Ljava/lang/String;

    .line 275
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->currentScore:I

    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->score1:I

    .line 276
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->levels:I

    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->score2:I

    .line 277
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;->getMilis()J

    move-result-wide v0

    sput-wide v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->tiempo:J

    return-void
.end method

.method private loadBitmapImages()V
    .locals 13

    .line 668
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->screenWidth:I

    div-int/lit8 v0, v0, 0x11

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->spriteSize:I

    const/4 v1, 0x5

    .line 669
    div-int/2addr v0, v1

    mul-int/2addr v0, v1

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->spriteSize:I

    .line 670
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowMul:I

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    mul-int/2addr v0, v2

    const/4 v2, 0x7

    new-array v3, v2, [Landroid/graphics/Bitmap;

    .line 673
    iput-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowRight:[Landroid/graphics/Bitmap;

    .line 675
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08013c

    .line 674
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x0

    .line 783
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 674
    invoke-static {v4, v0, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, v5

    .line 676
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowRight:[Landroid/graphics/Bitmap;

    .line 677
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f08013d

    .line 676
    invoke-static {v4, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v0, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v3, v7

    .line 678
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowRight:[Landroid/graphics/Bitmap;

    .line 679
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f08013e

    .line 678
    invoke-static {v4, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v0, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v8, 0x2

    aput-object v4, v3, v8

    .line 680
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowRight:[Landroid/graphics/Bitmap;

    .line 681
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x7f08013f

    .line 680
    invoke-static {v4, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v0, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v9, 0x3

    aput-object v4, v3, v9

    .line 682
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowRight:[Landroid/graphics/Bitmap;

    .line 683
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x7f080140

    .line 682
    invoke-static {v4, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v0, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v10, 0x4

    aput-object v4, v3, v10

    .line 684
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowRight:[Landroid/graphics/Bitmap;

    .line 685
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v11, 0x7f080141

    .line 684
    invoke-static {v4, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v0, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, v1

    .line 686
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowRight:[Landroid/graphics/Bitmap;

    .line 687
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v11, 0x7f080142

    .line 686
    invoke-static {v4, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v0, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v11, 0x6

    aput-object v4, v3, v11

    new-array v3, v2, [Landroid/graphics/Bitmap;

    .line 689
    iput-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowDown:[Landroid/graphics/Bitmap;

    .line 691
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x7f080092

    .line 690
    invoke-static {v4, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v0, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, v5

    .line 692
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowDown:[Landroid/graphics/Bitmap;

    .line 693
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x7f080093

    .line 692
    invoke-static {v4, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v0, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, v7

    .line 694
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowDown:[Landroid/graphics/Bitmap;

    .line 695
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x7f080094

    .line 694
    invoke-static {v4, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v0, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, v8

    .line 696
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowDown:[Landroid/graphics/Bitmap;

    .line 697
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x7f080095

    .line 696
    invoke-static {v4, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v0, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, v9

    .line 698
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowDown:[Landroid/graphics/Bitmap;

    .line 699
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x7f080096

    .line 698
    invoke-static {v4, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v0, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, v10

    .line 700
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowDown:[Landroid/graphics/Bitmap;

    .line 701
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x7f080097

    .line 700
    invoke-static {v4, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v0, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, v1

    .line 702
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowDown:[Landroid/graphics/Bitmap;

    .line 703
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x7f080098

    .line 702
    invoke-static {v4, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v0, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, v11

    new-array v3, v2, [Landroid/graphics/Bitmap;

    .line 705
    iput-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowUp:[Landroid/graphics/Bitmap;

    .line 707
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x7f08014c

    .line 706
    invoke-static {v4, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v0, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, v5

    .line 708
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowUp:[Landroid/graphics/Bitmap;

    .line 709
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x7f08014d

    .line 708
    invoke-static {v4, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v0, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, v7

    .line 710
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowUp:[Landroid/graphics/Bitmap;

    .line 711
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x7f08014e

    .line 710
    invoke-static {v4, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v0, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, v8

    .line 712
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowUp:[Landroid/graphics/Bitmap;

    .line 713
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x7f08014f

    .line 712
    invoke-static {v4, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v0, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, v9

    .line 714
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowUp:[Landroid/graphics/Bitmap;

    .line 715
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x7f080150

    .line 714
    invoke-static {v4, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v0, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, v10

    .line 716
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowUp:[Landroid/graphics/Bitmap;

    .line 717
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x7f080151

    .line 716
    invoke-static {v4, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v0, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, v1

    .line 718
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowUp:[Landroid/graphics/Bitmap;

    .line 719
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x7f080152

    .line 718
    invoke-static {v4, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v0, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, v11

    new-array v2, v2, [Landroid/graphics/Bitmap;

    .line 721
    iput-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowLeft:[Landroid/graphics/Bitmap;

    .line 723
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800c8

    .line 722
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, v0, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v5

    .line 724
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowLeft:[Landroid/graphics/Bitmap;

    .line 725
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800c9

    .line 724
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, v0, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v7

    .line 726
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowLeft:[Landroid/graphics/Bitmap;

    .line 727
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800ca

    .line 726
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, v0, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v8

    .line 728
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowLeft:[Landroid/graphics/Bitmap;

    .line 729
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800cb

    .line 728
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, v0, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v9

    .line 730
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowLeft:[Landroid/graphics/Bitmap;

    .line 731
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800cc

    .line 730
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, v0, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v10

    .line 732
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowLeft:[Landroid/graphics/Bitmap;

    .line 733
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800cd

    .line 732
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, v0, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v1

    .line 734
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowLeft:[Landroid/graphics/Bitmap;

    .line 735
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800ce

    .line 734
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, v0, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v1, v11

    .line 740
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->totalFrame:I

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->pacmanRight:[Landroid/graphics/Bitmap;

    .line 742
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080133

    .line 741
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->spriteSize:I

    invoke-static {v1, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v5

    .line 743
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->pacmanRight:[Landroid/graphics/Bitmap;

    .line 744
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080134

    .line 743
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->spriteSize:I

    invoke-static {v1, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v7

    .line 745
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->pacmanRight:[Landroid/graphics/Bitmap;

    .line 746
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080135

    .line 745
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->spriteSize:I

    invoke-static {v1, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v8

    .line 747
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->pacmanRight:[Landroid/graphics/Bitmap;

    .line 748
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080132

    .line 747
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->spriteSize:I

    invoke-static {v1, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v9

    .line 750
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->totalFrame:I

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->pacmanDown:[Landroid/graphics/Bitmap;

    .line 752
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08012b

    .line 751
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->spriteSize:I

    invoke-static {v1, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v5

    .line 753
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->pacmanDown:[Landroid/graphics/Bitmap;

    .line 754
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08012c

    .line 753
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->spriteSize:I

    invoke-static {v1, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v7

    .line 755
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->pacmanDown:[Landroid/graphics/Bitmap;

    .line 756
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08012d

    .line 755
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->spriteSize:I

    invoke-static {v1, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v8

    .line 757
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->pacmanDown:[Landroid/graphics/Bitmap;

    .line 758
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08012a

    .line 757
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->spriteSize:I

    invoke-static {v1, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v9

    .line 760
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->totalFrame:I

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->pacmanLeft:[Landroid/graphics/Bitmap;

    .line 762
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08012f

    .line 761
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->spriteSize:I

    invoke-static {v1, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v5

    .line 763
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->pacmanLeft:[Landroid/graphics/Bitmap;

    .line 764
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080130

    .line 763
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->spriteSize:I

    invoke-static {v1, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v7

    .line 765
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->pacmanLeft:[Landroid/graphics/Bitmap;

    .line 766
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080131

    .line 765
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->spriteSize:I

    invoke-static {v1, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v8

    .line 767
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->pacmanLeft:[Landroid/graphics/Bitmap;

    .line 768
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08012e

    .line 767
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->spriteSize:I

    invoke-static {v1, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v9

    .line 770
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->totalFrame:I

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->pacmanUp:[Landroid/graphics/Bitmap;

    .line 772
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080137

    .line 771
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->spriteSize:I

    invoke-static {v1, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v5

    .line 773
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->pacmanUp:[Landroid/graphics/Bitmap;

    .line 774
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080138

    .line 773
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->spriteSize:I

    invoke-static {v1, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v7

    .line 775
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->pacmanUp:[Landroid/graphics/Bitmap;

    .line 776
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080139

    .line 775
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->spriteSize:I

    invoke-static {v1, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v8

    .line 777
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->pacmanUp:[Landroid/graphics/Bitmap;

    .line 778
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080136

    .line 777
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->spriteSize:I

    invoke-static {v1, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v9

    move v0, v5

    .line 780
    :goto_0
    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->inicio:I

    if-ge v0, v1, :cond_0

    .line 781
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostBitmap:Ljava/util/ArrayList;

    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->cargarBitmapGhost()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowDirectionDefault:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosGhost:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yPosGhost:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v5

    .line 790
    :goto_1
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->pacmanRight:[Landroid/graphics/Bitmap;

    array-length v2, v1

    const/16 v3, -0x100

    if-ge v0, v2, :cond_1

    .line 791
    aget-object v1, v1, v0

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintPacMan:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {p0, v1, v3, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->replaceColor(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 792
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->pacmanRight:[Landroid/graphics/Bitmap;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v5

    .line 794
    :goto_2
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->pacmanDown:[Landroid/graphics/Bitmap;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 795
    aget-object v1, v1, v0

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintPacMan:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {p0, v1, v3, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->replaceColor(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 796
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->pacmanDown:[Landroid/graphics/Bitmap;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v5

    .line 798
    :goto_3
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->pacmanLeft:[Landroid/graphics/Bitmap;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 799
    aget-object v1, v1, v0

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintPacMan:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {p0, v1, v3, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->replaceColor(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 800
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->pacmanLeft:[Landroid/graphics/Bitmap;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move v0, v5

    .line 802
    :goto_4
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->pacmanUp:[Landroid/graphics/Bitmap;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 803
    aget-object v1, v1, v0

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintPacMan:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {p0, v1, v3, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->replaceColor(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 804
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->pacmanUp:[Landroid/graphics/Bitmap;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    move v0, v5

    .line 808
    :goto_5
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowRight:[Landroid/graphics/Bitmap;

    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 809
    aget-object v1, v1, v0

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintArrow:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {p0, v1, v3, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->replaceColor(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 810
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowRight:[Landroid/graphics/Bitmap;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    move v0, v5

    .line 812
    :goto_6
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowDown:[Landroid/graphics/Bitmap;

    array-length v2, v1

    if-ge v0, v2, :cond_6

    .line 813
    aget-object v1, v1, v0

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintArrow:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {p0, v1, v3, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->replaceColor(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 814
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowDown:[Landroid/graphics/Bitmap;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    move v0, v5

    .line 816
    :goto_7
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowUp:[Landroid/graphics/Bitmap;

    array-length v2, v1

    if-ge v0, v2, :cond_7

    .line 817
    aget-object v1, v1, v0

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintArrow:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {p0, v1, v3, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->replaceColor(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 818
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowUp:[Landroid/graphics/Bitmap;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 820
    :cond_7
    :goto_8
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowLeft:[Landroid/graphics/Bitmap;

    array-length v1, v0

    if-ge v5, v1, :cond_8

    .line 821
    aget-object v0, v0, v5

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintArrow:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {p0, v0, v3, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->replaceColor(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 822
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowLeft:[Landroid/graphics/Bitmap;

    aput-object v0, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_8
    return-void
.end method

.method private reiniciarTablero()V
    .locals 4

    const/16 v0, 0x12

    new-array v0, v0, [[S

    const/16 v1, 0x11

    new-array v2, v1, [S

    .line 237
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [S

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [S

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [S

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [S

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [S

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [S

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [S

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [S

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [S

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [S

    fill-array-data v2, :array_a

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [S

    fill-array-data v2, :array_b

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [S

    fill-array-data v2, :array_c

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [S

    fill-array-data v2, :array_d

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [S

    fill-array-data v2, :array_e

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [S

    fill-array-data v2, :array_f

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [S

    fill-array-data v2, :array_10

    const/16 v3, 0x10

    aput-object v2, v0, v3

    new-array v2, v1, [S

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->leveldata1:[[S

    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data

    nop

    :array_2
    .array-data 2
        0x13s
        0x1as
        0x1as
        0x12s
        0x1as
        0x1as
        0x1as
        0x16s
        0x0s
        0x13s
        0x1as
        0x1as
        0x1as
        0x12s
        0x1as
        0x1as
        0x16s
    .end array-data

    nop

    :array_3
    .array-data 2
        0x15s
        0x0s
        0x0s
        0x15s
        0x0s
        0x0s
        0x0s
        0x15s
        0x0s
        0x15s
        0x0s
        0x0s
        0x0s
        0x15s
        0x0s
        0x0s
        0x15s
    .end array-data

    nop

    :array_4
    .array-data 2
        0x11s
        0x1as
        0x1as
        0x10s
        0x1as
        0x12s
        0x1as
        0x18s
        0x1as
        0x18s
        0x1as
        0x12s
        0x1as
        0x10s
        0x1as
        0x1as
        0x14s
    .end array-data

    nop

    :array_5
    .array-data 2
        0x19s
        0x1as
        0x1as
        0x14s
        0x0s
        0x19s
        0x1as
        0x16s
        0x0s
        0x13s
        0x1as
        0x1cs
        0x0s
        0x11s
        0x1as
        0x1as
        0x1cs
    .end array-data

    nop

    :array_6
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x15s
        0x0s
        0x0s
        0x0s
        0x15s
        0x0s
        0x15s
        0x0s
        0x0s
        0x0s
        0x15s
        0x0s
        0x0s
        0x0s
    .end array-data

    nop

    :array_7
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x15s
        0x0s
        0x13s
        0x1as
        0x18s
        0x1as
        0x18s
        0x1as
        0x16s
        0x0s
        0x15s
        0x0s
        0x0s
        0x0s
    .end array-data

    nop

    :array_8
    .array-data 2
        0x1as
        0x1as
        0x1as
        0x10s
        0x1as
        0x14s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x11s
        0x1as
        0x10s
        0x1as
        0x1as
        0x1as
    .end array-data

    nop

    :array_9
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x15s
        0x0s
        0x11s
        0x1as
        0x1as
        0x1as
        0x1as
        0x1as
        0x14s
        0x0s
        0x15s
        0x0s
        0x0s
        0x0s
    .end array-data

    nop

    :array_a
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x15s
        0x0s
        0x15s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x15s
        0x0s
        0x15s
        0x0s
        0x0s
        0x0s
    .end array-data

    nop

    :array_b
    .array-data 2
        0x13s
        0x1as
        0x1as
        0x10s
        0x1as
        0x18s
        0x1as
        0x16s
        0x0s
        0x13s
        0x1as
        0x18s
        0x1as
        0x10s
        0x1as
        0x1as
        0x16s
    .end array-data

    nop

    :array_c
    .array-data 2
        0x15s
        0x0s
        0x0s
        0x15s
        0x0s
        0x0s
        0x0s
        0x15s
        0x0s
        0x15s
        0x0s
        0x0s
        0x0s
        0x15s
        0x0s
        0x0s
        0x15s
    .end array-data

    nop

    :array_d
    .array-data 2
        0x19s
        0x16s
        0x0s
        0x15s
        0x0s
        0x0s
        0x0s
        0x11s
        0x2s
        0x14s
        0x0s
        0x0s
        0x0s
        0x15s
        0x0s
        0x13s
        0x1cs
    .end array-data

    nop

    :array_e
    .array-data 2
        0x0s
        0x15s
        0x0s
        0x11s
        0x1as
        0x1as
        0x12s
        0x18s
        0x18s
        0x18s
        0x12s
        0x1as
        0x1as
        0x14s
        0x0s
        0x15s
        0x0s
    .end array-data

    nop

    :array_f
    .array-data 2
        0x13s
        0x18s
        0x1as
        0x1cs
        0x0s
        0x0s
        0x19s
        0x12s
        0x1as
        0x12s
        0x1cs
        0x0s
        0x0s
        0x19s
        0x1as
        0x18s
        0x16s
    .end array-data

    nop

    :array_10
    .array-data 2
        0x15s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x15s
        0x0s
        0x15s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x15s
    .end array-data

    nop

    :array_11
    .array-data 2
        0x19s
        0x1as
        0x1as
        0x1as
        0x1as
        0x1as
        0x1as
        0x18s
        0x1as
        0x18s
        0x1as
        0x1as
        0x1as
        0x1as
        0x1as
        0x1as
        0x1cs
    .end array-data
.end method

.method private reposicionar()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    .line 153
    :goto_0
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostBitmap:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    add-int/2addr v2, v0

    const/16 v4, 0x11

    if-lt v2, v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    const/16 v2, 0x8

    if-lt v3, v2, :cond_0

    move v2, v0

    move v3, v2

    goto :goto_1

    :cond_0
    move v2, v0

    .line 159
    :cond_1
    :goto_1
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosGhost:Ljava/util/ArrayList;

    iget v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    mul-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yPosGhost:Ljava/util/ArrayList;

    iget v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    mul-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    iget v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowDirectionDefault:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_2
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    mul-int/lit8 v1, v0, 0x8

    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosPacman:I

    mul-int/lit8 v0, v0, 0xd

    .line 164
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yPosPacman:I

    return-void
.end method

.method private updateFrame(J)V
    .locals 6

    .line 613
    iget-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->frameTicker:J

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->totalFrame:I

    mul-int/lit8 v3, v2, 0x1e

    int-to-long v3, v3

    add-long/2addr v0, v3

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 614
    iput-wide p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->frameTicker:J

    .line 617
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->currentPacmanFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->currentPacmanFrame:I

    if-lt v0, v2, :cond_0

    .line 620
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->currentPacmanFrame:I

    .line 623
    :cond_0
    iget-wide v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->frameTicker:J

    const-wide/16 v4, 0x32

    add-long/2addr v2, v4

    cmp-long p1, p1, v2

    if-lez p1, :cond_1

    .line 624
    iget p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->currentArrowFrame:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->currentArrowFrame:I

    .line 625
    iget p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowMul:I

    if-lt p1, p2, :cond_1

    .line 626
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->currentArrowFrame:I

    :cond_1
    return-void
.end method


# virtual methods
.method public drawMap(Landroid/graphics/Canvas;)V
    .locals 13

    .line 531
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintMap:Landroid/graphics/Paint;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 532
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintMap:Landroid/graphics/Paint;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x12

    if-ge v1, v2, :cond_5

    move v2, v0

    :goto_1
    const/16 v3, 0x11

    if-ge v2, v3, :cond_4

    .line 537
    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    mul-int v4, v2, v3

    mul-int v5, v1, v3

    .line 539
    iget-object v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->leveldata1:[[S

    aget-object v6, v6, v1

    aget-short v6, v6, v2

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    int-to-float v10, v4

    int-to-float v9, v5

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x1

    int-to-float v11, v3

    .line 540
    iget-object v12, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintMap:Landroid/graphics/Paint;

    move-object v7, p1

    move v8, v10

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 542
    :cond_0
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->leveldata1:[[S

    aget-object v3, v3, v1

    aget-short v3, v3, v2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    int-to-float v7, v4

    int-to-float v10, v5

    .line 543
    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    int-to-float v9, v3

    iget-object v11, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintMap:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v10

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 545
    :cond_1
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->leveldata1:[[S

    aget-object v3, v3, v1

    aget-short v3, v3, v2

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 546
    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    add-int v6, v4, v3

    int-to-float v8, v6

    int-to-float v9, v5

    add-int v6, v4, v3

    int-to-float v10, v6

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x1

    int-to-float v11, v3

    iget-object v12, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintMap:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 548
    :cond_2
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->leveldata1:[[S

    aget-object v3, v3, v1

    aget-short v3, v3, v2

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    int-to-float v7, v4

    .line 549
    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    add-int v6, v5, v3

    int-to-float v8, v6

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    int-to-float v9, v4

    add-int/2addr v5, v3

    int-to-float v10, v5

    iget-object v11, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintMap:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public drawPacman(Landroid/graphics/Canvas;)V
    .locals 4

    .line 495
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->viewDirection:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 506
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->pacmanDown:[Landroid/graphics/Bitmap;

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->currentPacmanFrame:I

    aget-object v0, v0, v1

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosPacman:I

    int-to-float v1, v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yPosPacman:I

    int-to-float v2, v2

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintPacMan:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 503
    :cond_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->pacmanLeft:[Landroid/graphics/Bitmap;

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->currentPacmanFrame:I

    aget-object v0, v0, v1

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosPacman:I

    int-to-float v1, v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yPosPacman:I

    int-to-float v2, v2

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintPacMan:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 500
    :cond_1
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->pacmanRight:[Landroid/graphics/Bitmap;

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->currentPacmanFrame:I

    aget-object v0, v0, v1

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosPacman:I

    int-to-float v1, v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yPosPacman:I

    int-to-float v2, v2

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintPacMan:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 497
    :cond_2
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->pacmanUp:[Landroid/graphics/Bitmap;

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->currentPacmanFrame:I

    aget-object v0, v0, v1

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosPacman:I

    int-to-float v1, v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yPosPacman:I

    int-to-float v2, v2

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintPacMan:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public drawPellets(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v0, 0x1

    .line 513
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->siguienteNivel:Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x12

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_1
    const/16 v3, 0x11

    if-ge v2, v3, :cond_1

    .line 518
    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    mul-int v4, v2, v3

    int-to-float v4, v4

    mul-int v5, v1, v3

    int-to-float v5, v5

    .line 521
    iget-object v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->leveldata1:[[S

    aget-object v6, v6, v1

    aget-short v6, v6, v2

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_0

    .line 522
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->siguienteNivel:Z

    .line 523
    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    add-float/2addr v4, v6

    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    iget-object v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintPellets:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public moveGhost(Landroid/graphics/Canvas;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 309
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosPacman:I

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosGhost:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xDistance:I

    .line 310
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yPosPacman:I

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yPosGhost:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yDistance:I

    .line 312
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosGhost:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    rem-int/2addr v0, v1

    const/4 v1, 0x3

    .line 338
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    .line 332
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    .line 335
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-nez v0, :cond_1a

    .line 312
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yPosGhost:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    rem-int/2addr v0, v7

    if-nez v0, :cond_1a

    .line 313
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->leveldata1:[[S

    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yPosGhost:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    div-int/2addr v7, v8

    aget-object v0, v0, v7

    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosGhost:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    div-int/2addr v7, v8

    aget-short v0, v0, v7

    .line 315
    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosGhost:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    mul-int/lit8 v8, v8, 0x11

    const/4 v9, 0x0

    if-lt v7, v8, :cond_0

    .line 316
    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosGhost:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, p2, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_0
    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosGhost:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gez v7, :cond_1

    .line 319
    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosGhost:Ljava/util/ArrayList;

    iget v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    mul-int/lit8 v8, v8, 0x11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, p2, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_1
    iget v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xDistance:I

    if-ltz v7, :cond_6

    iget v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yDistance:I

    if-ltz v8, :cond_6

    and-int/lit8 v8, v0, 0x4

    if-nez v8, :cond_3

    and-int/lit8 v10, v0, 0x8

    if-nez v10, :cond_3

    .line 325
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yDistance:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v7, v8, :cond_2

    .line 326
    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    invoke-virtual {v7, p2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 328
    :cond_2
    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    invoke-virtual {v7, p2, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-nez v8, :cond_4

    .line 332
    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    invoke-virtual {v7, p2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    and-int/lit8 v7, v0, 0x8

    if-nez v7, :cond_5

    .line 335
    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    invoke-virtual {v7, p2, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 338
    :cond_5
    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    invoke-virtual {v7, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 340
    :cond_6
    :goto_0
    iget v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xDistance:I

    if-ltz v7, :cond_b

    iget v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yDistance:I

    if-gtz v8, :cond_b

    and-int/lit8 v8, v0, 0x4

    if-nez v8, :cond_8

    and-int/lit8 v10, v0, 0x2

    if-nez v10, :cond_8

    .line 342
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yDistance:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v7, v8, :cond_7

    .line 343
    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    invoke-virtual {v7, p2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 345
    :cond_7
    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, p2, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    if-nez v8, :cond_9

    .line 349
    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    invoke-virtual {v7, p2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_9
    and-int/lit8 v7, v0, 0x2

    if-nez v7, :cond_a

    .line 352
    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, p2, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 354
    :cond_a
    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    invoke-virtual {v7, p2, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_b
    :goto_1
    iget v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xDistance:I

    if-gtz v7, :cond_10

    iget v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yDistance:I

    if-ltz v8, :cond_10

    and-int/lit8 v8, v0, 0x1

    if-nez v8, :cond_d

    and-int/lit8 v10, v0, 0x8

    if-nez v10, :cond_d

    .line 358
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yDistance:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v4, v7, :cond_c

    .line 359
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 361
    :cond_c
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_d
    if-nez v8, :cond_e

    .line 365
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_e
    and-int/lit8 v7, v0, 0x8

    if-nez v7, :cond_f

    .line 368
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 370
    :cond_f
    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    invoke-virtual {v7, p2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_10
    :goto_2
    iget v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xDistance:I

    if-gtz v4, :cond_15

    iget v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yDistance:I

    if-gtz v7, :cond_15

    and-int/lit8 v7, v0, 0x1

    if-nez v7, :cond_12

    and-int/lit8 v8, v0, 0x2

    if-nez v8, :cond_12

    .line 374
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yDistance:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v4, v6, :cond_11

    .line 375
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 377
    :cond_11
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_12
    if-nez v7, :cond_13

    .line 381
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_13
    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_14

    .line 384
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 386
    :cond_14
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 389
    :cond_15
    :goto_3
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_16

    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_19

    :cond_16
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    .line 390
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_17

    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_19

    :cond_17
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    .line 391
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_18

    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_19

    :cond_18
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    .line 392
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_1a

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1a

    .line 393
    :cond_19
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 397
    :cond_1a
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1b

    .line 398
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yPosGhost:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->dimenMoveGhost:I

    div-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 399
    :cond_1b
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_1c

    .line 400
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosGhost:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->dimenMoveGhost:I

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 401
    :cond_1c
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_1d

    .line 402
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yPosGhost:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->dimenMoveGhost:I

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 403
    :cond_1d
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1e

    .line 404
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosGhost:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->dimenMoveGhost:I

    div-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 407
    :cond_1e
    :goto_4
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostBitmap:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosGhost:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yPosGhost:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintGhost:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public movePacman(Landroid/graphics/Canvas;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 416
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosPacman:I

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    rem-int v2, v0, v1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v2, :cond_b

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yPosPacman:I

    rem-int v6, v2, v1

    if-nez v6, :cond_b

    mul-int/lit8 v6, v1, 0x11

    if-lt v0, v6, :cond_0

    const/4 v0, 0x0

    .line 421
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosPacman:I

    .line 426
    :cond_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->leveldata1:[[S

    div-int v6, v2, v1

    aget-object v6, v0, v6

    iget v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosPacman:I

    div-int v8, v7, v1

    aget-short v6, v6, v8

    and-int/lit8 v8, v6, 0x10

    if-eqz v8, :cond_1

    .line 431
    div-int/2addr v2, v1

    aget-object v0, v0, v2

    div-int/2addr v7, v1

    xor-int/lit8 v2, v6, 0x10

    int-to-short v2, v2

    aput-short v2, v0, v7

    .line 432
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->currentScore:I

    sget v2, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->levels:I

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v0, v2

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->currentScore:I

    .line 436
    :cond_1
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->nextDirection:I

    if-ne v0, v3, :cond_2

    and-int/lit8 v2, v6, 0x1

    if-nez v2, :cond_6

    :cond_2
    if-ne v0, v5, :cond_3

    and-int/lit8 v2, v6, 0x4

    if-nez v2, :cond_6

    :cond_3
    if-nez v0, :cond_4

    and-int/lit8 v2, v6, 0x2

    if-nez v2, :cond_6

    :cond_4
    if-ne v0, v4, :cond_5

    and-int/lit8 v2, v6, 0x8

    if-nez v2, :cond_6

    .line 440
    :cond_5
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->direction:I

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->viewDirection:I

    .line 444
    :cond_6
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->direction:I

    if-ne v0, v3, :cond_7

    and-int/lit8 v2, v6, 0x1

    if-nez v2, :cond_a

    :cond_7
    if-ne v0, v5, :cond_8

    and-int/lit8 v2, v6, 0x4

    if-nez v2, :cond_a

    :cond_8
    if-nez v0, :cond_9

    and-int/lit8 v2, v6, 0x2

    if-nez v2, :cond_a

    :cond_9
    if-ne v0, v4, :cond_b

    and-int/lit8 v0, v6, 0x8

    if-eqz v0, :cond_b

    :cond_a
    const/4 v0, 0x4

    .line 448
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->direction:I

    .line 454
    :cond_b
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosPacman:I

    if-gez v0, :cond_c

    mul-int/lit8 v1, v1, 0x11

    .line 455
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosPacman:I

    .line 458
    :cond_c
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->drawPacman(Landroid/graphics/Canvas;)V

    .line 461
    iget p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->direction:I

    if-nez p1, :cond_d

    .line 462
    iget p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yPosPacman:I

    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    neg-int v0, v0

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->dimenMovePlayer:I

    div-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yPosPacman:I

    goto :goto_0

    :cond_d
    if-ne p1, v5, :cond_e

    .line 464
    iget p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosPacman:I

    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->dimenMovePlayer:I

    div-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosPacman:I

    goto :goto_0

    :cond_e
    if-ne p1, v4, :cond_f

    .line 466
    iget p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yPosPacman:I

    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->dimenMovePlayer:I

    div-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yPosPacman:I

    goto :goto_0

    :cond_f
    if-ne p1, v3, :cond_10

    .line 468
    iget p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosPacman:I

    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    neg-int v0, v0

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->dimenMovePlayer:I

    div-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosPacman:I

    :cond_10
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 559
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 566
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->x2:F

    .line 567
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->y2:F

    .line 568
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->calculateSwipeDirection()V

    goto :goto_0

    .line 561
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->x1:F

    .line 562
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->y1:F

    :goto_0
    return v1
.end method

.method public pause()V
    .locals 2

    const-string v0, "info"

    const-string v1, "pause"

    .line 647
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 648
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->canDraw:Z

    const/4 v0, 0x0

    .line 649
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->thread:Ljava/lang/Thread;

    return-void
.end method

.method public replaceColor(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 848
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 849
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v10, v8, v9

    .line 850
    new-array v11, v10, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v11

    move v3, v8

    move v6, v8

    move v7, v9

    .line 852
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v10, :cond_2

    .line 855
    aget v1, v11, v0

    if-ne v1, p2, :cond_1

    move v1, p3

    goto :goto_1

    :cond_1
    aget v1, v11, v0

    :goto_1
    aput v1, v11, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 858
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-static {v8, v9, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v11

    move v3, v8

    move v6, v8

    move v7, v9

    .line 860
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p1
.end method

.method public resume()V
    .locals 2

    const-string v0, "info"

    const-string v1, "resume"

    .line 653
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 655
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 657
    :cond_0
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->thread:Ljava/lang/Thread;

    if-nez v1, :cond_1

    .line 658
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->thread:Ljava/lang/Thread;

    .line 659
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-string v1, "resume thread"

    .line 660
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    .line 662
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->canDraw:Z

    return-void
.end method

.method public run()V
    .locals 4

    const-string v0, "info"

    const-string v1, "Run"

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    invoke-direct {v0}, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    .line 172
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 174
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->canDraw:Z

    if-eqz v0, :cond_6

    .line 175
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 177
    :cond_1
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->pause:Z

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 180
    :cond_2
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getFondo()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 185
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->drawMap(Landroid/graphics/Canvas;)V

    .line 186
    invoke-direct {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->drawArrowIndicators(Landroid/graphics/Canvas;)V

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->updateFrame(J)V

    const/4 v1, 0x0

    move v2, v1

    .line 190
    :goto_1
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostBitmap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 192
    :try_start_0
    invoke-virtual {p0, v0, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->moveGhost(Landroid/graphics/Canvas;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 195
    invoke-virtual {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 199
    :cond_3
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->movePacman(Landroid/graphics/Canvas;)V

    .line 202
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->drawPellets(Landroid/graphics/Canvas;)V

    .line 205
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->updateScores(Landroid/graphics/Canvas;)V

    .line 207
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 210
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->choque()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 211
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->lives:I

    sub-int/2addr v0, v2

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->lives:I

    if-gtz v0, :cond_4

    .line 213
    sput-boolean v2, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    goto :goto_0

    .line 215
    :cond_4
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->reposicionar()V

    goto :goto_0

    .line 216
    :cond_5
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->siguienteNivel:Z

    if-eqz v0, :cond_0

    .line 217
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->levels:I

    add-int/2addr v0, v2

    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->levels:I

    .line 218
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->lives:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->lives:I

    .line 219
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostBitmap:Ljava/util/ArrayList;

    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->cargarBitmapGhost()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->ghostDirection:Ljava/util/ArrayList;

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->arrowDirectionDefault:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->xPosGhost:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->yPosGhost:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->reiniciarTablero()V

    .line 224
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->reposicionar()V

    .line 226
    iput-boolean v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->siguienteNivel:Z

    goto/16 :goto_0

    .line 231
    :cond_6
    :goto_3
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->lives:I

    if-gtz v0, :cond_7

    .line 232
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->insertar()V

    :cond_7
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p1, "info"

    const-string p2, "Surface Changed"

    .line 638
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "info"

    const-string v0, "Surface Created"

    .line 633
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "info"

    const-string v0, "Surface Destroyed"

    .line 643
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateScores(Landroid/graphics/Canvas;)V
    .locals 7

    .line 281
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintScore:Landroid/graphics/Paint;

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 283
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/Globals;->getInstance()Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/Globals;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/Globals;->getHighScore()I

    move-result v1

    .line 285
    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->currentScore:I

    if-le v2, v1, :cond_0

    .line 286
    invoke-virtual {v0, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/Globals;->setHighScore(I)V

    .line 289
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "%05d"

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "High Score : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0xa

    int-to-float v3, v3

    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintScore:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {p1, v0, v6, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 293
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->currentScore:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Score : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    mul-int/lit8 v2, v1, 0xb

    int-to-float v2, v2

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0xa

    int-to-float v1, v1

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintScore:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Level : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->levels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    mul-int/lit8 v1, v1, 0x13

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintScore:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lives : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->lives:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->blockSize:I

    mul-int/lit8 v2, v1, 0xb

    int-to-float v2, v2

    mul-int/lit8 v1, v1, 0x13

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/DrawingView;->paintScore:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method
