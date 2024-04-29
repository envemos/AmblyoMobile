.class Lsoft/evm/amblyopiamobilegames/juegos/GameActivity$3;
.super Ljava/lang/Thread;
.source "GameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->insertar()V
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

    .line 335
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity$3;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 338
    :try_start_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity$3;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->insertar(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 342
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseLockedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 340
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    return-void
.end method
