.class Lsoft/evm/amblyopiamobilegames/rate/AppRater$2;
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

    .line 89
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/rate/AppRater$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/rate/AppRater$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 91
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/rate/AppRater$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    const-string v2, "launch_count"

    .line 92
    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 93
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/rate/AppRater$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    :cond_0
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/rate/AppRater$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
