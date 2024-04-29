.class Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView$2;
.super Landroid/os/Handler;
.source "PongView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView$2;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView$2;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;->access$100(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView$2;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;

    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;->access$100(Lsoft/evm/amblyopiamobilegames/juegos/pong/game/PongView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
