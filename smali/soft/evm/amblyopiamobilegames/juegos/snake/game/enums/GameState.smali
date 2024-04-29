.class public final enum Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;
.super Ljava/lang/Enum;
.source "GameState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

.field public static final enum Lost:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

.field public static final enum Ready:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

.field public static final enum Running:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 8
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

    const-string v1, "Ready"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;->Ready:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

    .line 9
    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

    const-string v3, "Running"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;->Running:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

    .line 10
    new-instance v3, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

    const-string v5, "Lost"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;->Lost:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

    const/4 v5, 0x3

    new-array v5, v5, [Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 7
    sput-object v5, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;->$VALUES:[Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;
    .locals 1

    .line 7
    const-class v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

    return-object p0
.end method

.method public static values()[Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;
    .locals 1

    .line 7
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;->$VALUES:[Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

    invoke-virtual {v0}, [Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

    return-object v0
.end method
