.class Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver$1;
.super Ljava/lang/Thread;
.source "FieldDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 43
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver$1;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldDriver;->threadMain()V

    return-void
.end method
