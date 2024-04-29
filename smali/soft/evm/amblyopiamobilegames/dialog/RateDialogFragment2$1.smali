.class Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2$1;
.super Ljava/lang/Object;
.source "RateDialogFragment2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2$1;->this$0:Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/16 p1, 0x32

    .line 58
    sput p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->veces:I

    return-void
.end method
