.class public Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;
.super Landroid/view/View;
.source "SnakeView.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private snakeViewMap:[[Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public formatearMilis(J)Ljava/lang/String;
    .locals 7

    .line 115
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    .line 116
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3b

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    sub-long/2addr v2, v4

    .line 119
    :cond_0
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

    const/4 v5, 0x0

    .line 120
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v4, v0

    const-string p1, "%02d:%02d:%02d"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 38
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 39
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->snakeViewMap:[[Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

    if-eqz v1, :cond_9

    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    iget-object v2, v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->snakeViewMap:[[Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

    array-length v2, v2

    div-int/2addr v1, v2

    int-to-float v10, v1

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float v11, v10, v1

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float v13, v1, v12

    .line 50
    invoke-static {v10, v10}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float v14, v1, v12

    .line 52
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getFondo()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    const/4 v8, 0x0

    .line 54
    :goto_0
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->snakeViewMap:[[Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

    array-length v1, v1

    if-ge v8, v1, :cond_8

    const/4 v7, 0x0

    .line 56
    :goto_1
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->snakeViewMap:[[Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

    aget-object v1, v1, v8

    array-length v1, v1

    if-ge v7, v1, :cond_7

    .line 58
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView$1;->$SwitchMap$soft$evm$amblyopiamobilegames$juegos$snake$game$enums$TileType:[I

    iget-object v2, v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->snakeViewMap:[[Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

    aget-object v2, v2, v8

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    const/16 v3, 0x15

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    :goto_2
    move v15, v7

    move v12, v8

    goto/16 :goto_6

    .line 87
    :cond_0
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v8

    mul-float/2addr v1, v10

    div-float v2, v10, v12

    add-float/2addr v1, v2

    int-to-float v3, v7

    mul-float/2addr v3, v10

    add-float/2addr v3, v2

    add-float/2addr v3, v13

    .line 88
    iget-object v2, v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v3, v14, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 79
    :cond_1
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_vago()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_2

    int-to-float v1, v8

    mul-float v2, v1, v10

    int-to-float v1, v7

    mul-float/2addr v1, v10

    add-float v3, v1, v10

    add-float/2addr v3, v13

    add-float v4, v2, v10

    add-float v5, v1, v13

    const/high16 v6, 0x41700000    # 15.0f

    const/high16 v16, 0x41700000    # 15.0f

    .line 81
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v1

    move-object/from16 v1, p1

    move v15, v7

    move/from16 v7, v16

    move v12, v8

    move-object/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_2
    move v15, v7

    move v12, v8

    int-to-float v1, v12

    mul-float v2, v1, v10

    int-to-float v1, v15

    mul-float/2addr v1, v10

    add-float v3, v1, v10

    add-float/2addr v3, v13

    add-float v4, v2, v10

    add-float v5, v1, v13

    .line 83
    iget-object v6, v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_3
    int-to-float v1, v12

    mul-float/2addr v1, v10

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v10, v2

    add-float/2addr v1, v3

    int-to-float v2, v15

    mul-float/2addr v2, v10

    add-float/2addr v2, v3

    add-float/2addr v2, v13

    .line 84
    iget-object v3, v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v2, v14, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_3
    move v15, v7

    move v12, v8

    .line 71
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_vago()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_4

    int-to-float v1, v12

    mul-float v2, v1, v10

    int-to-float v1, v15

    mul-float/2addr v1, v10

    add-float v3, v1, v10

    add-float/2addr v3, v13

    add-float v4, v2, v10

    add-float v5, v1, v13

    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v7, 0x41a00000    # 20.0f

    .line 73
    iget-object v8, v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_4
    int-to-float v1, v12

    mul-float v2, v1, v10

    int-to-float v1, v15

    mul-float/2addr v1, v10

    add-float v3, v1, v10

    add-float/2addr v3, v13

    add-float v4, v2, v10

    add-float v5, v1, v13

    .line 75
    iget-object v6, v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_4
    int-to-float v1, v12

    mul-float/2addr v1, v10

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v10, v2

    add-float/2addr v1, v3

    int-to-float v2, v15

    mul-float/2addr v2, v10

    add-float/2addr v2, v3

    add-float/2addr v2, v13

    .line 76
    iget-object v3, v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v2, v14, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_5
    move v15, v7

    move v12, v8

    .line 63
    sget-boolean v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->muros:Z

    if-eqz v1, :cond_6

    .line 64
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    .line 66
    :cond_6
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getFondo()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_5
    int-to-float v1, v12

    mul-float v7, v1, v10

    int-to-float v1, v15

    mul-float v8, v1, v10

    add-float v1, v8, v10

    add-float v3, v1, v13

    add-float v4, v7, v10

    add-float v5, v8, v13

    .line 67
    iget-object v6, v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v10, v1

    add-float/2addr v7, v2

    add-float/2addr v8, v2

    add-float/2addr v8, v13

    .line 68
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v7, v8, v14, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_6
    add-int/lit8 v7, v15, 0x1

    move v8, v12

    const/high16 v12, 0x40000000    # 2.0f

    goto/16 :goto_1

    :cond_7
    move v12, v8

    add-int/lit8 v8, v12, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    goto/16 :goto_0

    .line 98
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v7, v1

    .line 99
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    .line 100
    iget-object v6, v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v13

    move v4, v7

    move v5, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v11, v13

    .line 101
    iget-object v6, v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->mPaint:Landroid/graphics/Paint;

    move v3, v11

    move v5, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 104
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x11

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f11019a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;->chronometer:Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/Chronometer;->getMilis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->formatearMilis(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v13, v3

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v13, v4

    sub-float v4, v3, v13

    iget-object v5, v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v10, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1101af

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->velocidad:I

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-float v2, v3, v13

    iget-object v4, v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v10, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f11007b

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->manzanas:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-float/2addr v11, v3

    sub-float v3, v11, v13

    iget-object v4, v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v10, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f110007

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->score:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-float/2addr v11, v13

    iget-object v2, v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v10, v11, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_9
    return-void
.end method

.method public setSnakeViewMap([[Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/views/SnakeView;->snakeViewMap:[[Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

    return-void
.end method
