.class public Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;
.super Ljava/lang/Object;
.source "GameEngine.java"


# static fields
.field public static final GameHeight:I = 0x14

.field public static final GameWidth:I = 0x14

.field public static manzanas:I

.field public static mejor_puntuacion:I

.field public static muros:Z

.field public static score:I

.field public static velocidad:I


# instance fields
.field private apples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;",
            ">;"
        }
    .end annotation
.end field

.field private come:Landroid/media/MediaPlayer;

.field private context:Landroid/content/Context;

.field private currentDirection:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

.field private currentGameState:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

.field private increaseTail:Z

.field private random:Ljava/util/Random;

.field private snake:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;",
            ">;"
        }
    .end annotation
.end field

.field private sonido:Z

.field private walls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZI)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->walls:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->apples:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->random:Ljava/util/Random;

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->increaseTail:Z

    .line 43
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;->North:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->currentDirection:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

    .line 61
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;->Running:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->currentGameState:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

    .line 68
    sput-boolean p2, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->muros:Z

    .line 69
    iput-boolean p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->sonido:Z

    .line 70
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->context:Landroid/content/Context;

    const p2, 0x7f100001

    .line 71
    invoke-static {p1, p2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->come:Landroid/media/MediaPlayer;

    .line 72
    sput p4, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->velocidad:I

    .line 73
    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->manzanas:I

    .line 74
    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->score:I

    return-void
.end method

.method private AddApples()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    if-nez v2, :cond_4

    .line 232
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->random:Ljava/util/Random;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 233
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->random:Ljava/util/Random;

    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v3

    .line 235
    new-instance v4, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    invoke-direct {v4, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;-><init>(II)V

    .line 237
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    .line 238
    invoke-virtual {v5, v4}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    goto :goto_1

    .line 244
    :cond_1
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->apples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    .line 245
    invoke-virtual {v5, v4}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v3

    goto :goto_2

    :cond_3
    xor-int/lit8 v2, v2, 0x1

    move-object v1, v4

    goto :goto_0

    .line 254
    :cond_4
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->apples:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private AddSnake()V
    .locals 4

    .line 207
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 208
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    const/4 v2, 0x6

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v3}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private AddWalls()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x13

    const/16 v3, 0x14

    if-ge v1, v3, :cond_0

    .line 217
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->walls:Ljava/util/List;

    new-instance v4, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    invoke-direct {v4, v1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->walls:Ljava/util/List;

    new-instance v4, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    invoke-direct {v4, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 223
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->walls:Ljava/util/List;

    new-instance v5, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    invoke-direct {v5, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;-><init>(II)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->walls:Ljava/util/List;

    new-instance v5, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    invoke-direct {v5, v2, v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;-><init>(II)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private UpdateSnake(II)V
    .locals 6

    .line 171
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->getX()I

    move-result v0

    .line 172
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->getY()I

    move-result v1

    .line 174
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-lez v2, :cond_0

    .line 175
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->getX()I

    move-result v4

    invoke-virtual {v3, v4}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->setX(I)V

    .line 176
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->getY()I

    move-result v4

    invoke-virtual {v3, v4}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->setY(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 179
    :cond_0
    iget-boolean v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->increaseTail:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 180
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    new-instance v4, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    invoke-direct {v4, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;-><init>(II)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iput-boolean v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->increaseTail:Z

    .line 184
    :cond_1
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->muros:Z

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->getX()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->setX(I)V

    .line 186
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->getY()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->setY(I)V

    goto :goto_3

    .line 188
    :cond_2
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->getX()I

    move-result v0

    add-int/2addr v0, p1

    .line 189
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->getY()I

    move-result p1

    add-int/2addr p1, p2

    const/16 p2, 0x13

    const/16 v1, 0x14

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    move v0, p2

    goto :goto_1

    :cond_3
    if-ne v0, v1, :cond_4

    move v0, v3

    :cond_4
    :goto_1
    if-ne p1, v2, :cond_5

    move p1, p2

    goto :goto_2

    :cond_5
    if-ne p1, v1, :cond_6

    move p1, v3

    .line 201
    :cond_6
    :goto_2
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    invoke-virtual {p2, v0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->setX(I)V

    .line 202
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    invoke-virtual {p2, p1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->setY(I)V

    :goto_3
    return-void
.end method

.method private getSnakeHead()Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;
    .locals 2

    .line 64
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    return-object v0
.end method


# virtual methods
.method public Update()V
    .locals 6

    .line 90
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine$1;->$SwitchMap$soft$evm$amblyopiamobilegames$juegos$snake$game$enums$Direction:[I

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->currentDirection:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    invoke-direct {p0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->UpdateSnake(II)V

    goto :goto_0

    .line 99
    :cond_1
    invoke-direct {p0, v2, v3}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->UpdateSnake(II)V

    goto :goto_0

    .line 96
    :cond_2
    invoke-direct {p0, v3, v2}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->UpdateSnake(II)V

    goto :goto_0

    .line 93
    :cond_3
    invoke-direct {p0, v2, v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->UpdateSnake(II)V

    .line 107
    :goto_0
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->muros:Z

    if-eqz v0, :cond_5

    .line 109
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->walls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    .line 110
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    invoke-virtual {v4, v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 111
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;->Lost:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->currentGameState:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

    goto :goto_1

    :cond_5
    move v0, v3

    .line 117
    :goto_2
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 118
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->getSnakeHead()Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    move-result-object v1

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 119
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;->Lost:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->currentGameState:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

    return-void

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    .line 126
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->apples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    .line 127
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->getSnakeHead()Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    move-result-object v4

    invoke-virtual {v4, v2}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 129
    iput-boolean v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->increaseTail:Z

    .line 130
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->manzanas:I

    add-int/2addr v0, v3

    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->manzanas:I

    .line 131
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->velocidad:I

    mul-int/lit8 v0, v0, 0xa

    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v0, v0

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v0, v5

    add-float/2addr v0, v4

    .line 133
    sget v4, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->score:I

    int-to-float v4, v4

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v0, v5

    add-float/2addr v4, v0

    float-to-int v0, v4

    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->score:I

    .line 134
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->sonido:Z

    if-eqz v0, :cond_9

    .line 135
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->come:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_9
    move-object v0, v2

    goto :goto_3

    :cond_a
    if-eqz v0, :cond_b

    .line 139
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->apples:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 140
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->AddApples()V

    :cond_b
    return-void
.end method

.method public UpdateDirection(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;)V
    .locals 2

    .line 85
    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;->ordinal()I

    move-result v0

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->currentDirection:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 86
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->currentDirection:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/Direction;

    :cond_0
    return-void
.end method

.method public getCurrentGameState()Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;
    .locals 1

    .line 258
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->currentGameState:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

    return-object v0
.end method

.method public getManzanas()I
    .locals 1

    .line 269
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->manzanas:I

    return v0
.end method

.method public getMap()[[Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 146
    fill-array-data v0, :array_0

    const-class v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x14

    if-ge v2, v3, :cond_1

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_0

    .line 150
    aget-object v5, v0, v2

    sget-object v6, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;->Nothing:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    :cond_1
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->walls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    .line 155
    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->getX()I

    move-result v4

    aget-object v4, v0, v4

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->getY()I

    move-result v3

    sget-object v5, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;->Wall:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

    aput-object v5, v4, v3

    goto :goto_2

    .line 157
    :cond_2
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    .line 158
    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->getX()I

    move-result v4

    aget-object v4, v0, v4

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->getY()I

    move-result v3

    sget-object v5, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;->SnakeTail:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

    aput-object v5, v4, v3

    goto :goto_3

    .line 161
    :cond_3
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->apples:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    .line 162
    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->getX()I

    move-result v4

    aget-object v4, v0, v4

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->getY()I

    move-result v3

    sget-object v5, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;->Apple:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

    aput-object v5, v4, v3

    goto :goto_4

    .line 165
    :cond_4
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->getX()I

    move-result v2

    aget-object v2, v0, v2

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->snake:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->getY()I

    move-result v1

    sget-object v3, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;->SnakeHead:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/TileType;

    aput-object v3, v2, v1

    return-object v0

    nop

    :array_0
    .array-data 4
        0x14
        0x14
    .end array-data
.end method

.method public getScore()I
    .locals 1

    .line 262
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->score:I

    return v0
.end method

.method public initGame()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->AddSnake()V

    .line 79
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->AddWalls()V

    .line 81
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->AddApples()V

    return-void
.end method

.method public isSonido()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->sonido:Z

    return v0
.end method

.method public setCurrentGameState(Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->currentGameState:Lsoft/evm/amblyopiamobilegames/juegos/snake/game/enums/GameState;

    return-void
.end method

.method public setVelocidad(I)V
    .locals 0

    .line 271
    sput p1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/engine/GameEngine;->velocidad:I

    return-void
.end method
