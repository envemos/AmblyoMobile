.class Lsoft/evm/amblyopiamobilegames/MainActivity$UpdatesBBDD;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsoft/evm/amblyopiamobilegames/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdatesBBDD"
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


# static fields
.field public static UIHandler:Landroid/os/Handler;


# instance fields
.field user:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1119
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity$UpdatesBBDD;->UIHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1105
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1106
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/MainActivity$UpdatesBBDD;->user:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic lambda$onPostExecute$0()V
    .locals 0

    .line 1128
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/MainActivity;->access$900()V

    return-void
.end method

.method static synthetic lambda$onPreExecute$1()V
    .locals 0

    .line 1134
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/MainActivity;->access$800()V

    return-void
.end method

.method public static runOnUI(Ljava/lang/Runnable;)V
    .locals 1

    .line 1122
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity$UpdatesBBDD;->UIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1101
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/MainActivity$UpdatesBBDD;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 1112
    :try_start_0
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/MainActivity$UpdatesBBDD;->user:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->cargarPartidas(Landroid/content/SharedPreferences;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1114
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1101
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/MainActivity$UpdatesBBDD;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 1127
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1128
    sget-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity$UpdatesBBDD$$ExternalSyntheticLambda0;->INSTANCE:Lsoft/evm/amblyopiamobilegames/MainActivity$UpdatesBBDD$$ExternalSyntheticLambda0;

    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/MainActivity$UpdatesBBDD;->runOnUI(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 1133
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1134
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity$UpdatesBBDD$$ExternalSyntheticLambda1;->INSTANCE:Lsoft/evm/amblyopiamobilegames/MainActivity$UpdatesBBDD$$ExternalSyntheticLambda1;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/MainActivity$UpdatesBBDD;->runOnUI(Ljava/lang/Runnable;)V

    return-void
.end method
