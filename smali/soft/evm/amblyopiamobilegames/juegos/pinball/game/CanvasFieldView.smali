.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;
.super Landroid/view/SurfaceView;
.source "CanvasFieldView.java"

# interfaces
.implements Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;


# instance fields
.field canvas:Landroid/graphics/Canvas;

.field manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

.field paint:Landroid/graphics/Paint;

.field textPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->textPaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 23
    invoke-virtual {p0, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public doDraw()V
    .locals 5

    .line 59
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getFondo()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 63
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    iget-boolean v2, v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->highQuality:Z

    if-eqz v2, :cond_1

    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->canvas:Landroid/graphics/Canvas;

    .line 67
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->getField()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    move-result-object v1

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementsArray()[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 68
    invoke-virtual {v4, p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->draw(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 71
    :cond_2
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->getField()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->drawBalls(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;)V

    .line 73
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->showFPS()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 74
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->textPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 78
    :cond_3
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void
.end method

.method drawCircle(FFFLsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;Landroid/graphics/Paint$Style;)V
    .locals 4

    .line 99
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->paint:Landroid/graphics/Paint;

    iget v1, p4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->alpha:I

    iget v2, p4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->red:I

    iget v3, p4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->green:I

    iget p4, p4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->blue:I

    invoke-virtual {v0, v1, v2, v3, p4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 100
    iget-object p4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object p4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {p4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->getCachedScale()F

    move-result p4

    mul-float/2addr p3, p4

    .line 102
    iget-object p4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->canvas:Landroid/graphics/Canvas;

    iget-object p5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {p5, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->world2pixelX(F)F

    move-result p1

    iget-object p5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {p5, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->world2pixelY(F)F

    move-result p2

    iget-object p5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, p2, p3, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawLine(FFFFLsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V
    .locals 10

    .line 85
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->paint:Landroid/graphics/Paint;

    iget v1, p5, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->alpha:I

    iget v2, p5, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->red:I

    iget v3, p5, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->green:I

    iget p5, p5, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->blue:I

    invoke-virtual {v0, v1, v2, v3, p5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 86
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->canvas:Landroid/graphics/Canvas;

    iget-object p5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {p5, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->world2pixelX(F)F

    move-result v5

    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->world2pixelY(F)F

    move-result v6

    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    .line 87
    invoke-virtual {p1, p3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->world2pixelX(F)F

    move-result v7

    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {p1, p4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->world2pixelY(F)F

    move-result v8

    iget-object v9, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->paint:Landroid/graphics/Paint;

    .line 86
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public fillCircle(FFFLsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V
    .locals 6

    .line 91
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->drawCircle(FFFLsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public frameCircle(FFFLsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V
    .locals 6

    .line 95
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->drawCircle(FFFLsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 47
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {v0, p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->handleKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 51
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {v0, p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->handleKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 43
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {v0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setManager(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/CanvasFieldView;->manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    return-void
.end method
