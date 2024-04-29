.class abstract Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;
.super Ljava/lang/Object;
.source "ObjectMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TI;>;",
        "Ljava/util/Iterator<",
        "TI;>;"
    }
.end annotation


# instance fields
.field currentIndex:I

.field public hasNext:Z

.field final map:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 677
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->valid:Z

    .line 680
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 681
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->reset()V

    return-void
.end method


# virtual methods
.method findNextIndex()V
    .locals 4

    const/4 v0, 0x0

    .line 691
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->hasNext:Z

    .line 692
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 693
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    add-int/2addr v1, v2

    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->nextIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->nextIndex:I

    if-ge v2, v1, :cond_1

    .line 694
    aget-object v2, v0, v2

    if-eqz v2, :cond_0

    .line 695
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->hasNext:Z

    :cond_1
    return-void
.end method

.method public remove()V
    .locals 3

    .line 702
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->currentIndex:I

    if-ltz v0, :cond_1

    .line 703
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    if-lt v0, v1, :cond_0

    .line 704
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->removeStashIndex(I)V

    .line 705
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->nextIndex:I

    .line 706
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->findNextIndex()V

    goto :goto_0

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->currentIndex:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 709
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->currentIndex:I

    aput-object v2, v0, v1

    :goto_0
    const/4 v0, -0x1

    .line 711
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->currentIndex:I

    .line 712
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v1, v0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    return-void

    .line 702
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x1

    .line 685
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->currentIndex:I

    .line 686
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->nextIndex:I

    .line 687
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->findNextIndex()V

    return-void
.end method
