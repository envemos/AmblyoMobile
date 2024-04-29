.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;
.super Ljava/lang/Object;
.source "FieldLayout.java"


# static fields
.field static final BALL_COLOR_PROPERTY:Ljava/lang/String; = "ballcolor"

.field static final BALL_RADIUS_PROPERTY:Ljava/lang/String; = "ballradius"

.field static final DEFAULT_SECONDARY_BALL_COLOR_PINBALL:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

.field static final DELEGATE_PROPERTY:Ljava/lang/String; = "delegate"

.field static final ELEMENTS_PROPERTY:Ljava/lang/String; = "elements"

.field static final GRAVITY_PROPERTY:Ljava/lang/String; = "gravity"

.field static final HEIGHT_PROPERTY:Ljava/lang/String; = "height"

.field static final LAUNCH_DEAD_ZONE_PROPERTY:Ljava/lang/String; = "launchDeadZone"

.field static final LAUNCH_POSITION_PROPERTY:Ljava/lang/String; = "launchPosition"

.field static final LAUNCH_RANDOM_VELOCITY_PROPERTY:Ljava/lang/String; = "launchVelocityRandomDelta"

.field static final LAUNCH_VELOCITY_PROPERTY:Ljava/lang/String; = "launchVelocity"

.field static final NUM_BALLS_PROPERTY:Ljava/lang/String; = "numballs"

.field static final SECONDARY_BALL_COLOR_PROPERTY:Ljava/lang/String; = "secondaryBallColor"

.field static final TARGET_TIME_RATIO_PROPERTY:Ljava/lang/String; = "targetTimeRatio"

.field static final VARIABLES_PROPERTY:Ljava/lang/String; = "variables"

.field static final WIDTH_PROPERTY:Ljava/lang/String; = "width"

.field static _context:Landroid/content/Context; = null

.field static _layoutMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field static _numLevels:I = -0x1

.field static final defaultBallColor:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;


# instance fields
.field RAND:Ljava/util/Random;

.field allParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field final ballColor:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

.field ballRadius:F

.field fieldElements:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;

.field gravity:F

.field height:F

.field launchDeadZoneRect:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field launchPosition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field launchVelocity:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field launchVelocityRandomDelta:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field numberOfBalls:I

.field final secondaryBallColor:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

.field targetTimeRatio:F

.field width:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->_layoutMap:Ljava/util/Map;

    .line 127
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_vago()I

    move-result v0

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AmblyoMobileColor;->valueOf(I)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->defaultBallColor:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    .line 129
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_vago()I

    move-result v0

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AmblyoMobileColor;->valueOf(I)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->DEFAULT_SECONDARY_BALL_COLOR_PINBALL:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->RAND:Ljava/util/Random;

    .line 119
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_vago()I

    move-result v0

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AmblyoMobileColor;->valueOf(I)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->ballColor:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    .line 120
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_vago()I

    move-result v0

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AmblyoMobileColor;->valueOf(I)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->secondaryBallColor:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    return-void
.end method

.method private colorFromMap(Ljava/util/Map;Ljava/lang/String;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;",
            ")",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;"
        }
    .end annotation

    .line 186
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 187
    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromList(Ljava/util/List;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object p3

    :cond_0
    return-object p3
.end method

.method private createFieldElements(Ljava/util/Map;Lcom/badlogic/gdx/physics/box2d/World;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/badlogic/gdx/physics/box2d/World;",
            ")",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;"
        }
    .end annotation

    .line 138
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;

    invoke-direct {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;-><init>()V

    const-string v1, "variables"

    .line 141
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 143
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 144
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;->setVariable(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 148
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "elements"

    .line 150
    invoke-static {p1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->listForKey(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 151
    instance-of v3, v2, Ljava/util/Map;

    if-nez v3, :cond_1

    goto :goto_1

    .line 153
    :cond_1
    check-cast v2, Ljava/util/Map;

    .line 155
    :try_start_0
    invoke-static {v2, v0, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->createFromParameters(Ljava/util/Map;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;Lcom/badlogic/gdx/physics/box2d/World;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v3

    invoke-virtual {v0, v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;->addElement(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;)V
    :try_end_0
    .catch Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement$DependencyNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 158
    :catch_0
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static layoutForLevel(ILcom/badlogic/gdx/physics/box2d/World;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;
    .locals 2

    .line 101
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->_layoutMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 103
    invoke-static {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->readFieldLayout(I)Ljava/util/Map;

    move-result-object v0

    .line 104
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->_layoutMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_0
    new-instance p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;

    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;-><init>()V

    .line 107
    invoke-virtual {p0, v0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->initFromLevel(Ljava/util/Map;Lcom/badlogic/gdx/physics/box2d/World;)V

    return-object p0
.end method

.method static listForKey(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 133
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 134
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static numberOfLevels()I
    .locals 5

    .line 64
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->_numLevels:I

    if-lez v0, :cond_0

    return v0

    .line 66
    :cond_0
    :try_start_0
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "tables"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 68
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".json"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_0

    .line 71
    :cond_1
    sput v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->_numLevels:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "FieldLayout"

    const-string v2, "Error reading tables directory"

    .line 74
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :goto_1
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->_numLevels:I

    return v0
.end method

.method static readFieldLayout(I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 82
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tables/table"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ".json"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 83
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 84
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/JSONUtils;->mapFromJSONString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 96
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 60
    sput-object p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->_context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getBallColor()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;
    .locals 1

    .line 209
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->ballColor:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    return-object v0
.end method

.method public getBallRadius()F
    .locals 1

    .line 205
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->ballRadius:F

    return v0
.end method

.method public getDelegateClassName()Ljava/lang/String;
    .locals 2

    .line 266
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->allParameters:Ljava/util/Map;

    const-string v1, "delegate"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFieldElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->fieldElements:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;->getAllElements()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFlipperElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->fieldElements:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;->getFlipperElements()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGravity()F
    .locals 1

    .line 262
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->gravity:F

    return v0
.end method

.method public getHeight()F
    .locals 1

    .line 248
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->height:F

    return v0
.end method

.method public getLaunchDeadZone()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->launchDeadZoneRect:Ljava/util/List;

    return-object v0
.end method

.method public getLaunchPosition()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->launchPosition:Ljava/util/List;

    return-object v0
.end method

.method public getLaunchVelocity()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->launchVelocity:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 231
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->launchVelocity:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 233
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->launchVelocityRandomDelta:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    .line 234
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->launchVelocityRandomDelta:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-lez v4, :cond_0

    .line 235
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->launchVelocityRandomDelta:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->RAND:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    mul-float/2addr v4, v7

    add-float/2addr v0, v4

    .line 237
    :cond_0
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->launchVelocityRandomDelta:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v4, v6

    if-lez v4, :cond_1

    .line 238
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->launchVelocityRandomDelta:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->RAND:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    mul-float/2addr v4, v6

    add-float/2addr v2, v4

    :cond_1
    new-array v4, v5, [Ljava/lang/Float;

    .line 241
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLeftFlipperElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;",
            ">;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->fieldElements:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;->getLeftFlipperElements()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfBalls()I
    .locals 1

    .line 217
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->numberOfBalls:I

    return v0
.end method

.method public getRightFlipperElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->fieldElements:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;->getRightFlipperElements()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryBallColor()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;
    .locals 1

    .line 213
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->secondaryBallColor:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    return-object v0
.end method

.method public getTargetTimeRatio()F
    .locals 1

    .line 257
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->targetTimeRatio:F

    return v0
.end method

.method public getValueWithKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 270
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->fieldElements:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;

    invoke-virtual {v0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;->getVariable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getWidth()F
    .locals 1

    .line 245
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->width:F

    return v0
.end method

.method initFromLevel(Ljava/util/Map;Lcom/badlogic/gdx/physics/box2d/World;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/badlogic/gdx/physics/box2d/World;",
            ")V"
        }
    .end annotation

    const-string v0, "width"

    .line 166
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;F)F

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->width:F

    const-string v0, "height"

    .line 167
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;F)F

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->height:F

    const-string v0, "gravity"

    .line 168
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;F)F

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->gravity:F

    const-string v0, "targetTimeRatio"

    .line 169
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->targetTimeRatio:F

    const-string v0, "numballs"

    .line 170
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asInt(Ljava/lang/Object;I)I

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->numberOfBalls:I

    const-string v0, "ballradius"

    .line 171
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;F)F

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->ballRadius:F

    const-string v0, "launchPosition"

    .line 174
    invoke-static {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->listForKey(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloatList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->launchPosition:Ljava/util/List;

    const-string v0, "launchVelocity"

    .line 175
    invoke-static {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->listForKey(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloatList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->launchVelocity:Ljava/util/List;

    const-string v0, "launchVelocityRandomDelta"

    .line 177
    invoke-static {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->listForKey(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 176
    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloatList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->launchVelocityRandomDelta:Ljava/util/List;

    const-string v0, "launchDeadZone"

    .line 178
    invoke-static {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->listForKey(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloatList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->launchDeadZoneRect:Ljava/util/List;

    .line 180
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->allParameters:Ljava/util/Map;

    .line 181
    invoke-direct {p0, p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->createFieldElements(Ljava/util/Map;Lcom/badlogic/gdx/physics/box2d/World;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->fieldElements:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElementCollection;

    return-void
.end method
