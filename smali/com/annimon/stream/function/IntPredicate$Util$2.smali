.class final Lcom/annimon/stream/function/IntPredicate$Util$2;
.super Ljava/lang/Object;
.source "IntPredicate.java"

# interfaces
.implements Lcom/annimon/stream/function/IntPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/IntPredicate$Util;->or(Lcom/annimon/stream/function/IntPredicate;Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/function/IntPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$p1:Lcom/annimon/stream/function/IntPredicate;

.field final synthetic val$p2:Lcom/annimon/stream/function/IntPredicate;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/IntPredicate;Lcom/annimon/stream/function/IntPredicate;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/annimon/stream/function/IntPredicate$Util$2;->val$p1:Lcom/annimon/stream/function/IntPredicate;

    iput-object p2, p0, Lcom/annimon/stream/function/IntPredicate$Util$2;->val$p2:Lcom/annimon/stream/function/IntPredicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(I)Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/annimon/stream/function/IntPredicate$Util$2;->val$p1:Lcom/annimon/stream/function/IntPredicate;

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/IntPredicate;->test(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/annimon/stream/function/IntPredicate$Util$2;->val$p2:Lcom/annimon/stream/function/IntPredicate;

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/IntPredicate;->test(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
