.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;
.super Ljava/lang/Object;
.source "Ball.java"


# instance fields
.field private final body:Lcom/badlogic/gdx/physics/box2d/Body;

.field private primaryColor:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

.field private secondaryColor:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;


# direct methods
.method private constructor <init>(Lcom/badlogic/gdx/physics/box2d/Body;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 23
    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->primaryColor:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    .line 24
    iput-object p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->secondaryColor:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    return-void
.end method

.method public static create(Lcom/badlogic/gdx/physics/box2d/World;FFFLsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-static {p0, p1, p2, p3, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/Box2DFactory;->createCircle(Lcom/badlogic/gdx/physics/box2d/World;FFFZ)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object p0

    const/4 p1, 0x1

    .line 30
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->setBullet(Z)V

    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float p1, p3, p1

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/physics/box2d/Fixture;

    const/high16 p2, 0x3e800000    # 0.25f

    mul-float/2addr p3, p3

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/physics/box2d/Fixture;->setDensity(F)V

    .line 35
    invoke-virtual {p0}, Lcom/badlogic/gdx/physics/box2d/Body;->resetMassData()V

    .line 37
    :cond_0
    new-instance p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;

    invoke-direct {p1, p0, p4, p5}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;-><init>(Lcom/badlogic/gdx/physics/box2d/Body;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V

    return-object p1
.end method


# virtual methods
.method public applyLinearImpulse(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3

    .line 62
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getWorldCenter()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->applyLinearImpulse(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Z)V

    return-void
.end method

.method public draw(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;)V
    .locals 6

    .line 41
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Fixture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getShape()Lcom/badlogic/gdx/physics/box2d/Shape;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/CircleShape;

    .line 42
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    .line 43
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->getRadius()F

    move-result v0

    .line 44
    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->primaryColor:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    invoke-interface {p1, v2, v3, v0, v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;->fillCircle(FFFLsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V

    .line 47
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngle()F

    move-result v2

    .line 48
    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v5

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    .line 49
    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v2

    mul-float/2addr v4, v2

    add-float/2addr v1, v4

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v0, v2

    .line 50
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->secondaryColor:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    invoke-interface {p1, v3, v1, v0, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;->fillCircle(FFFLsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V

    return-void
.end method

.method public getBody()Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 1

    .line 66
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    return-object v0
.end method

.method public getLinearVelocity()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .line 58
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .line 54
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryColor()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;
    .locals 1

    .line 70
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->primaryColor:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    return-object v0
.end method

.method public getSecondaryColor()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;
    .locals 1

    .line 77
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->secondaryColor:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    return-object v0
.end method

.method public setPrimaryColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->primaryColor:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    return-void
.end method

.method public setSecondaryColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->secondaryColor:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    return-void
.end method
