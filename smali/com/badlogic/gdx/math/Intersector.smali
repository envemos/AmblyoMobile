.class public final Lcom/badlogic/gdx/math/Intersector;
.super Ljava/lang/Object;
.source "Intersector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;,
        Lcom/badlogic/gdx/math/Intersector$SplitTriangle;
    }
.end annotation


# static fields
.field static best:Lcom/badlogic/gdx/math/Vector3;

.field private static final dir:Lcom/badlogic/gdx/math/Vector3;

.field private static final e:Lcom/badlogic/gdx/math/Vector2;

.field private static final ep1:Lcom/badlogic/gdx/math/Vector2;

.field private static final ep2:Lcom/badlogic/gdx/math/Vector2;

.field private static final floatArray:Lcom/badlogic/gdx/utils/FloatArray;

.field private static final floatArray2:Lcom/badlogic/gdx/utils/FloatArray;

.field private static final i:Lcom/badlogic/gdx/math/Vector3;

.field static intersection:Lcom/badlogic/gdx/math/Vector3;

.field private static final ip:Lcom/badlogic/gdx/math/Vector2;

.field private static final p:Lcom/badlogic/gdx/math/Plane;

.field private static final s:Lcom/badlogic/gdx/math/Vector2;

.field private static final start:Lcom/badlogic/gdx/math/Vector3;

.field static tmp:Lcom/badlogic/gdx/math/Vector3;

.field static tmp1:Lcom/badlogic/gdx/math/Vector3;

.field static tmp2:Lcom/badlogic/gdx/math/Vector3;

.field static tmp3:Lcom/badlogic/gdx/math/Vector3;

.field private static final v0:Lcom/badlogic/gdx/math/Vector3;

.field private static final v1:Lcom/badlogic/gdx/math/Vector3;

.field private static final v2:Lcom/badlogic/gdx/math/Vector3;

.field static v2tmp:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    .line 35
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    .line 36
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->floatArray:Lcom/badlogic/gdx/utils/FloatArray;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->floatArray2:Lcom/badlogic/gdx/utils/FloatArray;

    .line 146
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->ip:Lcom/badlogic/gdx/math/Vector2;

    .line 147
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->ep1:Lcom/badlogic/gdx/math/Vector2;

    .line 148
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->ep2:Lcom/badlogic/gdx/math/Vector2;

    .line 149
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->s:Lcom/badlogic/gdx/math/Vector2;

    .line 150
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->e:Lcom/badlogic/gdx/math/Vector2;

    .line 376
    new-instance v0, Lcom/badlogic/gdx/math/Plane;

    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Plane;-><init>(Lcom/badlogic/gdx/math/Vector3;F)V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->p:Lcom/badlogic/gdx/math/Plane;

    .line 377
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->i:Lcom/badlogic/gdx/math/Vector3;

    .line 426
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->dir:Lcom/badlogic/gdx/math/Vector3;

    .line 427
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->start:Lcom/badlogic/gdx/math/Vector3;

    .line 610
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    .line 611
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 612
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    .line 613
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    .line 614
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    .line 615
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v2tmp:Lcom/badlogic/gdx/math/Vector2;

    .line 1248
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static det(FFFF)F
    .locals 0

    mul-float/2addr p0, p3

    mul-float/2addr p1, p2

    sub-float/2addr p0, p1

    return p0
.end method

.method static detd(DDDD)D
    .locals 0

    mul-double/2addr p0, p6

    mul-double/2addr p2, p4

    sub-double/2addr p0, p2

    return-wide p0
.end method

.method public static distanceLinePoint(FFFFFF)F
    .locals 2

    sub-float/2addr p2, p0

    mul-float v0, p2, p2

    sub-float/2addr p3, p1

    mul-float v1, p3, p3

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 218
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float/2addr p4, p0

    mul-float/2addr p4, p3

    sub-float/2addr p5, p1

    mul-float/2addr p5, p2

    sub-float/2addr p4, p5

    .line 219
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float/2addr p0, v0

    return p0
.end method

.method public static distanceSegmentPoint(FFFFFF)F
    .locals 7

    .line 224
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v2tmp:Lcom/badlogic/gdx/math/Vector2;

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->nearestSegmentPoint(FFFFFFLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    invoke-virtual {p0, p4, p5}, Lcom/badlogic/gdx/math/Vector2;->dst(FF)F

    move-result p0

    return p0
.end method

.method public static distanceSegmentPoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F
    .locals 1

    .line 229
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v2tmp:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/math/Intersector;->nearestSegmentPoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result p0

    return p0
.end method

.method public static intersectLinePlane(FFFFFFLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)F
    .locals 1

    .line 361
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p3, p4, p5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p3

    invoke-virtual {p3, p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p3

    .line 362
    sget-object p4, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p4, p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    .line 363
    invoke-virtual {p6}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p4, p1, p2

    if-eqz p4, :cond_1

    .line 365
    invoke-virtual {p6}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p2

    invoke-virtual {p6}, Lcom/badlogic/gdx/math/Plane;->getD()F

    move-result p4

    add-float/2addr p2, p4

    neg-float p2, p2

    div-float/2addr p2, p1

    if-eqz p7, :cond_0

    .line 366
    invoke-virtual {p7, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_0
    return p2

    .line 368
    :cond_1
    invoke-virtual {p6, p0}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object p1

    sget-object p3, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne p1, p3, :cond_3

    if-eqz p7, :cond_2

    .line 369
    invoke-virtual {p7, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_2
    return p2

    :cond_3
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public static intersectLinePolygon(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Polygon;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 769
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v2

    .line 770
    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 771
    array-length v5, v2

    add-int/lit8 v6, v5, -0x2

    .line 772
    aget v6, v2, v6

    add-int/lit8 v7, v5, -0x1

    aget v7, v2, v7

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v5, :cond_1

    .line 774
    aget v10, v2, v9

    add-int/lit8 v11, v9, 0x1

    aget v11, v2, v11

    sub-float v12, v11, v7

    sub-float v13, v4, v3

    mul-float/2addr v13, v12

    sub-float v14, v10, v6

    sub-float v15, v1, v0

    mul-float/2addr v15, v14

    sub-float/2addr v13, v15

    const/4 v15, 0x0

    cmpl-float v16, v13, v15

    if-eqz v16, :cond_0

    sub-float v7, v0, v7

    sub-float v6, v3, v6

    mul-float/2addr v14, v7

    mul-float/2addr v12, v6

    sub-float/2addr v14, v12

    div-float/2addr v14, v13

    cmpl-float v6, v14, v15

    if-ltz v6, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v14, v6

    if-gtz v6, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v9, v9, 0x2

    move v6, v10

    move v7, v11

    goto :goto_0

    :cond_1
    return v8
.end method

.method public static intersectLines(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z
    .locals 2

    sub-float/2addr p7, p5

    sub-float/2addr p2, p0

    mul-float v0, p7, p2

    sub-float/2addr p6, p4

    sub-float/2addr p3, p1

    mul-float v1, p6, p3

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p8, :cond_1

    sub-float p5, p1, p5

    mul-float/2addr p6, p5

    sub-float p4, p0, p4

    mul-float/2addr p7, p4

    sub-float/2addr p6, p7

    div-float/2addr p6, v0

    mul-float/2addr p2, p6

    add-float/2addr p0, p2

    mul-float/2addr p3, p6

    add-float/2addr p1, p3

    .line 758
    invoke-virtual {p8, p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static intersectLines(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 6

    .line 736
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p3, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p3, p2

    sub-float/2addr v1, v0

    mul-float v4, p3, v1

    sub-float/2addr v3, v2

    sub-float/2addr p1, p0

    mul-float v5, v3, p1

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-nez v5, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p4, :cond_1

    sub-float p2, p0, p2

    mul-float/2addr v3, p2

    sub-float p2, v0, v2

    mul-float/2addr p3, p2

    sub-float/2addr v3, p3

    div-float/2addr v3, v4

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    mul-float/2addr p1, v3

    add-float/2addr p0, p1

    .line 743
    invoke-virtual {p4, v0, p0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static intersectPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;)Z
    .locals 9

    .line 159
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 163
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->floatArray2:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 164
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->floatArray:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 165
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/FloatArray;->addAll([F)V

    move p0, v1

    .line 166
    :goto_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x1

    if-ge p0, v0, :cond_8

    .line 167
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->ep1:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v3

    aget v3, v3, p0

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v4

    add-int/lit8 v5, p0, 0x1

    aget v4, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 169
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v0

    array-length v0, v0

    const/4 v3, 0x2

    sub-int/2addr v0, v3

    if-ge p0, v0, :cond_1

    .line 170
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->ep2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v4

    add-int/lit8 v5, p0, 0x2

    aget v4, v4, v5

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v5

    add-int/lit8 v6, p0, 0x3

    aget v5, v5, v6

    invoke-virtual {v0, v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_1

    .line 172
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->ep2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v4

    aget v4, v4, v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v5

    aget v5, v5, v2

    invoke-virtual {v0, v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 174
    :goto_1
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->floatArray2:Lcom/badlogic/gdx/utils/FloatArray;

    iget v4, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-nez v4, :cond_2

    return v1

    .line 177
    :cond_2
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->s:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v5, v3

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v5

    iget v6, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v6, v2

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v0

    invoke-virtual {v4, v5, v0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move v0, v1

    .line 178
    :goto_2
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->floatArray2:Lcom/badlogic/gdx/utils/FloatArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge v0, v5, :cond_7

    .line 179
    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->e:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v6

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v4

    invoke-virtual {v5, v6, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 181
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->ep2:Lcom/badlogic/gdx/math/Vector2;

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->ep1:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v4, v6, v5}, Lcom/badlogic/gdx/math/Intersector;->pointLineSide(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)I

    move-result v7

    if-lez v7, :cond_5

    .line 182
    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->s:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v4, v6, v7}, Lcom/badlogic/gdx/math/Intersector;->pointLineSide(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)I

    move-result v8

    if-gtz v8, :cond_4

    .line 183
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->ip:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v7, v5, v6, v4, v8}, Lcom/badlogic/gdx/math/Intersector;->intersectLines(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    .line 184
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->floatArray:Lcom/badlogic/gdx/utils/FloatArray;

    iget v6, v4, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lt v6, v3, :cond_3

    iget v6, v4, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v6, v3

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v6

    iget v7, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_3

    iget v6, v4, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v6, v2

    .line 185
    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v6

    iget v7, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_4

    .line 186
    :cond_3
    iget v6, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 187
    iget v6, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 190
    :cond_4
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->floatArray:Lcom/badlogic/gdx/utils/FloatArray;

    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 191
    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    goto :goto_3

    .line 192
    :cond_5
    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->s:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v4, v6, v7}, Lcom/badlogic/gdx/math/Intersector;->pointLineSide(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)I

    move-result v8

    if-lez v8, :cond_6

    .line 193
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->ip:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v7, v5, v6, v4, v8}, Lcom/badlogic/gdx/math/Intersector;->intersectLines(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    .line 194
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->floatArray:Lcom/badlogic/gdx/utils/FloatArray;

    iget v6, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 195
    iget v6, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 197
    :cond_6
    :goto_3
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->s:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v4, v6, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_2

    .line 199
    :cond_7
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 200
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->floatArray:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/FloatArray;->addAll(Lcom/badlogic/gdx/utils/FloatArray;)V

    .line 201
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    add-int/lit8 p0, p0, 0x2

    goto/16 :goto_0

    .line 203
    :cond_8
    sget-object p0, Lcom/badlogic/gdx/math/Intersector;->floatArray2:Lcom/badlogic/gdx/utils/FloatArray;

    iget p1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-eqz p1, :cond_b

    if-eqz p2, :cond_a

    .line 205
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object p1

    array-length p1, p1

    iget v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ne p1, v0, :cond_9

    .line 206
    iget-object p1, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object p2

    iget p0, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-static {p1, v1, p2, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 208
    :cond_9
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/FloatArray;->toArray()[F

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Polygon;->setVertices([F)V

    :cond_a
    :goto_4
    return v2

    :cond_b
    :goto_5
    return v1
.end method

.method public static intersectRayBounds(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/collision/BoundingBox;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 8

    .line 466
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->contains(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 467
    iget-object p0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    .line 474
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v2, v2, v3

    const/4 v3, 0x0

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 475
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float/2addr v2, v4

    cmpl-float v4, v2, v3

    if-ltz v4, :cond_2

    .line 477
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 478
    iget v5, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v6, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    iget v5, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v6, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_2

    iget v5, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v6, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v3

    .line 485
    :goto_0
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v4, v4, v3

    if-gez v4, :cond_4

    .line 486
    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float/2addr v4, v5

    cmpl-float v5, v4, v3

    if-ltz v5, :cond_4

    .line 488
    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    iget-object v7, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 489
    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4

    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_4

    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v6, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_4

    if-eqz v0, :cond_3

    cmpg-float v5, v4, v2

    if-gez v5, :cond_4

    :cond_3
    move v0, v1

    move v2, v4

    .line 496
    :cond_4
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_6

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v4, v4, v3

    if-lez v4, :cond_6

    .line 497
    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float/2addr v4, v5

    cmpl-float v5, v4, v3

    if-ltz v5, :cond_6

    .line 499
    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    iget-object v7, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 500
    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_6

    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_6

    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_6

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v6, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_6

    if-eqz v0, :cond_5

    cmpg-float v5, v4, v2

    if-gez v5, :cond_6

    :cond_5
    move v0, v1

    move v2, v4

    .line 507
    :cond_6
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_8

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v4, v4, v3

    if-gez v4, :cond_8

    .line 508
    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float/2addr v4, v5

    cmpl-float v5, v4, v3

    if-ltz v5, :cond_8

    .line 510
    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    iget-object v7, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 511
    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_8

    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_8

    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_8

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v6, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_8

    if-eqz v0, :cond_7

    cmpg-float v5, v4, v2

    if-gez v5, :cond_8

    :cond_7
    move v0, v1

    move v2, v4

    .line 518
    :cond_8
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_a

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v4, v4, v3

    if-lez v4, :cond_a

    .line 519
    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    div-float/2addr v4, v5

    cmpl-float v5, v4, v3

    if-ltz v5, :cond_a

    .line 521
    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    iget-object v7, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 522
    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_a

    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_a

    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_a

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v6, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_a

    if-eqz v0, :cond_9

    cmpg-float v5, v4, v2

    if-gez v5, :cond_a

    :cond_9
    move v0, v1

    move v2, v4

    .line 529
    :cond_a
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_c

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v4, v4, v3

    if-gez v4, :cond_c

    .line 530
    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    div-float/2addr v4, v5

    cmpl-float v3, v4, v3

    if-ltz v3, :cond_c

    .line 532
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 533
    iget v5, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v6, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_c

    iget v5, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v6, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_c

    iget v5, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v6, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_c

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_c

    if-eqz v0, :cond_b

    cmpg-float v3, v4, v2

    if-gez v3, :cond_c

    :cond_b
    move v2, v4

    goto :goto_1

    :cond_c
    move v1, v0

    :goto_1
    if-eqz v1, :cond_12

    if-eqz p2, :cond_12

    .line 540
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object p0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 541
    iget p0, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v0, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float p0, p0, v0

    if-gez p0, :cond_d

    .line 542
    iget-object p0, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget p0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iput p0, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    goto :goto_2

    .line 543
    :cond_d
    iget p0, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v0, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float p0, p0, v0

    if-lez p0, :cond_e

    .line 544
    iget-object p0, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget p0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iput p0, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 546
    :cond_e
    :goto_2
    iget p0, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v0, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float p0, p0, v0

    if-gez p0, :cond_f

    .line 547
    iget-object p0, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget p0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput p0, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    goto :goto_3

    .line 548
    :cond_f
    iget p0, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v0, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float p0, p0, v0

    if-lez p0, :cond_10

    .line 549
    iget-object p0, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget p0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput p0, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 551
    :cond_10
    :goto_3
    iget p0, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v0, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float p0, p0, v0

    if-gez p0, :cond_11

    .line 552
    iget-object p0, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget p0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iput p0, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    goto :goto_4

    .line 553
    :cond_11
    iget p0, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v0, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float p0, p0, v0

    if-lez p0, :cond_12

    .line 554
    iget-object p0, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget p0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iput p0, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    :cond_12
    :goto_4
    return v1
.end method

.method public static intersectRayBoundsFast(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 9

    .line 576
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    .line 577
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v2, v1, v2

    .line 578
    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    div-float/2addr v1, v3

    .line 580
    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    .line 581
    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v6, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v6, v5

    add-float/2addr v4, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v4, v6

    mul-float/2addr v4, v0

    cmpl-float v0, v3, v4

    if-lez v0, :cond_0

    move v8, v4

    move v4, v3

    move v3, v8

    .line 588
    :cond_0
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v6, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v6, v5

    sub-float/2addr v0, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v0, v6

    mul-float/2addr v0, v2

    .line 589
    iget v6, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v7, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v2

    cmpl-float v2, v0, v6

    if-lez v2, :cond_1

    move v8, v6

    move v6, v0

    move v0, v8

    .line 596
    :cond_1
    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v7, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v7, v5

    sub-float/2addr v2, v7

    iget-object v7, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v2, v7

    mul-float/2addr v2, v1

    .line 597
    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr p2, v5

    add-float/2addr p1, p2

    iget-object p0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget p0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr p1, p0

    mul-float/2addr p1, v1

    cmpl-float p0, v2, p1

    if-lez p0, :cond_2

    move v8, v2

    move v2, p1

    move p1, v8

    .line 604
    :cond_2
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, v2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 605
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_3

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static intersectRayBoundsFast(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/collision/BoundingBox;)Z
    .locals 2

    .line 566
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCenter(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getDimensions(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/badlogic/gdx/math/Intersector;->intersectRayBoundsFast(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result p0

    return p0
.end method

.method public static intersectRayPlane(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 6

    .line 335
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 337
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Plane;->getD()F

    move-result p1

    add-float/2addr v2, p1

    neg-float p1, v2

    div-float/2addr p1, v0

    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    return v4

    :cond_0
    if-eqz p2, :cond_1

    .line 340
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    iget-object p0, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_1
    return v3

    .line 342
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object p1

    sget-object v0, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_3

    .line 343
    iget-object p0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_3
    return v3

    :cond_4
    return v4
.end method

.method public static intersectRayRay(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F
    .locals 2

    .line 316
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    .line 317
    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p2, p0

    .line 318
    iget p0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr p0, v1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr p1, v1

    sub-float/2addr p0, p1

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-nez p1, :cond_0

    const/high16 p0, 0x7f800000    # Float.POSITIVE_INFINITY

    return p0

    .line 322
    :cond_0
    iget p1, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    div-float/2addr p1, p0

    .line 323
    iget p3, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float/2addr p3, p0

    mul-float/2addr v0, p3

    mul-float/2addr p2, p1

    sub-float/2addr v0, p2

    return v0
.end method

.method public static intersectRaySphere(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;FLcom/badlogic/gdx/math/Vector3;)Z
    .locals 6

    .line 437
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->dot(FFF)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return v2

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-virtual {p1, v1, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->dst2(FFF)F

    move-result p1

    mul-float/2addr p2, p2

    cmpl-float v1, p1, p2

    if-lez v1, :cond_1

    return v2

    :cond_1
    if-eqz p3, :cond_2

    .line 444
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p3, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p3

    sub-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    sub-float/2addr v0, p1

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    iget-object p0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 7

    .line 388
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    .line 389
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    .line 391
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    .line 392
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v3

    .line 393
    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 394
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->p:Lcom/badlogic/gdx/math/Plane;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 395
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Intersector;->isPointInTriangle(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    .line 396
    iget-object p0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p4, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_0
    return v5

    :cond_1
    return v6

    :cond_2
    const/high16 p2, 0x3f800000    # 1.0f

    div-float p3, p2, v3

    .line 404
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->i:Lcom/badlogic/gdx/math/Vector3;

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    .line 405
    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v2

    mul-float/2addr v2, p3

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-ltz v4, :cond_8

    cmpl-float v4, v2, p2

    if-lez v4, :cond_3

    goto :goto_1

    .line 408
    :cond_3
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    .line 409
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    mul-float/2addr v0, p3

    cmpg-float v4, v0, v3

    if-ltz v4, :cond_8

    add-float/2addr v2, v0

    cmpl-float p2, v2, p2

    if-lez p2, :cond_4

    goto :goto_1

    .line 412
    :cond_4
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p1

    mul-float/2addr p1, p3

    cmpg-float p2, p1, v3

    if-gez p2, :cond_5

    return v6

    :cond_5
    if-eqz p4, :cond_7

    const p2, 0x358637bd    # 1.0E-6f

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_6

    .line 417
    iget-object p0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p4, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0

    .line 419
    :cond_6
    invoke-virtual {p0, p4, p1}, Lcom/badlogic/gdx/math/collision/Ray;->getEndPoint(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    :cond_7
    :goto_0
    return v5

    :cond_8
    :goto_1
    return v6
.end method

.method public static intersectRayTriangles(Lcom/badlogic/gdx/math/collision/Ray;Ljava/util/List;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/math/collision/Ray;",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;",
            "Lcom/badlogic/gdx/math/Vector3;",
            ")Z"
        }
    .end annotation

    .line 704
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    move v2, v0

    move v3, v2

    .line 706
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    .line 707
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v6, v2, 0x1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v7, v2, 0x2

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/math/Vector3;

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p0, v4, v6, v7, v8}, Lcom/badlogic/gdx/math/Intersector;->intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 710
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    cmpg-float v6, v4, v1

    if-gez v6, :cond_0

    .line 713
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move v1, v4

    move v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    return v0

    :cond_2
    if-eqz p2, :cond_3

    .line 722
    sget-object p0, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_3
    return v5

    .line 704
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "triangle list size is not a multiple of 3"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static intersectRayTriangles(Lcom/badlogic/gdx/math/collision/Ray;[FLcom/badlogic/gdx/math/Vector3;)Z
    .locals 11

    .line 627
    array-length v0, p1

    div-int/lit8 v0, v0, 0x3

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    move v2, v0

    move v3, v2

    .line 629
    :goto_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0x6

    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    .line 630
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    aget v6, p1, v2

    add-int/lit8 v7, v2, 0x1

    aget v7, p1, v7

    add-int/lit8 v8, v2, 0x2

    aget v8, p1, v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v7, v2, 0x3

    aget v7, p1, v7

    add-int/lit8 v8, v2, 0x4

    aget v8, p1, v8

    add-int/lit8 v9, v2, 0x5

    aget v9, p1, v9

    .line 631
    invoke-virtual {v6, v7, v8, v9}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v8, v2, 0x6

    aget v8, p1, v8

    add-int/lit8 v9, v2, 0x7

    aget v9, p1, v9

    add-int/lit8 v10, v2, 0x8

    aget v10, p1, v10

    .line 632
    invoke-virtual {v7, v8, v9, v10}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 630
    invoke-static {p0, v4, v6, v7, v8}, Lcom/badlogic/gdx/math/Intersector;->intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 635
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    cmpg-float v6, v4, v1

    if-gez v6, :cond_0

    .line 638
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move v1, v4

    move v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x9

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    return v0

    :cond_2
    if-eqz p2, :cond_3

    .line 647
    sget-object p0, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_3
    return v5

    .line 627
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "triangle list size is not a multiple of 3"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static intersectRayTriangles(Lcom/badlogic/gdx/math/collision/Ray;[F[SILcom/badlogic/gdx/math/Vector3;)Z
    .locals 11

    .line 665
    array-length v0, p2

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    move v2, v0

    move v3, v2

    .line 667
    :goto_0
    array-length v4, p2

    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    .line 668
    aget-short v4, p2, v2

    mul-int/2addr v4, p3

    add-int/lit8 v6, v2, 0x1

    .line 669
    aget-short v6, p2, v6

    mul-int/2addr v6, p3

    add-int/lit8 v7, v2, 0x2

    .line 670
    aget-short v7, p2, v7

    mul-int/2addr v7, p3

    .line 672
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    aget v9, p1, v4

    add-int/lit8 v10, v4, 0x1

    aget v10, p1, v10

    add-int/lit8 v4, v4, 0x2

    aget v4, p1, v4

    invoke-virtual {v8, v9, v10, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    aget v9, p1, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, p1, v10

    add-int/lit8 v6, v6, 0x2

    aget v6, p1, v6

    .line 673
    invoke-virtual {v8, v9, v10, v6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    aget v9, p1, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p1, v10

    add-int/lit8 v7, v7, 0x2

    aget v7, p1, v7

    .line 674
    invoke-virtual {v8, v9, v10, v7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 672
    invoke-static {p0, v4, v6, v7, v8}, Lcom/badlogic/gdx/math/Intersector;->intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 677
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    cmpg-float v6, v4, v1

    if-gez v6, :cond_0

    .line 680
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move v1, v4

    move v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    return v0

    :cond_2
    if-eqz p4, :cond_3

    .line 689
    sget-object p0, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p4, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_3
    return v5

    .line 665
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "triangle list size is not a multiple of 3"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static intersectRectangles(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 3

    .line 794
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Rectangle;->overlaps(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 796
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 797
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 798
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget p0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, p0

    iget p0, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr p0, p1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iget p1, p2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr p0, p1

    iput p0, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static intersectSegmentCircle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)Z
    .locals 5

    .line 262
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 263
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 264
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v0

    .line 265
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_0

    .line 267
    sget-object p1, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, v0, p0, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0

    :cond_0
    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1

    .line 269
    sget-object p0, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, p1, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0

    .line 271
    :cond_1
    sget-object p1, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 272
    sget-object p1, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v0, v1

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v1, p0

    invoke-virtual {p1, v0, v1, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 275
    :goto_0
    iget p0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object p1, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr p0, p1

    .line 276
    iget p1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object p2, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr p1, p2

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    cmpg-float p0, p0, p3

    if-gtz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static intersectSegmentCircleDisplace(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/math/Vector2;)F
    .locals 5

    .line 292
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 293
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v1

    mul-float/2addr v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ltz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v4, p1, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, v2, v4, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 297
    sget-object p1, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, v2, p0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    sget-object p1, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 298
    sget-object p0, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/math/Vector3;->dst(FFF)F

    move-result p0

    cmpg-float p1, p0, p3

    if-gez p1, :cond_1

    .line 300
    invoke-virtual {p4, p2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    sget-object p2, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object p3, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget p3, p3, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->sub(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    return p0

    :cond_1
    :goto_0
    return v3
.end method

.method public static intersectSegmentPlane(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 4

    .line 85
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    .line 86
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 88
    :cond_0
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v2

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Plane;->getD()F

    move-result p2

    add-float/2addr v2, p2

    neg-float p2, v2

    div-float/2addr p2, v0

    cmpg-float v0, p2, v1

    if-ltz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v3
.end method

.method public static intersectSegmentPolygon(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Polygon;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 842
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v2

    .line 843
    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 844
    array-length v5, v2

    add-int/lit8 v6, v5, -0x2

    .line 845
    aget v6, v2, v6

    add-int/lit8 v7, v5, -0x1

    aget v7, v2, v7

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v5, :cond_1

    .line 847
    aget v10, v2, v9

    add-int/lit8 v11, v9, 0x1

    aget v11, v2, v11

    sub-float v12, v11, v7

    sub-float v13, v4, v3

    mul-float v14, v12, v13

    sub-float v15, v10, v6

    sub-float v16, v1, v0

    mul-float v17, v15, v16

    sub-float v14, v14, v17

    const/16 v17, 0x0

    cmpl-float v18, v14, v17

    if-eqz v18, :cond_0

    sub-float v7, v0, v7

    sub-float v6, v3, v6

    mul-float/2addr v15, v7

    mul-float/2addr v12, v6

    sub-float/2addr v15, v12

    div-float/2addr v15, v14

    cmpl-float v12, v15, v17

    if-ltz v12, :cond_0

    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v15, v15, v12

    if-gtz v15, :cond_0

    mul-float/2addr v13, v7

    mul-float v16, v16, v6

    sub-float v13, v13, v16

    div-float/2addr v13, v14

    cmpl-float v6, v13, v17

    if-ltz v6, :cond_0

    cmpg-float v6, v13, v12

    if-gtz v6, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v9, v9, 0x2

    move v6, v10

    move v7, v11

    goto :goto_0

    :cond_1
    return v8
.end method

.method public static intersectSegmentRectangle(FFFFLcom/badlogic/gdx/math/Rectangle;)Z
    .locals 13

    move-object/from16 v0, p4

    .line 812
    iget v1, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    .line 813
    iget v2, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v2, v3

    .line 815
    iget v8, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v9, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v10, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    const/4 v12, 0x0

    move v4, p0

    move v5, p1

    move v6, p2

    move/from16 v7, p3

    move v11, v2

    invoke-static/range {v4 .. v12}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z

    move-result v3

    const/4 v12, 0x1

    if-eqz v3, :cond_0

    return v12

    .line 818
    :cond_0
    iget v7, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v8, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v10, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    const/4 v11, 0x0

    move v3, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move v9, v1

    invoke-static/range {v3 .. v11}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v12

    .line 821
    :cond_1
    iget v8, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    const/4 v11, 0x0

    move v3, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move v7, v1

    move v9, v1

    move v10, v2

    invoke-static/range {v3 .. v11}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v12

    .line 824
    :cond_2
    iget v7, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    const/4 v11, 0x0

    move v3, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move v8, v2

    move v9, v1

    move v10, v2

    invoke-static/range {v3 .. v11}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v12

    :cond_3
    move v1, p0

    move v2, p1

    .line 827
    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v0

    return v0
.end method

.method public static intersectSegmentRectangle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 2

    .line 834
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v0, p0, v1, p1, p2}, Lcom/badlogic/gdx/math/Intersector;->intersectSegmentRectangle(FFFFLcom/badlogic/gdx/math/Rectangle;)Z

    move-result p0

    return p0
.end method

.method public static intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z
    .locals 4

    sub-float/2addr p7, p5

    sub-float/2addr p2, p0

    mul-float v0, p7, p2

    sub-float/2addr p6, p4

    sub-float/2addr p3, p1

    mul-float v1, p6, p3

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    sub-float p5, p1, p5

    sub-float p4, p0, p4

    mul-float/2addr p6, p5

    mul-float/2addr p7, p4

    sub-float/2addr p6, p7

    div-float/2addr p6, v0

    cmpg-float p7, p6, v1

    if-ltz p7, :cond_4

    const/high16 p7, 0x3f800000    # 1.0f

    cmpl-float v2, p6, p7

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    mul-float/2addr p5, p2

    mul-float/2addr p4, p3

    sub-float/2addr p5, p4

    div-float/2addr p5, v0

    cmpg-float p4, p5, v1

    if-ltz p4, :cond_4

    cmpl-float p4, p5, p7

    if-lez p4, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p8, :cond_3

    mul-float/2addr p2, p6

    add-float/2addr p0, p2

    mul-float/2addr p3, p6

    add-float/2addr p1, p3

    .line 906
    invoke-virtual {p8, p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v3
.end method

.method public static intersectSegments(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 8

    .line 875
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p3, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p3, p2

    sub-float/2addr v1, v0

    mul-float v4, p3, v1

    sub-float/2addr v3, v2

    sub-float/2addr p1, p0

    mul-float v5, v3, p1

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    const/4 v7, 0x0

    if-nez v6, :cond_0

    return v7

    :cond_0
    sub-float p2, p0, p2

    sub-float v2, v0, v2

    mul-float/2addr v3, p2

    mul-float/2addr p3, v2

    sub-float/2addr v3, p3

    div-float/2addr v3, v4

    cmpg-float p3, v3, v5

    if-ltz p3, :cond_4

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float v6, v3, p3

    if-lez v6, :cond_1

    goto :goto_0

    :cond_1
    mul-float/2addr p2, v1

    mul-float/2addr v2, p1

    sub-float/2addr p2, v2

    div-float/2addr p2, v4

    cmpg-float v2, p2, v5

    if-ltz v2, :cond_4

    cmpl-float p2, p2, p3

    if-lez p2, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    mul-float/2addr p1, v3

    add-float/2addr p0, p1

    .line 888
    invoke-virtual {p4, v0, p0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v7
.end method

.method public static isPointInPolygon(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;",
            "Lcom/badlogic/gdx/math/Vector2;",
            ")Z"
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    const/4 v1, 0x0

    move v2, v1

    .line 116
    :goto_0
    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_3

    .line 117
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    .line 118
    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v4, v4, v5

    if-gez v4, :cond_1

    :cond_0
    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    .line 119
    :cond_1
    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v6, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v5, v6

    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v7, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpg-float v0, v4, v0

    if-gez v0, :cond_2

    xor-int/lit8 v0, v2, 0x1

    move v2, v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    move-object v0, v3

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static isPointInPolygon([FIIFF)Z
    .locals 7

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x2

    const/4 v0, 0x0

    move v1, p2

    :goto_0
    if-gt p1, p2, :cond_3

    add-int/lit8 v2, p1, 0x1

    .line 135
    aget v2, p0, v2

    add-int/lit8 v3, v1, 0x1

    .line 136
    aget v3, p0, v3

    cmpg-float v4, v2, p4

    if-gez v4, :cond_0

    cmpl-float v4, v3, p4

    if-gez v4, :cond_1

    :cond_0
    cmpg-float v4, v3, p4

    if-gez v4, :cond_2

    cmpl-float v4, v2, p4

    if-ltz v4, :cond_2

    .line 138
    :cond_1
    aget v4, p0, p1

    sub-float v5, p4, v2

    sub-float/2addr v3, v2

    div-float/2addr v5, v3

    .line 139
    aget v1, p0, v1

    sub-float/2addr v1, v4

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    cmpg-float v1, v4, p3

    if-gez v1, :cond_2

    xor-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, p1, 0x2

    move v6, v1

    move v1, p1

    move p1, v6

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static isPointInTriangle(FFFFFFFF)Z
    .locals 6

    sub-float v0, p0, p2

    sub-float v1, p1, p3

    sub-float v2, p4, p2

    mul-float/2addr v2, v1

    sub-float v3, p5, p3

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    sub-float p2, p6, p2

    mul-float/2addr p2, v1

    sub-float p3, p7, p3

    mul-float/2addr p3, v0

    sub-float/2addr p2, p3

    cmpl-float p2, p2, v3

    if-lez p2, :cond_1

    move p2, v4

    goto :goto_1

    :cond_1
    move p2, v5

    :goto_1
    if-ne p2, v2, :cond_2

    return v5

    :cond_2
    sub-float/2addr p6, p4

    sub-float/2addr p1, p5

    mul-float/2addr p6, p1

    sub-float/2addr p7, p5

    sub-float/2addr p0, p4

    mul-float/2addr p7, p0

    sub-float/2addr p6, p7

    cmpl-float p0, p6, v3

    if-lez p0, :cond_3

    move p0, v4

    goto :goto_2

    :cond_3
    move p0, v5

    :goto_2
    if-eq p0, v2, :cond_4

    return v5

    :cond_4
    return v4
.end method

.method public static isPointInTriangle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 8

    .line 66
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    .line 67
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    .line 68
    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v1

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    .line 69
    :goto_0
    iget v6, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    iget v1, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, p1

    mul-float/2addr v1, v0

    sub-float/2addr v6, v1

    cmpl-float p1, v6, v3

    if-lez p1, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    move p1, v5

    :goto_1
    if-ne p1, v2, :cond_2

    return v5

    .line 70
    :cond_2
    iget p1, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v1

    mul-float/2addr p1, v0

    iget p3, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p3, v0

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr p0, p2

    mul-float/2addr p3, p0

    sub-float/2addr p1, p3

    cmpl-float p0, p1, v3

    if-lez p0, :cond_3

    move p0, v4

    goto :goto_2

    :cond_3
    move p0, v5

    :goto_2
    if-eq p0, v2, :cond_4

    return v5

    :cond_4
    return v4
.end method

.method public static isPointInTriangle(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 3

    .line 49
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 50
    sget-object p1, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 51
    sget-object p2, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 53
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p0

    .line 54
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p3

    .line 55
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 56
    invoke-virtual {p2, p2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p2

    mul-float v1, v0, p3

    mul-float/2addr p2, p0

    sub-float/2addr v1, p2

    const/4 p2, 0x0

    cmpg-float v1, v1, p2

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return v2

    .line 59
    :cond_0
    invoke-virtual {p1, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p1

    mul-float/2addr p0, v0

    mul-float/2addr p3, p1

    sub-float/2addr p0, p3

    cmpg-float p0, p0, p2

    if-gez p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static nearestSegmentPoint(FFFFFFLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 5

    sub-float v0, p2, p0

    sub-float v1, p3, p1

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-nez v4, :cond_0

    .line 248
    invoke-virtual {p6, p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    return-object p0

    :cond_0
    sub-float/2addr p4, p0

    mul-float/2addr p4, v0

    sub-float/2addr p5, p1

    mul-float/2addr p5, v1

    add-float/2addr p4, p5

    div-float/2addr p4, v2

    cmpg-float p5, p4, v3

    if-gez p5, :cond_1

    .line 250
    invoke-virtual {p6, p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    return-object p0

    :cond_1
    const/high16 p5, 0x3f800000    # 1.0f

    cmpl-float p5, p4, p5

    if-lez p5, :cond_2

    .line 251
    invoke-virtual {p6, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    return-object p0

    :cond_2
    mul-float/2addr v0, p4

    add-float/2addr p0, v0

    mul-float/2addr p4, v1

    add-float/2addr p1, p4

    .line 252
    invoke-virtual {p6, p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    return-object p0
.end method

.method public static nearestSegmentPoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 5

    .line 234
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    .line 235
    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    return-object p0

    .line 236
    :cond_0
    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v3, v4

    mul-float/2addr p2, v3

    add-float/2addr v2, p2

    div-float/2addr v2, v0

    cmpg-float p2, v2, v1

    if-gez p2, :cond_1

    .line 237
    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    return-object p0

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, v2, p2

    if-lez p2, :cond_2

    .line 238
    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    return-object p0

    .line 239
    :cond_2
    iget p2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    add-float/2addr p2, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p1, p0

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    invoke-virtual {p3, p2, v0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    return-object p0
.end method

.method public static overlapConvexPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;)Z
    .locals 1

    const/4 v0, 0x0

    .line 955
    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/math/Intersector;->overlapConvexPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z

    move-result p0

    return p0
.end method

.method public static overlapConvexPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z
    .locals 0

    .line 965
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object p0

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/badlogic/gdx/math/Intersector;->overlapConvexPolygons([F[FLcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z

    move-result p0

    return p0
.end method

.method public static overlapConvexPolygons([FII[FIILcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z
    .locals 27

    move-object/from16 v0, p6

    add-int v1, p1, p2

    add-int v2, p4, p5

    const/4 v3, 0x0

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    move/from16 v6, p1

    move v5, v4

    move v4, v3

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v6, v1, :cond_10

    .line 992
    aget v15, p0, v6

    add-int/lit8 v9, v6, 0x1

    .line 993
    aget v16, p0, v9

    add-int/lit8 v17, v6, 0x2

    .line 994
    rem-int v9, v17, p2

    aget v18, p0, v9

    add-int/lit8 v6, v6, 0x3

    .line 995
    rem-int v6, v6, p2

    aget v6, p0, v6

    sub-float v9, v16, v6

    sub-float v10, v15, v18

    neg-float v10, v10

    mul-float v11, v9, v9

    mul-float v12, v10, v10

    add-float/2addr v11, v12

    float-to-double v11, v11

    .line 1000
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v11, v11

    div-float v14, v9, v11

    div-float v13, v10, v11

    .line 1007
    aget v9, p0, v7

    mul-float/2addr v9, v14

    aget v10, p0, v8

    mul-float/2addr v10, v13

    add-float/2addr v9, v10

    move v11, v9

    move v12, v11

    move/from16 v9, p1

    :goto_1
    if-ge v9, v1, :cond_2

    .line 1010
    aget v10, p0, v9

    mul-float/2addr v10, v14

    add-int/lit8 v19, v9, 0x1

    aget v19, p0, v19

    mul-float v19, v19, v13

    add-float v10, v10, v19

    cmpg-float v19, v10, v12

    if-gez v19, :cond_0

    move v12, v10

    goto :goto_2

    :cond_0
    cmpl-float v19, v10, v11

    if-lez v19, :cond_1

    move v11, v10

    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x2

    goto :goto_1

    .line 1020
    :cond_2
    aget v9, p3, v7

    mul-float/2addr v9, v14

    aget v8, p3, v8

    mul-float/2addr v8, v13

    add-float/2addr v9, v8

    move/from16 v19, v7

    move v8, v9

    move v10, v8

    move/from16 v9, p4

    :goto_3
    if-ge v9, v2, :cond_5

    .line 1024
    aget v20, p3, v9

    add-int/lit8 v21, v9, 0x1

    aget v22, p3, v21

    move/from16 v23, v9

    move v9, v15

    move v7, v10

    move/from16 v10, v16

    move/from16 v24, v3

    move v3, v11

    move/from16 v11, v18

    move/from16 v25, v4

    move v4, v12

    move v12, v6

    move/from16 v26, v6

    move v6, v13

    move/from16 v13, v20

    move/from16 v20, v15

    move v15, v14

    move/from16 v14, v22

    invoke-static/range {v9 .. v14}, Lcom/badlogic/gdx/math/Intersector;->pointLineSide(FFFFFF)I

    move-result v9

    sub-int v19, v19, v9

    .line 1025
    aget v9, p3, v23

    mul-float v14, v15, v9

    aget v9, p3, v21

    mul-float v13, v6, v9

    add-float/2addr v14, v13

    cmpg-float v9, v14, v8

    if-gez v9, :cond_3

    move v10, v7

    move v8, v14

    goto :goto_4

    :cond_3
    cmpl-float v9, v14, v7

    if-lez v9, :cond_4

    move v10, v14

    goto :goto_4

    :cond_4
    move v10, v7

    :goto_4
    add-int/lit8 v9, v23, 0x2

    move v11, v3

    move v12, v4

    move v13, v6

    move v14, v15

    move/from16 v15, v20

    move/from16 v3, v24

    move/from16 v4, v25

    move/from16 v6, v26

    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    move/from16 v24, v3

    move/from16 v25, v4

    move v7, v10

    move v3, v11

    move v4, v12

    move v6, v13

    move v15, v14

    cmpg-float v9, v4, v8

    if-gtz v9, :cond_6

    cmpl-float v10, v3, v8

    if-gez v10, :cond_7

    :cond_6
    cmpg-float v10, v8, v4

    if-gtz v10, :cond_f

    cmpl-float v10, v7, v4

    if-gez v10, :cond_7

    goto :goto_9

    .line 1036
    :cond_7
    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v4, v8}, Ljava/lang/Math;->max(FF)F

    move-result v11

    sub-float/2addr v10, v11

    if-gez v9, :cond_8

    cmpl-float v9, v3, v7

    if-gtz v9, :cond_9

    :cond_8
    cmpg-float v9, v8, v4

    if-gez v9, :cond_b

    cmpl-float v9, v7, v3

    if-lez v9, :cond_b

    :cond_9
    sub-float v12, v4, v8

    .line 1038
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v11, v3, v7

    .line 1039
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v7, v4, v3

    if-gez v7, :cond_a

    add-float/2addr v10, v4

    goto :goto_5

    :cond_a
    add-float/2addr v10, v3

    :cond_b
    :goto_5
    cmpg-float v3, v10, v5

    if-gez v3, :cond_e

    if-ltz v19, :cond_c

    move v14, v15

    goto :goto_6

    :cond_c
    neg-float v14, v15

    :goto_6
    if-ltz v19, :cond_d

    move v13, v6

    goto :goto_7

    :cond_d
    neg-float v13, v6

    :goto_7
    move v5, v10

    move v4, v13

    move v3, v14

    goto :goto_8

    :cond_e
    move/from16 v3, v24

    move/from16 v4, v25

    :goto_8
    move/from16 v6, v17

    goto/16 :goto_0

    :cond_f
    :goto_9
    const/4 v0, 0x0

    return v0

    :cond_10
    move/from16 v24, v3

    move/from16 v25, v4

    move/from16 v6, p4

    :goto_a
    if-ge v6, v2, :cond_21

    .line 1058
    aget v7, p3, v6

    add-int/lit8 v9, v6, 0x1

    .line 1059
    aget v15, p3, v9

    add-int/lit8 v16, v6, 0x2

    .line 1060
    rem-int v9, v16, p5

    aget v17, p3, v9

    add-int/lit8 v6, v6, 0x3

    .line 1061
    rem-int v6, v6, p5

    aget v6, p3, v6

    sub-float v9, v15, v6

    sub-float v10, v7, v17

    neg-float v10, v10

    mul-float v11, v9, v9

    mul-float v12, v10, v10

    add-float/2addr v11, v12

    float-to-double v11, v11

    .line 1066
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v11, v11

    div-float v14, v9, v11

    div-float v13, v10, v11

    const/4 v9, 0x0

    .line 1074
    aget v10, p0, v9

    mul-float/2addr v10, v14

    aget v9, p0, v8

    mul-float/2addr v9, v13

    add-float/2addr v10, v9

    move v11, v10

    move v12, v11

    const/16 v18, 0x0

    move/from16 v10, p1

    :goto_b
    if-ge v10, v1, :cond_13

    .line 1077
    aget v9, p0, v10

    mul-float/2addr v9, v14

    add-int/lit8 v19, v10, 0x1

    aget v20, p0, v19

    mul-float v20, v20, v13

    add-float v20, v9, v20

    .line 1079
    aget v21, p0, v10

    aget v19, p0, v19

    move v9, v7

    move/from16 v22, v10

    move v10, v15

    move v8, v11

    move/from16 v11, v17

    move/from16 v24, v1

    move v1, v12

    move v12, v6

    move/from16 p2, v6

    move v6, v13

    move/from16 v13, v21

    move/from16 v21, v7

    move v7, v14

    move/from16 v14, v19

    invoke-static/range {v9 .. v14}, Lcom/badlogic/gdx/math/Intersector;->pointLineSide(FFFFFF)I

    move-result v9

    sub-int v18, v18, v9

    cmpg-float v9, v20, v1

    if-gez v9, :cond_11

    move v11, v8

    move/from16 v12, v20

    goto :goto_c

    :cond_11
    cmpl-float v9, v20, v8

    move v12, v1

    if-lez v9, :cond_12

    move/from16 v11, v20

    goto :goto_c

    :cond_12
    move v11, v8

    :goto_c
    add-int/lit8 v10, v22, 0x2

    move v13, v6

    move v14, v7

    move/from16 v7, v21

    move/from16 v1, v24

    const/4 v8, 0x1

    move/from16 v6, p2

    goto :goto_b

    :cond_13
    move/from16 v24, v1

    move v8, v11

    move v1, v12

    move v6, v13

    move v7, v14

    const/4 v9, 0x0

    .line 1088
    aget v10, p3, v9

    mul-float v14, v7, v10

    const/4 v9, 0x1

    aget v10, p3, v9

    mul-float v13, v6, v10

    add-float/2addr v14, v13

    move/from16 v10, p4

    move v9, v14

    :goto_d
    if-ge v10, v2, :cond_16

    .line 1091
    aget v11, p3, v10

    mul-float/2addr v11, v7

    add-int/lit8 v12, v10, 0x1

    aget v12, p3, v12

    mul-float v13, v6, v12

    add-float/2addr v11, v13

    cmpg-float v12, v11, v14

    if-gez v12, :cond_14

    move v14, v11

    goto :goto_e

    :cond_14
    cmpl-float v12, v11, v9

    if-lez v12, :cond_15

    move v9, v11

    :cond_15
    :goto_e
    add-int/lit8 v10, v10, 0x2

    goto :goto_d

    :cond_16
    cmpg-float v10, v1, v14

    if-gtz v10, :cond_17

    cmpl-float v11, v8, v14

    if-gez v11, :cond_18

    :cond_17
    cmpg-float v11, v14, v1

    if-gtz v11, :cond_20

    cmpl-float v11, v9, v1

    if-gez v11, :cond_18

    goto :goto_12

    .line 1102
    :cond_18
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v1, v14}, Ljava/lang/Math;->max(FF)F

    move-result v12

    sub-float/2addr v11, v12

    if-gez v10, :cond_19

    cmpl-float v10, v8, v9

    if-gtz v10, :cond_1a

    :cond_19
    cmpg-float v10, v14, v1

    if-gez v10, :cond_1c

    cmpl-float v10, v9, v8

    if-lez v10, :cond_1c

    :cond_1a
    sub-float v12, v1, v14

    .line 1105
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v8, v9

    .line 1106
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v9, v1, v8

    if-gez v9, :cond_1b

    add-float/2addr v11, v1

    goto :goto_f

    :cond_1b
    add-float/2addr v11, v8

    :cond_1c
    :goto_f
    cmpg-float v1, v11, v5

    if-gez v1, :cond_1f

    if-gez v18, :cond_1d

    move v14, v7

    goto :goto_10

    :cond_1d
    neg-float v14, v7

    :goto_10
    if-gez v18, :cond_1e

    move v13, v6

    goto :goto_11

    :cond_1e
    neg-float v13, v6

    :goto_11
    move v5, v11

    move v4, v13

    move v3, v14

    :cond_1f
    move/from16 v6, v16

    move/from16 v1, v24

    const/4 v8, 0x1

    goto/16 :goto_a

    :cond_20
    :goto_12
    const/4 v0, 0x0

    return v0

    :cond_21
    if-eqz v0, :cond_22

    .line 1124
    iget-object v1, v0, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->normal:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 1125
    iput v5, v0, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->depth:F

    :cond_22
    const/4 v0, 0x1

    return v0
.end method

.method public static overlapConvexPolygons([F[FLcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z
    .locals 7

    .line 970
    array-length v2, p0

    array-length v5, p1

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->overlapConvexPolygons([FII[FIILcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z

    move-result p0

    return p0
.end method

.method public static overlaps(Lcom/badlogic/gdx/math/Circle;Lcom/badlogic/gdx/math/Circle;)Z
    .locals 0

    .line 919
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Circle;->overlaps(Lcom/badlogic/gdx/math/Circle;)Z

    move-result p0

    return p0
.end method

.method public static overlaps(Lcom/badlogic/gdx/math/Circle;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 5

    .line 927
    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 928
    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 930
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 931
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    goto :goto_0

    .line 932
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 933
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v0, v2

    .line 936
    :cond_1
    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 937
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    goto :goto_1

    .line 938
    :cond_2
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 939
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, p1

    .line 942
    :cond_3
    :goto_1
    iget p1, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    sub-float/2addr v0, p1

    mul-float/2addr v0, v0

    .line 944
    iget p1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    sub-float/2addr v1, p1

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    .line 947
    iget p1, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget p0, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float/2addr p1, p0

    cmpg-float p0, v0, p1

    if-gez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public static overlaps(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 0

    .line 923
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Rectangle;->overlaps(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result p0

    return p0
.end method

.method public static pointLineSide(FFFFFF)I
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p5, p1

    mul-float/2addr p2, p5

    sub-float/2addr p3, p1

    sub-float/2addr p4, p0

    mul-float/2addr p3, p4

    sub-float/2addr p2, p3

    .line 106
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static pointLineSide(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)I
    .locals 3

    .line 99
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p1, v1

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr p2, p0

    mul-float/2addr p1, p2

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private static splitEdge([FIIILcom/badlogic/gdx/math/Plane;[FI)V
    .locals 8

    .line 1251
    aget v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    aget v2, p0, v2

    aget v3, p0, p2

    add-int/lit8 v4, p2, 0x1

    aget v4, p0, v4

    add-int/lit8 v5, p2, 0x2

    aget v5, p0, v5

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    move-object v6, p4

    invoke-static/range {v0 .. v7}, Lcom/badlogic/gdx/math/Intersector;->intersectLinePlane(FFFFFFLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)F

    move-result p4

    add-int/lit8 v0, p6, 0x0

    .line 1253
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v1, p5, v0

    add-int/lit8 v0, p6, 0x1

    .line 1254
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v1, p5, v0

    add-int/lit8 v0, p6, 0x2

    .line 1255
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v1, p5, v0

    const/4 v0, 0x3

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p1, v0

    .line 1257
    aget v1, p0, v1

    add-int v2, p2, v0

    .line 1258
    aget v2, p0, v2

    add-int v3, p6, v0

    sub-float/2addr v2, v1

    mul-float/2addr v2, p4

    add-float/2addr v1, v2

    .line 1259
    aput v1, p5, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static splitTriangle([FLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Intersector$SplitTriangle;)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 1150
    array-length v0, v7

    const/4 v1, 0x3

    div-int/lit8 v10, v0, 0x3

    const/4 v11, 0x0

    .line 1151
    aget v0, v7, v11

    const/4 v12, 0x1

    aget v2, v7, v12

    const/4 v13, 0x2

    aget v3, v7, v13

    invoke-virtual {v8, v0, v2, v3}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v0, v2, :cond_0

    move v14, v12

    goto :goto_0

    :cond_0
    move v14, v11

    :goto_0
    add-int/lit8 v0, v10, 0x0

    .line 1152
    aget v0, v7, v0

    add-int/lit8 v2, v10, 0x1

    aget v2, v7, v2

    add-int/lit8 v3, v10, 0x2

    aget v3, v7, v3

    invoke-virtual {v8, v0, v2, v3}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v0, v2, :cond_1

    move v15, v12

    goto :goto_1

    :cond_1
    move v15, v11

    :goto_1
    mul-int/lit8 v6, v10, 0x2

    add-int/lit8 v0, v6, 0x0

    .line 1153
    aget v0, v7, v0

    add-int/lit8 v2, v6, 0x1

    aget v2, v7, v2

    add-int/lit8 v3, v6, 0x2

    aget v3, v7, v3

    invoke-virtual {v8, v0, v2, v3}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v0, v2, :cond_2

    move v5, v12

    goto :goto_2

    :cond_2
    move v5, v11

    .line 1156
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->reset()V

    if-ne v14, v15, :cond_4

    if-ne v15, v5, :cond_4

    .line 1160
    iput v12, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->total:I

    if-eqz v14, :cond_3

    .line 1162
    iput v12, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numBack:I

    .line 1163
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    array-length v1, v7

    invoke-static {v7, v11, v0, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 1165
    :cond_3
    iput v12, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    .line 1166
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    array-length v1, v7

    invoke-static {v7, v11, v0, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    return-void

    .line 1172
    :cond_4
    iput v1, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->total:I

    xor-int/lit8 v0, v14, 0x1

    xor-int/lit8 v1, v15, 0x1

    add-int/2addr v0, v1

    xor-int/lit8 v1, v5, 0x1

    add-int/2addr v0, v1

    .line 1173
    iput v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    .line 1174
    iget v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->total:I

    iget v1, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    sub-int/2addr v0, v1

    iput v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numBack:I

    xor-int/lit8 v0, v14, 0x1

    .line 1179
    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->setSide(Z)V

    if-eq v14, v15, :cond_5

    .line 1186
    iget-object v4, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    const/16 v16, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move v2, v10

    move v3, v10

    move-object/from16 v17, v4

    move-object/from16 v4, p1

    move v13, v5

    move-object/from16 v5, v17

    move/from16 v18, v6

    move/from16 v6, v16

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->splitEdge([FIIILcom/badlogic/gdx/math/Plane;[FI)V

    .line 1189
    invoke-virtual {v9, v7, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1190
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1193
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->getSide()Z

    move-result v0

    xor-int/2addr v0, v12

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->setSide(Z)V

    .line 1194
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    goto :goto_4

    :cond_5
    move v13, v5

    move/from16 v18, v6

    .line 1197
    invoke-virtual {v9, v7, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    :goto_4
    add-int v6, v10, v10

    if-eq v15, v13, :cond_6

    .line 1205
    iget-object v5, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v10

    move v2, v6

    move v3, v10

    move-object/from16 v4, p1

    move/from16 v16, v6

    move v6, v15

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->splitEdge([FIIILcom/badlogic/gdx/math/Plane;[FI)V

    .line 1208
    invoke-virtual {v9, v7, v10, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1209
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1212
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->getSide()Z

    move-result v0

    xor-int/2addr v0, v12

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->setSide(Z)V

    .line 1213
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    goto :goto_5

    :cond_6
    move/from16 v16, v6

    .line 1216
    invoke-virtual {v9, v7, v10, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    :goto_5
    const/4 v2, 0x0

    if-eq v13, v14, :cond_7

    .line 1224
    iget-object v5, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v3, v10

    move-object/from16 v4, p1

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->splitEdge([FIIILcom/badlogic/gdx/math/Plane;[FI)V

    move/from16 v0, v16

    .line 1227
    invoke-virtual {v9, v7, v0, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1228
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1231
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->getSide()Z

    move-result v0

    xor-int/2addr v0, v12

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->setSide(Z)V

    .line 1232
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    goto :goto_6

    :cond_7
    move/from16 v0, v16

    .line 1235
    invoke-virtual {v9, v7, v0, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1239
    :goto_6
    iget v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 1240
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    iget-object v1, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    mul-int/lit8 v2, v10, 0x3

    move/from16 v3, v18

    invoke-static {v0, v3, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1241
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    iget-object v1, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    mul-int/lit8 v2, v10, 0x5

    invoke-static {v0, v11, v1, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    :cond_8
    move/from16 v3, v18

    .line 1243
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    iget-object v1, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    mul-int/lit8 v2, v10, 0x3

    invoke-static {v0, v3, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1244
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    iget-object v1, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    mul-int/lit8 v2, v10, 0x5

    invoke-static {v0, v11, v1, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_7
    return-void
.end method
