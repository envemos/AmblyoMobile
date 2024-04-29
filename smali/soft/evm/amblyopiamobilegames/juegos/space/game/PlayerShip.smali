.class public Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;
.super Ljava/lang/Object;
.source "PlayerShip.java"


# instance fields
.field public final LEFT:I

.field public final RIGHT:I

.field public final STOPPED:I

.field private bitmap:Landroid/graphics/Bitmap;

.field private height:F

.field private length:F

.field rect:Landroid/graphics/RectF;

.field private shipMoving:I

.field private shipSpeed:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->STOPPED:I

    const/4 v1, 0x1

    .line 34
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->LEFT:I

    const/4 v1, 0x2

    .line 35
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->RIGHT:I

    .line 38
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->shipMoving:I

    .line 46
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->rect:Landroid/graphics/RectF;

    .line 48
    div-int/lit8 v2, p2, 0xa

    int-to-float v2, v2

    iput v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->length:F

    .line 49
    div-int/lit8 v2, p3, 0xa

    int-to-float v2, v2

    iput v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->height:F

    .line 52
    div-int/2addr p2, v1

    int-to-float p2, p2

    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->x:F

    add-int/lit8 p3, p3, -0x14

    int-to-float p2, p3

    .line 53
    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->y:F

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08013a

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->bitmap:Landroid/graphics/Bitmap;

    .line 59
    iget p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->length:F

    float-to-int p2, p2

    iget p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->height:F

    float-to-int p3, p3

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->bitmap:Landroid/graphics/Bitmap;

    .line 64
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result p2

    const/4 p3, -0x1

    invoke-virtual {p0, p1, p3, p2}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->replaceColor(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->bitmap:Landroid/graphics/Bitmap;

    const/high16 p1, 0x442f0000    # 700.0f

    .line 67
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->shipSpeed:F

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 99
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLength()F
    .locals 1

    .line 107
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->length:F

    return v0
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 1

    .line 93
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->rect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getX()F
    .locals 1

    .line 103
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->x:F

    return v0
.end method

.method public replaceColor(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v10, v8, v9

    .line 77
    new-array v11, v10, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v11

    move v3, v8

    move v6, v8

    move v7, v9

    .line 79
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v10, :cond_2

    .line 82
    aget v1, v11, v0

    if-ne v1, p2, :cond_1

    move v1, p3

    goto :goto_1

    :cond_1
    aget v1, v11, v0

    :goto_1
    aput v1, v11, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-static {v8, v9, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v11

    move v3, v8

    move v6, v8

    move v7, v9

    .line 87
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p1
.end method

.method public setMovementState(I)V
    .locals 0

    .line 112
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->shipMoving:I

    return-void
.end method

.method public update(J)V
    .locals 4

    .line 119
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->shipMoving:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->x:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 120
    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->shipSpeed:F

    long-to-float v3, p1

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->x:F

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 123
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->x:F

    sget v1, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersView;->screenX:I

    int-to-float v1, v1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->length:F

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 124
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->x:F

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->shipSpeed:F

    long-to-float p1, p1

    div-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->x:F

    .line 128
    :cond_1
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->rect:Landroid/graphics/RectF;

    iget p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->y:F

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 129
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->rect:Landroid/graphics/RectF;

    iget p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->y:F

    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->height:F

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 130
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->rect:Landroid/graphics/RectF;

    iget p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->x:F

    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 131
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->rect:Landroid/graphics/RectF;

    iget p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->x:F

    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/PlayerShip;->length:F

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->right:F

    return-void
.end method
