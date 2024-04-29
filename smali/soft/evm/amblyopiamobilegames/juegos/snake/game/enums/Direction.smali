.class public final enum Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;
.super Ljava/lang/Enum;
.source "Direction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

.field public static final enum East:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

.field public static final enum North:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

.field public static final enum South:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

.field public static final enum West:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 8
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

    const-string v1, "North"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;->North:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

    .line 9
    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

    const-string v3, "East"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;->East:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

    .line 10
    new-instance v3, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

    const-string v5, "South"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;->South:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

    .line 11
    new-instance v5, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

    const-string v7, "West"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;->West:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

    const/4 v7, 0x4

    new-array v7, v7, [Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 7
    sput-object v7, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;->$VALUES:[Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

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

.method public static valueOf(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;
    .locals 1

    .line 7
    const-class v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

    return-object p0
.end method

.method public static values()[Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;
    .locals 1

    .line 7
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;->$VALUES:[Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

    invoke-virtual {v0}, [Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

    return-object v0
.end method
