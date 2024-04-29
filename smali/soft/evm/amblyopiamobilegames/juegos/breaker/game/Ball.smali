.class public Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;
.super Ljava/lang/Object;
.source "Ball.java"


# static fields
.field public static ballWidth:F


# instance fields
.field ballHeight:F

.field rect:Landroid/graphics/RectF;

.field public xVelocity:F

.field public yVelocity:F


# direct methods
.method public constructor <init>(FFI)V
    .locals 4

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float v1, p1, v0

    mul-float/2addr v0, p2

    int-to-float p3, p3

    mul-float v2, v1, p3

    add-float/2addr v2, p1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v2, v1

    .line 19
    iput v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->xVelocity:F

    neg-float p2, p2

    mul-float/2addr p3, v0

    sub-float/2addr p2, p3

    div-float/2addr v0, v3

    add-float/2addr p2, v0

    .line 20
    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->yVelocity:F

    .line 24
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->rect:Landroid/graphics/RectF;

    const/high16 p2, 0x41700000    # 15.0f

    div-float/2addr p1, p2

    .line 26
    sput p1, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->ballWidth:F

    .line 27
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->ballHeight:F

    return-void
.end method


# virtual methods
.method public clearObstacleX(F)V
    .locals 2

    .line 65
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->rect:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 66
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->rect:Landroid/graphics/RectF;

    sget v1, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->ballWidth:F

    add-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/RectF;->right:F

    return-void
.end method

.method public clearObstacleY(F)V
    .locals 2

    .line 60
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->rect:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 61
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->rect:Landroid/graphics/RectF;

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->ballHeight:F

    sub-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/RectF;->top:F

    return-void
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 1

    .line 32
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->rect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public reset(FF)V
    .locals 4

    .line 70
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->rect:Landroid/graphics/RectF;

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 71
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->rect:Landroid/graphics/RectF;

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->ballHeight:F

    sub-float v3, p2, v2

    sub-float/2addr v3, v2

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 72
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->rect:Landroid/graphics/RectF;

    sget v2, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->ballWidth:F

    add-float/2addr p1, v2

    iput p1, v0, Landroid/graphics/RectF;->right:F

    .line 73
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->rect:Landroid/graphics/RectF;

    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->ballHeight:F

    mul-float/2addr v1, v0

    sub-float/2addr p2, v1

    sub-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public reverseXVelocity()V
    .locals 1

    .line 47
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->xVelocity:F

    neg-float v0, v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->xVelocity:F

    return-void
.end method

.method public reverseYVelocity()V
    .locals 1

    .line 43
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->yVelocity:F

    neg-float v0, v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->yVelocity:F

    return-void
.end method

.method public setRandomXVelocity()V
    .locals 2

    .line 51
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x2

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->reverseXVelocity()V

    :cond_0
    return-void
.end method

.method public update(J)V
    .locals 3

    .line 36
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->rect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->xVelocity:F

    long-to-float p1, p1

    div-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 37
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->rect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->yVelocity:F

    div-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 38
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->rect:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->ballWidth:F

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 39
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->rect:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->top:F

    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Ball;->ballHeight:F

    sub-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method
