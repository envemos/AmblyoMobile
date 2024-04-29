.class Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;
.super Landroid/os/AsyncTask;
.source "ActividadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsoft/evm/amblyopiamobilegames/ActividadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "iniciarActividad"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field progressDialog:Landroid/app/ProgressDialog;

.field r:Ljava/lang/Runnable;

.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/ActividadActivity;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/ActividadActivity;Landroid/content/Context;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;->this$0:Lsoft/evm/amblyopiamobilegames/ActividadActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 135
    new-instance p1, Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad$1;

    invoke-direct {p1, p0}, Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad$1;-><init>(Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;)V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;->r:Ljava/lang/Runnable;

    .line 107
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 102
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    const-string p1, ""

    .line 112
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;->this$0:Lsoft/evm/amblyopiamobilegames/ActividadActivity;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->access$000(Lsoft/evm/amblyopiamobilegames/ActividadActivity;)V

    .line 114
    :try_start_0
    sget-object v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->user:Landroid/content/SharedPreferences;

    const-string v1, "correo"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 115
    sget-object p1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->user:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->cargarPartidas(Landroid/content/SharedPreferences;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    :cond_0
    :goto_0
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;->this$0:Lsoft/evm/amblyopiamobilegames/ActividadActivity;

    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->access$100(Lsoft/evm/amblyopiamobilegames/ActividadActivity;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 102
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 144
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 145
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;->this$0:Lsoft/evm/amblyopiamobilegames/ActividadActivity;

    const v0, 0x7f0d001e

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->setContentView(I)V

    .line 146
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;->this$0:Lsoft/evm/amblyopiamobilegames/ActividadActivity;

    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->access$200(Lsoft/evm/amblyopiamobilegames/ActividadActivity;)V

    .line 147
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;->this$0:Lsoft/evm/amblyopiamobilegames/ActividadActivity;

    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->access$300(Lsoft/evm/amblyopiamobilegames/ActividadActivity;)V

    .line 149
    :try_start_0
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;->this$0:Lsoft/evm/amblyopiamobilegames/ActividadActivity;

    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->access$400(Lsoft/evm/amblyopiamobilegames/ActividadActivity;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 151
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 125
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 126
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 127
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;->this$0:Lsoft/evm/amblyopiamobilegames/ActividadActivity;

    const v2, 0x7f110070

    invoke-virtual {v1, v2}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 129
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;->progressDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 131
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
