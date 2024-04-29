.class public Lcom/badlogic/gdx/math/DelaunayTriangulator;
.super Ljava/lang/Object;
.source "DelaunayTriangulator.java"


# static fields
.field private static final COMPLETE:I = 0x1

.field private static final EPSILON:F = 1.0E-6f

.field private static final INCOMPLETE:I = 0x2

.field private static final INSIDE:I


# instance fields
.field private final centroid:Lcom/badlogic/gdx/math/Vector2;

.field private final complete:Lcom/badlogic/gdx/utils/BooleanArray;

.field private final edges:Lcom/badlogic/gdx/utils/IntArray;

.field private final originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

.field private final quicksortStack:Lcom/badlogic/gdx/utils/IntArray;

.field private sortedPoints:[F

.field private final superTriangle:[F

.field private final triangles:Lcom/badlogic/gdx/utils/ShortArray;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->quicksortStack:Lcom/badlogic/gdx/utils/IntArray;

    .line 34
    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/ShortArray;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->triangles:Lcom/badlogic/gdx/utils/ShortArray;

    .line 35
    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/utils/ShortArray;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    .line 36
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->edges:Lcom/badlogic/gdx/utils/IntArray;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/utils/BooleanArray;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->complete:Lcom/badlogic/gdx/utils/BooleanArray;

    const/4 v0, 0x6

    new-array v0, v0, [F

    .line 38
    iput-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->superTriangle:[F

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->centroid:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method private circumCircle(FFFFFFFF)I
    .locals 6

    sub-float v0, p4, p6

    .line 228
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v1, p6, p8

    .line 229
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x358637bd    # 1.0E-6f

    cmpg-float v0, v0, v2

    const/4 v3, 0x2

    const/high16 v4, 0x40000000    # 2.0f

    if-gez v0, :cond_1

    cmpg-float p4, v1, v2

    if-gez p4, :cond_0

    return v3

    :cond_0
    sub-float p4, p7, p5

    neg-float p4, p4

    sub-float v0, p8, p6

    div-float/2addr p4, v0

    add-float/2addr p7, p5

    div-float/2addr p7, v4

    add-float/2addr p8, p6

    div-float/2addr p8, v4

    add-float/2addr p3, p5

    div-float/2addr p3, v4

    sub-float p7, p3, p7

    mul-float/2addr p4, p7

    add-float/2addr p4, p8

    goto :goto_1

    :cond_1
    sub-float v0, p5, p3

    neg-float v0, v0

    sub-float v5, p6, p4

    div-float/2addr v0, v5

    add-float/2addr p3, p5

    div-float/2addr p3, v4

    add-float/2addr p4, p6

    div-float/2addr p4, v4

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    add-float/2addr p7, p5

    div-float/2addr p7, v4

    goto :goto_0

    :cond_2
    sub-float v1, p7, p5

    neg-float v1, v1

    sub-float v5, p8, p6

    div-float/2addr v1, v5

    add-float/2addr p7, p5

    div-float/2addr p7, v4

    add-float/2addr p8, p6

    div-float/2addr p8, v4

    mul-float v4, v0, p3

    mul-float/2addr p7, v1

    sub-float/2addr v4, p7

    add-float/2addr v4, p8

    sub-float/2addr v4, p4

    sub-float p7, v0, v1

    div-float p7, v4, p7

    :goto_0
    sub-float p3, p7, p3

    mul-float/2addr v0, p3

    add-float/2addr p4, v0

    move p3, p7

    :goto_1
    sub-float/2addr p5, p3

    sub-float/2addr p6, p4

    mul-float/2addr p5, p5

    mul-float/2addr p6, p6

    add-float/2addr p5, p6

    sub-float p6, p1, p3

    mul-float/2addr p6, p6

    sub-float/2addr p2, p4

    mul-float/2addr p2, p2

    add-float/2addr p2, p6

    sub-float/2addr p2, p5

    cmpg-float p2, p2, v2

    if-gtz p2, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    cmpl-float p1, p1, p3

    if-lez p1, :cond_4

    cmpl-float p1, p6, p5

    if-lez p1, :cond_4

    const/4 v3, 0x1

    :cond_4
    return v3
.end method

.method private quicksortPartition([FII[S)I
    .locals 6

    .line 298
    aget v0, p1, p2

    add-int/lit8 v1, p2, 0x2

    :cond_0
    :goto_0
    if-ge v1, p3, :cond_3

    :goto_1
    if-ge v1, p3, :cond_1

    .line 304
    aget v2, p1, v1

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_1

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 306
    :cond_1
    :goto_2
    aget v2, p1, p3

    cmpl-float v2, v2, v0

    if-lez v2, :cond_2

    add-int/lit8 p3, p3, -0x2

    goto :goto_2

    :cond_2
    if-ge v1, p3, :cond_0

    .line 309
    aget v2, p1, v1

    .line 310
    aget v3, p1, p3

    aput v3, p1, v1

    .line 311
    aput v2, p1, p3

    add-int/lit8 v2, v1, 0x1

    .line 313
    aget v3, p1, v2

    add-int/lit8 v4, p3, 0x1

    .line 314
    aget v5, p1, v4

    aput v5, p1, v2

    .line 315
    aput v3, p1, v4

    .line 317
    div-int/lit8 v2, v1, 0x2

    aget-short v3, p4, v2

    .line 318
    div-int/lit8 v4, p3, 0x2

    aget-short v5, p4, v4

    aput-short v5, p4, v2

    .line 319
    aput-short v3, p4, v4

    goto :goto_0

    .line 322
    :cond_3
    aget v1, p1, p3

    aput v1, p1, p2

    .line 323
    aput v0, p1, p3

    add-int/lit8 v0, p2, 0x1

    .line 325
    aget v1, p1, v0

    add-int/lit8 v2, p3, 0x1

    .line 326
    aget v3, p1, v2

    aput v3, p1, v0

    .line 327
    aput v1, p1, v2

    .line 329
    div-int/lit8 p2, p2, 0x2

    aget-short p1, p4, p2

    .line 330
    div-int/lit8 v0, p3, 0x2

    aget-short v1, p4, v0

    aput-short v1, p4, p2

    .line 331
    aput-short p1, p4, v0

    return p3
.end method

.method private sort([FI)V
    .locals 7

    .line 267
    div-int/lit8 v0, p2, 0x2

    .line 268
    iget-object v1, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    .line 269
    iget-object v1, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    .line 270
    iget-object v1, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 272
    aput-short v3, v1, v3

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 276
    iget-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->quicksortStack:Lcom/badlogic/gdx/utils/IntArray;

    .line 277
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    add-int/lit8 p2, p2, -0x1

    .line 278
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 279
    :cond_1
    :goto_1
    iget p2, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lez p2, :cond_4

    .line 280
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result p2

    .line 281
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result v2

    if-gt p2, v2, :cond_2

    goto :goto_1

    .line 283
    :cond_2
    invoke-direct {p0, p1, v2, p2, v1}, Lcom/badlogic/gdx/math/DelaunayTriangulator;->quicksortPartition([FII[S)I

    move-result v3

    sub-int v4, v3, v2

    sub-int v5, p2, v3

    if-le v4, v5, :cond_3

    .line 285
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    add-int/lit8 v6, v3, -0x2

    .line 286
    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    :cond_3
    add-int/lit8 v6, v3, 0x2

    .line 288
    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 289
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    if-lt v5, v4, :cond_1

    .line 291
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    add-int/lit8 v3, v3, -0x2

    .line 292
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public computeTriangles(Lcom/badlogic/gdx/utils/FloatArray;Z)Lcom/badlogic/gdx/utils/ShortArray;
    .locals 2

    .line 43
    iget-object v0, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/math/DelaunayTriangulator;->computeTriangles([FIIZ)Lcom/badlogic/gdx/utils/ShortArray;

    move-result-object p1

    return-object p1
.end method

.method public computeTriangles([FIIZ)Lcom/badlogic/gdx/utils/ShortArray;
    .locals 31

    move-object/from16 v9, p0

    move/from16 v0, p3

    .line 59
    iget-object v10, v9, Lcom/badlogic/gdx/math/DelaunayTriangulator;->triangles:Lcom/badlogic/gdx/utils/ShortArray;

    .line 60
    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    return-object v10

    .line 62
    :cond_0
    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    const/4 v11, 0x0

    if-nez p4, :cond_3

    .line 65
    iget-object v1, v9, Lcom/badlogic/gdx/math/DelaunayTriangulator;->sortedPoints:[F

    if-eqz v1, :cond_1

    array-length v1, v1

    if-ge v1, v0, :cond_2

    :cond_1
    new-array v1, v0, [F

    iput-object v1, v9, Lcom/badlogic/gdx/math/DelaunayTriangulator;->sortedPoints:[F

    .line 66
    :cond_2
    iget-object v1, v9, Lcom/badlogic/gdx/math/DelaunayTriangulator;->sortedPoints:[F

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static {v2, v3, v1, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    iget-object v1, v9, Lcom/badlogic/gdx/math/DelaunayTriangulator;->sortedPoints:[F

    .line 69
    invoke-direct {v9, v1, v0}, Lcom/badlogic/gdx/math/DelaunayTriangulator;->sort([FI)V

    move-object v12, v1

    move v13, v11

    goto :goto_0

    :cond_3
    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v12, v2

    move v13, v3

    :goto_0
    add-int v14, v13, v0

    .line 75
    aget v1, v12, v11

    const/4 v15, 0x1

    aget v2, v12, v15

    add-int/lit8 v3, v13, 0x2

    move v4, v2

    move v5, v3

    move v2, v1

    move v3, v4

    :goto_1
    if-ge v5, v14, :cond_8

    .line 78
    aget v6, v12, v5

    cmpg-float v7, v6, v2

    if-gez v7, :cond_4

    move v2, v6

    :cond_4
    cmpl-float v7, v6, v1

    if-lez v7, :cond_5

    move v1, v6

    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 82
    aget v6, v12, v5

    cmpg-float v7, v6, v4

    if-gez v7, :cond_6

    move v4, v6

    :cond_6
    cmpl-float v7, v6, v3

    if-lez v7, :cond_7

    move v3, v6

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    sub-float v5, v1, v2

    sub-float v6, v3, v4

    cmpl-float v7, v5, v6

    if-lez v7, :cond_9

    goto :goto_2

    :cond_9
    move v5, v6

    :goto_2
    const/high16 v6, 0x41a00000    # 20.0f

    mul-float/2addr v5, v6

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    .line 91
    iget-object v8, v9, Lcom/badlogic/gdx/math/DelaunayTriangulator;->superTriangle:[F

    sub-float v2, v1, v5

    .line 92
    aput v2, v8, v11

    sub-float v2, v3, v5

    .line 93
    aput v2, v8, v15

    const/16 v16, 0x2

    .line 94
    aput v1, v8, v16

    add-float/2addr v3, v5

    const/4 v4, 0x3

    .line 95
    aput v3, v8, v4

    add-float/2addr v1, v5

    const/4 v3, 0x4

    .line 96
    aput v1, v8, v3

    const/4 v1, 0x5

    .line 97
    aput v2, v8, v1

    .line 99
    iget-object v7, v9, Lcom/badlogic/gdx/math/DelaunayTriangulator;->edges:Lcom/badlogic/gdx/utils/IntArray;

    .line 100
    div-int/lit8 v1, v0, 0x2

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/utils/IntArray;->ensureCapacity(I)[I

    .line 102
    iget-object v6, v9, Lcom/badlogic/gdx/math/DelaunayTriangulator;->complete:Lcom/badlogic/gdx/utils/BooleanArray;

    .line 103
    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/BooleanArray;->clear()V

    .line 104
    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->ensureCapacity(I)[Z

    .line 107
    invoke-virtual {v10, v14}, Lcom/badlogic/gdx/utils/ShortArray;->add(I)V

    add-int/lit8 v0, v14, 0x2

    .line 108
    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/utils/ShortArray;->add(I)V

    add-int/lit8 v0, v14, 0x4

    .line 109
    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/utils/ShortArray;->add(I)V

    .line 110
    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/utils/BooleanArray;->add(Z)V

    move v5, v13

    :goto_3
    if-ge v5, v14, :cond_16

    .line 114
    aget v17, v12, v5

    add-int/lit8 v0, v5, 0x1

    aget v18, v12, v0

    .line 117
    iget-object v4, v10, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 118
    iget-object v3, v6, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 119
    iget v0, v10, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    sub-int/2addr v0, v15

    move v2, v0

    :goto_4
    if-ltz v2, :cond_10

    .line 120
    div-int/lit8 v1, v2, 0x3

    .line 121
    aget-boolean v0, v3, v1

    if-eqz v0, :cond_a

    move-object/from16 v27, v3

    move-object/from16 v19, v4

    move/from16 v28, v5

    move-object v0, v6

    move-object v15, v7

    move-object/from16 v21, v8

    move-object/from16 v25, v12

    move/from16 p2, v13

    move/from16 v26, v14

    move v12, v2

    goto/16 :goto_9

    :cond_a
    add-int/lit8 v0, v2, -0x2

    .line 122
    aget-short v11, v4, v0

    add-int/lit8 v15, v2, -0x1

    move/from16 p2, v13

    .line 123
    aget-short v13, v4, v15

    .line 124
    aget-short v9, v4, v2

    if-lt v11, v14, :cond_b

    sub-int v19, v11, v14

    .line 128
    aget v20, v8, v19

    const/16 v21, 0x1

    add-int/lit8 v19, v19, 0x1

    .line 129
    aget v19, v8, v19

    move/from16 v30, v20

    move/from16 v20, v19

    move/from16 v19, v30

    goto :goto_5

    :cond_b
    const/16 v21, 0x1

    .line 131
    aget v19, v12, v11

    add-int/lit8 v20, v11, 0x1

    .line 132
    aget v20, v12, v20

    :goto_5
    if-lt v13, v14, :cond_c

    sub-int v22, v13, v14

    .line 136
    aget v23, v8, v22

    add-int/lit8 v22, v22, 0x1

    .line 137
    aget v22, v8, v22

    move/from16 v30, v23

    move/from16 v23, v22

    move/from16 v22, v30

    goto :goto_6

    .line 139
    :cond_c
    aget v22, v12, v13

    add-int/lit8 v23, v13, 0x1

    .line 140
    aget v23, v12, v23

    :goto_6
    if-lt v9, v14, :cond_d

    sub-int v24, v9, v14

    .line 144
    aget v25, v8, v24

    add-int/lit8 v24, v24, 0x1

    .line 145
    aget v21, v8, v24

    move/from16 v24, v21

    move/from16 v21, v25

    goto :goto_7

    .line 147
    :cond_d
    aget v21, v12, v9

    add-int/lit8 v24, v9, 0x1

    .line 148
    aget v24, v12, v24

    :goto_7
    move-object/from16 v25, v12

    move v12, v0

    move-object/from16 v0, p0

    move/from16 v26, v14

    move v14, v1

    move/from16 v1, v17

    move/from16 p3, v12

    move v12, v2

    move/from16 v2, v18

    move-object/from16 v27, v3

    move/from16 v3, v19

    move-object/from16 v19, v4

    move/from16 v4, v20

    move/from16 v28, v5

    move/from16 v5, v22

    move-object/from16 v29, v6

    move/from16 v6, v23

    move/from16 v20, v15

    move-object v15, v7

    move/from16 v7, v21

    move-object/from16 v21, v8

    move/from16 v8, v24

    .line 150
    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/math/DelaunayTriangulator;->circumCircle(FFFFFFFF)I

    move-result v0

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    :goto_8
    move-object/from16 v0, v29

    goto :goto_9

    .line 152
    :cond_e
    aput-boolean v1, v27, v14

    goto :goto_8

    .line 155
    :cond_f
    invoke-virtual {v15, v11}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 156
    invoke-virtual {v15, v13}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 157
    invoke-virtual {v15, v13}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 158
    invoke-virtual {v15, v9}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 159
    invoke-virtual {v15, v9}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 160
    invoke-virtual {v15, v11}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 162
    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    move/from16 v2, v20

    .line 163
    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    move/from16 v2, p3

    .line 164
    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    move-object/from16 v0, v29

    .line 165
    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/utils/BooleanArray;->removeIndex(I)Z

    :goto_9
    add-int/lit8 v2, v12, -0x3

    move-object/from16 v9, p0

    move/from16 v13, p2

    move-object v6, v0

    move-object v7, v15

    move-object/from16 v4, v19

    move-object/from16 v8, v21

    move-object/from16 v12, v25

    move/from16 v14, v26

    move-object/from16 v3, v27

    move/from16 v5, v28

    const/4 v11, 0x0

    const/4 v15, 0x1

    goto/16 :goto_4

    :cond_10
    move/from16 v28, v5

    move-object v0, v6

    move-object v15, v7

    move-object/from16 v21, v8

    move-object/from16 v25, v12

    move/from16 p2, v13

    move/from16 v26, v14

    .line 170
    iget-object v1, v15, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 171
    iget v2, v15, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_15

    .line 173
    aget v4, v1, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_11

    :goto_b
    move/from16 v13, v28

    const/4 v4, 0x0

    goto :goto_d

    :cond_11
    add-int/lit8 v6, v3, 0x1

    .line 175
    aget v7, v1, v6

    add-int/lit8 v8, v3, 0x2

    const/4 v9, 0x0

    :goto_c
    if-ge v8, v2, :cond_13

    add-int/lit8 v11, v8, 0x1

    .line 178
    aget v11, v1, v11

    if-ne v4, v11, :cond_12

    aget v11, v1, v8

    if-ne v7, v11, :cond_12

    .line 180
    aput v5, v1, v8

    const/4 v9, 0x1

    :cond_12
    add-int/lit8 v8, v8, 0x2

    goto :goto_c

    :cond_13
    if-eqz v9, :cond_14

    goto :goto_b

    .line 186
    :cond_14
    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/utils/ShortArray;->add(I)V

    .line 187
    aget v4, v1, v6

    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/utils/ShortArray;->add(I)V

    move/from16 v13, v28

    .line 188
    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/utils/ShortArray;->add(I)V

    const/4 v4, 0x0

    .line 189
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/BooleanArray;->add(Z)V

    :goto_d
    add-int/lit8 v3, v3, 0x2

    move/from16 v28, v13

    goto :goto_a

    :cond_15
    move/from16 v13, v28

    const/4 v4, 0x0

    .line 191
    invoke-virtual {v15}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    add-int/lit8 v5, v13, 0x2

    move-object/from16 v9, p0

    move/from16 v13, p2

    move-object v6, v0

    move v11, v4

    move-object v7, v15

    move-object/from16 v8, v21

    move-object/from16 v12, v25

    move/from16 v14, v26

    const/4 v15, 0x1

    goto/16 :goto_3

    :cond_16
    move v4, v11

    move/from16 p2, v13

    move/from16 v26, v14

    .line 195
    iget-object v0, v10, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 196
    iget v1, v10, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_e
    if-ltz v1, :cond_19

    .line 197
    aget-short v2, v0, v1

    move/from16 v13, v26

    if-ge v2, v13, :cond_17

    add-int/lit8 v2, v1, -0x1

    aget-short v2, v0, v2

    if-ge v2, v13, :cond_17

    add-int/lit8 v2, v1, -0x2

    aget-short v2, v0, v2

    if-lt v2, v13, :cond_18

    .line 198
    :cond_17
    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    add-int/lit8 v2, v1, -0x1

    .line 199
    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    add-int/lit8 v2, v1, -0x2

    .line 200
    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    :cond_18
    add-int/lit8 v1, v1, -0x3

    move/from16 v26, v13

    goto :goto_e

    :cond_19
    move-object/from16 v1, p0

    if-nez p4, :cond_1a

    .line 206
    iget-object v2, v1, Lcom/badlogic/gdx/math/DelaunayTriangulator;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 207
    iget v3, v10, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    move v5, v4

    :goto_f
    if-ge v5, v3, :cond_1a

    .line 208
    aget-short v6, v0, v5

    div-int/lit8 v6, v6, 0x2

    aget-short v6, v2, v6

    mul-int/lit8 v6, v6, 0x2

    int-to-short v6, v6

    aput-short v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_1a
    if-nez p2, :cond_1b

    .line 213
    iget v2, v10, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    move v11, v4

    :goto_10
    if-ge v11, v2, :cond_1c

    .line 214
    aget-short v3, v0, v11

    div-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    aput-short v3, v0, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    .line 216
    :cond_1b
    iget v2, v10, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    move v11, v4

    :goto_11
    if-ge v11, v2, :cond_1c

    .line 217
    aget-short v3, v0, v11

    sub-int v3, v3, p2

    div-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    aput-short v3, v0, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    :cond_1c
    return-object v10
.end method

.method public computeTriangles([FZ)Lcom/badlogic/gdx/utils/ShortArray;
    .locals 2

    .line 48
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/badlogic/gdx/math/DelaunayTriangulator;->computeTriangles([FIIZ)Lcom/badlogic/gdx/utils/ShortArray;

    move-result-object p1

    return-object p1
.end method

.method public trim(Lcom/badlogic/gdx/utils/ShortArray;[F[FII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 338
    iget-object v2, v1, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 339
    iget v3, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_1

    add-int/lit8 v4, v3, -0x2

    .line 340
    aget-short v5, v2, v4

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v3, -0x1

    .line 341
    aget-short v7, v2, v6

    mul-int/lit8 v7, v7, 0x2

    .line 342
    aget-short v8, v2, v3

    mul-int/lit8 v8, v8, 0x2

    .line 343
    aget v9, p2, v5

    add-int/lit8 v5, v5, 0x1

    aget v10, p2, v5

    aget v11, p2, v7

    add-int/lit8 v7, v7, 0x1

    aget v12, p2, v7

    aget v13, p2, v8

    add-int/lit8 v8, v8, 0x1

    aget v14, p2, v8

    iget-object v15, v0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->centroid:Lcom/badlogic/gdx/math/Vector2;

    invoke-static/range {v9 .. v15}, Lcom/badlogic/gdx/math/GeometryUtils;->triangleCentroid(FFFFFFLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 345
    iget-object v5, v0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->centroid:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v7, v0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->centroid:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-static {v8, v9, v10, v5, v7}, Lcom/badlogic/gdx/math/Intersector;->isPointInPolygon([FIIFF)Z

    move-result v5

    if-nez v5, :cond_0

    .line 346
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    .line 347
    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    .line 348
    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    :cond_0
    add-int/lit8 v3, v3, -0x3

    goto :goto_0

    :cond_1
    return-void
.end method
