.class public Lcom/badlogic/gdx/utils/SnapshotArray;
.super Lcom/badlogic/gdx/utils/Array;
.source "SnapshotArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/Array<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private recycled:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private snapshot:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private snapshots:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZILjava/lang/Class;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Z[Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[TT;II)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/utils/Array;-><init>(Z[Ljava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    return-void
.end method

.method private modified()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshot:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->items:[Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->recycled:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    if-lt v0, v1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->items:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->recycled:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->recycled:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->items:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->recycled:[Ljava/lang/Object;

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->items:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->resize(I)[Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public static varargs with([Ljava/lang/Object;)Lcom/badlogic/gdx/utils/SnapshotArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/badlogic/gdx/utils/SnapshotArray<",
            "TT;>;"
        }
    .end annotation

    .line 185
    new-instance v0, Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/SnapshotArray;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public begin()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->items:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshot:[Ljava/lang/Object;

    .line 80
    iget v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshots:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshots:I

    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->items:[Ljava/lang/Object;

    return-object v0
.end method

.method public clear()V
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 150
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public end()V
    .locals 4

    .line 86
    iget v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshots:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshots:I

    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshot:[Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->items:[Ljava/lang/Object;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshots:I

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshot:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->recycled:[Ljava/lang/Object;

    .line 91
    array-length v0, v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 92
    iget-object v2, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->recycled:[Ljava/lang/Object;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_1
    iput-object v3, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshot:[Ljava/lang/Object;

    return-void
.end method

.method public insert(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 115
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    return-void
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 145
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Lcom/badlogic/gdx/utils/Array;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+TT;>;Z)Z"
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 140
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->removeAll(Lcom/badlogic/gdx/utils/Array;Z)Z

    move-result p1

    return p1
.end method

.method public removeIndex(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 130
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeRange(II)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 135
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->removeRange(II)V

    return-void
.end method

.method public removeValue(Ljava/lang/Object;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 125
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public reverse()V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 165
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->reverse()V

    return-void
.end method

.method public set(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 110
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    return-void
.end method

.method public setSize(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .line 179
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 180
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/Array;->setSize(I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public shuffle()V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 170
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->shuffle()V

    return-void
.end method

.method public sort()V
    .locals 0

    .line 154
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 155
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->sort()V

    return-void
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 160
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method public swap(II)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 120
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->swap(II)V

    return-void
.end method

.method public truncate(I)V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 175
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/Array;->truncate(I)V

    return-void
.end method
