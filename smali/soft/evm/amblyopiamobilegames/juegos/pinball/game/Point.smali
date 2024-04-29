.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public final x:F

.field public final y:F


# direct methods
.method private constructor <init>(FF)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Point;->x:F

    .line 13
    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Point;->y:F

    return-void
.end method

.method public static fromList(Ljava/util/List;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Point;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;)",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Point;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 21
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {v0, p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Point;->fromXY(FF)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Point;

    move-result-object p0

    return-object p0
.end method

.method public static fromXY(FF)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Point;
    .locals 1

    .line 17
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Point;

    invoke-direct {v0, p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Point;-><init>(FF)V

    return-object v0
.end method
