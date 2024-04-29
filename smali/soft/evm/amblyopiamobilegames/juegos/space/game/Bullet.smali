.class public Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;
.super Ljava/lang/Object;
.source "Bullet.java"


# instance fields
.field public DOWN:I

.field public UP:I

.field heading:I

.field private height:I

.field private isActive:Z

.field private rect:Landroid/graphics/RectF;

.field speed:F

.field private width:I

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->UP:I

    const/4 v1, 0x1

    .line 16
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->DOWN:I

    const/4 v1, -0x1

    .line 19
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->heading:I

    const/high16 v1, 0x43af0000    # 350.0f

    .line 20
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->speed:F

    const/16 v1, 0x8

    .line 22
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->width:I

    .line 34
    div-int/lit8 p1, p1, 0x14

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->height:I

    .line 35
    sget p1, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenX:I

    div-int/lit16 p1, p1, 0xb4

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->width:I

    .line 36
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->isActive:Z

    .line 38
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->rect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public getImpactPointY()F
    .locals 2

    .line 84
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->heading:I

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->DOWN:I

    if-ne v0, v1, :cond_0

    .line 85
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->y:F

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->height:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0

    .line 87
    :cond_0
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->y:F

    return v0
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 1

    .line 72
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->rect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getStatus()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->isActive:Z

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 25
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->width:I

    return v0
.end method

.method public setInactive()V
    .locals 1

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->isActive:Z

    return-void
.end method

.method public shoot(FFI)Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->isActive:Z

    if-nez v0, :cond_0

    .line 43
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->x:F

    .line 44
    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->y:F

    .line 45
    iput p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->heading:I

    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->isActive:Z

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public update(J)V
    .locals 2

    .line 57
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->heading:I

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->UP:I

    if-ne v0, v1, :cond_0

    .line 58
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->y:F

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->speed:F

    long-to-float p1, p1

    div-float/2addr v1, p1

    const/high16 p1, 0x40400000    # 3.0f

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->y:F

    goto :goto_0

    .line 60
    :cond_0
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->y:F

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->speed:F

    long-to-float p1, p1

    div-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->y:F

    .line 64
    :goto_0
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->rect:Landroid/graphics/RectF;

    iget p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->x:F

    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 65
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->rect:Landroid/graphics/RectF;

    iget p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->x:F

    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->width:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 66
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->rect:Landroid/graphics/RectF;

    iget p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->y:F

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 67
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->rect:Landroid/graphics/RectF;

    iget p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->y:F

    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Bullet;->height:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method
