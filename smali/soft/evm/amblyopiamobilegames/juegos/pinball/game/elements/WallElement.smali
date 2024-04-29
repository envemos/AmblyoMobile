.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;
.super Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;
.source "WallElement.java"


# static fields
.field public static final DISABLED_PROPERTY:Ljava/lang/String; = "disabled"

.field public static final IGNORE_BALL_PROPERTY:Ljava/lang/String; = "ignoreBall"

.field public static final KICK_PROPERTY:Ljava/lang/String; = "kick"

.field public static final KILL_PROPERTY:Ljava/lang/String; = "kill"

.field public static final POSITION_PROPERTY:Ljava/lang/String; = "position"

.field public static final RESTITUTION_PROPERTY:Ljava/lang/String; = "restitution"

.field public static final RETRACT_WHEN_HIT_PROPERTY:Ljava/lang/String; = "retractWhenHit"


# instance fields
.field bodySet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation
.end field

.field disabled:Z

.field ignoreBall:Z

.field kick:F

.field killBall:Z

.field length:F

.field restitution:F

.field retractWhenHit:Z

.field visible:Z

.field wallBody:Lcom/badlogic/gdx/physics/box2d/Body;

.field x1:F

.field x2:F

.field y1:F

.field y2:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;-><init>()V

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->visible:Z

    return-void
.end method


# virtual methods
.method public createBodies(Lcom/badlogic/gdx/physics/box2d/World;)V
    .locals 6

    .line 79
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->ignoreBall:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->bodySet:Ljava/util/List;

    return-void

    .line 84
    :cond_0
    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->x1:F

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->y1:F

    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->x2:F

    iget v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->y2:F

    iget v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->restitution:F

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/Box2DFactory;->createThinWall(Lcom/badlogic/gdx/physics/box2d/World;FFFFF)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->wallBody:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 85
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->bodySet:Ljava/util/List;

    .line 86
    iget-boolean p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->disabled:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 87
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    :cond_1
    return-void
.end method

.method public draw(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;)V
    .locals 7

    .line 174
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->visible:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->isRetracted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->x1:F

    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->y1:F

    iget v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->x2:F

    iget v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->y2:F

    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->DEFAULT_WALL_COLOR_PINBALL:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->currentColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v6

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;->drawLine(FFFFLsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public finishCreateElement(Ljava/util/Map;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;)V
    .locals 4
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

    .line 63
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    .line 64
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->x1:F

    const/4 v0, 0x1

    .line 65
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->y1:F

    const/4 v0, 0x2

    .line 66
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->x2:F

    const/4 v0, 0x3

    .line 67
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p2

    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->y2:F

    .line 68
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->x2:F

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->x1:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->y1:F

    sub-float/2addr p2, v2

    float-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p2, v0

    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->length:F

    const-string p2, "restitution"

    .line 69
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p2

    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->restitution:F

    const-string p2, "kick"

    .line 71
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p2

    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->kick:F

    .line 72
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "kill"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->killBall:Z

    .line 73
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "retractWhenHit"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->retractWhenHit:Z

    .line 74
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "disabled"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->disabled:Z

    .line 75
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "ignoreBall"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->ignoreBall:Z

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

    .line 109
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->bodySet:Ljava/util/List;

    return-object v0
.end method

.method public handleCollision(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;Lcom/badlogic/gdx/physics/box2d/Body;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 0

    .line 141
    iget-boolean p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->retractWhenHit:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 142
    invoke-virtual {p0, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    .line 145
    :cond_0
    iget-boolean p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->killBall:Z

    if-eqz p2, :cond_1

    .line 146
    invoke-virtual {p3, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->removeBall(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->impulseForBall(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 151
    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->applyLinearImpulse(Lcom/badlogic/gdx/math/Vector2;)V

    const/4 p1, 0x3

    .line 152
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->flashForFrames(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method impulseForBall(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)Lcom/badlogic/gdx/math/Vector2;
    .locals 6

    .line 118
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->kick:F

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 120
    :cond_0
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->y2:F

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->y1:F

    sub-float/2addr v0, v1

    .line 121
    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->x1:F

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->x2:F

    sub-float/2addr v1, v2

    float-to-double v2, v0

    float-to-double v4, v1

    .line 122
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 123
    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->kick:F

    div-float/2addr v3, v2

    mul-float/2addr v0, v3

    mul-float/2addr v1, v3

    .line 129
    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    .line 130
    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->x1:F

    sub-float/2addr v2, v3

    .line 131
    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->y1:F

    sub-float/2addr p1, v3

    mul-float/2addr v2, v0

    mul-float/2addr p1, v1

    add-float/2addr v2, p1

    const/4 p1, 0x0

    cmpg-float p1, v2, p1

    if-gez p1, :cond_1

    neg-float v0, v0

    neg-float v1, v1

    .line 137
    :cond_1
    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1, v0, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    return-object p1
.end method

.method public isRetracted()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->wallBody:Lcom/badlogic/gdx/physics/box2d/Body;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->visible:Z

    return v0
.end method

.method public setRetracted(Z)V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->isRetracted()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 97
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->wallBody:Lcom/badlogic/gdx/physics/box2d/Body;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->setActive(Z)V

    :cond_0
    return-void
.end method

.method public setStartAndAngle(FFF)V
    .locals 6

    .line 164
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->x1:F

    .line 165
    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->y1:F

    .line 166
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->length:F

    float-to-double v0, v0

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    double-to-float v0, v0

    add-float/2addr v0, p1

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->x2:F

    .line 167
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->length:F

    float-to-double v0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    add-float/2addr v0, p2

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->y2:F

    .line 170
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->wallBody:Lcom/badlogic/gdx/physics/box2d/Body;

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->x2:F

    add-float/2addr p1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    add-float/2addr p2, v0

    div-float/2addr p2, v2

    invoke-virtual {v1, p1, p2, p3}, Lcom/badlogic/gdx/physics/box2d/Body;->setTransform(FFF)V

    return-void
.end method

.method public setStartAndDirection(FFFF)V
    .locals 2

    sub-float/2addr p4, p2

    float-to-double v0, p4

    sub-float/2addr p3, p1

    float-to-double p3, p3

    .line 160
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p3

    double-to-float p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setStartAndAngle(FFF)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->visible:Z

    return-void
.end method

.method public shouldCallTick()Z
    .locals 2

    .line 114
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->kick:F

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
