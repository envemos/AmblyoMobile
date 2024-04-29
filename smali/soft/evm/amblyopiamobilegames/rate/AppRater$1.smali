.class Lsoft/evm/amblyopiamobilegames/rate/AppRater$1;
.super Ljava/lang/Object;
.source "AppRater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/rate/AppRater;->showRateDialog(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences$Editor;Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/rate/AppRater$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/rate/AppRater$1;->val$mContext:Landroid/content/Context;

    iput-object p3, p0, Lsoft/evm/amblyopiamobilegames/rate/AppRater$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 76
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/rate/AppRater$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const-string v1, "dontshowagain"

    .line 77
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 78
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/rate/AppRater$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-wide/16 v0, 0x0

    const-string v2, "launch_count"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 79
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/rate/AppRater$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 81
    :cond_0
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/rate/AppRater$1;->val$mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "market://details?id=soft.evm.amblyopiamobilegames"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 82
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/rate/AppRater$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
