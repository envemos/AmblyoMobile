.class Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad$1;
.super Ljava/lang/Object;
.source "SesionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad$1;->this$1:Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 208
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad$1;->this$1:Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad;

    iget-object v0, v0, Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method
