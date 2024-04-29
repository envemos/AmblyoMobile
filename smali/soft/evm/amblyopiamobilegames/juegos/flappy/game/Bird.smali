.class public Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;
.super Ljava/lang/Object;
.source "Bird.java"


# instance fields
.field public primeraVez:Z

.field public radio:F

.field public vy:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;->primeraVez:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;->primeraVez:Z

    .line 14
    div-int/lit8 v0, p1, 0x14

    int-to-float v0, v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;->radio:F

    int-to-float p1, p1

    .line 15
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;->width:F

    return-void
.end method


# virtual methods
.method public jump()V
    .locals 2

    .line 24
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;->vy:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 25
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;->width:F

    neg-float v0, v0

    const/high16 v1, 0x42340000    # 45.0f

    div-float/2addr v0, v1

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;->vy:F

    :cond_0
    return-void
.end method

.method public physics()V
    .locals 3

    .line 19
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;->vy:F

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;->width:F

    const/high16 v2, 0x442f0000    # 700.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;->vy:F

    .line 20
    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;->y:F

    add-float/2addr v1, v0

    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/Bird;->y:F

    return-void
.end method
