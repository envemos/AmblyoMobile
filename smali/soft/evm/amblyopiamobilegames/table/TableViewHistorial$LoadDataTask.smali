.class Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$LoadDataTask;
.super Landroid/os/AsyncTask;
.source "TableViewHistorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$LoadDataTask;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 457
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$LoadDataTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0xc8

    .line 462
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 464
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const-string p1, "Task Completed."

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 457
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$LoadDataTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 471
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$LoadDataTask;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;

    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->access$200(Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->hide()V

    .line 472
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$LoadDataTask;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->loadData()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 457
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$LoadDataTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
