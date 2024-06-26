.class public Lcom/badlogic/gdx/utils/Base64Coder;
.super Ljava/lang/Object;
.source "Base64Coder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/Base64Coder$CharMap;
    }
.end annotation


# static fields
.field public static final regularMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

.field private static final systemLineSeparator:Ljava/lang/String; = "\n"

.field public static final urlsafeMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 70
    new-instance v0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    const/16 v1, 0x2b

    const/16 v2, 0x2f

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;-><init>(CC)V

    sput-object v0, Lcom/badlogic/gdx/utils/Base64Coder;->regularMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    new-instance v0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    const/16 v1, 0x2d

    const/16 v2, 0x5f

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;-><init>(CC)V

    sput-object v0, Lcom/badlogic/gdx/utils/Base64Coder;->urlsafeMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 0

    .line 222
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lcom/badlogic/gdx/utils/Base64Coder;->decode([C)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode(Ljava/lang/String;Lcom/badlogic/gdx/utils/Base64Coder$CharMap;)[B
    .locals 0

    .line 231
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0, p1}, Lcom/badlogic/gdx/utils/Base64Coder;->decode([CLcom/badlogic/gdx/utils/Base64Coder$CharMap;)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([C)[B
    .locals 3

    .line 247
    array-length v0, p0

    sget-object v1, Lcom/badlogic/gdx/utils/Base64Coder;->regularMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->decodingMap:[B

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/badlogic/gdx/utils/Base64Coder;->decode([CII[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([CIILcom/badlogic/gdx/utils/Base64Coder$CharMap;)[B
    .locals 0

    .line 251
    iget-object p3, p3, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->decodingMap:[B

    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/Base64Coder;->decode([CII[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([CII[B)[B
    .locals 10

    .line 262
    rem-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_8

    :goto_0
    if-lez p2, :cond_0

    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    .line 265
    aget-char v0, p0, v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, p2, 0x3

    .line 268
    div-int/lit8 v0, v0, 0x4

    .line 269
    new-array v1, v0, [B

    add-int/2addr p2, p1

    const/4 v2, 0x0

    :goto_1
    if-ge p1, p2, :cond_7

    add-int/lit8 v3, p1, 0x1

    .line 274
    aget-char p1, p0, p1

    add-int/lit8 v4, v3, 0x1

    .line 275
    aget-char v3, p0, v3

    const/16 v5, 0x41

    if-ge v4, p2, :cond_1

    add-int/lit8 v6, v4, 0x1

    .line 276
    aget-char v4, p0, v4

    goto :goto_2

    :cond_1
    move v6, v4

    move v4, v5

    :goto_2
    if-ge v6, p2, :cond_2

    add-int/lit8 v5, v6, 0x1

    .line 277
    aget-char v6, p0, v6

    goto :goto_3

    :cond_2
    move v9, v6

    move v6, v5

    move v5, v9

    :goto_3
    const-string v7, "Illegal character in Base64 encoded data."

    const/16 v8, 0x7f

    if-gt p1, v8, :cond_6

    if-gt v3, v8, :cond_6

    if-gt v4, v8, :cond_6

    if-gt v6, v8, :cond_6

    .line 281
    aget-byte p1, p3, p1

    .line 282
    aget-byte v3, p3, v3

    .line 283
    aget-byte v4, p3, v4

    .line 284
    aget-byte v6, p3, v6

    if-ltz p1, :cond_5

    if-ltz v3, :cond_5

    if-ltz v4, :cond_5

    if-ltz v6, :cond_5

    shl-int/lit8 p1, p1, 0x2

    ushr-int/lit8 v7, v3, 0x4

    or-int/2addr p1, v7

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x4

    ushr-int/lit8 v7, v4, 0x2

    or-int/2addr v3, v7

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v6

    add-int/lit8 v6, v2, 0x1

    int-to-byte p1, p1

    .line 291
    aput-byte p1, v1, v2

    if-ge v6, v0, :cond_3

    add-int/lit8 p1, v6, 0x1

    int-to-byte v2, v3

    .line 293
    aput-byte v2, v1, v6

    move v6, p1

    :cond_3
    if-ge v6, v0, :cond_4

    add-int/lit8 p1, v6, 0x1

    int-to-byte v2, v4

    .line 296
    aput-byte v2, v1, v6

    move v2, p1

    goto :goto_4

    :cond_4
    move v2, v6

    :goto_4
    move p1, v5

    goto :goto_1

    .line 286
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 279
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    return-object v1

    .line 263
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length of Base64 encoded input string is not a multiple of 4."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decode([CLcom/badlogic/gdx/utils/Base64Coder$CharMap;)[B
    .locals 2

    .line 239
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/badlogic/gdx/utils/Base64Coder;->decode([CIILcom/badlogic/gdx/utils/Base64Coder$CharMap;)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([C[B)[B
    .locals 2

    .line 235
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/badlogic/gdx/utils/Base64Coder;->decode([CII[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeLines(Ljava/lang/String;)[B
    .locals 1

    .line 192
    sget-object v0, Lcom/badlogic/gdx/utils/Base64Coder;->regularMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->decodingMap:[B

    invoke-static {p0, v0}, Lcom/badlogic/gdx/utils/Base64Coder;->decodeLines(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeLines(Ljava/lang/String;Lcom/badlogic/gdx/utils/Base64Coder$CharMap;)[B
    .locals 0

    .line 196
    iget-object p1, p1, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->decodingMap:[B

    invoke-static {p0, p1}, Lcom/badlogic/gdx/utils/Base64Coder;->decodeLines(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeLines(Ljava/lang/String;[B)[B
    .locals 6

    .line 206
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 208
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 209
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_0

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    const/16 v5, 0x9

    if-eq v4, v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 211
    aput-char v4, v0, v3

    move v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    :cond_1
    invoke-static {v0, v1, v3, p1}, Lcom/badlogic/gdx/utils/Base64Coder;->decode([CII[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 184
    invoke-static {p0, v0}, Lcom/badlogic/gdx/utils/Base64Coder;->decodeString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 188
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/utils/Base64Coder;->urlsafeMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/badlogic/gdx/utils/Base64Coder;->regularMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    :goto_0
    iget-object p1, p1, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->decodingMap:[B

    invoke-static {p0, p1}, Lcom/badlogic/gdx/utils/Base64Coder;->decode([C[B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static encode([B)[C
    .locals 1

    .line 125
    sget-object v0, Lcom/badlogic/gdx/utils/Base64Coder;->regularMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    invoke-static {p0, v0}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([B[C)[C

    move-result-object p0

    return-object p0
.end method

.method public static encode([BI)[C
    .locals 2

    .line 141
    sget-object v0, Lcom/badlogic/gdx/utils/Base64Coder;->regularMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([BII[C)[C

    move-result-object p0

    return-object p0
.end method

.method public static encode([BIILcom/badlogic/gdx/utils/Base64Coder$CharMap;)[C
    .locals 0

    .line 145
    iget-object p3, p3, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([BII[C)[C

    move-result-object p0

    return-object p0
.end method

.method public static encode([BII[C)[C
    .locals 10

    mul-int/lit8 v0, p2, 0x4

    add-int/lit8 v0, v0, 0x2

    .line 155
    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, p2, 0x2

    .line 156
    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    .line 157
    new-array v1, v1, [C

    add-int/2addr p2, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge p1, p2, :cond_4

    add-int/lit8 v4, p1, 0x1

    .line 162
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    if-ge v4, p2, :cond_0

    add-int/lit8 v5, v4, 0x1

    .line 163
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    goto :goto_1

    :cond_0
    move v5, v4

    move v4, v2

    :goto_1
    if-ge v5, p2, :cond_1

    add-int/lit8 v6, v5, 0x1

    .line 164
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    move v9, v6

    move v6, v5

    move v5, v9

    goto :goto_2

    :cond_1
    move v6, v2

    :goto_2
    ushr-int/lit8 v7, p1, 0x2

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x4

    ushr-int/lit8 v8, v4, 0x4

    or-int/2addr p1, v8

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x2

    ushr-int/lit8 v8, v6, 0x6

    or-int/2addr v4, v8

    and-int/lit8 v6, v6, 0x3f

    add-int/lit8 v8, v3, 0x1

    .line 169
    aget-char v7, p3, v7

    aput-char v7, v1, v3

    add-int/lit8 v3, v8, 0x1

    .line 170
    aget-char p1, p3, p1

    aput-char p1, v1, v8

    const/16 p1, 0x3d

    if-ge v3, v0, :cond_2

    .line 171
    aget-char v4, p3, v4

    goto :goto_3

    :cond_2
    move v4, p1

    :goto_3
    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v0, :cond_3

    .line 173
    aget-char p1, p3, v6

    :cond_3
    aput-char p1, v1, v3

    add-int/lit8 v3, v3, 0x1

    move p1, v5

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public static encode([BLcom/badlogic/gdx/utils/Base64Coder$CharMap;)[C
    .locals 2

    .line 129
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([BIILcom/badlogic/gdx/utils/Base64Coder$CharMap;)[C

    move-result-object p0

    return-object p0
.end method

.method public static encode([B[C)[C
    .locals 2

    .line 133
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([BII[C)[C

    move-result-object p0

    return-object p0
.end method

.method public static encodeLines([B)Ljava/lang/String;
    .locals 6

    .line 88
    array-length v2, p0

    sget-object v0, Lcom/badlogic/gdx/utils/Base64Coder;->regularMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    iget-object v5, v0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    const/4 v1, 0x0

    const/16 v3, 0x4c

    const-string v4, "\n"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/Base64Coder;->encodeLines([BIIILjava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeLines([BIIILjava/lang/String;Lcom/badlogic/gdx/utils/Base64Coder$CharMap;)Ljava/lang/String;
    .locals 6

    .line 92
    iget-object v5, p5, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/Base64Coder;->encodeLines([BIIILjava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeLines([BIIILjava/lang/String;[C)Ljava/lang/String;
    .locals 4

    mul-int/lit8 p3, p3, 0x3

    .line 104
    div-int/lit8 p3, p3, 0x4

    if-lez p3, :cond_1

    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    .line 108
    div-int/2addr v0, p3

    add-int/lit8 v1, p2, 0x2

    .line 109
    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 110
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    sub-int v2, p2, v1

    .line 113
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v3, p1, v1

    .line 114
    invoke-static {p0, v3, v2, p5}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([BII[C)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append([C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 115
    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/2addr v1, v2

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 106
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-static {p0, v0}, Lcom/badlogic/gdx/utils/Base64Coder;->encodeString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 80
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/utils/Base64Coder;->urlsafeMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/badlogic/gdx/utils/Base64Coder;->regularMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    :goto_0
    iget-object p1, p1, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    invoke-static {p0, p1}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([B[C)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
