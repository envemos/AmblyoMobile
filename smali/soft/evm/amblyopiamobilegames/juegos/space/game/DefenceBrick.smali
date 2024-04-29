.class public Lsoft/evm/amblyopiamobilegames/juegos/space/game/DefenceBrick;
.super Ljava/lang/Object;
.source "DefenceBrick.java"


# instance fields
.field private isVisible:Z

.field private rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(IIIII)V
    .locals 5

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    div-int/lit8 v0, p4, 0x3c

    .line 14
    div-int/lit8 v1, p5, 0x28

    const/4 v2, 0x1

    .line 16
    iput-boolean v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/DefenceBrick;->isVisible:Z

    int-to-float p4, p4

    const/high16 v2, 0x41180000    # 9.5f

    div-float/2addr p4, v2

    float-to-int p4, p4

    int-to-float v2, p5

    .line 21
    div-int/lit8 p5, p5, 0x8

    mul-int/lit8 p5, p5, 0x2

    int-to-float p5, p5

    const v3, 0x3f8ccccd    # 1.1f

    mul-float/2addr p5, v3

    sub-float/2addr v2, p5

    float-to-int p5, v2

    .line 23
    new-instance v2, Landroid/graphics/RectF;

    mul-int/2addr p2, v0

    add-int/lit8 v3, p2, 0x2

    mul-int/2addr p3, p4

    add-int/2addr v3, p3

    add-int/2addr v3, p4

    add-int/2addr v3, p3

    int-to-float v3, v3

    mul-int/2addr p1, v1

    add-int/lit8 v4, p1, 0x2

    add-int/2addr v4, p5

    int-to-float v4, v4

    add-int/2addr p2, v0

    add-int/lit8 p2, p2, -0x2

    add-int/2addr p2, p3

    add-int/2addr p2, p4

    add-int/2addr p2, p3

    int-to-float p2, p2

    add-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x2

    add-int/2addr p1, p5

    int-to-float p1, p1

    invoke-direct {v2, v3, v4, p2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/DefenceBrick;->rect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public getRect()Landroid/graphics/RectF;
    .locals 1

    .line 30
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/DefenceBrick;->rect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getVisibility()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/DefenceBrick;->isVisible:Z

    return v0
.end method

.method public setInvisible()V
    .locals 1

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/DefenceBrick;->isVisible:Z

    return-void
.end method
