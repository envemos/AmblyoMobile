.class public Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;
.super Ljava/lang/Object;
.source "DragAndDrop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Payload"
.end annotation


# instance fields
.field dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field invalidDragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field object:Ljava/lang/Object;

.field validDragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDragActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getInvalidDragActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;->invalidDragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getValidDragActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;->validDragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public setDragActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-void
.end method

.method public setInvalidDragActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;->invalidDragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;->object:Ljava/lang/Object;

    return-void
.end method

.method public setValidDragActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;->validDragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-void
.end method
