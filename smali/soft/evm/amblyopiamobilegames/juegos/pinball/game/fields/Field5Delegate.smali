.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;
.super Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/BaseFieldDelegate;
.source "Field5Delegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;,
        Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;
    }
.end annotation


# static fields
.field private static final BALL_COLOR_VALUES:[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;

.field private static BALL_PRIMARY_COLORS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;",
            ">;"
        }
    .end annotation
.end field

.field private static BALL_SECONDARY_COLORS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;",
            ">;"
        }
    .end annotation
.end field

.field private static DISABLED_ROLLOVER_COLORS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;",
            ">;"
        }
    .end annotation
.end field

.field private static final IGNORE_BALL_COLOR:Z = false

.field private static final JACKPOT_BASE_SCORE:J = 0xc350L

.field private static final RAMP_BASE_SCORE:J = 0x1388L

.field private static final TAU:D = 6.283185307179586

.field private static WALL_COLORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private centerLinesByColor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;",
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;",
            ">;>;"
        }
    .end annotation
.end field

.field private centerRolloversByColor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;",
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;",
            ">;>;"
        }
    .end annotation
.end field

.field private extraBallBarriers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;",
            ">;"
        }
    .end annotation
.end field

.field private extraBallRollover:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

.field private launchBarrier:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

.field private multiballJackpotCount:I

.field private multiballStatus:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;

.field previousSensorIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rampBonuses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private triangleCenterRollover:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

.field private triangleCenterX:D

.field private triangleCenterY:D

.field private triangleRadius:D

.field private triangleRotationAngle:D

.field private triangleRotationBaseSpeed:D

.field private triangleRotationSpeedMultiplier:D

.field private triangleWalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 27
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;->values()[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->BALL_COLOR_VALUES:[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;

    const/16 v0, 0x66

    const/16 v1, 0x88

    const/16 v2, 0xee

    .line 46
    invoke-static {v0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    .line 47
    invoke-static {v2, v1, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v1

    const/16 v2, 0xcc

    const/16 v4, 0x77

    .line 48
    invoke-static {v2, v2, v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v5

    const/16 v6, 0xdd

    .line 49
    invoke-static {v4, v6, v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v4

    .line 45
    invoke-static {v3, v1, v5, v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->buildBallColorMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->BALL_PRIMARY_COLORS:Ljava/util/Map;

    const/16 v1, 0x44

    .line 52
    invoke-static {v1, v0, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v1

    .line 53
    invoke-static {v2, v0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    const/16 v4, 0xaa

    const/16 v5, 0x55

    .line 54
    invoke-static {v4, v4, v5}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v4

    const/16 v6, 0xbb

    .line 55
    invoke-static {v5, v6, v5}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v5

    .line 51
    invoke-static {v1, v3, v4, v5}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->buildBallColorMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->BALL_SECONDARY_COLORS:Ljava/util/Map;

    const/4 v1, 0x0

    const/16 v3, 0xff

    .line 58
    invoke-static {v1, v0, v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    .line 59
    invoke-static {v2, v1, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v4

    .line 60
    invoke-static {v2, v2, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v5

    .line 61
    invoke-static {v1, v2, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v2

    .line 57
    invoke-static {v3, v4, v5, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->buildBallColorMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->WALL_COLORS:Ljava/util/Map;

    const/16 v2, 0x33

    .line 64
    invoke-static {v1, v2, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v2

    .line 65
    invoke-static {v0, v1, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    .line 66
    invoke-static {v0, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v4

    .line 67
    invoke-static {v1, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v0

    .line 63
    invoke-static {v2, v3, v4, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->buildBallColorMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->DISABLED_ROLLOVER_COLORS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 22
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/BaseFieldDelegate;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 80
    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleRotationSpeedMultiplier:D

    .line 81
    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleRotationBaseSpeed:D

    const-wide/16 v0, 0x0

    .line 82
    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleRotationAngle:D

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 83
    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleCenterX:D

    const-wide v0, 0x4032dc2900000000L    # 18.860000610351562

    .line 84
    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleCenterY:D

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 87
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    div-double/2addr v2, v0

    iput-wide v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleRadius:D

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->previousSensorIds:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->unusedBallColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;)V
    .locals 0

    .line 22
    invoke-static {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->setBallColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;)V

    return-void
.end method

.method static synthetic access$200(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->updateCenterRollovers(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    return-void
.end method

.method static synthetic access$302(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;
    .locals 0

    .line 22
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->multiballStatus:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;

    return-object p1
.end method

.method private static buildBallColorMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;)",
            "Ljava/util/Map<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;",
            "TT;>;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;->BLUE:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;->RED:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;->YELLOW:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;->GREEN:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;

    invoke-interface {v0, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private checkForRamp(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;Ljava/lang/String;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;)V
    .locals 2

    .line 185
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->previousSensorIds:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 186
    invoke-direct {p0, p1, p4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->hasBallWithColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 187
    invoke-static {p2, p4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->setBallColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;)V

    .line 188
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->updateCenterRollovers(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 190
    :cond_0
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->rampBonuses:Ljava/util/Map;

    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 p2, p2, 0x64

    .line 191
    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getBalls()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 p4, 0x1

    if-le p3, p4, :cond_1

    mul-int/lit8 p2, p2, 0x2

    :cond_1
    const-wide/16 p3, 0x32

    int-to-long v0, p2

    mul-long/2addr v0, p3

    .line 195
    invoke-virtual {p1, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->addScore(J)V

    .line 196
    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getAudioPlayer()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AudioPlayer;

    move-result-object p1

    invoke-interface {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AudioPlayer;->playRollover()V

    :cond_2
    return-void
.end method

.method private doExtraBall(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 3

    .line 264
    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->addExtraBall()V

    const-string v0, "Extra Ball!"

    const-wide/16 v1, 0xbb8

    .line 265
    invoke-virtual {p1, v0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    return-void
.end method

.method private endMultiball(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 257
    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleRotationSpeedMultiplier:D

    .line 258
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleCenterRollover:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setRolloverActiveAtIndex(IZ)V

    .line 259
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->resetCenter(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 260
    sget-object p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;->NOT_READY:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->multiballStatus:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;

    return-void
.end method

.method private getBallColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;
    .locals 5

    .line 104
    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->getPrimaryColor()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object p1

    .line 105
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->BALL_COLOR_VALUES:[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 106
    sget-object v4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->BALL_PRIMARY_COLORS:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private hasBallWithColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;)Z
    .locals 3

    .line 114
    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getBalls()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 115
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 116
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;

    invoke-direct {p0, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->getBallColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;

    move-result-object v2

    if-ne p2, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private incrementRampBonus(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;Ljava/lang/String;)V
    .locals 2

    .line 212
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->rampBonuses:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " ramp +"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->rampBonuses:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "%"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, p2, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    return-void
.end method

.method private resetCenter(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 7

    .line 201
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->BALL_COLOR_VALUES:[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 202
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->centerRolloversByColor:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move v5, v2

    .line 203
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 204
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    invoke-virtual {v6, v2, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setRolloverActiveAtIndex(IZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 207
    :cond_1
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->updateCenterRollovers(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 208
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->updateCenterLines(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    return-void
.end method

.method private resetExtraBallIfNeeded()V
    .locals 3

    .line 269
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->extraBallRollover:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->allRolloversActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->extraBallRollover:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setRolloverActiveAtIndex(IZ)V

    move v0, v1

    .line 271
    :goto_0
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->extraBallBarriers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 272
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->extraBallBarriers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    invoke-virtual {v2, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private restoreLeftBallSaver(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 1

    const-string v0, "BallSaver-left"

    .line 217
    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object p1

    check-cast p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    return-void
.end method

.method private restoreRightBallSaver(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 1

    const-string v0, "BallSaver-right"

    .line 221
    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object p1

    check-cast p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    return-void
.end method

.method private static setBallColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;)V
    .locals 1

    .line 99
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->BALL_PRIMARY_COLORS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->setPrimaryColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V

    .line 100
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->BALL_SECONDARY_COLORS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->setSecondaryColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V

    return-void
.end method

.method private startMultiball(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 225
    :goto_0
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleWalls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 226
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleWalls:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    invoke-virtual {v2, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v1, -0x4000000000000000L    # -2.0

    .line 228
    iput-wide v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleRotationSpeedMultiplier:D

    .line 229
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->resetCenter(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 230
    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getBalls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;

    invoke-virtual {p1, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->removeBallWithoutBallLoss(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)V

    .line 231
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->restoreLeftBallSaver(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 232
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->restoreRightBallSaver(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 234
    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$1;

    invoke-direct {v1, p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$1;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 243
    sget-object v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;->STARTING:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;

    iput-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->multiballStatus:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;

    .line 244
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->multiballJackpotCount:I

    const-wide/16 v2, 0x3e8

    .line 245
    invoke-virtual {p1, v2, v3, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->scheduleAction(JLjava/lang/Runnable;)V

    const-wide/16 v2, 0xfa0

    .line 246
    invoke-virtual {p1, v2, v3, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->scheduleAction(JLjava/lang/Runnable;)V

    const-wide/16 v2, 0x1b58

    .line 247
    invoke-virtual {p1, v2, v3, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->scheduleAction(JLjava/lang/Runnable;)V

    const-wide/16 v2, 0x2710

    .line 248
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$2;

    invoke-direct {v0, p0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$2;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v2, v3, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->scheduleAction(JLjava/lang/Runnable;)V

    return-void
.end method

.method private unusedBallColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;
    .locals 5

    .line 124
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->BALL_COLOR_VALUES:[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 125
    invoke-direct {p0, p1, v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->hasBallWithColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;)Z

    move-result v4

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private updateCenterLines(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 11

    .line 156
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->BALL_COLOR_VALUES:[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v3

    :goto_0
    if-ge v4, v1, :cond_4

    aget-object v6, v0, v4

    .line 157
    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->centerRolloversByColor:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 158
    iget-object v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->centerLinesByColor:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move v8, v2

    .line 159
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 160
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    .line 161
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v3

    if-ne v8, v10, :cond_0

    move v10, v2

    goto :goto_2

    :cond_0
    add-int/lit8 v10, v8, 0x1

    :goto_2
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    .line 162
    invoke-virtual {v9}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->allRolloversActive()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v10}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->allRolloversActive()Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v3

    goto :goto_3

    :cond_1
    move v9, v2

    .line 163
    :goto_3
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    invoke-virtual {v10, v9}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setVisible(Z)V

    if-eqz v5, :cond_2

    if-eqz v9, :cond_2

    move v5, v3

    goto :goto_4

    :cond_2
    move v5, v2

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_7

    .line 168
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->multiballStatus:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;->ACTIVE:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;

    const-wide/16 v4, 0xbb8

    if-ne v0, v1, :cond_6

    .line 169
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->multiballJackpotCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->multiballJackpotCount:I

    if-le v0, v3, :cond_5

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->multiballJackpotCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_5
    const-string v0, ""

    .line 171
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Jackpot!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4, v5}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    const-wide/32 v0, 0xc350

    .line 172
    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->multiballJackpotCount:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->addScore(J)V

    .line 175
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->resetCenter(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    goto :goto_6

    .line 177
    :cond_6
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->multiballStatus:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;->NOT_READY:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;

    if-ne v0, v1, :cond_7

    const-string v0, "Shoot the pyramid!"

    .line 178
    invoke-virtual {p1, v0, v4, v5}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    .line 179
    sget-object p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;->READY:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->multiballStatus:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;

    :cond_7
    :goto_6
    return-void
.end method

.method private updateCenterRollovers(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 11

    .line 133
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->BALL_COLOR_VALUES:[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 134
    invoke-direct {p0, p1, v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->hasBallWithColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    move v5, v2

    goto :goto_1

    :cond_0
    move v5, v6

    .line 135
    :goto_1
    iget-object v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->centerRolloversByColor:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    move v8, v2

    .line 136
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 137
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    xor-int/lit8 v10, v5, 0x1

    .line 138
    invoke-virtual {v9, v10}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setIgnoreBall(Z)V

    if-eqz v5, :cond_1

    .line 140
    invoke-virtual {v9, v6}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setVisible(Z)V

    .line 141
    sget-object v10, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->WALL_COLORS:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    invoke-virtual {v9, v10}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setNewColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V

    goto :goto_3

    .line 144
    :cond_1
    invoke-virtual {v9}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->allRolloversActive()Z

    move-result v10

    .line 145
    invoke-virtual {v9, v10}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setVisible(Z)V

    if-eqz v10, :cond_2

    .line 147
    sget-object v10, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->DISABLED_ROLLOVER_COLORS:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    invoke-virtual {v9, v10}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setNewColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V

    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public allDropTargetsInGroupHit(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/DropTargetGroupElement;)V
    .locals 3

    .line 371
    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/DropTargetGroupElement;->getElementId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DropTargetLeftSave"

    .line 372
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x5dc

    if-eqz v0, :cond_0

    .line 373
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->restoreLeftBallSaver(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    const-string p2, "Left Save Enabled"

    .line 374
    invoke-virtual {p1, p2, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const-string v0, "DropTargetRightSave"

    .line 376
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->restoreRightBallSaver(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    const-string p2, "Right Save Enabled"

    .line 378
    invoke-virtual {p1, p2, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const-string v0, "DropTargets_BlueRamp"

    .line 380
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 381
    sget-object p2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;->BLUE:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;

    const-string v0, "Blue"

    invoke-direct {p0, p1, p2, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->incrementRampBonus(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "DropTargets_RedRamp"

    .line 383
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 384
    sget-object p2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;->RED:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;

    const-string v0, "Red"

    invoke-direct {p0, p1, p2, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->incrementRampBonus(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "DropTargets_YellowRamp"

    .line 386
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 387
    sget-object p2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;->YELLOW:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;

    const-string v0, "Yellow"

    invoke-direct {p0, p1, p2, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->incrementRampBonus(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "DropTargets_GreenRamp"

    .line 389
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 390
    sget-object p2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;->GREEN:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;

    const-string v0, "Green"

    invoke-direct {p0, p1, p2, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->incrementRampBonus(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public allRolloversInGroupActivated(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;)V
    .locals 3

    .line 395
    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->getElementId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlipperRollovers"

    .line 396
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->incrementScoreMultiplier()V

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getScoreMultiplier()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x Multiplier"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    const/4 v0, 0x0

    .line 399
    invoke-virtual {p2, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setAllRolloversActivated(Z)V

    goto :goto_0

    .line 401
    :cond_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleCenterRollover:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    if-ne p2, v0, :cond_1

    .line 403
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->multiballStatus:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;

    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;->READY:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;

    if-ne p2, v0, :cond_2

    .line 404
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->startMultiball(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    goto :goto_0

    .line 407
    :cond_1
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->extraBallRollover:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    if-ne p2, v0, :cond_2

    .line 408
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->doExtraBall(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 410
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->updateCenterLines(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    return-void
.end method

.method public ballInSensorRange(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/SensorElement;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)V
    .locals 3

    .line 345
    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/SensorElement;->getElementId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LaunchBarrierSensor"

    .line 346
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->launchBarrier:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "LaunchBarrierRetract"

    .line 349
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->launchBarrier:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "RampSensor_OuterLeftTop"

    .line 352
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "RampSensor_OuterRightTop"

    if-eqz v1, :cond_2

    .line 353
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;->GREEN:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;

    invoke-direct {p0, p1, p3, v2, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->checkForRamp(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;Ljava/lang/String;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;)V

    goto :goto_0

    .line 355
    :cond_2
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 356
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;->BLUE:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;

    invoke-direct {p0, p1, p3, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->checkForRamp(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;Ljava/lang/String;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;)V

    goto :goto_0

    :cond_3
    const-string v0, "RampSensor_LeftTop"

    .line 358
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 359
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;->RED:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;

    const-string v1, "RampSensor_LeftMiddle"

    invoke-direct {p0, p1, p3, v1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->checkForRamp(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;Ljava/lang/String;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;)V

    goto :goto_0

    :cond_4
    const-string v0, "RampSensor_RightTop"

    .line 361
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 362
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;->YELLOW:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;

    const-string v1, "RampSensor_RightMiddle"

    invoke-direct {p0, p1, p3, v1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->checkForRamp(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;Ljava/lang/String;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$BallColor;)V

    goto :goto_0

    :cond_5
    const-string p1, "Sensor_ExtraBallExit"

    .line 364
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 365
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->resetExtraBallIfNeeded()V

    .line 367
    :cond_6
    :goto_0
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->previousSensorIds:Ljava/util/Map;

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public ballLost(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 0

    .line 340
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->updateCenterRollovers(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 341
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->previousSensorIds:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public gameStarted(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 10

    const-string v0, "LaunchBarrier"

    .line 278
    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v0

    check-cast v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->launchBarrier:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 280
    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleRotationAngle:D

    const/4 v0, 0x3

    new-array v1, v0, [Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const-string v2, "TriangleWall1"

    .line 282
    invoke-virtual {p1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const/4 v3, 0x0

    .line 325
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v2, v1, v3

    const-string v2, "TriangleWall2"

    .line 283
    invoke-virtual {p1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const/4 v5, 0x1

    aput-object v2, v1, v5

    const-string v2, "TriangleWall3"

    .line 284
    invoke-virtual {p1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const/4 v6, 0x2

    aput-object v2, v1, v6

    .line 281
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleWalls:Ljava/util/List;

    const-string v1, "TriangleCenter"

    .line 285
    invoke-virtual {p1, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v1

    check-cast v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleCenterRollover:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    .line 287
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->previousSensorIds:Ljava/util/Map;

    new-array v1, v0, [Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    const-string v2, "CenterRollover_Blue_1"

    .line 291
    invoke-virtual {p1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    aput-object v2, v1, v3

    const-string v2, "CenterRollover_Blue_2"

    .line 292
    invoke-virtual {p1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    aput-object v2, v1, v5

    const-string v2, "CenterRollover_Blue_3"

    .line 293
    invoke-virtual {p1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    aput-object v2, v1, v6

    .line 290
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-array v2, v0, [Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    const-string v7, "CenterRollover_Red_1"

    .line 295
    invoke-virtual {p1, v7}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v7

    check-cast v7, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    aput-object v7, v2, v3

    const-string v7, "CenterRollover_Red_2"

    .line 296
    invoke-virtual {p1, v7}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v7

    check-cast v7, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    aput-object v7, v2, v5

    const-string v7, "CenterRollover_Red_3"

    .line 297
    invoke-virtual {p1, v7}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v7

    check-cast v7, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    aput-object v7, v2, v6

    .line 294
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-array v7, v0, [Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    const-string v8, "CenterRollover_Yellow_1"

    .line 299
    invoke-virtual {p1, v8}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v8

    check-cast v8, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    aput-object v8, v7, v3

    const-string v8, "CenterRollover_Yellow_2"

    .line 300
    invoke-virtual {p1, v8}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v8

    check-cast v8, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    aput-object v8, v7, v5

    const-string v8, "CenterRollover_Yellow_3"

    .line 301
    invoke-virtual {p1, v8}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v8

    check-cast v8, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    aput-object v8, v7, v6

    .line 298
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    new-array v8, v0, [Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    const-string v9, "CenterRollover_Green_1"

    .line 303
    invoke-virtual {p1, v9}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v9

    check-cast v9, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    aput-object v9, v8, v3

    const-string v9, "CenterRollover_Green_2"

    .line 304
    invoke-virtual {p1, v9}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v9

    check-cast v9, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    aput-object v9, v8, v5

    const-string v9, "CenterRollover_Green_3"

    .line 305
    invoke-virtual {p1, v9}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v9

    check-cast v9, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    aput-object v9, v8, v6

    .line 302
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 289
    invoke-static {v1, v2, v7, v8}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->buildBallColorMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->centerRolloversByColor:Ljava/util/Map;

    new-array v1, v0, [Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const-string v2, "CenterLine_Blue_1_2"

    .line 309
    invoke-virtual {p1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    aput-object v2, v1, v3

    const-string v2, "CenterLine_Blue_2_3"

    .line 310
    invoke-virtual {p1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    aput-object v2, v1, v5

    const-string v2, "CenterLine_Blue_3_1"

    .line 311
    invoke-virtual {p1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    aput-object v2, v1, v6

    .line 308
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-array v2, v0, [Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const-string v7, "CenterLine_Red_1_2"

    .line 313
    invoke-virtual {p1, v7}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v7

    check-cast v7, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    aput-object v7, v2, v3

    const-string v7, "CenterLine_Red_2_3"

    .line 314
    invoke-virtual {p1, v7}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v7

    check-cast v7, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    aput-object v7, v2, v5

    const-string v7, "CenterLine_Red_3_1"

    .line 315
    invoke-virtual {p1, v7}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v7

    check-cast v7, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    aput-object v7, v2, v6

    .line 312
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-array v7, v0, [Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const-string v8, "CenterLine_Yellow_1_2"

    .line 317
    invoke-virtual {p1, v8}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v8

    check-cast v8, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    aput-object v8, v7, v3

    const-string v8, "CenterLine_Yellow_2_3"

    .line 318
    invoke-virtual {p1, v8}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v8

    check-cast v8, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    aput-object v8, v7, v5

    const-string v8, "CenterLine_Yellow_3_1"

    .line 319
    invoke-virtual {p1, v8}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v8

    check-cast v8, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    aput-object v8, v7, v6

    .line 316
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    new-array v8, v0, [Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const-string v9, "CenterLine_Green_1_2"

    .line 321
    invoke-virtual {p1, v9}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v9

    check-cast v9, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    aput-object v9, v8, v3

    const-string v9, "CenterLine_Green_2_3"

    .line 322
    invoke-virtual {p1, v9}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v9

    check-cast v9, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    aput-object v9, v8, v5

    const-string v9, "CenterLine_Green_3_1"

    .line 323
    invoke-virtual {p1, v9}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v9

    check-cast v9, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    aput-object v9, v8, v6

    .line 320
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 307
    invoke-static {v1, v2, v7, v8}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->buildBallColorMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->centerLinesByColor:Ljava/util/Map;

    .line 325
    invoke-static {v4, v4, v4, v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->buildBallColorMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->rampBonuses:Ljava/util/Map;

    const-string v1, "ExtraBallRollover"

    .line 327
    invoke-virtual {p1, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v1

    check-cast v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->extraBallRollover:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    const/4 v1, 0x4

    new-array v1, v1, [Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const-string v2, "ExtraBallBarrier_Blue"

    .line 329
    invoke-virtual {p1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    aput-object v2, v1, v3

    const-string v2, "ExtraBallBarrier_Red"

    .line 330
    invoke-virtual {p1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    aput-object v2, v1, v5

    const-string v2, "ExtraBallBarrier_Yellow"

    .line 331
    invoke-virtual {p1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    aput-object v2, v1, v6

    const-string v2, "ExtraBallBarrier_Green"

    .line 332
    invoke-virtual {p1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    aput-object v2, v1, v0

    .line 328
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->extraBallBarriers:Ljava/util/List;

    .line 334
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->updateCenterRollovers(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 335
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->updateCenterLines(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 336
    sget-object p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;->NOT_READY:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->multiballStatus:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;

    return-void
.end method

.method public isFieldActive(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public processCollision(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;Lcom/badlogic/gdx/physics/box2d/Body;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)V
    .locals 0

    .line 414
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->multiballStatus:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;

    sget-object p3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;->READY:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;

    if-ne p1, p3, :cond_0

    .line 415
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleWalls:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 416
    check-cast p2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    :cond_0
    return-void
.end method

.method public tick(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;J)V
    .locals 12

    .line 426
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleWalls:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleRotationSpeedMultiplier:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_2

    .line 427
    iget-wide v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleRotationAngle:D

    iget-wide v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleRotationBaseSpeed:D

    mul-double/2addr v2, v8

    long-to-double p2, p2

    mul-double/2addr v2, p2

    const-wide p2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, p2

    add-double/2addr v6, v2

    iput-wide v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleRotationAngle:D

    cmpg-double p2, v6, v4

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    if-gez p2, :cond_0

    add-double/2addr v6, v2

    .line 429
    iput-wide v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleRotationAngle:D

    .line 430
    :cond_0
    iget-wide p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleRotationAngle:D

    cmpl-double v0, p2, v2

    if-ltz v0, :cond_1

    sub-double/2addr p2, v2

    iput-wide p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleRotationAngle:D

    .line 431
    :cond_1
    iget-wide p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleRotationAngle:D

    const-wide v2, 0x4000c152382d7365L    # 2.0943951023931953

    add-double v4, p2, v2

    sub-double v2, p2, v2

    .line 434
    iget-wide v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleCenterX:D

    iget-wide v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleRadius:D

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v0, v6

    .line 435
    iget-wide v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleCenterY:D

    iget-wide v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleRadius:D

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double/2addr v8, p2

    add-double/2addr v6, v8

    double-to-float p2, v6

    .line 436
    iget-wide v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleCenterX:D

    iget-wide v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleRadius:D

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float p3, v6

    .line 437
    iget-wide v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleCenterY:D

    iget-wide v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleRadius:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    double-to-float v4, v6

    .line 438
    iget-wide v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleCenterX:D

    iget-wide v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleRadius:D

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-float v5, v5

    .line 439
    iget-wide v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleCenterY:D

    iget-wide v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleRadius:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    double-to-float v2, v6

    .line 441
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleWalls:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    invoke-virtual {v3, v0, p2, p3, v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setStartAndDirection(FFFF)V

    .line 442
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleWalls:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    invoke-virtual {v3, p3, v4, v5, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setStartAndDirection(FFFF)V

    .line 443
    iget-object p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->triangleWalls:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    invoke-virtual {p3, v5, v2, v0, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setStartAndDirection(FFFF)V

    .line 447
    :cond_2
    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getBalls()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-gt p2, v1, :cond_3

    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->multiballStatus:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;

    sget-object p3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;->ACTIVE:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;

    if-ne p2, p3, :cond_3

    .line 448
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->endMultiball(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    :cond_3
    return-void
.end method
