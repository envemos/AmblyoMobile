.class public Lsoft/evm/amblyopiamobilegames/juegos/Pausa;
.super Ljava/lang/Object;
.source "Pausa.java"


# static fields
.field public static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pausa()V
    .locals 3

    const/4 v0, 0x1

    .line 15
    sput-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->pause:Z

    .line 16
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/Pausa;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x108009b

    .line 18
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110113

    .line 20
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110176

    .line 22
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/Pausa$2;

    invoke-direct {v1}, Lsoft/evm/amblyopiamobilegames/juegos/Pausa$2;-><init>()V

    const v2, 0x7f110179

    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/Pausa$1;

    invoke-direct {v1}, Lsoft/evm/amblyopiamobilegames/juegos/Pausa$1;-><init>()V

    const v2, 0x7f110180

    .line 33
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static seguro()V
    .locals 3

    .line 43
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/Pausa;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    .line 45
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110185

    .line 47
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f11014e

    .line 49
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/Pausa$4;

    invoke-direct {v1}, Lsoft/evm/amblyopiamobilegames/juegos/Pausa$4;-><init>()V

    const v2, 0x7f11018a

    .line 51
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/Pausa$3;

    invoke-direct {v1}, Lsoft/evm/amblyopiamobilegames/juegos/Pausa$3;-><init>()V

    const v2, 0x7f11014a

    .line 59
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
