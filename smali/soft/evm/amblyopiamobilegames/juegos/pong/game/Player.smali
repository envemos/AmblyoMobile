.class Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;
.super Ljava/lang/Object;
.source "Player.java"


# instance fields
.field bounds:Landroid/graphics/RectF;

.field collision:I

.field paddleHeight:I

.field paddleWidth:I

.field paint:Landroid/graphics/Paint;

.field score:I


# direct methods
.method constructor <init>(IILandroid/graphics/Paint;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->paddleWidth:I

    .line 17
    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->paddleHeight:I

    .line 18
    iput-object p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->paint:Landroid/graphics/Paint;

    const/4 p3, 0x0

    .line 19
    iput p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->score:I

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->bounds:Landroid/graphics/RectF;

    .line 21
    iput p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Player;->collision:I

    return-void
.end method
