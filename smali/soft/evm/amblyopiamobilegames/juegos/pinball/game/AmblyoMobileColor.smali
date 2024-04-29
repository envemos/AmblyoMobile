.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AmblyoMobileColor;
.super Ljava/lang/Object;
.source "AmblyoMobileColor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static valueOf(I)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;
    .locals 3

    .line 26
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 27
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 28
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 29
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    .line 31
    invoke-static {v0, v1, v2, p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(IIII)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object p0

    return-object p0
.end method
