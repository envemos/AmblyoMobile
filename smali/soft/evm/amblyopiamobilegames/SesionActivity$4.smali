.class Lsoft/evm/amblyopiamobilegames/SesionActivity$4;
.super Ljava/lang/Object;
.source "SesionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/SesionActivity;->cerrarSesion(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/SesionActivity;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/SesionActivity;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity$4;->this$0:Lsoft/evm/amblyopiamobilegames/SesionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 436
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity$4;->this$0:Lsoft/evm/amblyopiamobilegames/SesionActivity;

    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->access$300(Lsoft/evm/amblyopiamobilegames/SesionActivity;)V

    .line 437
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity$4;->this$0:Lsoft/evm/amblyopiamobilegames/SesionActivity;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->finish()V

    return-void
.end method
