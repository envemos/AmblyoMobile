.class public Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;
.super Ljava/lang/Object;
.source "Brick.java"


# instance fields
.field private isVisible:Z

.field private rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;->isVisible:Z

    const/high16 v0, 0x41c80000    # 25.0f

    div-float v0, p3, v0

    .line 17
    new-instance v1, Landroid/graphics/RectF;

    mul-float/2addr p2, p3

    add-float v2, p2, v0

    mul-float/2addr p1, p4

    add-float v3, p1, v0

    add-float/2addr p2, p3

    sub-float/2addr p2, v0

    add-float/2addr p1, p4

    sub-float/2addr p1, v0

    invoke-direct {v1, v2, v3, p2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;->rect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public getRect()Landroid/graphics/RectF;
    .locals 1

    .line 24
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;->rect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getVisibility()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;->isVisible:Z

    return v0
.end method

.method public setInvisible()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/Brick;->isVisible:Z

    return-void
.end method
