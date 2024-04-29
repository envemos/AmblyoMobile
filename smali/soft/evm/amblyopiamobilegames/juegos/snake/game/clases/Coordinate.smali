.class public Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;
.super Ljava/lang/Object;
.source "Coordinate.java"


# instance fields
.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->x:I

    .line 13
    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->y:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 37
    :cond_1
    check-cast p1, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;

    .line 39
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->getX()I

    move-result v2

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->getX()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    .line 40
    :cond_2
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->getY()I

    move-result v2

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->getY()I

    move-result p1

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getX()I
    .locals 1

    .line 17
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 25
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->y:I

    return v0
.end method

.method public setX(I)V
    .locals 0

    .line 21
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->x:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    .line 29
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/clases/Coordinate;->y:I

    return-void
.end method
