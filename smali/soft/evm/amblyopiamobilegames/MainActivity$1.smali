.class Lsoft/evm/amblyopiamobilegames/MainActivity$1;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/MainActivity;->hiloSesion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/MainActivity;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/MainActivity;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/MainActivity$1;->this$0:Lsoft/evm/amblyopiamobilegames/MainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 281
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/MainActivity$1;->this$0:Lsoft/evm/amblyopiamobilegames/MainActivity;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->access$000(Lsoft/evm/amblyopiamobilegames/MainActivity;)V

    return-void
.end method
