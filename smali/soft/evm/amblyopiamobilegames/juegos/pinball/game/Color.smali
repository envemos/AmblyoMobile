.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;
.super Ljava/lang/Object;
.source "Color.java"


# instance fields
.field public final alpha:I

.field public final blue:I

.field public final green:I

.field private inverse:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

.field public final red:I


# direct methods
.method public constructor <init>(IIIILsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V
    .locals 6

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->red:I

    .line 15
    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->green:I

    .line 16
    iput p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->blue:I

    .line 17
    iput p4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->alpha:I

    if-nez p5, :cond_0

    .line 19
    new-instance p5, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    rsub-int v1, p1, 0xff

    rsub-int v2, p2, 0xff

    rsub-int v3, p3, 0xff

    move-object v0, p5

    move v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;-><init>(IIIILsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V

    .line 21
    :cond_0
    iput-object p5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->inverse:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    return-void
.end method

.method public static fromList(Ljava/util/List;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;)",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;"
        }
    .end annotation

    .line 33
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    .line 34
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {v0, v2, p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object p0

    return-object p0

    .line 36
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_1

    .line 37
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 38
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 37
    invoke-static {v0, v2, v1, p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(IIII)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object p0

    return-object p0

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid color size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromRGB(III)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;
    .locals 7

    .line 25
    new-instance v6, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    const/16 v4, 0xff

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;-><init>(IIIILsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V

    return-object v6
.end method

.method public static fromRGB(IIII)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;
    .locals 7

    .line 29
    new-instance v6, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;-><init>(IIIILsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V

    return-object v6
.end method


# virtual methods
.method public blendedWith(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;D)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;
    .locals 8

    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p2, v0

    if-lez v2, :cond_1

    move-wide p2, v0

    .line 52
    :cond_1
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->red:I

    int-to-double v1, v0

    iget v3, p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->red:I

    sub-int/2addr v3, v0

    int-to-double v3, v3

    mul-double/2addr v3, p2

    add-double/2addr v1, v3

    double-to-int v0, v1

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->green:I

    int-to-double v2, v1

    iget v4, p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->green:I

    sub-int/2addr v4, v1

    int-to-double v4, v4

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    double-to-int v1, v2

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->blue:I

    int-to-double v3, v2

    iget v5, p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->blue:I

    sub-int/2addr v5, v2

    int-to-double v5, v5

    mul-double/2addr v5, p2

    add-double/2addr v3, v5

    double-to-int v2, v3

    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->alpha:I

    int-to-double v4, v3

    iget p1, p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->alpha:I

    sub-int/2addr p1, v3

    int-to-double v6, p1

    mul-double/2addr v6, p2

    add-double/2addr v4, v6

    double-to-int p1, v4

    invoke-static {v0, v1, v2, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->fromRGB(IIII)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 60
    instance-of v0, p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 61
    check-cast p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    .line 62
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->red:I

    iget v2, p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->red:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->green:I

    iget v2, p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->green:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->blue:I

    iget v2, p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->blue:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->alpha:I

    iget p1, p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->alpha:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 68
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->red:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->green:I

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->blue:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->alpha:I

    or-int/2addr v0, v1

    return v0
.end method

.method public inverted()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;
    .locals 1

    .line 46
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->inverse:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    return-object v0
.end method
