.class public Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;
.super Ljava/lang/Object;
.source "Paddle.java"


# instance fields
.field public final LEFT:I

.field public final RIGHT:I

.field public final STOPPED:I

.field private height:F

.field private length:F

.field private paddleMoving:I

.field private paddleSpeed:F

.field private rect:Landroid/graphics/RectF;

.field private screenX:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->STOPPED:I

    const/4 v1, 0x1

    .line 25
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->LEFT:I

    const/4 v1, 0x2

    .line 26
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->RIGHT:I

    .line 29
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->paddleMoving:I

    const/high16 v0, 0x40400000    # 3.0f

    div-float v1, p1, v0

    .line 38
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->length:F

    div-float/2addr v1, v0

    .line 39
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->height:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    .line 42
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->x:F

    sub-float/2addr p2, v1

    .line 43
    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->y:F

    .line 45
    new-instance p2, Landroid/graphics/RectF;

    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->x:F

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->y:F

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->length:F

    add-float/2addr v2, v0

    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->height:F

    add-float/2addr v3, v1

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->rect:Landroid/graphics/RectF;

    const/high16 p2, 0x43480000    # 200.0f

    mul-float/2addr p2, p1

    .line 48
    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->paddleSpeed:F

    .line 50
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->screenX:F

    return-void
.end method


# virtual methods
.method public getRect()Landroid/graphics/RectF;
    .locals 1

    .line 56
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->rect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public setMovementState(I)V
    .locals 0

    .line 61
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->paddleMoving:I

    return-void
.end method

.method public update(J)V
    .locals 4

    .line 70
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->paddleMoving:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 71
    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->x:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 72
    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->paddleSpeed:F

    long-to-float v3, p1

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->x:F

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 76
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->x:F

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->screenX:F

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->length:F

    sub-float/2addr v1, v2

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 77
    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->paddleSpeed:F

    long-to-float p1, p1

    div-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->x:F

    .line 80
    :cond_1
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->rect:Landroid/graphics/RectF;

    iget p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->x:F

    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 81
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->rect:Landroid/graphics/RectF;

    iget p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->x:F

    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Paddle;->length:F

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->right:F

    return-void
.end method
