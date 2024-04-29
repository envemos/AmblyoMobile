.class Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$2;
.super Ljava/lang/Object;
.source "Field5Delegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->startMultiball(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;

.field final synthetic val$doLaunch:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;Ljava/lang/Runnable;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$2;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$2;->val$doLaunch:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 250
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$2;->val$doLaunch:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 251
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$2;->this$0:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;->ACTIVE:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;

    invoke-static {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;->access$302(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/fields/Field5Delegate$MultiballStatus;

    return-void
.end method
