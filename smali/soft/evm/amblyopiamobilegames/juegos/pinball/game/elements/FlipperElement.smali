.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;
.super Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;
.source "FlipperElement.java"


# static fields
.field public static DEFAULT_COLOR_PINBALL:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color; = null

.field public static final DOWN_SPEED_PROPERTY:Ljava/lang/String; = "downspeed"

.field public static final LENGTH_PROPERTY:Ljava/lang/String; = "length"

.field public static final MAX_ANGLE_PROPERTY:Ljava/lang/String; = "maxangle"

.field public static final MIN_ANGLE_PROPERTY:Ljava/lang/String; = "minangle"

.field public static final POSITION_PROPERTY:Ljava/lang/String; = "position"

.field public static final UP_SPEED_PROPERTY:Ljava/lang/String; = "upspeed"


# instance fields
.field public anchorBody:Lcom/badlogic/gdx/physics/box2d/Body;

.field cx:F

.field cy:F

.field downspeed:F

.field flipperBody:Lcom/badlogic/gdx/physics/box2d/Body;

.field flipperBodySet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation
.end field

.field flipperLength:F

.field public joint:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;

.field jointDef:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

.field maxangle:F

.field minangle:F

.field upspeed:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;-><init>()V

    return-void
.end method


# virtual methods
.method public createBodies(Lcom/badlogic/gdx/physics/box2d/World;)V
    .locals 11

    .line 76
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->cx:F

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->cy:F

    const v2, 0x3d4ccccd    # 0.05f

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/Box2DFactory;->createCircle(Lcom/badlogic/gdx/physics/box2d/World;FFFZ)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->anchorBody:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 79
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->flipperLength:F

    const/4 v1, 0x0

    cmpl-float v4, v0, v1

    if-lez v4, :cond_0

    const v2, -0x42b33333    # -0.05f

    .line 81
    :cond_0
    iget v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->cx:F

    add-float v6, v4, v2

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->cy:F

    const v5, 0x3df5c28f    # 0.12f

    sub-float v7, v2, v5

    add-float v8, v4, v0

    add-float v9, v2, v5

    const/4 v10, 0x0

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/Box2DFactory;->createWall(Lcom/badlogic/gdx/physics/box2d/World;FFFFF)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->flipperBody:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 82
    sget-object v2, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->DynamicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->setType(Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;)V

    .line 83
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->flipperBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/physics/box2d/Body;->setBullet(Z)V

    .line 84
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->flipperBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Fixture;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/physics/box2d/Fixture;->setDensity(F)V

    .line 86
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->jointDef:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    .line 87
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->anchorBody:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->flipperBody:Lcom/badlogic/gdx/physics/box2d/Body;

    new-instance v5, Lcom/badlogic/gdx/math/Vector2;

    iget v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->cx:F

    iget v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->cy:F

    invoke-direct {v5, v6, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v2, v4, v5}, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->initialize(Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/math/Vector2;)V

    .line 88
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->jointDef:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    iput-boolean v3, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->enableLimit:Z

    .line 89
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->jointDef:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    iput-boolean v3, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->enableMotor:Z

    .line 91
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->jointDef:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->flipperLength:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_1

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->minangle:F

    goto :goto_0

    :cond_1
    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->maxangle:F

    neg-float v2, v2

    :goto_0
    iput v2, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->lowerAngle:F

    .line 92
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->jointDef:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->flipperLength:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_2

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->maxangle:F

    goto :goto_1

    :cond_2
    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->minangle:F

    neg-float v1, v1

    :goto_1
    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->upperAngle:F

    .line 93
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->jointDef:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    const/high16 v1, 0x447a0000    # 1000.0f

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->maxMotorTorque:F

    .line 95
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->jointDef:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/physics/box2d/World;->createJoint(Lcom/badlogic/gdx/physics/box2d/JointDef;)Lcom/badlogic/gdx/physics/box2d/Joint;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->joint:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;

    .line 97
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->flipperBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->flipperBodySet:Ljava/util/List;

    .line 98
    iget p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->downspeed:F

    neg-float p1, p1

    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->setEffectiveMotorSpeed(F)V

    return-void
.end method

.method public draw(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;)V
    .locals 10

    .line 180
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->anchorBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->joint:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;

    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;->getJointAngle()F

    move-result v1

    .line 183
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->jointDef:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    iget v2, v2, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->lowerAngle:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->jointDef:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    iget v1, v1, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->lowerAngle:F

    .line 184
    :cond_0
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->jointDef:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    iget v2, v2, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->upperAngle:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->jointDef:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    iget v1, v1, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->upperAngle:F

    .line 185
    :cond_1
    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 186
    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 187
    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->flipperLength:F

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v1, v8

    mul-float/2addr v5, v1

    add-float/2addr v5, v2

    .line 188
    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->flipperLength:F

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v2, v6

    mul-float/2addr v1, v2

    add-float v6, v0, v1

    .line 190
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->DEFAULT_COLOR_PINBALL:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->currentColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v7

    move-object v2, p1

    invoke-interface/range {v2 .. v7}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;->drawLine(FFFFLsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V

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

    .line 64
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    .line 66
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->cx:F

    const/4 v0, 0x1

    .line 67
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p2

    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->cy:F

    const-string p2, "length"

    .line 68
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p2

    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->flipperLength:F

    const-string p2, "minangle"

    .line 69
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p2

    invoke-static {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->toRadians(F)F

    move-result p2

    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->minangle:F

    const-string p2, "maxangle"

    .line 70
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p2

    invoke-static {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->toRadians(F)F

    move-result p2

    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->maxangle:F

    const-string p2, "upspeed"

    .line 71
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p2

    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->upspeed:F

    const-string p2, "downspeed"

    .line 72
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->downspeed:F

    return-void
.end method

.method public getAnchorBody()Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 1

    .line 175
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->anchorBody:Lcom/badlogic/gdx/physics/box2d/Body;

    return-object v0
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

    .line 132
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->flipperBodySet:Ljava/util/List;

    return-object v0
.end method

.method getEffectiveMotorSpeed()F
    .locals 2

    .line 121
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->joint:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;->getMotorSpeed()F

    move-result v0

    .line 122
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->isReversed()Z

    move-result v1

    if-eqz v1, :cond_0

    neg-float v0, v0

    :cond_0
    return v0
.end method

.method public getFlipperLength()F
    .locals 1

    .line 167
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->flipperLength:F

    return v0
.end method

.method public getJoint()Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;
    .locals 1

    .line 171
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->joint:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;

    return-object v0
.end method

.method public isFlipperEngaged()Z
    .locals 2

    .line 154
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->getEffectiveMotorSpeed()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLeftFlipper()Z
    .locals 1

    .line 108
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->isReversed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isReversed()Z
    .locals 2

    .line 103
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->flipperLength:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRightFlipper()Z
    .locals 1

    .line 113
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->isReversed()Z

    move-result v0

    return v0
.end method

.method setEffectiveMotorSpeed(F)V
    .locals 1

    .line 127
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_0

    neg-float p1, p1

    .line 128
    :cond_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->joint:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;->setMotorSpeed(F)V

    return-void
.end method

.method public setFlipperEngaged(Z)V
    .locals 1

    .line 160
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->isFlipperEngaged()Z

    move-result v0

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    .line 161
    iget p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->upspeed:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->downspeed:F

    neg-float p1, p1

    .line 162
    :goto_0
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->setEffectiveMotorSpeed(F)V

    :cond_1
    return-void
.end method

.method public shouldCallTick()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public tick(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 5

    .line 141
    invoke-super {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->tick(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 144
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->getEffectiveMotorSpeed()F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 145
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->isReversed()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->jointDef:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    iget p1, p1, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->lowerAngle:F

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->jointDef:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    iget p1, p1, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->upperAngle:F

    .line 146
    :goto_0
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->joint:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;

    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;->getJointAngle()F

    move-result v1

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v1, p1

    const-wide v3, 0x3fa999999999999aL    # 0.05

    cmpg-double p1, v1, v3

    if-gez p1, :cond_1

    .line 147
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->setEffectiveMotorSpeed(F)V

    :cond_1
    return-void
.end method
