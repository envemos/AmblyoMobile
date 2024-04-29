.class Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame$3;
.super Landroid/os/AsyncTask;
.source "PinballGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame$3;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 164
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 167
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->loadSounds()V

    const/4 p1, 0x0

    return-object p1
.end method
