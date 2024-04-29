.class public Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;
.super Ljava/lang/Object;
.source "Shape.java"


# static fields
.field public static auto:Z

.field public static derribadas:I

.field public static lastTime:J

.field public static level:I

.field public static score:I

.field public static time:J


# instance fields
.field private board:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

.field private cada_cinco_figuras:I

.field private collision:Z

.field private color:I

.field private coords:[[I

.field private currentSpeed:I

.field private deltaX:I

.field private moveX:Z

.field private normalSpeed:I

.field private speedDown:I

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([[ILsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;II)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->deltaX:I

    .line 25
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->collision:Z

    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->moveX:Z

    const/16 v1, 0x3c

    .line 27
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->speedDown:I

    .line 38
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->coords:[[I

    .line 39
    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->board:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    .line 40
    iput p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->color:I

    .line 42
    sput p4, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->level:I

    mul-int/lit16 p4, p4, 0xc8

    rsub-int p1, p4, 0x7d0

    add-int/lit16 p1, p1, 0xd2

    .line 43
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->normalSpeed:I

    .line 44
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->currentSpeed:I

    const-wide/16 p1, 0x0

    .line 45
    sput-wide p1, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->time:J

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->lastTime:J

    const/4 p1, 0x3

    .line 48
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->x:I

    .line 49
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->y:I

    return-void
.end method

.method private checkLine()V
    .locals 10

    .line 111
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->board:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->getBoard()[[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v0

    move v4, v2

    :goto_0
    const/4 v5, 0x2

    if-lez v0, :cond_3

    move v6, v2

    move v7, v6

    .line 118
    :goto_1
    iget-object v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->board:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    invoke-virtual {v8}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->getBoard()[[I

    move-result-object v8

    aget-object v8, v8, v2

    array-length v8, v8

    if-ge v6, v8, :cond_1

    .line 120
    iget-object v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->board:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    invoke-virtual {v8}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->getBoard()[[I

    move-result-object v8

    aget-object v8, v8, v0

    aget v8, v8, v6

    if-ne v8, v5, :cond_0

    add-int/lit8 v7, v7, 0x1

    .line 123
    :cond_0
    iget-object v8, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->board:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    invoke-virtual {v8}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->getBoard()[[I

    move-result-object v8

    aget-object v8, v8, v3

    iget-object v9, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->board:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    invoke-virtual {v9}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->getBoard()[[I

    move-result-object v9

    aget-object v9, v9, v0

    aget v9, v9, v6

    aput v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 126
    :cond_1
    iget-object v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->board:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    invoke-virtual {v5}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->getBoard()[[I

    move-result-object v5

    aget-object v5, v5, v2

    array-length v5, v5

    if-ge v7, v5, :cond_2

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    rsub-int/lit8 v0, v4, 0xf

    .line 134
    sget v3, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->derribadas:I

    add-int/2addr v3, v0

    sput v3, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->derribadas:I

    if-ne v0, v1, :cond_4

    .line 136
    sget v3, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->score:I

    sget v4, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->level:I

    add-int/lit8 v4, v4, 0x4

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    sput v3, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->score:I

    goto :goto_2

    .line 138
    :cond_4
    sget v3, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->score:I

    add-int/lit8 v4, v0, 0x4

    sget v6, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->level:I

    add-int/2addr v4, v6

    mul-int/2addr v4, v5

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    sput v3, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->score:I

    .line 139
    :goto_2
    sget-boolean v3, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->auto:Z

    if-eqz v3, :cond_5

    .line 140
    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->cada_cinco_figuras:I

    add-int/2addr v3, v0

    iput v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->cada_cinco_figuras:I

    const/4 v0, 0x5

    if-lt v3, v0, :cond_5

    .line 142
    iput v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->cada_cinco_figuras:I

    .line 143
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->level:I

    const/16 v2, 0xa

    if-le v0, v2, :cond_5

    add-int/2addr v0, v1

    .line 144
    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->level:I

    :cond_5
    return-void
.end method

.method private getReverseMatrix([[I)[[I
    .locals 4

    .line 193
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 196
    aget-object v2, p1, v1

    .line 197
    array-length v3, p1

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, p1, v3

    aput-object v3, p1, v1

    .line 198
    array-length v3, p1

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    aput-object v2, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private getTranspose([[I)[[I
    .locals 6

    const/4 v0, 0x0

    .line 181
    aget-object v1, p1, v0

    array-length v1, v1

    array-length v2, p1

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v1, v3, v0

    const-class v1, I

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    move v2, v0

    .line 183
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    move v3, v0

    .line 184
    :goto_1
    aget-object v4, p1, v0

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 185
    aget-object v4, v1, v3

    aget-object v5, p1, v2

    aget v5, v5, v3

    aput v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 216
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->color:I

    return v0
.end method

.method public getCoords()[[I
    .locals 1

    .line 12
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->coords:[[I

    return-object v0
.end method

.method public getX()I
    .locals 1

    .line 16
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 20
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->y:I

    return v0
.end method

.method public normalSpeed()V
    .locals 1

    .line 208
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->normalSpeed:I

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->currentSpeed:I

    return-void
.end method

.method public rotate()V
    .locals 6

    .line 153
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->collision:Z

    if-eqz v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->coords:[[I

    invoke-direct {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->getTranspose([[I)[[I

    move-result-object v0

    .line 160
    invoke-direct {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->getReverseMatrix([[I)[[I

    move-result-object v0

    .line 162
    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->x:I

    const/4 v2, 0x0

    aget-object v3, v0, v2

    array-length v3, v3

    add-int/2addr v1, v3

    const/16 v3, 0xa

    if-gt v1, v3, :cond_5

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->y:I

    array-length v3, v0

    add-int/2addr v1, v3

    const/16 v3, 0x10

    if-le v1, v3, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    .line 165
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_4

    move v3, v2

    .line 167
    :goto_1
    aget-object v4, v0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 169
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->board:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->getBoard()[[I

    move-result-object v4

    iget v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->y:I

    add-int/2addr v5, v1

    aget-object v4, v4, v5

    iget v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->x:I

    add-int/2addr v5, v3

    aget v4, v4, v5

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_4
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->coords:[[I

    :cond_5
    :goto_2
    return-void
.end method

.method public setDeltaX(I)V
    .locals 0

    .line 204
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->deltaX:I

    return-void
.end method

.method public speedDown()V
    .locals 1

    .line 212
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->speedDown:I

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->currentSpeed:I

    return-void
.end method

.method public update()V
    .locals 8

    .line 54
    sget-wide v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->lastTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    sput-wide v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->time:J

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->lastTime:J

    .line 58
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->x:I

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->deltaX:I

    add-int v2, v0, v1

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->coords:[[I

    const/4 v4, 0x0

    aget-object v3, v3, v4

    array-length v3, v3

    add-int/2addr v2, v3

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/16 v6, 0xa

    if-gt v2, v6, :cond_3

    add-int/2addr v0, v1

    if-ltz v0, :cond_3

    move v0, v4

    .line 61
    :goto_0
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->coords:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    move v1, v4

    .line 62
    :goto_1
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->coords:[[I

    aget-object v6, v2, v0

    array-length v6, v6

    if-ge v1, v6, :cond_1

    .line 63
    aget-object v2, v2, v0

    aget v2, v2, v1

    if-ne v2, v5, :cond_0

    .line 64
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->board:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->getBoard()[[I

    move-result-object v2

    iget v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->y:I

    add-int/2addr v6, v0

    aget-object v2, v2, v6

    iget v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->x:I

    iget v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->deltaX:I

    add-int/2addr v6, v7

    add-int/2addr v6, v1

    aget v2, v2, v6

    if-ne v2, v3, :cond_0

    .line 65
    iput-boolean v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->moveX:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_2
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->moveX:Z

    if-eqz v0, :cond_3

    .line 69
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->x:I

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->deltaX:I

    add-int/2addr v0, v1

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->x:I

    .line 72
    :cond_3
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->y:I

    add-int/2addr v0, v5

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->coords:[[I

    array-length v1, v1

    add-int/2addr v0, v1

    const/16 v1, 0x10

    if-gt v0, v1, :cond_7

    move v0, v4

    .line 75
    :goto_2
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->coords:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_6

    move v1, v4

    .line 76
    :goto_3
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->coords:[[I

    aget-object v6, v2, v0

    array-length v6, v6

    if-ge v1, v6, :cond_5

    .line 77
    aget-object v2, v2, v0

    aget v2, v2, v1

    if-ne v2, v5, :cond_4

    .line 78
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->board:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->getBoard()[[I

    move-result-object v2

    iget v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->y:I

    add-int/2addr v6, v0

    add-int/2addr v6, v5

    aget-object v2, v2, v6

    iget v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->x:I

    add-int/2addr v6, v1

    aget v2, v2, v6

    if-eqz v2, :cond_4

    .line 79
    iput-boolean v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->collision:Z

    .line 80
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->normalSpeed()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 84
    :cond_6
    sget-wide v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->time:J

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->currentSpeed:I

    int-to-long v6, v2

    cmp-long v0, v0, v6

    if-lez v0, :cond_8

    .line 86
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->y:I

    add-int/2addr v0, v5

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->y:I

    const-wide/16 v0, 0x0

    .line 87
    sput-wide v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->time:J

    goto :goto_4

    .line 90
    :cond_7
    iput-boolean v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->collision:Z

    .line 93
    :cond_8
    :goto_4
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->collision:Z

    if-eqz v0, :cond_c

    move v0, v4

    .line 95
    :goto_5
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->coords:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_b

    move v1, v4

    .line 96
    :goto_6
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->coords:[[I

    aget-object v6, v2, v0

    array-length v6, v6

    if-ge v1, v6, :cond_a

    .line 97
    aget-object v2, v2, v0

    aget v2, v2, v1

    if-ne v2, v5, :cond_9

    .line 98
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->board:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->getBoard()[[I

    move-result-object v2

    iget v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->y:I

    add-int/2addr v6, v0

    aget-object v2, v2, v6

    iget v6, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->x:I

    add-int/2addr v6, v1

    aput v3, v2, v6

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 101
    :cond_b
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->checkLine()V

    .line 102
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->board:Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;->setNextShape()V

    .line 105
    :cond_c
    iput v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->deltaX:I

    .line 106
    iput-boolean v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/Shape;->moveX:Z

    return-void
.end method
