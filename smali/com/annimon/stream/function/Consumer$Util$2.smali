.class final Lcom/annimon/stream/function/Consumer$Util$2;
.super Ljava/lang/Object;
.source "Consumer.java"

# interfaces
.implements Lcom/annimon/stream/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/Consumer$Util;->safe(Lcom/annimon/stream/function/ThrowableConsumer;Lcom/annimon/stream/function/Consumer;)Lcom/annimon/stream/function/Consumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$onFailedConsumer:Lcom/annimon/stream/function/Consumer;

.field final synthetic val$throwableConsumer:Lcom/annimon/stream/function/ThrowableConsumer;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/ThrowableConsumer;Lcom/annimon/stream/function/Consumer;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/annimon/stream/function/Consumer$Util$2;->val$throwableConsumer:Lcom/annimon/stream/function/ThrowableConsumer;

    iput-object p2, p0, Lcom/annimon/stream/function/Consumer$Util$2;->val$onFailedConsumer:Lcom/annimon/stream/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/annimon/stream/function/Consumer$Util$2;->val$throwableConsumer:Lcom/annimon/stream/function/ThrowableConsumer;

    invoke-static {v0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/annimon/stream/function/Consumer$Util$2;->val$throwableConsumer:Lcom/annimon/stream/function/ThrowableConsumer;

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/ThrowableConsumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    iget-object v0, p0, Lcom/annimon/stream/function/Consumer$Util$2;->val$onFailedConsumer:Lcom/annimon/stream/function/Consumer;

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0, p1}, Lcom/annimon/stream/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
