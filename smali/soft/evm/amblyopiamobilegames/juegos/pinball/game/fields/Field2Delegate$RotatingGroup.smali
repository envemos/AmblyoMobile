.class Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;
.super Ljava/lang/Object;
.source "Field2Delegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RotatingGroup"
.end annotation


# instance fields
.field angleIncrement:D

.field centerX:D

.field centerY:D

.field currentAngle:D

.field elementIDs:[Ljava/lang/String;

.field radius:D

.field rotationSpeed:D

.field startAngle:D


# direct methods
.method public constructor <init>([Ljava/lang/String;DDDDD)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;->elementIDs:[Ljava/lang/String;

    .line 31
    iput-wide p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;->centerX:D

    .line 32
    iput-wide p4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;->centerY:D

    .line 33
    iput-wide p6, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;->radius:D

    .line 34
    iput-wide p10, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;->rotationSpeed:D

    .line 35
    iput-wide p8, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;->currentAngle:D

    iput-wide p8, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;->startAngle:D

    .line 36
    array-length p1, p1

    int-to-double p1, p1

    const-wide p3, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr p3, p1

    iput-wide p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;->angleIncrement:D

    return-void
.end method

.method public static create(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;[Ljava/lang/String;DDD)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;
    .locals 13

    const/4 v0, 0x0

    .line 44
    aget-object v1, p1, v0

    move-object v2, p0

    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->getBodies()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Body;

    .line 46
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 47
    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-double v1, v1

    sub-double/2addr v1, p2

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-double v3, v3

    sub-double v3, v3, p4

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    .line 48
    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-double v1, v1

    sub-double v1, v1, p4

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-double v3, v0

    sub-double/2addr v3, p2

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    .line 49
    new-instance v12, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;

    move-object v0, v12

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v10, p6

    invoke-direct/range {v0 .. v11}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;-><init>([Ljava/lang/String;DDDDD)V

    return-object v12
.end method


# virtual methods
.method public applyRotation(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;D)V
    .locals 9

    .line 53
    iget-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;->currentAngle:D

    iget-wide v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;->rotationSpeed:D

    mul-double/2addr p2, v2

    add-double/2addr v0, p2

    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;->currentAngle:D

    const-wide p2, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v2, v0, p2

    if-lez v2, :cond_0

    sub-double/2addr v0, p2

    .line 54
    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;->currentAngle:D

    .line 55
    :cond_0
    iget-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;->currentAngle:D

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    add-double/2addr v0, p2

    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;->currentAngle:D

    :cond_1
    const/4 p2, 0x0

    move p3, p2

    .line 56
    :goto_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;->elementIDs:[Ljava/lang/String;

    array-length v1, v0

    if-ge p3, v1, :cond_2

    .line 57
    iget-wide v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;->currentAngle:D

    iget-wide v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;->angleIncrement:D

    int-to-double v5, p3

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    .line 59
    aget-object v0, v0, p3

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->getBodies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Body;

    .line 61
    iget-wide v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;->centerX:D

    iget-wide v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;->radius:D

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    .line 62
    iget-wide v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;->centerY:D

    iget-wide v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field2Delegate$RotatingGroup;->radius:D

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v7, v1

    add-double/2addr v5, v7

    double-to-float v1, v3

    double-to-float v2, v5

    .line 63
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngle()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/Body;->setTransform(FFF)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
