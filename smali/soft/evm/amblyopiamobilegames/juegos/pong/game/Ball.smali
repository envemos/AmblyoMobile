.class Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;
.super Ljava/lang/Object;
.source "Ball.java"


# instance fields
.field cx:F

.field cy:F

.field dx:F

.field dy:F

.field paint:Landroid/graphics/Paint;

.field radius:I


# direct methods
.method constructor <init>(ILandroid/graphics/Paint;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->radius:I

    .line 16
    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Ball;->paint:Landroid/graphics/Paint;

    return-void
.end method
