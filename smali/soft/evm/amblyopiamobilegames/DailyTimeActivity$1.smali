.class Lsoft/evm/amblyopiamobilegames/DailyTimeActivity$1;
.super Ljava/lang/Object;
.source "DailyTimeActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->setValores()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity$1;->this$0:Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 51
    iget-object p3, p0, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity$1;->this$0:Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;

    iget-object p3, p3, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v0, "tiempo_diario"

    invoke-interface {p3, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 52
    iget-object p3, p0, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity$1;->this$0:Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;

    iget-object p3, p3, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 53
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v0, p2, 0x5

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity$1;->this$0:Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;

    const v1, 0x7f110119

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 54
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity$1;->this$0:Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;

    iget-object v0, v0, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->minutes:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
