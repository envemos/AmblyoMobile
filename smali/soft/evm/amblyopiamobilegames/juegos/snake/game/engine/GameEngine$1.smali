.class synthetic Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine$1;
.super Ljava/lang/Object;
.source "GameEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$soft$evm$amblyopiamobilegames$juegos$snake$game$enums$Direction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 90
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;->values()[Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine$1;->$SwitchMap$soft$evm$amblyopiamobilegames$juegos$snake$game$enums$Direction:[I

    :try_start_0
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;->North:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine$1;->$SwitchMap$soft$evm$amblyopiamobilegames$juegos$snake$game$enums$Direction:[I

    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;->East:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine$1;->$SwitchMap$soft$evm$amblyopiamobilegames$juegos$snake$game$enums$Direction:[I

    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;->South:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine$1;->$SwitchMap$soft$evm$amblyopiamobilegames$juegos$snake$game$enums$Direction:[I

    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;->West:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
