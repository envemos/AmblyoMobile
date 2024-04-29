.class Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2$2;
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

    .line 24
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2$2;->this$0:Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 30
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string p2, "android.intent.action.VIEW"

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "market://details?id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2$2;->this$0:Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 33
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x48080000    # 139264.0f

    .line 36
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 40
    :try_start_0
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2$2;->this$0:Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2;

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2$2;->this$0:Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2;

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2$2;->this$0:Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2;

    .line 43
    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 42
    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p1, "https://play.google.com/store/apps/details?id=soft.evm.amblyopiamobilegames"

    .line 47
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 49
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2$2;->this$0:Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2;

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/dialog/RateDialogFragment2;->startActivity(Landroid/content/Intent;)V

    :goto_0
    const/4 p1, 0x1

    .line 51
    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->isRate:Z

    return-void
.end method
