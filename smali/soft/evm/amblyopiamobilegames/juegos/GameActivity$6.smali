.class Lsoft/evm/amblyopiamobilegames/juegos/GameActivity$6;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->seguro()V
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

    .line 393
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity$6;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 396
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity$6;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->guardarPartidaDialog()V

    return-void
.end method
