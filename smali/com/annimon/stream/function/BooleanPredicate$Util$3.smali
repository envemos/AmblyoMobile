.class final Lcom/annimon/stream/function/BooleanPredicate$Util$3;
.super Ljava/lang/Object;
.source "BooleanPredicate.java"

# interfaces
.implements Lcom/annimon/stream/function/BooleanPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/BooleanPredicate$Util;->or(Lcom/annimon/stream/function/BooleanPredicate;Lcom/annimon/stream/function/BooleanPredicate;)Lcom/annimon/stream/function/BooleanPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$p1:Lcom/annimon/stream/function/BooleanPredicate;

.field final synthetic val$p2:Lcom/annimon/stream/function/BooleanPredicate;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/BooleanPredicate;Lcom/annimon/stream/function/BooleanPredicate;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/annimon/stream/function/BooleanPredicate$Util$3;->val$p1:Lcom/annimon/stream/function/BooleanPredicate;

    iput-object p2, p0, Lcom/annimon/stream/function/BooleanPredicate$Util$3;->val$p2:Lcom/annimon/stream/function/BooleanPredicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Z)Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/annimon/stream/function/BooleanPredicate$Util$3;->val$p1:Lcom/annimon/stream/function/BooleanPredicate;

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/BooleanPredicate;->test(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/annimon/stream/function/BooleanPredicate$Util$3;->val$p2:Lcom/annimon/stream/function/BooleanPredicate;

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/BooleanPredicate;->test(Z)Z

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
