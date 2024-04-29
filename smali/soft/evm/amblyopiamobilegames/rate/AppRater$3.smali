.class Lsoft/evm/amblyopiamobilegames/rate/AppRater$3;
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


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences$Editor;Landroid/app/Dialog;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/rate/AppRater$3;->val$editor:Landroid/content/SharedPreferences$Editor;

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/rate/AppRater$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 104
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/rate/AppRater$3;->val$editor:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const-string v1, "dontshowagain"

    .line 105
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 106
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/rate/AppRater$3;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-wide/16 v0, 0x0

    const-string v2, "launch_count"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 107
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/rate/AppRater$3;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 109
    :cond_0
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/rate/AppRater$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
