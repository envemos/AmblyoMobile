.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;
.super Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/BaseFieldDelegate;
.source "Field3Delegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;
    }
.end annotation


# static fields
.field static RAND:Ljava/util/Random;

.field static temperatureColors:[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;


# instance fields
.field baseBumperBonusDurationNanos:J

.field baseBumperBonusMultiplier:I

.field bumperBonusActive:Z

.field bumperBonusDurationIncrement:J

.field bumperBonusDurationNanos:J

.field bumperBonusMultiplier:I

.field bumperBonusMultiplierIncrement:I

.field bumperBonusNanosElapsed:J

.field bumperElements:[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

.field bumperEnergy:D

.field lowerTargetGroupCompleted:I

.field maxBumperEnergy:D

.field maxLowerTargetGroupCompleted:I

.field maxUpperTargetGroupCompleted:I

.field multiballFlashIncrements:[D

.field multiballFlashValues:[D

.field multiballStatus:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;

.field upperTargetGroupCompleted:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/16 v0, 0x35

    new-array v0, v0, [Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    const/4 v1, 0x0

    const/16 v2, 0xff

    .line 26
    invoke-static {v1, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v3, 0x10

    .line 27
    invoke-static {v1, v3, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v0, v5

    const/16 v4, 0x20

    .line 28
    invoke-static {v1, v4, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v0, v6

    const/16 v5, 0x30

    .line 29
    invoke-static {v1, v5, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v0, v7

    const/16 v6, 0x40

    .line 30
    invoke-static {v1, v6, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v0, v7

    const/16 v6, 0x50

    .line 31
    invoke-static {v1, v6, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v7

    const/4 v8, 0x5

    aput-object v7, v0, v8

    const/16 v7, 0x60

    .line 32
    invoke-static {v1, v7, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v8

    const/4 v9, 0x6

    aput-object v8, v0, v9

    const/16 v8, 0x70

    .line 33
    invoke-static {v1, v8, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v9

    const/4 v10, 0x7

    aput-object v9, v0, v10

    const/16 v9, 0x80

    .line 34
    invoke-static {v1, v9, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v9

    const/16 v10, 0x8

    aput-object v9, v0, v10

    const/16 v9, 0x90

    .line 35
    invoke-static {v1, v9, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v10

    const/16 v11, 0x9

    aput-object v10, v0, v11

    const/16 v10, 0xa0

    .line 36
    invoke-static {v1, v10, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v10

    const/16 v11, 0xa

    aput-object v10, v0, v11

    const/16 v10, 0xb0

    .line 37
    invoke-static {v1, v10, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v11

    const/16 v12, 0xb

    aput-object v11, v0, v12

    const/16 v11, 0xc0

    .line 38
    invoke-static {v1, v11, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v12

    const/16 v13, 0xc

    aput-object v12, v0, v13

    const/16 v12, 0xd0

    .line 39
    invoke-static {v1, v12, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v14

    const/16 v15, 0xd

    aput-object v14, v0, v15

    const/16 v14, 0xe0

    .line 40
    invoke-static {v1, v14, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v14

    const/16 v15, 0xe

    aput-object v14, v0, v15

    const/16 v14, 0xf0

    .line 41
    invoke-static {v1, v14, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v15

    const/16 v16, 0xf

    aput-object v15, v0, v16

    .line 43
    invoke-static {v1, v2, v14}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v15

    aput-object v15, v0, v3

    .line 44
    invoke-static {v1, v2, v12}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v15

    const/16 v16, 0x11

    aput-object v15, v0, v16

    .line 45
    invoke-static {v1, v2, v10}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v15

    const/16 v16, 0x12

    aput-object v15, v0, v16

    .line 46
    invoke-static {v1, v2, v9}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v15

    const/16 v16, 0x13

    aput-object v15, v0, v16

    .line 47
    invoke-static {v1, v2, v8}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v15

    const/16 v16, 0x14

    aput-object v15, v0, v16

    .line 48
    invoke-static {v1, v2, v6}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v15

    const/16 v16, 0x15

    aput-object v15, v0, v16

    .line 49
    invoke-static {v1, v2, v5}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v15

    const/16 v16, 0x16

    aput-object v15, v0, v16

    .line 50
    invoke-static {v1, v2, v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v15

    const/16 v16, 0x17

    aput-object v15, v0, v16

    .line 52
    invoke-static {v3, v2, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    const/16 v15, 0x18

    aput-object v3, v0, v15

    .line 53
    invoke-static {v5, v2, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    const/16 v16, 0x19

    aput-object v3, v0, v16

    .line 54
    invoke-static {v6, v2, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    const/16 v6, 0x1a

    aput-object v3, v0, v6

    .line 55
    invoke-static {v8, v2, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    const/16 v6, 0x1b

    aput-object v3, v0, v6

    .line 56
    invoke-static {v9, v2, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    const/16 v6, 0x1c

    aput-object v3, v0, v6

    .line 57
    invoke-static {v10, v2, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    const/16 v6, 0x1d

    aput-object v3, v0, v6

    .line 58
    invoke-static {v12, v2, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    const/16 v6, 0x1e

    aput-object v3, v0, v6

    .line 59
    invoke-static {v14, v2, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    const/16 v6, 0x1f

    aput-object v3, v0, v6

    .line 61
    invoke-static {v2, v14, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    aput-object v3, v0, v4

    const/16 v3, 0xe4

    .line 62
    invoke-static {v2, v3, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    const/16 v4, 0x21

    aput-object v3, v0, v4

    const/16 v3, 0xd8

    .line 63
    invoke-static {v2, v3, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    const/16 v4, 0x22

    aput-object v3, v0, v4

    const/16 v3, 0xcc

    .line 64
    invoke-static {v2, v3, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    const/16 v4, 0x23

    aput-object v3, v0, v4

    .line 65
    invoke-static {v2, v11, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    const/16 v4, 0x24

    aput-object v3, v0, v4

    const/16 v3, 0xb4

    .line 66
    invoke-static {v2, v3, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    const/16 v6, 0x25

    aput-object v3, v0, v6

    const/16 v3, 0xa8

    .line 67
    invoke-static {v2, v3, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    const/16 v6, 0x26

    aput-object v3, v0, v6

    const/16 v3, 0x9c

    .line 68
    invoke-static {v2, v3, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    const/16 v6, 0x27

    aput-object v3, v0, v6

    .line 69
    invoke-static {v2, v9, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    const/16 v6, 0x28

    aput-object v3, v0, v6

    const/16 v3, 0x84

    .line 70
    invoke-static {v2, v3, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    const/16 v6, 0x29

    aput-object v3, v0, v6

    const/16 v3, 0x78

    .line 71
    invoke-static {v2, v3, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    const/16 v6, 0x2a

    aput-object v3, v0, v6

    const/16 v3, 0x6c

    .line 72
    invoke-static {v2, v3, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    const/16 v6, 0x2b

    aput-object v3, v0, v6

    .line 73
    invoke-static {v2, v7, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    const/16 v6, 0x2c

    aput-object v3, v0, v6

    const/16 v3, 0x54

    .line 74
    invoke-static {v2, v3, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    const/16 v6, 0x2d

    aput-object v3, v0, v6

    const/16 v3, 0x48

    .line 75
    invoke-static {v2, v3, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    const/16 v6, 0x2e

    aput-object v3, v0, v6

    const/16 v3, 0x3c

    .line 76
    invoke-static {v2, v3, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    const/16 v6, 0x2f

    aput-object v3, v0, v6

    .line 77
    invoke-static {v2, v5, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    aput-object v3, v0, v5

    .line 78
    invoke-static {v2, v4, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    const/16 v4, 0x31

    aput-object v3, v0, v4

    .line 79
    invoke-static {v2, v15, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    const/16 v4, 0x32

    aput-object v3, v0, v4

    .line 80
    invoke-static {v2, v13, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v3

    const/16 v4, 0x33

    aput-object v3, v0, v4

    .line 81
    invoke-static {v2, v1, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v1

    const/16 v2, 0x34

    aput-object v1, v0, v2

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->temperatureColors:[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    .line 93
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->RAND:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 22
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/BaseFieldDelegate;-><init>()V

    const/4 v0, 0x1

    .line 105
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperBonusMultiplierIncrement:I

    .line 106
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperBonusDurationIncrement:J

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->upperTargetGroupCompleted:I

    .line 109
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->lowerTargetGroupCompleted:I

    const-wide/16 v1, 0x0

    .line 110
    iput-wide v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperEnergy:D

    .line 112
    iput-wide v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->maxBumperEnergy:D

    .line 113
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->maxUpperTargetGroupCompleted:I

    .line 114
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->maxLowerTargetGroupCompleted:I

    .line 116
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;->INACTIVE:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->multiballStatus:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;

    const/4 v0, 0x3

    new-array v1, v0, [D

    .line 117
    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->multiballFlashValues:[D

    new-array v0, v0, [D

    .line 118
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->multiballFlashIncrements:[D

    return-void
.end method

.method static colorForTemperatureRatio(D)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;
    .locals 4

    .line 85
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->temperatureColors:[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    array-length v1, v0

    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gtz v2, :cond_0

    const/4 p0, 0x0

    .line 86
    aget-object p0, v0, p0

    return-object p0

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p0, v2

    if-ltz v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 87
    aget-object p0, v0, v1

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    int-to-double v1, v1

    mul-double/2addr v1, p0

    .line 88
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method private restoreLeftBallSaver(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 1

    const-string v0, "BallSaver-left"

    .line 153
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

    .line 157
    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object p1

    check-cast p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    return-void
.end method


# virtual methods
.method public allDropTargetsInGroupHit(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/DropTargetGroupElement;)V
    .locals 5

    .line 184
    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/DropTargetGroupElement;->getElementId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DropTargetLeftSave"

    .line 185
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x5dc

    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->restoreLeftBallSaver(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    const-string p2, "Left Save Enabled"

    .line 187
    invoke-virtual {p1, p2, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const-string v0, "DropTargetRightSave"

    .line 189
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->restoreRightBallSaver(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    const-string p2, "Right Save Enabled"

    .line 191
    invoke-virtual {p1, p2, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const-string v0, "LowerMultiballTargets"

    .line 193
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    iget p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->lowerTargetGroupCompleted:I

    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->maxLowerTargetGroupCompleted:I

    if-ge p2, v0, :cond_3

    .line 196
    iget-wide v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperBonusDurationNanos:J

    iget-wide v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperBonusDurationIncrement:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperBonusDurationNanos:J

    add-int/lit8 p2, p2, 0x1

    .line 197
    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->lowerTargetGroupCompleted:I

    int-to-double v1, p2

    int-to-double v3, v0

    div-double/2addr v1, v3

    const-string p2, "LowerTargetIndicator"

    .line 199
    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object p2

    invoke-static {v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->colorForTemperatureRatio(D)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v0

    invoke-virtual {p2, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->setNewColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V

    .line 200
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->checkForEnableMultiball(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    goto :goto_0

    :cond_2
    const-string v0, "UpperMultiballTargets"

    .line 203
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 205
    iget p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->upperTargetGroupCompleted:I

    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->maxUpperTargetGroupCompleted:I

    if-ge p2, v0, :cond_3

    .line 206
    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperBonusMultiplier:I

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperBonusMultiplierIncrement:I

    add-int/2addr v1, v2

    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperBonusMultiplier:I

    add-int/lit8 p2, p2, 0x1

    .line 207
    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->upperTargetGroupCompleted:I

    int-to-double v1, p2

    int-to-double v3, v0

    div-double/2addr v1, v3

    const-string p2, "UpperTargetIndicator"

    .line 209
    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object p2

    invoke-static {v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->colorForTemperatureRatio(D)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v0

    invoke-virtual {p2, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->setNewColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V

    .line 210
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->checkForEnableMultiball(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public allRolloversInGroupActivated(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;)V
    .locals 2

    .line 162
    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->getElementId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LeftRampRollover"

    .line 163
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "RightRampRollover"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 175
    invoke-virtual {p2, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setAllRolloversActivated(Z)V

    .line 176
    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object p2

    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->incrementScoreMultiplier()V

    .line 177
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object v0

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->getScoreMultiplier()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "x Multiplier"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, p2, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    goto :goto_1

    .line 164
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->startBumperBonus()V

    .line 165
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->multiballStatus:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;->INACTIVE:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->isMultiballRolloverActive(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->startMultiball(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 169
    :cond_2
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->multiballStatus:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;->ACTIVE:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;

    if-ne v0, v1, :cond_3

    .line 170
    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->getScore()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->addScore(J)V

    :cond_3
    :goto_1
    return-void
.end method

.method public ballInSensorRange(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/SensorElement;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)V
    .locals 1

    .line 282
    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/SensorElement;->getElementId()Ljava/lang/String;

    move-result-object p3

    const-string v0, "LaunchBarrierSensor"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 283
    invoke-virtual {p0, p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->setLaunchBarrierEnabled(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Z)V

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/SensorElement;->getElementId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "LaunchBarrierRetract"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 286
    invoke-virtual {p0, p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->setLaunchBarrierEnabled(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public ballLost(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 2

    const/4 v0, 0x0

    .line 299
    invoke-virtual {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->setLaunchBarrierEnabled(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Z)V

    .line 300
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->endBumperBonus()V

    .line 302
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->multiballStatus:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;->ACTIVE:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;

    if-ne v0, v1, :cond_0

    .line 303
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->resetBumperBonuses(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 304
    sget-object p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;->INACTIVE:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->multiballStatus:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;

    :cond_0
    return-void
.end method

.method checkForEnableMultiball(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 4

    .line 309
    iget-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperEnergy:D

    iget-wide v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->maxBumperEnergy:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->upperTargetGroupCompleted:I

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->maxUpperTargetGroupCompleted:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->lowerTargetGroupCompleted:I

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->maxLowerTargetGroupCompleted:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 312
    invoke-virtual {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->setMultiballRolloverActive(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Z)V

    :cond_0
    return-void
.end method

.method colorForMultiballFlasher(I)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;
    .locals 5

    .line 357
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->multiballFlashValues:[D

    aget-wide v1, v0, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->colorForTemperatureRatio(D)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object p1

    return-object p1
.end method

.method endBumperBonus()V
    .locals 5

    const/4 v0, 0x0

    .line 248
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperBonusActive:Z

    .line 249
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperElements:[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    const/4 v4, 0x0

    .line 250
    invoke-virtual {v3, v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->setNewColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public gameStarted(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 1

    const/4 v0, 0x0

    .line 292
    invoke-virtual {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->setLaunchBarrierEnabled(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Z)V

    .line 293
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->resetState(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 294
    sget-object p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;->INACTIVE:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->multiballStatus:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;

    return-void
.end method

.method initializeMultiballFlashers()V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 351
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->multiballFlashValues:[D

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 352
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->multiballFlashIncrements:[D

    const-wide v2, 0x3fc999999999999aL    # 0.2

    const-wide v4, 0x3fd3333333333333L    # 0.3

    sget-object v6, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->RAND:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextDouble()D

    move-result-wide v6

    mul-double/2addr v6, v4

    add-double/2addr v6, v2

    aput-wide v6, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method isMultiballRolloverActive(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)Z
    .locals 3

    .line 317
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->multiballStatus:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;->INACTIVE:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const-string v0, "BumperIndicator"

    .line 318
    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object p1

    check-cast p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    invoke-virtual {p1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->isRolloverActiveAtIndex(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public processCollision(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;Lcom/badlogic/gdx/physics/box2d/Body;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)V
    .locals 9

    .line 256
    instance-of p3, p2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/BumperElement;

    if-eqz p3, :cond_1

    const-wide/16 p3, 0x0

    .line 258
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperBonusActive:Z

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-eqz v0, :cond_0

    .line 259
    iget-wide p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperBonusNanosElapsed:J

    long-to-double p3, p3

    iget-wide v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperBonusDurationNanos:J

    long-to-double v3, v3

    div-double/2addr p3, v3

    sub-double p3, v1, p3

    .line 260
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperBonusMultiplier:I

    int-to-double v3, v0

    mul-double/2addr p3, v3

    .line 262
    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->getScore()J

    move-result-wide v3

    long-to-double v3, v3

    mul-double/2addr v3, p3

    const-wide/16 v5, 0xa

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    div-double/2addr v3, v7

    .line 263
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    mul-long/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->addScore(J)V

    .line 265
    :cond_0
    iget-wide v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperEnergy:D

    add-double/2addr v3, v1

    add-double/2addr v3, p3

    iget-wide p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->maxBumperEnergy:D

    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p2

    iput-wide p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperEnergy:D

    .line 266
    iget-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->maxBumperEnergy:D

    div-double/2addr p2, v0

    const-string p4, "BumperIndicator"

    .line 267
    invoke-virtual {p1, p4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object p4

    invoke-static {p2, p3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->colorForTemperatureRatio(D)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object p2

    invoke-virtual {p4, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->setNewColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V

    .line 268
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->checkForEnableMultiball(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    :cond_1
    return-void
.end method

.method resetBumperBonuses(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 3

    .line 140
    iget-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->baseBumperBonusDurationNanos:J

    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperBonusDurationNanos:J

    .line 141
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->baseBumperBonusMultiplier:I

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperBonusMultiplier:I

    const-wide/16 v0, 0x0

    .line 142
    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperEnergy:D

    const/4 v0, 0x0

    .line 143
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->upperTargetGroupCompleted:I

    .line 144
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->lowerTargetGroupCompleted:I

    const-string v1, "UpperTargetIndicator"

    .line 146
    invoke-virtual {p1, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->setNewColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V

    const-string v1, "LowerTargetIndicator"

    .line 147
    invoke-virtual {p1, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v1

    invoke-virtual {v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->setNewColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V

    const-string v1, "BumperIndicator"

    .line 148
    invoke-virtual {p1, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v1

    invoke-virtual {v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->setNewColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V

    .line 149
    invoke-virtual {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->setMultiballRolloverActive(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Z)V

    return-void
.end method

.method resetState(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 4

    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    .line 122
    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->maxBumperEnergy:D

    const/4 v0, 0x2

    .line 123
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->maxUpperTargetGroupCompleted:I

    const/4 v0, 0x5

    .line 124
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->maxLowerTargetGroupCompleted:I

    .line 126
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    iput-wide v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->baseBumperBonusDurationNanos:J

    .line 127
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->baseBumperBonusMultiplier:I

    .line 128
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->resetBumperBonuses(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    .line 132
    instance-of v2, v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/BumperElement;

    if-eqz v2, :cond_0

    .line 133
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    .line 136
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperElements:[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    return-void
.end method

.method setLaunchBarrierEnabled(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Z)V
    .locals 1

    const-string v0, "LaunchBarrier"

    .line 275
    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object p1

    check-cast p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;

    xor-int/lit8 p2, p2, 0x1

    .line 276
    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/WallElement;->setRetracted(Z)V

    return-void
.end method

.method setMultiballRolloverActive(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Z)V
    .locals 1

    const-string v0, "BumperIndicator"

    .line 321
    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object p1

    check-cast p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;

    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;->setAllRolloversActivated(Z)V

    return-void
.end method

.method startBumperBonus()V
    .locals 2

    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperBonusActive:Z

    const-wide/16 v0, 0x0

    .line 244
    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperBonusNanosElapsed:J

    return-void
.end method

.method startMultiball(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 4

    const-string v0, "Multiball!"

    const-wide/16 v1, 0x7d0

    .line 325
    invoke-virtual {p1, v0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    .line 326
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;->PENDING:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->multiballStatus:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;

    .line 327
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->restoreLeftBallSaver(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 328
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->restoreRightBallSaver(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 330
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$1;

    invoke-direct {v0, p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$1;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    const-wide/16 v1, 0x3e8

    .line 340
    invoke-virtual {p1, v1, v2, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->scheduleAction(JLjava/lang/Runnable;)V

    const-wide/16 v1, 0xdac

    .line 341
    invoke-virtual {p1, v1, v2, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->scheduleAction(JLjava/lang/Runnable;)V

    .line 344
    iget p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperBonusMultiplier:I

    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperBonusMultiplierIncrement:I

    add-int/2addr p1, v0

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperBonusMultiplier:I

    .line 345
    iget-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperBonusDurationNanos:J

    iget-wide v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperBonusDurationIncrement:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperBonusDurationNanos:J

    return-void
.end method

.method public tick(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;J)V
    .locals 5

    .line 217
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperBonusActive:Z

    if-eqz v0, :cond_1

    .line 218
    iget-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperBonusNanosElapsed:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperBonusNanosElapsed:J

    .line 219
    iget-wide v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperBonusDurationNanos:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 220
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->endBumperBonus()V

    goto :goto_1

    :cond_0
    long-to-double v0, v0

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    .line 224
    invoke-static {v2, v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->colorForTemperatureRatio(D)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->bumperElements:[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 226
    invoke-virtual {v4, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->setNewColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 230
    :cond_1
    :goto_1
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->multiballStatus:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;->ACTIVE:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;

    if-ne v0, v1, :cond_3

    .line 231
    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getBalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 233
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->resetBumperBonuses(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 234
    sget-object p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;->INACTIVE:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->multiballStatus:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate$MultiballStatus;

    goto :goto_2

    .line 237
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->tickMultiballFlashers(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;J)V

    :cond_3
    :goto_2
    return-void
.end method

.method tickMultiballFlashers(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;J)V
    .locals 8

    long-to-double p2, p2

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr p2, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 363
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->multiballFlashValues:[D

    aget-wide v3, v2, v1

    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->multiballFlashIncrements:[D

    aget-wide v6, v5, v1

    mul-double/2addr v6, p2

    add-double/2addr v3, v6

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_0

    sub-double/2addr v3, v5

    .line 365
    :cond_0
    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p2, "UpperTargetIndicator"

    .line 367
    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object p2

    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->colorForMultiballFlasher(I)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object p3

    invoke-virtual {p2, p3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->setNewColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V

    const-string p2, "LowerTargetIndicator"

    .line 368
    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->colorForMultiballFlasher(I)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object p3

    invoke-virtual {p2, p3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->setNewColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V

    const-string p2, "BumperIndicator"

    .line 369
    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field3Delegate;->colorForMultiballFlasher(I)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object p2

    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->setNewColor(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V

    return-void
.end method
