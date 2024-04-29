.class public Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;
.super Landroid/view/View;
.source "TETRISView.java"


# static fields
.field private static primera:Z = true


# instance fields
.field private board:[[I

.field private mPaint:Landroid/graphics/Paint;

.field private shape:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 36
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 37
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->board:[[I

    if-eqz v1, :cond_8

    .line 38
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    iget-object v2, v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->board:[[I

    const/4 v8, 0x0

    aget-object v2, v2, v8

    array-length v2, v2

    div-int/2addr v1, v2

    int-to-float v9, v1

    .line 41
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getFondo()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 44
    sget-boolean v1, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->primera:Z

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v11, 0x41800000    # 16.0f

    if-nez v1, :cond_2

    .line 45
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_vago()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    move v12, v8

    .line 46
    :goto_0
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->shape:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->getCoords()[[I

    move-result-object v1

    array-length v1, v1

    if-ge v12, v1, :cond_2

    move v13, v8

    .line 47
    :goto_1
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->shape:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->getCoords()[[I

    move-result-object v1

    aget-object v1, v1, v12

    array-length v1, v1

    if-ge v13, v1, :cond_1

    .line 48
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->board:[[I

    iget-object v2, v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->shape:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->getY()I

    move-result v2

    add-int/2addr v2, v12

    aget-object v1, v1, v2

    iget-object v2, v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->shape:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->getX()I

    move-result v2

    add-int/2addr v2, v13

    aget v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->shape:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->getCoords()[[I

    move-result-object v1

    aget-object v1, v1, v12

    aget v1, v1, v13

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 49
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->shape:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->getX()I

    move-result v1

    add-int/2addr v1, v13

    int-to-float v1, v1

    mul-float v2, v1, v9

    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->shape:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->getY()I

    move-result v1

    add-int/2addr v1, v12

    int-to-float v1, v1

    mul-float/2addr v1, v9

    add-float/2addr v1, v9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v14, v9, v11

    sub-float/2addr v3, v14

    add-float/2addr v3, v1

    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->shape:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->getX()I

    move-result v1

    add-int/2addr v1, v13

    int-to-float v1, v1

    mul-float/2addr v1, v9

    add-float v4, v1, v9

    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->shape:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->getY()I

    move-result v1

    add-int/2addr v1, v12

    int-to-float v1, v1

    mul-float/2addr v1, v9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v14

    add-float/2addr v5, v1

    iget-object v6, v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 50
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->shape:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->getX()I

    move-result v1

    add-int/2addr v1, v13

    int-to-float v1, v1

    mul-float/2addr v1, v9

    div-float v2, v9, v10

    add-float/2addr v1, v2

    iget-object v3, v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->shape:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->getY()I

    move-result v3

    add-int/2addr v3, v12

    int-to-float v3, v3

    mul-float/2addr v3, v9

    add-float/2addr v3, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v14

    add-float/2addr v3, v4

    iget-object v4, v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 57
    :cond_2
    sput-boolean v8, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->primera:Z

    .line 59
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    move v12, v8

    .line 60
    :goto_2
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->board:[[I

    array-length v1, v1

    if-ge v12, v1, :cond_5

    move v13, v8

    .line 61
    :goto_3
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->board:[[I

    aget-object v2, v1, v12

    array-length v2, v2

    if-ge v13, v2, :cond_4

    .line 62
    aget-object v1, v1, v12

    aget v1, v1, v13

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    int-to-float v1, v13

    mul-float v14, v1, v9

    int-to-float v1, v12

    mul-float v15, v1, v9

    add-float v1, v15, v9

    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v16, v9, v11

    sub-float v2, v2, v16

    add-float v3, v1, v2

    add-float v4, v14, v9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v1, v16

    add-float v5, v15, v1

    iget-object v6, v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    div-float v1, v9, v10

    add-float/2addr v14, v1

    add-float/2addr v15, v1

    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v2, v16

    add-float/2addr v15, v2

    iget-object v2, v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v14, v15, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 69
    :cond_5
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getFondo()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    .line 70
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    .line 72
    :cond_6
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_4
    move v10, v8

    :goto_5
    const/16 v1, 0x10

    if-ge v10, v1, :cond_7

    const/4 v2, 0x0

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v3, v10

    mul-float/2addr v3, v9

    sub-float v4, v1, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v6, v1, v3

    iget-object v11, v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_7
    :goto_6
    const/16 v1, 0xa

    if-ge v8, v1, :cond_8

    int-to-float v1, v8

    mul-float v4, v9, v1

    const/4 v3, 0x0

    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_8
    return-void
.end method

.method public setTetrisViewBoard([[ILsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->board:[[I

    .line 31
    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TETRISView;->shape:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;

    return-void
.end method
