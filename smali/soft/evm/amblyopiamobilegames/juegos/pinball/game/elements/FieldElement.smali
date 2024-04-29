.class public abstract Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;
.super Ljava/lang/Object;
.source "FieldElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement$DependencyNotAvailableException;
    }
.end annotation


# static fields
.field public static final CLASS_PROPERTY:Ljava/lang/String; = "class"

.field public static final COLOR_PROPERTY:Ljava/lang/String; = "color"

.field public static DEFAULT_WALL_COLOR_PINBALL:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color; = null

.field public static final ID_PROPERTY:Ljava/lang/String; = "id"

.field public static final SCORE_PROPERTY:Ljava/lang/String; = "score"


# instance fields
.field box2dWorld:Lcom/badlogic/gdx/physics/box2d/World;

.field elementID:Ljava/lang/String;

.field flashCounter:I

.field initialColor:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

.field newColor:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

.field parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field score:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->flashCounter:I

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->score:J

    return-void
.end method

.method public static createFromParameters(Ljava/util/Map;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;Lcom/badlogic/gdx/physics/box2d/World;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;",
            "Lcom/badlogic/gdx/physics/box2d/World;",
            ")",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement$DependencyNotAvailableException;
        }
    .end annotation

    const-string v0, "class"

    .line 66
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x2e

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "soft.evm.amblyopiamobilegames.juegos.pinball.game.elements."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 84
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    invoke-virtual {v0, p0, p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->initialize(Ljava/util/Map;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;Lcom/badlogic/gdx/physics/box2d/World;)V

    return-object v0

    :catch_0
    move-exception p0

    .line 90
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 87
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 79
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 67
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "class not specified for element: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract createBodies(Lcom/badlogic/gdx/physics/box2d/World;)V
.end method

.method protected currentColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;
    .locals 1

    .line 254
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->newColor:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    if-eqz v0, :cond_0

    :goto_0
    move-object p1, v0

    goto :goto_1

    .line 256
    :cond_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->initialColor:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 257
    :cond_1
    :goto_1
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->flashCounter:I

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->inverted()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public abstract draw(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;)V
.end method

.method public abstract finishCreateElement(Ljava/util/Map;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;)V
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement$DependencyNotAvailableException;
        }
    .end annotation
.end method

.method public flashForFrames(I)V
    .locals 0

    .line 150
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->flashCounter:I

    return-void
.end method

.method public flippersActivated(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;",
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract getBodies()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation
.end method

.method public getBooleanParameterValueForKey(Ljava/lang/String;)Z
    .locals 4

    .line 231
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 232
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Number;

    .line 233
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getElementId()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->elementID:Ljava/lang/String;

    return-object v0
.end method

.method public getFloatArrayParameterValueForKey(Ljava/lang/String;)[F
    .locals 3

    .line 222
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 223
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 224
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 225
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getFloatParameterValueForKey(Ljava/lang/String;)F
    .locals 1

    .line 205
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p1

    return p1
.end method

.method public getIntParameterValueForKey(Ljava/lang/String;)I
    .locals 1

    .line 210
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 211
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public getLongParameterValueForKey(Ljava/lang/String;)J
    .locals 2

    .line 216
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 217
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getRawParameterValueForKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 200
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getScore()J
    .locals 2

    .line 242
    iget-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->score:J

    return-wide v0
.end method

.method public handleCollision(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;Lcom/badlogic/gdx/physics/box2d/Body;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 0

    return-void
.end method

.method public hasParameterKey(Ljava/lang/String;)Z
    .locals 1

    .line 196
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public initialize(Ljava/util/Map;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;Lcom/badlogic/gdx/physics/box2d/World;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;",
            "Lcom/badlogic/gdx/physics/box2d/World;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement$DependencyNotAvailableException;
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->parameters:Ljava/util/Map;

    .line 104
    iput-object p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->box2dWorld:Lcom/badlogic/gdx/physics/box2d/World;

    const-string v0, "id"

    .line 105
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->elementID:Ljava/lang/String;

    const-string v0, "color"

    .line 108
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 110
    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromList(Ljava/util/List;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->initialColor:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    :cond_0
    const-string v0, "score"

    .line 113
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->score:J

    .line 117
    :cond_1
    invoke-virtual {p0, p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->finishCreateElement(Ljava/util/Map;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;)V

    .line 118
    invoke-virtual {p0, p3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->createBodies(Lcom/badlogic/gdx/physics/box2d/World;)V

    return-void
.end method

.method public setNewColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->newColor:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    return-void
.end method

.method public shouldCallTick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public tick(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 0

    .line 136
    iget p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->flashCounter:I

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->flashCounter:I

    :cond_0
    return-void
.end method
