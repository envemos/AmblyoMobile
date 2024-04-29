.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallPathElement;
.super Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;
.source "WallPathElement.java"


# static fields
.field public static final IGNORE_BALL_PROPERTY:Ljava/lang/String; = "ignoreBall"

.field public static final POSITIONS_PROPERTY:Ljava/lang/String; = "positions"


# instance fields
.field lineSegments:[[F

.field wallBodies:Ljava/util/List;
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

    .line 25
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallPathElement;->wallBodies:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createBodies(Lcom/badlogic/gdx/physics/box2d/World;)V
    .locals 11

    const-string v0, "ignoreBall"

    .line 49
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallPathElement;->getBooleanParameterValueForKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallPathElement;->lineSegments:[[F

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 52
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

    .line 53
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallPathElement;->wallBodies:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public draw(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;)V
    .locals 11

    .line 62
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallPathElement;->lineSegments:[[F

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 63
    aget v6, v4, v2

    const/4 v5, 0x1

    aget v7, v4, v5

    const/4 v5, 0x2

    aget v8, v4, v5

    const/4 v5, 0x3

    aget v9, v4, v5

    sget-object v4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallPathElement;->DEFAULT_WALL_COLOR_PINBALL:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    invoke-virtual {p0, v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallPathElement;->currentColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v10

    move-object v5, p1

    invoke-interface/range {v5 .. v10}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;->drawLine(FFFFLsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public finishCreateElement(Ljava/util/Map;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;)V
    .locals 7
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

    const-string p2, "positions"

    .line 35
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 37
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    new-array p2, p2, [[F

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallPathElement;->lineSegments:[[F

    const/4 p2, 0x0

    move v1, p2

    .line 38
    :goto_0
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallPathElement;->lineSegments:[[F

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 39
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    .line 40
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x4

    new-array v5, v5, [F

    .line 42
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v6

    aput v6, v5, p2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v2

    aput v2, v5, v0

    const/4 v2, 0x2

    .line 43
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v6

    aput v6, v5, v2

    const/4 v2, 0x3

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v4

    aput v4, v5, v2

    .line 44
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallPathElement;->lineSegments:[[F

    aput-object v5, v2, v1

    move v1, v3

    goto :goto_0

    :cond_0
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

    .line 58
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallPathElement;->wallBodies:Ljava/util/List;

    return-object v0
.end method
