.class public Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
.super Ljava/lang/Object;
.source "BitmapFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapFontData"
.end annotation


# instance fields
.field public ascent:F

.field public blankLineScale:F

.field public breakChars:[C

.field public capChars:[C

.field public capHeight:F

.field public cursorX:F

.field public descent:F

.field public down:F

.field public flipped:Z

.field public fontFile:Lcom/badlogic/gdx/files/FileHandle;

.field public final glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

.field public imagePaths:[Ljava/lang/String;

.field public lineHeight:F

.field public markupEnabled:Z

.field public missingGlyph:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

.field public padBottom:F

.field public padLeft:F

.field public padRight:F

.field public padTop:F

.field public scaleX:F

.field public scaleY:F

.field public spaceXadvance:F

.field public xChars:[C

.field public xHeight:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 442
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    .line 451
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->blankLineScale:F

    .line 452
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    const/16 v1, 0x80

    new-array v1, v1, [[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 458
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 465
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    const/16 v0, 0xd

    new-array v0, v0, [C

    .line 469
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xChars:[C

    const/16 v0, 0x1a

    new-array v0, v0, [C

    .line 470
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capChars:[C

    return-void

    :array_0
    .array-data 2
        0x78s
        0x65s
        0x61s
        0x6fs
        0x6es
        0x73s
        0x72s
        0x63s
        0x75s
        0x6ds
        0x76s
        0x77s
        0x7as
    .end array-data

    nop

    :array_1
    .array-data 2
        0x4ds
        0x4es
        0x42s
        0x44s
        0x43s
        0x45s
        0x46s
        0x4bs
        0x41s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4cs
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 2

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 442
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    .line 451
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->blankLineScale:F

    .line 452
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    const/16 v1, 0x80

    new-array v1, v1, [[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 458
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 465
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    const/16 v0, 0xd

    new-array v0, v0, [C

    .line 469
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xChars:[C

    const/16 v0, 0x1a

    new-array v0, v0, [C

    .line 470
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capChars:[C

    .line 479
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->fontFile:Lcom/badlogic/gdx/files/FileHandle;

    .line 480
    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->flipped:Z

    .line 481
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->load(Lcom/badlogic/gdx/files/FileHandle;Z)V

    return-void

    nop

    :array_0
    .array-data 2
        0x78s
        0x65s
        0x61s
        0x6fs
        0x6es
        0x73s
        0x72s
        0x63s
        0x75s
        0x6ds
        0x76s
        0x77s
        0x7as
    .end array-data

    nop

    :array_1
    .array-data 2
        0x4ds
        0x4es
        0x42s
        0x44s
        0x43s
        0x45s
        0x46s
        0x4bs
        0x41s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4cs
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method


# virtual methods
.method public getFirstGlyph()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .locals 9

    .line 750
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    if-nez v4, :cond_0

    goto :goto_3

    .line 752
    :cond_0
    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    if-eqz v7, :cond_2

    .line 753
    iget v8, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    if-eqz v8, :cond_2

    iget v8, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    return-object v7

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 757
    :cond_4
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "No glyphs found."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFontFile()Lcom/badlogic/gdx/files/FileHandle;
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->fontFile:Lcom/badlogic/gdx/files/FileHandle;

    return-object v0
.end method

.method public getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .locals 2

    .line 770
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    div-int/lit16 v1, p1, 0x200

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    and-int/lit16 p1, p1, 0x1ff

    .line 771
    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGlyphs(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V
    .locals 7

    .line 780
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->markupEnabled:Z

    .line 781
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    .line 782
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->missingGlyph:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 783
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    .line 784
    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    sub-int v4, p4, p3

    .line 787
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    .line 788
    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/utils/FloatArray;->ensureCapacity(I)[F

    :goto_0
    if-ge p3, p4, :cond_5

    add-int/lit8 v4, p3, 0x1

    .line 791
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    .line 792
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v5

    if-nez v5, :cond_1

    if-nez v2, :cond_0

    move p3, v4

    goto :goto_0

    :cond_0
    move-object v5, v2

    .line 798
    :cond_1
    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    if-nez p5, :cond_3

    .line 801
    iget-boolean p5, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->fixedWidth:Z

    if-eqz p5, :cond_2

    const/4 p5, 0x0

    goto :goto_1

    :cond_2
    iget p5, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    neg-int p5, p5

    int-to-float p5, p5

    mul-float/2addr p5, v1

    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    sub-float/2addr p5, v6

    :goto_1
    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    goto :goto_2

    .line 803
    :cond_3
    iget v6, p5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    invoke-virtual {p5, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->getKerning(C)I

    move-result p5

    add-int/2addr v6, p5

    int-to-float p5, v6

    mul-float/2addr p5, v1

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    :goto_2
    if-eqz v0, :cond_4

    const/16 p5, 0x5b

    if-ne p3, p5, :cond_4

    if-ge v4, p4, :cond_4

    .line 807
    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    if-ne p3, p5, :cond_4

    add-int/lit8 v4, v4, 0x1

    :cond_4
    move p3, v4

    move-object p5, v5

    goto :goto_0

    :cond_5
    if-eqz p5, :cond_7

    .line 810
    iget-boolean p2, p5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->fixedWidth:Z

    if-eqz p2, :cond_6

    iget p2, p5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float p2, p2

    mul-float/2addr p2, v1

    goto :goto_3

    :cond_6
    iget p2, p5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    iget p3, p5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    add-int/2addr p2, p3

    int-to-float p2, p2

    mul-float/2addr p2, v1

    iget p3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    sub-float/2addr p2, p3

    .line 812
    :goto_3
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    :cond_7
    return-void
.end method

.method public getImagePath(I)Ljava/lang/String;
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getImagePaths()[Ljava/lang/String;
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    return-object v0
.end method

.method public getWrapIndex(Lcom/badlogic/gdx/utils/Array;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;",
            ">;I)I"
        }
    .end annotation

    add-int/lit8 p2, p2, -0x1

    .line 820
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    :goto_0
    if-lez p2, :cond_2

    .line 822
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-lez p2, :cond_5

    .line 824
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    int-to-char v0, v0

    .line 825
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->isBreakChar(C)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public hasGlyph(C)Z
    .locals 2

    .line 762
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->missingGlyph:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 763
    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isBreakChar(C)Z
    .locals 5

    .line 831
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->breakChars:[C

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 832
    :cond_0
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-char v4, v0, v3

    if-ne p1, v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isWhitespace(C)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public load(Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 12

    .line 485
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    if-nez v0, :cond_27

    .line 487
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x200

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 489
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    const-string v2, "padding="

    .line 492
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    .line 493
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    const/4 v5, 0x4

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 494
    array-length v3, v1

    if-ne v3, v5, :cond_25

    .line 495
    aget-object v3, v1, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padTop:F

    const/4 v3, 0x1

    .line 496
    aget-object v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    const/4 v5, 0x2

    .line 497
    aget-object v6, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padBottom:F

    const/4 v6, 0x3

    .line 498
    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    .line 499
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padTop:F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padBottom:F

    add-float/2addr v1, v7

    .line 501
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_24

    const-string v8, " "

    const/4 v9, 0x7

    .line 503
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 506
    array-length v8, v7

    if-lt v8, v6, :cond_23

    .line 508
    aget-object v6, v7, v3

    const-string v8, "lineHeight="

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 509
    aget-object v6, v7, v3

    const/16 v8, 0xb

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    .line 511
    aget-object v6, v7, v5

    const-string v8, "base="

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 512
    aget-object v5, v7, v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    .line 515
    array-length v8, v7

    const/4 v9, 0x6

    if-lt v8, v9, :cond_0

    aget-object v8, v7, v6

    if-eqz v8, :cond_0

    aget-object v8, v7, v6

    const-string v10, "pages="

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    .line 517
    :try_start_1
    aget-object v6, v7, v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :cond_0
    move v6, v3

    .line 522
    :goto_0
    :try_start_2
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    move v7, v4

    :goto_1
    if-ge v7, v6, :cond_5

    .line 527
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    const-string v9, ".*id=(\\d+)"

    .line 531
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 532
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 533
    invoke-virtual {v9, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 535
    :try_start_3
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v7, :cond_1

    goto :goto_2

    .line 536
    :cond_1
    new-instance p2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Page IDs must be indices starting at 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    move-exception p2

    .line 538
    :try_start_4
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid page id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :goto_2
    const-string v9, ".*file=\"?([^\"]+)\"?"

    .line 542
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 543
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 544
    invoke-virtual {v8, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 546
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v8

    const-string v10, "\\\\"

    const-string v11, "/"

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 543
    :cond_3
    new-instance p2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Missing: file"

    invoke-direct {p2, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 528
    :cond_4
    new-instance p2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Missing additional page definitions."

    invoke-direct {p2, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    const/4 v3, 0x0

    .line 548
    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    .line 551
    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v6, " ="

    const v7, 0xffff

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    :try_start_5
    const-string v8, "kernings "

    .line 553
    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 598
    :goto_4
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padBottom:F

    add-float/2addr v3, v8

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    .line 601
    :cond_8
    :goto_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    goto :goto_6

    :cond_9
    const-string v8, "kerning "

    .line 603
    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_19

    .line 620
    :goto_6
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v3

    if-nez v3, :cond_b

    .line 622
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    invoke-direct {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;-><init>()V

    .line 623
    iput v2, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    const/16 v6, 0x6c

    .line 624
    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v6

    if-nez v6, :cond_a

    .line 625
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getFirstGlyph()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v6

    .line 626
    :cond_a
    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    iput v6, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    .line 627
    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setGlyph(ILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V

    .line 629
    :cond_b
    iget v2, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    if-nez v2, :cond_c

    .line 630
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    iget v6, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v6, v6

    add-float/2addr v2, v6

    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    add-float/2addr v2, v6

    float-to-int v2, v2

    iput v2, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    .line 631
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    neg-float v2, v2

    float-to-int v2, v2

    iput v2, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    .line 633
    :cond_c
    iget v2, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v2, v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceXadvance:F

    .line 636
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xChars:[C

    array-length v3, v2

    const/4 v6, 0x0

    move v7, v4

    move-object v8, v6

    :goto_7
    if-ge v7, v3, :cond_e

    aget-char v8, v2, v7

    .line 637
    invoke-virtual {p0, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v8

    if-eqz v8, :cond_d

    goto :goto_8

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_e
    :goto_8
    if-nez v8, :cond_f

    .line 640
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getFirstGlyph()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v8

    .line 641
    :cond_f
    iget v2, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    .line 644
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capChars:[C

    array-length v3, v2

    move v7, v4

    :goto_9
    if-ge v7, v3, :cond_11

    aget-char v6, v2, v7

    .line 645
    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v6

    if-eqz v6, :cond_10

    goto :goto_a

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_11
    :goto_a
    if-nez v6, :cond_16

    .line 649
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    array-length v3, v2

    move v6, v4

    :goto_b
    if-ge v6, v3, :cond_17

    aget-object v7, v2, v6

    if-nez v7, :cond_12

    goto :goto_e

    .line 651
    :cond_12
    array-length v8, v7

    move v9, v4

    :goto_c
    if-ge v9, v8, :cond_15

    aget-object v10, v7, v9

    if-eqz v10, :cond_14

    .line 652
    iget v11, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    if-eqz v11, :cond_14

    iget v11, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    if-nez v11, :cond_13

    goto :goto_d

    .line 653
    :cond_13
    iget v11, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    iget v10, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v10, v10

    invoke-static {v11, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iput v10, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    :cond_14
    :goto_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_15
    :goto_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 657
    :cond_16
    iget v2, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v2, v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    .line 658
    :cond_17
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    sub-float/2addr v2, v1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    sub-float/2addr v5, v2

    .line 660
    iput v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    .line 661
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    neg-float v1, v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    if-eqz p2, :cond_18

    neg-float p2, v5

    .line 663
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    neg-float p2, v1

    .line 664
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 669
    :cond_18
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    .line 605
    :cond_19
    :try_start_6
    new-instance v8, Ljava/util/StringTokenizer;

    invoke-direct {v8, v3, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 607
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 608
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 609
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 610
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ltz v3, :cond_8

    if-gt v3, v7, :cond_8

    if-ltz v9, :cond_8

    if-le v9, v7, :cond_1a

    goto/16 :goto_5

    :cond_1a
    int-to-char v3, v3

    .line 612
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v3

    .line 613
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 614
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-eqz v3, :cond_8

    .line 616
    invoke-virtual {v3, v9, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->setKerning(II)V

    goto/16 :goto_5

    :cond_1b
    const-string v8, "char "

    .line 554
    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1c

    goto/16 :goto_3

    .line 556
    :cond_1c
    new-instance v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    invoke-direct {v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;-><init>()V

    .line 558
    new-instance v9, Ljava/util/StringTokenizer;

    invoke-direct {v9, v3, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 560
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 561
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_1d

    .line 563
    iput-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->missingGlyph:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    goto :goto_f

    :cond_1d
    if-gt v3, v7, :cond_6

    .line 565
    invoke-virtual {p0, v3, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setGlyph(ILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V

    .line 568
    :goto_f
    iput v3, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    .line 569
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 570
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcX:I

    .line 571
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 572
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    .line 573
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 574
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    .line 575
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 576
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    .line 577
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 578
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    .line 579
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    if-eqz p2, :cond_1e

    .line 581
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    goto :goto_10

    .line 583
    :cond_1e
    iget v3, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v3, v6

    neg-int v3, v3

    iput v3, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    .line 584
    :goto_10
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 585
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    .line 588
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 589
    :cond_1f
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_20

    .line 591
    :try_start_7
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->page:I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 596
    :catch_2
    :cond_20
    :try_start_8
    iget v3, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    if-lez v3, :cond_6

    iget v3, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    if-lez v3, :cond_6

    iget v3, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v3, v3

    add-float/2addr v3, v5

    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    goto/16 :goto_3

    .line 511
    :cond_21
    new-instance p2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Missing: base"

    invoke-direct {p2, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 508
    :cond_22
    new-instance p2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Missing: lineHeight"

    invoke-direct {p2, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 506
    :cond_23
    new-instance p2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Invalid common header."

    invoke-direct {p2, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 502
    :cond_24
    new-instance p2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Missing common header."

    invoke-direct {p2, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 494
    :cond_25
    new-instance p2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Invalid padding."

    invoke-direct {p2, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 490
    :cond_26
    new-instance p2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "File is empty."

    invoke-direct {p2, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_11

    :catch_3
    move-exception p2

    .line 667
    :try_start_9
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading font file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 669
    :goto_11
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    .line 485
    :cond_27
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already loaded."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public scale(F)V
    .locals 2

    .line 898
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    add-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    add-float/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(FF)V

    return-void
.end method

.method public setGlyph(ILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V
    .locals 3

    .line 744
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    div-int/lit16 v1, p1, 0x200

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    const/16 v2, 0x200

    new-array v2, v2, [Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 745
    aput-object v2, v0, v1

    :cond_0
    and-int/lit16 p1, p1, 0x1ff

    .line 746
    aput-object p2, v2, p1

    return-void
.end method

.method public setGlyphRegion(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 13

    .line 674
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    .line 675
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    .line 676
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 679
    iget v0, p2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 680
    iget v3, p2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 681
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    int-to-float v4, v4

    .line 682
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v5

    int-to-float v5, v5

    .line 683
    instance-of v6, p2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 685
    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 686
    iget v6, p2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    .line 687
    iget v8, p2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    iget v9, p2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget p2, p2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    sub-float/2addr v8, p2

    goto :goto_0

    :cond_0
    move v6, v7

    move v8, v6

    .line 690
    :goto_0
    iget p2, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcX:I

    int-to-float p2, p2

    .line 691
    iget v9, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcX:I

    iget v10, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    .line 692
    iget v10, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    int-to-float v10, v10

    .line 693
    iget v11, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    iget v12, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    cmpl-float v12, v6, v7

    if-lez v12, :cond_2

    sub-float/2addr p2, v6

    cmpg-float v12, p2, v7

    if-gez v12, :cond_1

    .line 700
    iget v12, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v12, v12

    add-float/2addr v12, p2

    float-to-int v12, v12

    iput v12, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    .line 701
    iget v12, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v12, v12

    sub-float/2addr v12, p2

    float-to-int p2, v12

    iput p2, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    move p2, v7

    :cond_1
    sub-float/2addr v9, v6

    cmpl-float v6, v9, v4

    if-lez v6, :cond_2

    .line 706
    iget v6, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v6, v6

    sub-float/2addr v9, v4

    sub-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    goto :goto_1

    :cond_2
    move v4, v9

    :goto_1
    cmpl-float v6, v8, v7

    if-lez v6, :cond_6

    sub-float/2addr v10, v8

    cmpg-float v6, v10, v7

    if-gez v6, :cond_3

    .line 713
    iget v6, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v6, v6

    add-float/2addr v6, v10

    float-to-int v6, v6

    iput v6, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    .line 714
    iget v6, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    if-gez v6, :cond_4

    const/4 v6, 0x0

    iput v6, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    goto :goto_2

    :cond_3
    move v7, v10

    :cond_4
    :goto_2
    sub-float/2addr v11, v8

    cmpl-float v6, v11, v5

    if-lez v6, :cond_5

    sub-float/2addr v11, v5

    .line 720
    iget v6, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v6, v6

    sub-float/2addr v6, v11

    float-to-int v6, v6

    iput v6, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    .line 721
    iget v6, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v6, v6

    add-float/2addr v6, v11

    float-to-int v6, v6

    iput v6, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    move v10, v7

    goto :goto_3

    :cond_5
    move v10, v7

    :cond_6
    move v5, v11

    :goto_3
    mul-float/2addr p2, v1

    add-float/2addr p2, v0

    .line 726
    iput p2, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u:F

    mul-float/2addr v4, v1

    add-float/2addr v0, v4

    .line 727
    iput v0, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u2:F

    .line 728
    iget-boolean p2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->flipped:Z

    if-eqz p2, :cond_7

    mul-float/2addr v10, v2

    add-float/2addr v10, v3

    .line 729
    iput v10, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    mul-float/2addr v5, v2

    add-float/2addr v3, v5

    .line 730
    iput v3, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    goto :goto_4

    :cond_7
    mul-float/2addr v10, v2

    add-float/2addr v10, v3

    .line 732
    iput v10, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    mul-float/2addr v5, v2

    add-float/2addr v3, v5

    .line 733
    iput v3, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    :goto_4
    return-void
.end method

.method public setLineHeight(F)V
    .locals 1

    .line 739
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    .line 740
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->flipped:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    neg-float p1, p1

    :goto_0
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 891
    invoke-virtual {p0, p1, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(FF)V

    return-void
.end method

.method public setScale(FF)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_1

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    .line 870
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    div-float v0, p1, v0

    .line 871
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    div-float v1, p2, v1

    .line 872
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    .line 873
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceXadvance:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceXadvance:F

    .line 874
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    .line 875
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    .line 876
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    .line 877
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    .line 878
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    .line 879
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    .line 880
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    .line 881
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padTop:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padTop:F

    .line 882
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padBottom:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padBottom:F

    .line 883
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    .line 884
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    return-void

    .line 869
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "scaleY cannot be 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 868
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "scaleX cannot be 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
