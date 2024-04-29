.class public final enum Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;
.super Ljava/lang/Enum;
.source "TileType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

.field public static final enum Apple:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

.field public static final enum Nothing:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

.field public static final enum SnakeHead:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

.field public static final enum SnakeTail:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

.field public static final enum Wall:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 8
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

    const-string v1, "Nothing"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;->Nothing:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

    .line 9
    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

    const-string v3, "Wall"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;->Wall:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

    .line 10
    new-instance v3, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

    const-string v5, "SnakeHead"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;->SnakeHead:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

    .line 11
    new-instance v5, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

    const-string v7, "SnakeTail"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;->SnakeTail:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

    .line 12
    new-instance v7, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

    const-string v9, "Apple"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;->Apple:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

    const/4 v9, 0x5

    new-array v9, v9, [Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 7
    sput-object v9, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;->$VALUES:[Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

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

.method public static valueOf(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;
    .locals 1

    .line 7
    const-class v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

    return-object p0
.end method

.method public static values()[Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;
    .locals 1

    .line 7
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;->$VALUES:[Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

    invoke-virtual {v0}, [Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

    return-object v0
.end method
