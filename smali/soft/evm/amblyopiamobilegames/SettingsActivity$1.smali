.class Lsoft/evm/amblyopiamobilegames/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/pes/androidmaterialcolorpickerdialog/ColorPickerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/SettingsActivity;->colorPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/SettingsActivity;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/SettingsActivity;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity$1;->this$0:Lsoft/evm/amblyopiamobilegames/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChosen(I)V
    .locals 2

    .line 76
    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->setCustomR(I)V

    .line 78
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity$1;->this$0:Lsoft/evm/amblyopiamobilegames/SettingsActivity;

    iget-object v0, v0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "customColorR"

    .line 79
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
