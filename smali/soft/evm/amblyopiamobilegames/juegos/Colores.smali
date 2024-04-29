.class public Lsoft/evm/amblyopiamobilegames/juegos/Colores;
.super Ljava/lang/Object;
.source "Colores.java"


# static fields
.field private static customL:I

.field private static customR:I

.field private static fondo:I

.field private static ojo_sano:I

.field private static ojo_vago:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ajustarColores(Landroid/content/SharedPreferences;)V
    .locals 5

    const-string v0, "ojo_izquierdo"

    const/4 v1, 0x0

    .line 78
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x7

    :cond_0
    const-string v1, "ojo_derecho"

    const/4 v2, 0x1

    .line 81
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "ojo_vago"

    .line 82
    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "customColorL"

    .line 83
    invoke-interface {p0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->customL:I

    const-string v4, "customColorR"

    .line 84
    invoke-interface {p0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->customR:I

    if-ne v3, v2, :cond_1

    .line 86
    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->toColor(I)I

    move-result v0

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->setOjo_vago(I)V

    .line 87
    invoke-static {v1}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->toColor(I)I

    move-result v0

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->setOjo_sano(I)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-static {v1}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->toColor(I)I

    move-result v1

    invoke-static {v1}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->setOjo_vago(I)V

    .line 91
    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->toColor(I)I

    move-result v0

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->setOjo_sano(I)V

    :goto_0
    const-string v0, "fondo"

    .line 93
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, -0x1

    .line 94
    invoke-static {p0}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->setFondo(I)V

    goto :goto_1

    :cond_2
    const/high16 p0, -0x1000000

    .line 96
    invoke-static {p0}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->setFondo(I)V

    :goto_1
    return-void
.end method

.method public static getFondo()I
    .locals 1

    .line 39
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->fondo:I

    return v0
.end method

.method public static getOjo_sano()I
    .locals 1

    .line 15
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->ojo_sano:I

    return v0
.end method

.method public static getOjo_vago()I
    .locals 1

    .line 23
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->ojo_vago:I

    return v0
.end method

.method public static setCustomL(I)V
    .locals 0

    .line 35
    sput p0, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->customL:I

    return-void
.end method

.method public static setCustomR(I)V
    .locals 0

    .line 31
    sput p0, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->customR:I

    return-void
.end method

.method public static setFondo(I)V
    .locals 0

    .line 43
    sput p0, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->fondo:I

    return-void
.end method

.method public static setOjo_sano(I)V
    .locals 0

    .line 19
    sput p0, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->ojo_sano:I

    return-void
.end method

.method public static setOjo_vago(I)V
    .locals 0

    .line 27
    sput p0, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->ojo_vago:I

    return-void
.end method

.method public static toColor(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 71
    :pswitch_0
    sget p0, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->customL:I

    goto :goto_0

    .line 68
    :pswitch_1
    sget p0, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->customR:I

    goto :goto_0

    :pswitch_2
    const p0, -0xff0100

    goto :goto_0

    :pswitch_3
    const p0, -0xff01

    goto :goto_0

    :pswitch_4
    const p0, -0xff0001

    goto :goto_0

    :pswitch_5
    const/16 p0, -0x100

    goto :goto_0

    :pswitch_6
    const p0, -0xffff01

    goto :goto_0

    :pswitch_7
    const/high16 p0, -0x10000

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
