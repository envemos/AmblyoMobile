.class Lsoft/evm/amblyopiamobilegames/juegos/GameActivity$5;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->guardarPartidaDialog()V
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

    .line 361
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity$5;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 364
    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->accountPicker:Z

    .line 365
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity$5;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->finish()V

    return-void
.end method
