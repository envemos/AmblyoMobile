.class public final enum Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState$MultiplierBehavior;
.super Ljava/lang/Enum;
.source "GameState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MultiplierBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState$MultiplierBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState$MultiplierBehavior;

.field public static final enum HOLD:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState$MultiplierBehavior;

.field public static final enum REMOVE:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState$MultiplierBehavior;

.field public static final enum ROUND_HALF_DOWN:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState$MultiplierBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState$MultiplierBehavior;

    const-string v1, "REMOVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState$MultiplierBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState$MultiplierBehavior;->REMOVE:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState$MultiplierBehavior;

    .line 8
    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState$MultiplierBehavior;

    const-string v3, "HOLD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState$MultiplierBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState$MultiplierBehavior;->HOLD:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState$MultiplierBehavior;

    .line 9
    new-instance v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState$MultiplierBehavior;

    const-string v5, "ROUND_HALF_DOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState$MultiplierBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState$MultiplierBehavior;->ROUND_HALF_DOWN:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState$MultiplierBehavior;

    const/4 v5, 0x3

    new-array v5, v5, [Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState$MultiplierBehavior;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 6
    sput-object v5, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState$MultiplierBehavior;->$VALUES:[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState$MultiplierBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState$MultiplierBehavior;
    .locals 1

    .line 6
    const-class v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState$MultiplierBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState$MultiplierBehavior;

    return-object p0
.end method

.method public static values()[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState$MultiplierBehavior;
    .locals 1

    .line 6
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState$MultiplierBehavior;->$VALUES:[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState$MultiplierBehavior;

    invoke-virtual {v0}, [Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState$MultiplierBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState$MultiplierBehavior;

    return-object v0
.end method
