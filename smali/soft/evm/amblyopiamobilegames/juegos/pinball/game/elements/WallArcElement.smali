.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallArcElement;
.super Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;
.source "WallArcElement.java"


# static fields
.field public static final CENTER_PROPERTY:Ljava/lang/String; = "center"

.field public static final IGNORE_BALL_PROPERTY:Ljava/lang/String; = "ignoreBall"

.field public static final MAX_ANGLE_PROPERTY:Ljava/lang/String; = "maxangle"

.field public static final MIN_ANGLE_PROPERTY:Ljava/lang/String; = "minangle"

.field public static final NUM_SEGMENTS_PROPERTY:Ljava/lang/String; = "segments"

.field public static final RADIUS_PROPERTY:Ljava/lang/String; = "radius"

.field public static final X_RADIUS_PROPERTY:Ljava/lang/String; = "xradius"

.field public static final Y_RADIUS_PROPERTY:Ljava/lang/String; = "yradius"


# instance fields
.field lineSegments:[[F

.field public wallBodies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallArcElement;->wallBodies:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createBodies(Lcom/badlogic/gdx/physics/box2d/World;)V
    .locals 11

    const-string v0, "ignoreBall"

    .line 83
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallArcElement;->getBooleanParameterValueForKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallArcElement;->lineSegments:[[F

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 86
    aget v6, v4, v2

    const/4 v5, 0x1

    aget v7, v4, v5

    const/4 v5, 0x2

    aget v8, v4, v5

    const/4 v5, 0x3

    aget v9, v4, v5

    const/4 v10, 0x0

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/Box2DFactory;->createThinWall(Lcom/badlogic/gdx/physics/box2d/World;FFFFF)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v4

    .line 88
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallArcElement;->wallBodies:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public draw(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;)V
    .locals 11

    .line 97
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallArcElement;->DEFAULT_WALL_COLOR_PINBALL:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallArcElement;->currentColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v0

    .line 98
    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallArcElement;->lineSegments:[[F

    array-length v8, v7

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v8, :cond_0

    aget-object v1, v7, v10

    .line 99
    aget v2, v1, v9

    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v4, 0x2

    aget v4, v1, v4

    const/4 v5, 0x3

    aget v5, v1, v5

    move-object v1, p1

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;->drawLine(FFFFLsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public finishCreateElement(Ljava/util/Map;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "center"

    .line 50
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    .line 51
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v4

    const/4 v5, 0x1

    .line 52
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v2

    const-string v6, "radius"

    .line 56
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 57
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v6

    move v7, v6

    goto :goto_0

    :cond_0
    const-string v6, "xradius"

    .line 60
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v6

    const-string v7, "yradius"

    .line 61
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v7

    :goto_0
    const-string v8, "segments"

    .line 64
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    if-eqz v8, :cond_1

    .line 65
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    goto :goto_1

    :cond_1
    const/4 v8, 0x5

    :goto_1
    const-string v9, "minangle"

    .line 66
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v9

    invoke-static {v9}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->toRadians(F)F

    move-result v9

    const-string v10, "maxangle"

    .line 67
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-static {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->toRadians(F)F

    move-result v1

    sub-float/2addr v1, v9

    .line 70
    new-array v10, v8, [[F

    iput-object v10, v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallArcElement;->lineSegments:[[F

    move v10, v3

    :goto_2
    if-ge v10, v8, :cond_2

    int-to-float v11, v10

    mul-float/2addr v11, v1

    int-to-float v12, v8

    div-float/2addr v11, v12

    add-float/2addr v11, v9

    add-int/lit8 v13, v10, 0x1

    int-to-float v14, v13

    mul-float/2addr v14, v1

    div-float/2addr v14, v12

    add-float/2addr v14, v9

    float-to-double v11, v11

    move v15, v4

    .line 74
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v6

    add-float v4, v15, v3

    .line 75
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v3, v11

    mul-float/2addr v3, v7

    add-float/2addr v3, v2

    float-to-double v11, v14

    move v14, v8

    move/from16 v16, v9

    .line 76
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v6

    add-float/2addr v8, v15

    .line 77
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v9, v11

    mul-float/2addr v9, v7

    add-float/2addr v9, v2

    .line 78
    iget-object v11, v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallArcElement;->lineSegments:[[F

    const/4 v12, 0x4

    new-array v12, v12, [F

    const/16 v17, 0x0

    aput v4, v12, v17

    aput v3, v12, v5

    const/4 v3, 0x2

    aput v8, v12, v3

    const/4 v3, 0x3

    aput v9, v12, v3

    aput-object v12, v11, v10

    move v10, v13

    move v8, v14

    move v4, v15

    move/from16 v9, v16

    move/from16 v3, v17

    goto :goto_2

    :cond_2
    return-void
.end method

.method public getBodies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallArcElement;->wallBodies:Ljava/util/List;

    return-object v0
.end method
