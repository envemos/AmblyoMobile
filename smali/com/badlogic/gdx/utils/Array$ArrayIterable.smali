.class public Lcom/badlogic/gdx/utils/Array$ArrayIterable;
.super Ljava/lang/Object;
.source "Array.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Array;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final allowRemove:Z

.field private final array:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation
.end field

.field private iterator1:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

.field private iterator2:Lcom/badlogic/gdx/utils/Array$ArrayIterator;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 621
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/Array$ArrayIterable;-><init>(Lcom/badlogic/gdx/utils/Array;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    iput-object p1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->array:Lcom/badlogic/gdx/utils/Array;

    .line 626
    iput-boolean p2, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->allowRemove:Z

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 632
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator1:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    if-nez v0, :cond_0

    .line 633
    new-instance v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->array:Lcom/badlogic/gdx/utils/Array;

    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->allowRemove:Z

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array$ArrayIterator;-><init>(Lcom/badlogic/gdx/utils/Array;Z)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator1:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    .line 634
    new-instance v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->array:Lcom/badlogic/gdx/utils/Array;

    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->allowRemove:Z

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array$ArrayIterator;-><init>(Lcom/badlogic/gdx/utils/Array;Z)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator2:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator1:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->valid:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 639
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator1:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iput v2, v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    .line 640
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator1:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->valid:Z

    .line 641
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator2:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->valid:Z

    .line 642
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator1:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    return-object v0

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator2:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iput v2, v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    .line 645
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator2:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->valid:Z

    .line 646
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator1:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->valid:Z

    .line 647
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator2:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    return-object v0
.end method
