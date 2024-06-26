.class Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;
.super Ljava/lang/Object;
.source "IntIntMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntIntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapIterator"
.end annotation


# static fields
.field static final INDEX_ILLEGAL:I = -0x2

.field static final INDEX_ZERO:I = -0x1


# instance fields
.field currentIndex:I

.field public hasNext:Z

.field final map:Lcom/badlogic/gdx/utils/IntIntMap;

.field nextIndex:I

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntIntMap;)V
    .locals 1

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 687
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->valid:Z

    .line 690
    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    .line 691
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->reset()V

    return-void
.end method


# virtual methods
.method findNextIndex()V
    .locals 4

    const/4 v0, 0x0

    .line 704
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->hasNext:Z

    .line 705
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 706
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    add-int/2addr v1, v2

    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->nextIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->nextIndex:I

    if-ge v2, v1, :cond_1

    .line 707
    aget v2, v0, v2

    if-eqz v2, :cond_0

    .line 708
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->hasNext:Z

    :cond_1
    return-void
.end method

.method public remove()V
    .locals 3

    .line 715
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->currentIndex:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    goto :goto_0

    .line 717
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->currentIndex:I

    if-ltz v0, :cond_2

    .line 719
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    if-lt v0, v2, :cond_1

    .line 720
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntIntMap;->removeStashIndex(I)V

    .line 721
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->nextIndex:I

    .line 722
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->findNextIndex()V

    goto :goto_0

    .line 724
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->currentIndex:I

    aput v1, v0, v2

    :goto_0
    const/4 v0, -0x2

    .line 726
    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->currentIndex:I

    .line 727
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget v1, v0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    return-void

    .line 718
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x2

    .line 695
    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->currentIndex:I

    const/4 v0, -0x1

    .line 696
    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->nextIndex:I

    .line 697
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 698
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->hasNext:Z

    goto :goto_0

    .line 700
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->findNextIndex()V

    :goto_0
    return-void
.end method
