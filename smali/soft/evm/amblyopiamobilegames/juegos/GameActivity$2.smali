.class Lsoft/evm/amblyopiamobilegames/juegos/GameActivity$2;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->mostrarAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity$2;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 134
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 135
    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->dont_show_again:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 137
    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->dont_show_again:Z

    :goto_0
    return-void
.end method
