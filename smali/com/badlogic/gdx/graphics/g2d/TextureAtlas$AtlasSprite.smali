.class public Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;
.super Lcom/badlogic/gdx/graphics/g2d/Sprite;
.source "TextureAtlas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtlasSprite"
.end annotation


# instance fields
.field originalOffsetX:F

.field originalOffsetY:F

.field final region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;)V
    .locals 3

    .line 549
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>()V

    .line 550
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 551
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->originalOffsetX:F

    .line 552
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->originalOffsetY:F

    .line 553
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 554
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->setOrigin(FF)V

    .line 555
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRegionWidth()I

    move-result v0

    .line 556
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRegionHeight()I

    move-result v1

    .line 557
    iget-boolean v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 558
    invoke-super {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotate90(Z)V

    .line 559
    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-super {p0, v2, p1, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setBounds(FFFF)V

    goto :goto_0

    .line 561
    :cond_0
    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-super {p0, v2, p1, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setBounds(FFFF)V

    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 562
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->setColor(FFFF)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;)V
    .locals 1

    .line 565
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>()V

    .line 566
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 567
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->originalOffsetX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->originalOffsetX:F

    .line 568
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->originalOffsetY:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->originalOffsetY:F

    .line 569
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->set(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    return-void
.end method


# virtual methods
.method public flip(ZZ)V
    .locals 8

    .line 616
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    if-eqz v0, :cond_0

    .line 617
    invoke-super {p0, p2, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->flip(ZZ)V

    goto :goto_0

    .line 619
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->flip(ZZ)V

    .line 621
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getOriginX()F

    move-result v0

    .line 622
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getOriginY()F

    move-result v1

    .line 623
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    .line 624
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    .line 626
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getWidthRatio()F

    move-result v4

    .line 627
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getHeightRatio()F

    move-result v5

    .line 629
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->originalOffsetX:F

    iput v7, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    .line 630
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->originalOffsetY:F

    iput v7, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    .line 631
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-virtual {v6, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->flip(ZZ)V

    .line 632
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->originalOffsetX:F

    .line 633
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->originalOffsetY:F

    .line 634
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget p2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    mul-float/2addr p2, v4

    iput p2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    .line 635
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget p2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    mul-float/2addr p2, v5

    iput p2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    .line 638
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    sub-float/2addr p1, v2

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget p2, p2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    sub-float/2addr p2, v3

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->translate(FF)V

    .line 639
    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->setOrigin(FF)V

    return-void
.end method

.method public getAtlasRegion()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    return-object v0
.end method

.method public getHeight()F
    .locals 2

    .line 695
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRotatedPackedHeight()F

    move-result v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getHeightRatio()F
    .locals 2

    .line 703
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRotatedPackedHeight()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getOriginX()F
    .locals 2

    .line 680
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getOriginX()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getOriginY()F
    .locals 2

    .line 685
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getOriginY()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getWidth()F
    .locals 2

    .line 690
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRotatedPackedWidth()F

    move-result v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getWidthRatio()F
    .locals 2

    .line 699
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRotatedPackedWidth()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getX()F
    .locals 2

    .line 670
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getY()F
    .locals 2

    .line 675
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public rotate90(Z)V
    .locals 7

    .line 645
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotate90(Z)V

    .line 647
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getOriginX()F

    move-result v0

    .line 648
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getOriginY()F

    move-result v1

    .line 649
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    .line 650
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    .line 652
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getWidthRatio()F

    move-result v4

    .line 653
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getHeightRatio()F

    move-result v5

    if-eqz p1, :cond_0

    .line 656
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iput v3, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    .line 657
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v6, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    sub-float/2addr v6, v2

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    sub-float/2addr v6, v5

    iput v6, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    goto :goto_0

    .line 659
    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v6, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    sub-float/2addr v6, v3

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    sub-float/2addr v6, v4

    iput v6, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    .line 660
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iput v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    .line 664
    :goto_0
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    sub-float/2addr p1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    sub-float/2addr v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->translate(FF)V

    .line 665
    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->setOrigin(FF)V

    return-void
.end method

.method public setBounds(FFFF)V
    .locals 3

    .line 589
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    int-to-float v0, v0

    div-float/2addr p3, v0

    .line 590
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    int-to-float v0, v0

    div-float/2addr p4, v0

    .line 591
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->originalOffsetX:F

    mul-float/2addr v1, p3

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    .line 592
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->originalOffsetY:F

    mul-float/2addr v1, p4

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    .line 593
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    .line 594
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    .line 595
    :goto_1
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    add-float/2addr p1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    add-float/2addr p2, v2

    int-to-float v0, v0

    mul-float/2addr v0, p3

    int-to-float p3, v1

    mul-float/2addr p3, p4

    invoke-super {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setBounds(FFFF)V

    return-void
.end method

.method public setOrigin(FF)V
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    sub-float/2addr p2, v0

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setOrigin(FF)V

    return-void
.end method

.method public setOriginCenter()V
    .locals 3

    .line 610
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->height:F

    div-float/2addr v2, v1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    sub-float/2addr v2, v1

    invoke-super {p0, v0, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setOrigin(FF)V

    return-void
.end method

.method public setPosition(FF)V
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    add-float/2addr p2, v0

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setPosition(FF)V

    return-void
.end method

.method public setSize(FF)V
    .locals 2

    .line 600
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->setBounds(FFFF)V

    return-void
.end method

.method public setX(F)V
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    add-float/2addr p1, v0

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setX(F)V

    return-void
.end method

.method public setY(F)V
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    add-float/2addr p1, v0

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setY(F)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
