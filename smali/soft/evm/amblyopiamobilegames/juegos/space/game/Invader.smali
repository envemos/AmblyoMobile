.class public Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;
.super Ljava/lang/Object;
.source "Invader.java"


# instance fields
.field public final LEFT:I

.field public final RIGHT:I

.field private bitmap1:Landroid/graphics/Bitmap;

.field private bitmap2:Landroid/graphics/Bitmap;

.field private generator:Ljava/util/Random;

.field private height:F

.field isVisible:Z

.field private length:F

.field private rect:Landroid/graphics/RectF;

.field private shipMoving:I

.field private shipSpeed:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->generator:Ljava/util/Random;

    const/4 v0, 0x1

    .line 38
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->LEFT:I

    const/4 v1, 0x2

    .line 39
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->RIGHT:I

    .line 42
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->shipMoving:I

    .line 49
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->rect:Landroid/graphics/RectF;

    .line 51
    div-int/lit8 v1, p4, 0x14

    int-to-float v1, v1

    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->length:F

    .line 52
    div-int/lit8 p5, p5, 0x14

    int-to-float p5, p5

    iput p5, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->height:F

    .line 54
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->isVisible:Z

    .line 56
    div-int/lit8 p4, p4, 0x19

    int-to-float p3, p3

    int-to-float p5, p4

    add-float/2addr p5, v1

    mul-float/2addr p3, p5

    .line 58
    iput p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->x:F

    int-to-float p2, p2

    .line 59
    div-int/lit8 p4, p4, 0x4

    int-to-float p3, p4

    add-float/2addr v1, p3

    mul-float/2addr p2, v1

    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->y:F

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0800c6

    invoke-static {p2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->bitmap1:Landroid/graphics/Bitmap;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0800c7

    invoke-static {p2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->bitmap2:Landroid/graphics/Bitmap;

    .line 66
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->bitmap1:Landroid/graphics/Bitmap;

    iget p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->length:F

    float-to-int p3, p3

    iget p4, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->height:F

    float-to-int p4, p4

    const/4 p5, 0x0

    invoke-static {p2, p3, p4, p5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->bitmap1:Landroid/graphics/Bitmap;

    .line 72
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->bitmap2:Landroid/graphics/Bitmap;

    iget p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->length:F

    float-to-int p3, p3

    iget p4, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->height:F

    float-to-int p4, p4

    invoke-static {p2, p3, p4, p5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->bitmap2:Landroid/graphics/Bitmap;

    const-string p2, "MisPreferencias"

    .line 78
    invoke-virtual {p1, p2, p5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 79
    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->ajustarColores(Landroid/content/SharedPreferences;)V

    .line 81
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->bitmap1:Landroid/graphics/Bitmap;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result p2

    const/4 p3, -0x1

    invoke-virtual {p0, p1, p3, p2}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->replaceColor(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->bitmap1:Landroid/graphics/Bitmap;

    .line 82
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->bitmap2:Landroid/graphics/Bitmap;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result p2

    invoke-virtual {p0, p1, p3, p2}, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->replaceColor(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->bitmap2:Landroid/graphics/Bitmap;

    const/high16 p1, 0x42200000    # 40.0f

    .line 86
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->shipSpeed:F

    return-void
.end method


# virtual methods
.method public dropDownAndReverse()V
    .locals 2

    .line 164
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->shipMoving:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 165
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->shipMoving:I

    goto :goto_0

    .line 167
    :cond_0
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->shipMoving:I

    .line 170
    :goto_0
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->y:F

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->height:F

    add-float/2addr v0, v1

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->y:F

    .line 172
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->shipSpeed:F

    const v1, 0x3f970a3d    # 1.18f

    mul-float/2addr v0, v1

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->shipSpeed:F

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 124
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->bitmap1:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmap2()Landroid/graphics/Bitmap;
    .locals 1

    .line 128
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->bitmap2:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLength()F
    .locals 1

    .line 140
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->length:F

    return v0
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 1

    .line 120
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->rect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getVisibility()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->isVisible:Z

    return v0
.end method

.method public getX()F
    .locals 1

    .line 132
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 136
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->y:F

    return v0
.end method

.method public replaceColor(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v10, v8, v9

    .line 96
    new-array v11, v10, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v11

    move v3, v8

    move v6, v8

    move v7, v9

    .line 98
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v10, :cond_2

    .line 101
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

    .line 104
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

    .line 106
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p1
.end method

.method public setInvisible()V
    .locals 1

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->isVisible:Z

    return-void
.end method

.method public takeAim(FF)Z
    .locals 3

    add-float/2addr p2, p1

    .line 180
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->x:F

    cmpl-float v1, p2, v0

    const/4 v2, 0x1

    if-lez v1, :cond_0

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->length:F

    add-float/2addr v1, v0

    cmpg-float p2, p2, v1

    if-ltz p2, :cond_1

    :cond_0
    cmpl-float p2, p1, v0

    if-lez p2, :cond_2

    iget p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->length:F

    add-float/2addr v0, p2

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    .line 184
    :cond_1
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->generator:Ljava/util/Random;

    const/16 p2, 0x96

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    if-nez p1, :cond_2

    return v2

    .line 192
    :cond_2
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->generator:Ljava/util/Random;

    const/16 p2, 0x7d0

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public update(J)V
    .locals 4

    .line 145
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->shipMoving:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 146
    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->x:F

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->shipSpeed:F

    long-to-float v3, p1

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->x:F

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 150
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->x:F

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->shipSpeed:F

    long-to-float p1, p1

    div-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->x:F

    .line 154
    :cond_1
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->rect:Landroid/graphics/RectF;

    iget p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->y:F

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 155
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->rect:Landroid/graphics/RectF;

    iget p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->y:F

    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->height:F

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 156
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->rect:Landroid/graphics/RectF;

    iget p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->x:F

    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 157
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->rect:Landroid/graphics/RectF;

    iget p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->x:F

    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/Invader;->length:F

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->right:F

    return-void
.end method
