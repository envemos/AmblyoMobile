.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;
.super Ljava/lang/Object;
.source "GLVertexList.java"


# instance fields
.field colorBuffer:Ljava/nio/FloatBuffer;

.field colorComponents:[F

.field colorIndex:I

.field glMode:I

.field numVertices:I

.field vertexBuffer:Ljava/nio/FloatBuffer;

.field vertexCoords:[F

.field vertexIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 12
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->colorBuffer:Ljava/nio/FloatBuffer;

    .line 18
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->vertexCoords:[F

    .line 19
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->colorComponents:[F

    return-void
.end method

.method static makeFloatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 1

    mul-int/lit8 p0, p0, 0x4

    .line 119
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 120
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 121
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0
.end method


# virtual methods
.method public addColor(FFF)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 65
    invoke-virtual {p0, p1, p2, p3, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->addColor(FFFF)V

    return-void
.end method

.method public addColor(FFFF)V
    .locals 4

    .line 49
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->colorComponents:[F

    if-nez v0, :cond_0

    const/16 v0, 0x14

    new-array v0, v0, [F

    .line 50
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->colorComponents:[F

    goto :goto_0

    .line 52
    :cond_0
    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->colorIndex:I

    add-int/lit8 v2, v1, 0x4

    array-length v3, v0

    if-lt v2, v3, :cond_1

    .line 53
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    .line 54
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    iput-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->colorComponents:[F

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->colorBuffer:Ljava/nio/FloatBuffer;

    .line 58
    :cond_1
    :goto_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->colorComponents:[F

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->colorIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->colorIndex:I

    aput p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    .line 59
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->colorIndex:I

    aput p2, v0, v2

    add-int/lit8 p2, p1, 0x1

    .line 60
    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->colorIndex:I

    aput p3, v0, p1

    add-int/lit8 p1, p2, 0x1

    .line 61
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->colorIndex:I

    aput p4, v0, p2

    return-void
.end method

.method public addVertex(FF)V
    .locals 4

    .line 33
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->vertexCoords:[F

    if-nez v0, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [F

    .line 34
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->vertexCoords:[F

    goto :goto_0

    .line 36
    :cond_0
    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->vertexIndex:I

    add-int/lit8 v2, v1, 0x1

    array-length v3, v0

    if-lt v2, v3, :cond_1

    .line 37
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    .line 38
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iput-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->vertexCoords:[F

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 42
    :cond_1
    :goto_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->vertexCoords:[F

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->vertexIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->vertexIndex:I

    aput p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    .line 43
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->vertexIndex:I

    aput p2, v0, v2

    .line 45
    iget p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->numVertices:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->numVertices:I

    return-void
.end method

.method public begin()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->numVertices:I

    .line 29
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->colorIndex:I

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->vertexIndex:I

    return-void
.end method

.method public end()V
    .locals 4

    .line 70
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->vertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->vertexIndex:I

    if-ge v0, v1, :cond_1

    .line 71
    :cond_0
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->vertexIndex:I

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->makeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 73
    :cond_1
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->vertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->vertexCoords:[F

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->vertexIndex:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 74
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 76
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->colorIndex:I

    if-lez v0, :cond_4

    .line 77
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->colorBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->colorIndex:I

    if-ge v0, v1, :cond_3

    .line 78
    :cond_2
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->colorIndex:I

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->makeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->colorBuffer:Ljava/nio/FloatBuffer;

    .line 80
    :cond_3
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->colorBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->colorComponents:[F

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->colorIndex:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 81
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->colorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_4
    return-void
.end method

.method public getColorBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .line 111
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->colorBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getVertexBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .line 108
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->vertexBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getVertexCount()I
    .locals 1

    .line 115
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->numVertices:I

    return v0
.end method

.method public render(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6

    const v0, 0x8074

    .line 86
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 87
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->colorIndex:I

    const v1, 0x8076

    const/4 v2, 0x4

    if-le v0, v2, :cond_0

    .line 88
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 94
    :goto_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    invoke-interface {p1, v1, v3, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 95
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->colorIndex:I

    if-le v0, v2, :cond_1

    .line 96
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->colorBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v2, v3, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    goto :goto_1

    :cond_1
    if-ne v0, v2, :cond_2

    .line 100
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->colorComponents:[F

    aget v2, v0, v4

    const/4 v3, 0x1

    aget v3, v0, v3

    aget v1, v0, v1

    const/4 v5, 0x3

    aget v0, v0, v5

    invoke-interface {p1, v2, v3, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 104
    :cond_2
    :goto_1
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->glMode:I

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->numVertices:I

    invoke-interface {p1, v0, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    return-void
.end method

.method public setGLMode(I)V
    .locals 0

    .line 24
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->glMode:I

    return-void
.end method
