.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Clock$SystemClock;
.super Ljava/lang/Object;
.source "Clock.java"

# interfaces
.implements Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Clock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemClock"
.end annotation


# static fields
.field private static INSTANCE:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Clock$SystemClock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Clock$SystemClock;

    invoke-direct {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Clock$SystemClock;-><init>()V

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Clock$SystemClock;->INSTANCE:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Clock$SystemClock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Clock$SystemClock;
    .locals 1

    .line 13
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Clock$SystemClock;->INSTANCE:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Clock$SystemClock;

    return-object v0
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public nanoTime()J
    .locals 2

    .line 23
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
