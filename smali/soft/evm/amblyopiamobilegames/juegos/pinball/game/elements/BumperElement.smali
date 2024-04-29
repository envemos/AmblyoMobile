.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/BumperElement;
.super Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;
.source "BumperElement.java"


# static fields
.field public static DEFAULT_COLOR_PINBALL:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color; = null

.field public static final KICK_PROPERTY:Ljava/lang/String; = "kick"

.field public static final POSITION_PROPERTY:Ljava/lang/String; = "position"

.field public static final RADIUS_PROPERTY:Ljava/lang/String; = "radius"


# instance fields
.field bumperBody:Lcom/badlogic/gdx/physics/box2d/Body;

.field bumperBodySet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation
.end field

.field cx:F

.field cy:F

.field kick:F

.field radius:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;-><init>()V

    return-void
.end method


# virtual methods
.method public createBodies(Lcom/badlogic/gdx/physics/box2d/World;)V
    .locals 4

    .line 52
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/BumperElement;->cx:F

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/BumperElement;->cy:F

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/BumperElement;->radius:F

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/Box2DFactory;->createCircle(Lcom/badlogic/gdx/physics/box2d/World;FFFZ)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/BumperElement;->bumperBody:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 53
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/BumperElement;->bumperBodySet:Ljava/util/List;

    return-void
.end method

.method public draw(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;)V
    .locals 4

    .line 87
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/BumperElement;->bumperBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 88
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/BumperElement;->bumperBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 89
    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/BumperElement;->radius:F

    sget-object v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/BumperElement;->DEFAULT_COLOR_PINBALL:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    invoke-virtual {p0, v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/BumperElement;->currentColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;->fillCircle(FFFLsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V

    return-void
.end method

.method public finishCreateElement(Ljava/util/Map;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;)V
    .locals 1
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

    const-string p2, "position"

    .line 44
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const-string v0, "radius"

    .line 45
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/BumperElement;->radius:F

    const/4 v0, 0x0

    .line 46
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/BumperElement;->cx:F

    const/4 v0, 0x1

    .line 47
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p2

    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/BumperElement;->cy:F

    const-string p2, "kick"

    .line 48
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/BumperElement;->kick:F

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

    .line 57
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/BumperElement;->bumperBodySet:Ljava/util/List;

    return-object v0
.end method

.method public handleCollision(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;Lcom/badlogic/gdx/physics/box2d/Body;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/BumperElement;->impulseForBall(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->applyLinearImpulse(Lcom/badlogic/gdx/math/Vector2;)V

    const/4 p1, 0x3

    .line 82
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/BumperElement;->flashForFrames(I)V

    :cond_0
    return-void
.end method

.method impulseForBall(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)Lcom/badlogic/gdx/math/Vector2;
    .locals 6

    .line 67
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/BumperElement;->kick:F

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 69
    :cond_0
    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    .line 70
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/BumperElement;->bumperBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 71
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    .line 72
    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p1, v0

    float-to-double v2, v1

    float-to-double v4, p1

    .line 73
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 74
    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/BumperElement;->kick:F

    div-float/2addr v2, v0

    .line 75
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    mul-float/2addr v1, v2

    mul-float/2addr p1, v2

    invoke-direct {v0, v1, p1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public shouldCallTick()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
