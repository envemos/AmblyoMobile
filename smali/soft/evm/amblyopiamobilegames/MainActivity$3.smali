.class Lsoft/evm/amblyopiamobilegames/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/MainActivity;->mostrarAlertDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/MainActivity;

.field final synthetic val$tipo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/MainActivity$3;->this$0:Lsoft/evm/amblyopiamobilegames/MainActivity;

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/MainActivity$3;->val$tipo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 459
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/MainActivity$3;->this$0:Lsoft/evm/amblyopiamobilegames/MainActivity;

    iget-object p2, p2, Lsoft/evm/amblyopiamobilegames/MainActivity;->aviso:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 460
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity$3;->val$tipo:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 461
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
