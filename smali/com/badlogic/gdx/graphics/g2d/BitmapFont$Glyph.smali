.class public Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
.super Ljava/lang/Object;
.source "BitmapFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Glyph"
.end annotation


# instance fields
.field public fixedWidth:Z

.field public height:I

.field public id:I

.field public kerning:[[B

.field public page:I

.field public srcX:I

.field public srcY:I

.field public u:F

.field public u2:F

.field public v:F

.field public v2:F

.field public width:I

.field public xadvance:I

.field public xoffset:I

.field public yoffset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 402
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->page:I

    return-void
.end method


# virtual methods
.method public getKerning(C)I
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->kerning:[[B

    if-eqz v0, :cond_0

    ushr-int/lit8 v1, p1, 0x9

    .line 406
    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    and-int/lit16 p1, p1, 0x1ff

    .line 407
    aget-byte p1, v0, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setKerning(II)V
    .locals 3

    .line 413
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->kerning:[[B

    if-nez v0, :cond_0

    const/16 v0, 0x80

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->kerning:[[B

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->kerning:[[B

    ushr-int/lit8 v1, p1, 0x9

    aget-object v2, v0, v1

    if-nez v2, :cond_1

    const/16 v2, 0x200

    new-array v2, v2, [B

    .line 415
    aput-object v2, v0, v1

    :cond_1
    and-int/lit16 p1, p1, 0x1ff

    int-to-byte p2, p2

    .line 416
    aput-byte p2, v2, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 420
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
