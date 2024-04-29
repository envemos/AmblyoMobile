.class public Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2;
.super Landroid/app/DialogFragment;
.source "RateDialogFragment2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 22
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 23
    sget v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->mensaje:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2$2;

    invoke-direct {v1, p0}, Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2$2;-><init>(Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2;)V

    const v2, 0x7f11018c

    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2$1;

    invoke-direct {v1, p0}, Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2$1;-><init>(Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2;)V

    const v2, 0x7f11014c

    .line 54
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
