.class Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment$2;
.super Ljava/lang/Object;
.source "RateDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment$2;->this$0:Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const p1, 0x7f1100c1

    .line 23
    sput p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->mensaje:I

    .line 24
    new-instance p1, Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2;

    invoke-direct {p1}, Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2;-><init>()V

    .line 25
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment$2;->this$0:Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment;

    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const-string v0, "dialog"

    invoke-virtual {p1, p2, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
