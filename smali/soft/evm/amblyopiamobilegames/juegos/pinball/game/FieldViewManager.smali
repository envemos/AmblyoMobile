.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;
.super Ljava/lang/Object;
.source "FieldViewManager.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field static ALL_FLIPPER_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static LEFT_FLIPPER_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static RIGHT_FLIPPER_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field MOTIONEVENT_ACTION_MASK:I

.field MOTIONEVENT_ACTION_POINTER_INDEX_MASK:I

.field MOTIONEVENT_ACTION_POINTER_INDEX_SHIFT:I

.field MOTIONEVENT_ACTION_POINTER_UP:I

.field cachedHeight:F

.field cachedScale:F

.field cachedXOffset:F

.field cachedYOffset:F

.field canDraw:Z

.field debugMessage:Ljava/lang/String;

.field field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

.field fps:D

.field getPointerCountMethod:Ljava/lang/reflect/Method;

.field getXMethod:Ljava/lang/reflect/Method;

.field hasMultitouch:Z

.field highQuality:Z

.field independentFlippers:Z

.field maxZoom:F

.field showFPS:Z

.field startGameAction:Ljava/lang/Runnable;

.field view:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;

.field zoom:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Integer;

    const/16 v2, 0x36

    .line 260
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->LEFT_FLIPPER_KEYS:Ljava/util/List;

    new-array v1, v0, [Ljava/lang/Integer;

    const/16 v2, 0x4c

    .line 261
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->RIGHT_FLIPPER_KEYS:Ljava/util/List;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x3e

    .line 263
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->ALL_FLIPPER_KEYS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 51
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->zoom:F

    .line 52
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->maxZoom:F

    const/4 v0, -0x1

    .line 172
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->MOTIONEVENT_ACTION_MASK:I

    const/4 v0, 0x0

    .line 179
    :try_start_0
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getPointerCount"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->getPointerCountMethod:Ljava/lang/reflect/Method;

    .line 180
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getX"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->getXMethod:Ljava/lang/reflect/Method;

    .line 181
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "ACTION_MASK"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->MOTIONEVENT_ACTION_MASK:I

    .line 182
    const-class v1, Landroid/view/MotionEvent;

    const-string v4, "ACTION_POINTER_UP"

    .line 183
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->MOTIONEVENT_ACTION_POINTER_UP:I

    .line 184
    const-class v1, Landroid/view/MotionEvent;

    const-string v4, "ACTION_POINTER_INDEX_MASK"

    .line 185
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->MOTIONEVENT_ACTION_POINTER_INDEX_MASK:I

    .line 186
    const-class v1, Landroid/view/MotionEvent;

    const-string v4, "ACTION_POINTER_INDEX_SHIFT"

    .line 187
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->MOTIONEVENT_ACTION_POINTER_INDEX_SHIFT:I

    .line 188
    iput-boolean v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->hasMultitouch:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->hasMultitouch:Z

    :goto_0
    return-void
.end method

.method private updateFlippersForKeyCode(IZ)Z
    .locals 3

    .line 293
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->LEFT_FLIPPER_KEYS:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 294
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->setLeftFlippersEngaged(Z)V

    return v1

    .line 297
    :cond_0
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->RIGHT_FLIPPER_KEYS:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->setRightFlippersEngaged(Z)V

    return v1

    .line 301
    :cond_1
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->ALL_FLIPPER_KEYS:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 302
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->setAllFlippersEngaged(Z)V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public cacheScaleAndOffsets()V
    .locals 7

    .line 117
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->maxZoom:F

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->zoom:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-lez v0, :cond_2

    .line 119
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object v0

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->isGameInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getBalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_0

    goto/16 :goto_1

    .line 130
    :cond_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getBalls()Ljava/util/List;

    move-result-object v0

    .line 132
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    if-ne v5, v4, :cond_1

    .line 133
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;

    .line 134
    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 135
    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    iget-object v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->layout:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->getLaunchPosition()Ljava/util/List;

    move-result-object v0

    .line 140
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 141
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move v4, v5

    .line 143
    :goto_0
    iget v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->zoom:F

    div-float v5, v1, v5

    sub-float/2addr v1, v5

    .line 144
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v5}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getWidth()F

    move-result v5

    iget v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->zoom:F

    mul-float/2addr v6, v2

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->cachedXOffset:F

    .line 145
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v5}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getWidth()F

    move-result v5

    mul-float/2addr v5, v1

    invoke-static {v4, v3, v5}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->clamp(FFF)F

    move-result v4

    iput v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->cachedXOffset:F

    .line 147
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getHeight()F

    move-result v4

    iget v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->zoom:F

    mul-float/2addr v5, v2

    div-float/2addr v4, v5

    sub-float/2addr v0, v4

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->cachedYOffset:F

    .line 148
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getHeight()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-static {v0, v3, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->cachedYOffset:F

    .line 149
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->getScale()F

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->cachedScale:F

    goto :goto_3

    .line 120
    :cond_2
    :goto_1
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->zoom:F

    .line 121
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->getScale()F

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->cachedScale:F

    .line 124
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->view:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;

    invoke-interface {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getWidth()F

    move-result v1

    iget v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->cachedScale:F

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    cmpl-float v1, v0, v3

    if-lez v1, :cond_3

    neg-float v0, v0

    mul-float/2addr v4, v2

    div-float/2addr v0, v4

    goto :goto_2

    :cond_3
    move v0, v3

    .line 125
    :goto_2
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->cachedXOffset:F

    .line 126
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->view:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;

    invoke-interface {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getHeight()F

    move-result v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->cachedScale:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    cmpl-float v1, v0, v3

    if-lez v1, :cond_4

    neg-float v0, v0

    div-float v3, v0, v2

    .line 127
    :cond_4
    iput v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->cachedYOffset:F

    .line 151
    :goto_3
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->view:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;

    invoke-interface {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->cachedHeight:F

    return-void
.end method

.method public canDraw()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->canDraw:Z

    return v0
.end method

.method public draw()V
    .locals 1

    .line 309
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->cacheScaleAndOffsets()V

    .line 310
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->view:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;

    invoke-interface {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;->doDraw()V

    return-void
.end method

.method getCachedScale()F
    .locals 1

    .line 104
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->cachedScale:F

    return v0
.end method

.method public getDebugMessage()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->debugMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getField()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;
    .locals 1

    .line 65
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    return-object v0
.end method

.method getScale()F
    .locals 3

    .line 98
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->view:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;

    invoke-interface {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getWidth()F

    move-result v1

    div-float/2addr v0, v1

    .line 99
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->view:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;

    invoke-interface {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getHeight()F

    move-result v2

    div-float/2addr v1, v2

    .line 100
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->zoom:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 266
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-nez p2, :cond_3

    .line 267
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    monitor-enter p2

    .line 269
    :try_start_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object v0

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->isGameInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object v0

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 272
    invoke-direct {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->updateFlippersForKeyCode(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 273
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->launchBallIfNeeded()V

    .line 274
    :cond_1
    monitor-exit p2

    return p1

    .line 270
    :cond_2
    :goto_0
    monitor-exit p2

    return v1

    :catchall_0
    move-exception p1

    .line 275
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    return v1
.end method

.method public handleKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 281
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 282
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    monitor-enter p2

    .line 283
    :try_start_0
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object v1

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->isGameInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object v1

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    invoke-direct {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->updateFlippersForKeyCode(IZ)Z

    move-result p1

    monitor-exit p2

    return p1

    .line 284
    :cond_1
    :goto_0
    monitor-exit p2

    return v0

    :catchall_0
    move-exception p1

    .line 287
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    return v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->MOTIONEVENT_ACTION_MASK:I

    and-int/2addr v0, v1

    .line 207
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    monitor-enter v1

    .line 208
    :try_start_0
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object v2

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->isGameInProgress()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object v2

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    :cond_0
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->startGameAction:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 210
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 211
    monitor-exit v1

    return v3

    .line 216
    :cond_1
    iget-boolean v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->independentFlippers:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->hasMultitouch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_6

    if-eq v0, v3, :cond_7

    .line 221
    :try_start_1
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->getPointerCountMethod:Ljava/lang/reflect/Method;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, -0x1

    .line 225
    iget v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->MOTIONEVENT_ACTION_POINTER_UP:I

    if-ne v0, v6, :cond_2

    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    iget v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->MOTIONEVENT_ACTION_POINTER_INDEX_MASK:I

    and-int/2addr v5, v6

    iget v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->MOTIONEVENT_ACTION_POINTER_INDEX_SHIFT:I

    shr-int/2addr v5, v6

    .line 228
    :cond_2
    iget-object v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->view:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;

    invoke-interface {v6}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-float v6, v6

    move v7, v4

    move v8, v7

    move v9, v8

    :goto_0
    if-ge v7, v2, :cond_4

    if-eq v7, v5, :cond_5

    .line 231
    :try_start_2
    iget-object v10, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->getXMethod:Ljava/lang/reflect/Method;

    new-array v11, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-virtual {v10, p1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmpg-float v10, v10, v6

    if-gez v10, :cond_3

    move v8, v3

    goto :goto_1

    :cond_3
    move v9, v3

    goto :goto_1

    :catch_0
    :cond_4
    move v4, v8

    goto :goto_2

    :cond_5
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 241
    :cond_6
    :try_start_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v3, :cond_7

    move v4, v3

    :catch_1
    :cond_7
    move v9, v4

    :goto_2
    if-nez v0, :cond_8

    .line 244
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->launchBallIfNeeded()V

    :cond_8
    if-eqz v4, :cond_9

    if-eqz v9, :cond_9

    .line 250
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {p1, v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->setAllFlippersEngaged(Z)V

    goto :goto_3

    .line 253
    :cond_9
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {p1, v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->setLeftFlippersEngaged(Z)V

    .line 254
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {p1, v9}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->setRightFlippersEngaged(Z)V

    .line 256
    :goto_3
    monitor-exit v1

    return v3

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public isHighQuality()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->highQuality:Z

    return v0
.end method

.method launchBallIfNeeded()V
    .locals 1

    .line 197
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->removeDeadBalls()V

    .line 198
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getBalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->launchBall()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;

    :cond_0
    return-void
.end method

.method public setDebugMessage(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->debugMessage:Ljava/lang/String;

    return-void
.end method

.method public setField(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    return-void
.end method

.method public setFieldView(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->view:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;

    if-eq v0, p1, :cond_1

    .line 29
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->view:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;

    .line 30
    invoke-interface {p1, p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;->setManager(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;)V

    .line 31
    instance-of v0, p1, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->canDraw:Z

    .line 33
    check-cast p1, Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->canDraw:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setHighQuality(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->highQuality:Z

    return-void
.end method

.method public setIndependentFlippers(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->independentFlippers:Z

    return-void
.end method

.method public setShowFPS(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->showFPS:Z

    return-void
.end method

.method public setStartGameAction(Ljava/lang/Runnable;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->startGameAction:Ljava/lang/Runnable;

    return-void
.end method

.method public setZoom(F)V
    .locals 0

    .line 109
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->maxZoom:F

    return-void
.end method

.method public showFPS()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->showFPS:Z

    return v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x1

    .line 319
    iput-boolean p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->canDraw:Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 323
    iput-boolean p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->canDraw:Z

    return-void
.end method

.method public world2pixelX(F)F
    .locals 1

    .line 157
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->cachedXOffset:F

    sub-float/2addr p1, v0

    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->cachedScale:F

    mul-float/2addr p1, v0

    return p1
.end method

.method public world2pixelY(F)F
    .locals 2

    .line 165
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->cachedHeight:F

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->cachedYOffset:F

    sub-float/2addr p1, v1

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->cachedScale:F

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    return v0
.end method
