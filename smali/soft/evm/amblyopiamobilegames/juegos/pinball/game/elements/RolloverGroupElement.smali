.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;
.super Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;
.source "RolloverGroupElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;
    }
.end annotation


# static fields
.field public static final COLOR_PROPERTY:Ljava/lang/String; = "color"

.field public static final CYCLE_ON_FLIPPER_PROPERTY:Ljava/lang/String; = "cycleOnFlipper"

.field public static DEFAULT_COLOR_PINBALL:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color; = null

.field public static final IGNORE_BALL_PROPERTY:Ljava/lang/String; = "ignoreBall"

.field public static final POSITION_PROPERTY:Ljava/lang/String; = "position"

.field public static final RADIUS_PROPERTY:Ljava/lang/String; = "radius"

.field public static final RESET_DELAY_PROPERTY:Ljava/lang/String; = "reset"

.field public static final ROLLOVERS_PROPERTY:Ljava/lang/String; = "rollovers"

.field public static final SCORE_PROPERTY:Ljava/lang/String; = "score"

.field public static final TOGGLE_OFF_PROPERTY:Ljava/lang/String; = "toggleOff"


# instance fields
.field activeRollovers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;",
            ">;"
        }
    .end annotation
.end field

.field canToggleOff:Z

.field cycleOnFlipper:Z

.field defaultRadius:F

.field defaultResetDelay:F

.field hitRollovers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;",
            ">;"
        }
    .end annotation
.end field

.field ignoreBall:Z

.field isVisible:Z

.field newActiveRollovers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;",
            ">;"
        }
    .end annotation
.end field

.field rollovers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;",
            ">;"
        }
    .end annotation
.end field

.field rolloversHitOnPreviousTick:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->rolloversHitOnPreviousTick:Ljava/util/List;

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->isVisible:Z

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->hitRollovers:Ljava/util/List;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->newActiveRollovers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public activateFirstUnactivatedRollover()V
    .locals 4

    .line 138
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 140
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;

    .line 141
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 142
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public allRolloversActive()Z
    .locals 2

    .line 132
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public createBodies(Lcom/badlogic/gdx/physics/box2d/World;)V
    .locals 0

    return-void
.end method

.method public cycleRollovers(Z)V
    .locals 5

    .line 232
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->newActiveRollovers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 233
    :goto_0
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    if-eqz p1, :cond_1

    if-nez v1, :cond_0

    .line 234
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, -0x1

    goto :goto_1

    .line 235
    :cond_1
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 236
    :goto_1
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 237
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->newActiveRollovers:Ljava/util/List;

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    :cond_4
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 242
    :goto_2
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->newActiveRollovers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_5

    .line 243
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->newActiveRollovers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public draw(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;)V
    .locals 7

    .line 272
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->isVisible:Z

    if-nez v0, :cond_0

    return-void

    .line 275
    :cond_0
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->DEFAULT_COLOR_PINBALL:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->currentColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 280
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;

    .line 282
    iget-object v4, v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;->color:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;->color:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    goto :goto_1

    :cond_1
    move-object v4, v0

    .line 284
    :goto_1
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 285
    iget v5, v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;->cx:F

    iget v6, v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;->cy:F

    iget v3, v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;->radius:F

    invoke-interface {p1, v5, v6, v3, v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;->fillCircle(FFFLsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V

    goto :goto_2

    .line 288
    :cond_2
    iget v5, v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;->cx:F

    iget v6, v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;->cy:F

    iget v3, v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;->radius:F

    invoke-interface {p1, v5, v6, v3, v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;->frameCircle(FFFLsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
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

    .line 68
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "toggleOff"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->canToggleOff:Z

    .line 69
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "cycleOnFlipper"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->cycleOnFlipper:Z

    .line 70
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "ignoreBall"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->ignoreBall:Z

    const-string p2, "radius"

    .line 71
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->defaultRadius:F

    const-string v0, "reset"

    .line 72
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v1

    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->defaultResetDelay:F

    const-string v1, "rollovers"

    .line 74
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 75
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 76
    new-instance v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;

    invoke-direct {v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;-><init>()V

    .line 77
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "position"

    .line 79
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    .line 80
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v4

    iput v4, v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;->cx:F

    const/4 v4, 0x1

    .line 81
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v3

    iput v3, v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;->cy:F

    .line 84
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v3

    goto :goto_1

    :cond_0
    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->defaultRadius:F

    :goto_1
    iput v3, v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;->radius:F

    const-string v3, "color"

    .line 85
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromList(Ljava/util/List;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    iput-object v3, v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;->color:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    const-string v3, "score"

    .line 86
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    goto :goto_3

    :cond_2
    iget-wide v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->score:J

    :goto_3
    iput-wide v3, v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;->score:J

    .line 87
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v1

    goto :goto_4

    :cond_3
    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->defaultResetDelay:F

    :goto_4
    iput v1, v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;->resetDelay:F

    .line 89
    iget v1, v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;->radius:F

    iget v3, v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;->radius:F

    mul-float/2addr v1, v3

    iput v1, v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;->radiusSquared:F

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public flippersActivated(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;",
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;",
            ">;)V"
        }
    .end annotation

    .line 214
    iget-boolean p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->cycleOnFlipper:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    if-nez p1, :cond_0

    .line 217
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 218
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->isRightFlipper()Z

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->cycleRollovers(Z)V

    :cond_1
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

    .line 98
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIgnoreBall()Z
    .locals 1

    .line 256
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->ignoreBall:Z

    return v0
.end method

.method public getVisible()Z
    .locals 1

    .line 264
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->isVisible:Z

    return v0
.end method

.method public isRolloverActiveAtIndex(I)Z
    .locals 2

    .line 153
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public numberOfRollovers()I
    .locals 1

    .line 149
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected rolloversHitByBalls(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;",
            ">;)",
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->hitRollovers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 110
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;

    move v4, v1

    .line 112
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 113
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;

    .line 114
    invoke-virtual {v5}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    .line 115
    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;->cx:F

    sub-float/2addr v6, v7

    .line 116
    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v7, v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;->cy:F

    sub-float/2addr v5, v7

    mul-float/2addr v6, v6

    mul-float/2addr v5, v5

    add-float/2addr v6, v5

    .line 118
    iget v5, v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;->radiusSquared:F

    cmpg-float v5, v6, v5

    if-gtz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_2
    if-eqz v4, :cond_2

    .line 124
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->hitRollovers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    :cond_3
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->hitRollovers:Ljava/util/List;

    return-object p1
.end method

.method public setAllRolloversActivated(Z)V
    .locals 1

    .line 249
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 251
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setIgnoreBall(Z)V
    .locals 0

    .line 260
    iput-boolean p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->ignoreBall:Z

    return-void
.end method

.method public setRolloverActiveAtIndex(IZ)V
    .locals 1

    .line 157
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;

    if-eqz p2, :cond_0

    .line 159
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_0
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 268
    iput-boolean p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->isVisible:Z

    return-void
.end method

.method public shouldCallTick()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public tick(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 7

    .line 172
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->ignoreBall:Z

    if-eqz v0, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->allRolloversActive()Z

    move-result v0

    .line 175
    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getBalls()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->rolloversHitByBalls(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 177
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;

    .line 178
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->rolloversHitOnPreviousTick:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 181
    :cond_2
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 182
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-wide v4, v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;->score:J

    invoke-virtual {p1, v4, v5}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->addScore(J)V

    .line 184
    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getAudioPlayer()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AudioPlayer;

    move-result-object v4

    invoke-interface {v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AudioPlayer;->playRollover()V

    .line 186
    iget v4, v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;->resetDelay:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 187
    iget v4, v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;->resetDelay:F

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    float-to-long v4, v4

    new-instance v6, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$1;

    invoke-direct {v6, p0, v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$1;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;)V

    invoke-virtual {p1, v4, v5, v6}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->scheduleAction(JLjava/lang/Runnable;)V

    goto :goto_0

    .line 195
    :cond_3
    iget-boolean v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->canToggleOff:Z

    if-eqz v4, :cond_1

    .line 196
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 197
    iget-wide v3, v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;->score:J

    invoke-virtual {p1, v3, v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->addScore(J)V

    .line 198
    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getAudioPlayer()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AudioPlayer;

    move-result-object v3

    invoke-interface {v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AudioPlayer;->playRollover()V

    goto :goto_0

    .line 202
    :cond_4
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->rolloversHitOnPreviousTick:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    .line 203
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 204
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->rolloversHitOnPreviousTick:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    .line 208
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->allRolloversActive()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 209
    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getDelegate()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$Delegate;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$Delegate;->allRolloversInGroupActivated(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;)V

    :cond_6
    return-void
.end method
