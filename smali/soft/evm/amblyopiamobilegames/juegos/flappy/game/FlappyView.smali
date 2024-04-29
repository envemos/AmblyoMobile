.class public Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;
.super Landroid/view/View;
.source "FlappyView.java"


# instance fields
.field private bird:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;

.field private mPaint:Landroid/graphics/Paint;

.field private rects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;->mPaint:Landroid/graphics/Paint;

    .line 29
    new-instance p1, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;

    invoke-direct {p1}, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;-><init>()V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;->bird:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;->rects:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 39
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 40
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getFondo()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 43
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_vago()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;->bird:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;

    iget-boolean v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;->primeraVez:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;->bird:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, v0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;->y:F

    .line 46
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;->bird:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    iput v2, v0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;->x:F

    .line 47
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;->bird:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;

    iput-boolean v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;->primeraVez:Z

    .line 49
    :cond_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;->bird:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;

    iget v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;->x:F

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;->bird:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;

    iget v2, v2, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;->y:F

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;->bird:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;

    iget v3, v3, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;->radio:F

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 50
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;->rects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    add-int/lit8 v1, v1, 0x1

    .line 54
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2

    .line 55
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x43b40000    # 360.0f

    invoke-virtual {p1, v3, v5, v5, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 56
    rem-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 57
    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v3

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v6, v3

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v7, v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v8, v2

    iget-object v9, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 59
    :cond_1
    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v3

    iget v3, v2, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v3, v3, 0x78

    div-int/lit8 v3, v3, 0x64

    int-to-float v6, v3

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v7, v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v2

    iget-object v9, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 65
    :cond_2
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 68
    :cond_3
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_vago()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;->mPaint:Landroid/graphics/Paint;

    sget v1, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->width:I

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 71
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->saltos:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->width:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->width:I

    div-int/lit8 v2, v2, 0x14

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;->width:I

    div-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setBird(Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;->bird:Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;

    .line 77
    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyView;->rects:Ljava/util/ArrayList;

    return-void
.end method
