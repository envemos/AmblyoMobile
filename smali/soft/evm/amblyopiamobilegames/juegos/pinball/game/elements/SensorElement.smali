.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/SensorElement;
.super Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;
.source "SensorElement.java"


# static fields
.field public static final RECT_PROPERTY:Ljava/lang/String; = "rect"


# instance fields
.field xmax:F

.field xmin:F

.field ymax:F

.field ymin:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;-><init>()V

    return-void
.end method


# virtual methods
.method ballInRange(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)Z
    .locals 2

    .line 50
    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    .line 52
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/SensorElement;->xmin:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/SensorElement;->xmax:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/SensorElement;->ymin:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/SensorElement;->ymax:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public createBodies(Lcom/badlogic/gdx/physics/box2d/World;)V
    .locals 0

    return-void
.end method

.method public draw(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;)V
    .locals 0

    return-void
.end method

.method public finishCreateElement(Ljava/util/Map;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;)V
    .locals 5
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

    const-string p2, "rect"

    .line 34
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 p2, 0x0

    .line 35
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/SensorElement;->xmin:F

    const/4 v0, 0x1

    .line 36
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/SensorElement;->ymin:F

    .line 37
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/SensorElement;->xmax:F

    .line 38
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/SensorElement;->ymax:F

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

    .line 70
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public shouldCallTick()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public tick(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 4

    .line 59
    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getBalls()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 60
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 61
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;

    .line 62
    invoke-virtual {p0, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/SensorElement;->ballInRange(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getDelegate()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$Delegate;

    move-result-object v0

    invoke-interface {v0, p1, p0, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$Delegate;->ballInSensorRange(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/SensorElement;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
