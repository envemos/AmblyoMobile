.class Lsoft/evm/amblyopiamobilegames/juegos/GameActivity$1;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 122
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 125
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
