.class Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig$1;
.super Ljava/lang/Object;
.source "SpaceConfig.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;->iniciarBarra()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 57
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;

    iget-object p1, p1, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const-string p3, "level"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 58
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;

    iget-object p1, p1, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;

    const p3, 0x7f0a0262

    invoke-virtual {p1, p3}, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 60
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;

    const v1, 0x7f110149

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
