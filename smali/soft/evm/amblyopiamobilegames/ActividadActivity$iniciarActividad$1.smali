.class Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad$1;
.super Ljava/lang/Object;
.source "ActividadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad$1;->this$1:Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 138
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad$1;->this$1:Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;

    iget-object v0, v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method
