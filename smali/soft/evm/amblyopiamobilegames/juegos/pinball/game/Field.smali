.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;
.super Ljava/lang/Object;
.source "Field.java"

# interfaces
.implements Lcom/badlogic/gdx/physics/box2d/ContactListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$ScheduledAction;,
        Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$Delegate;
    }
.end annotation


# static fields
.field static final STUCK_BALL_NANOS:J = 0x2540be400L


# instance fields
.field RAND:Ljava/util/Random;

.field activatedFlippers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;",
            ">;"
        }
    .end annotation
.end field

.field audioPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AudioPlayer;

.field balls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;",
            ">;"
        }
    .end annotation
.end field

.field ballsAtTargets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation
.end field

.field bodyToFieldElement:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;",
            ">;"
        }
    .end annotation
.end field

.field clock:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Clock;

.field contactedBalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;",
            ">;"
        }
    .end annotation
.end field

.field contactedFixtures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/badlogic/gdx/physics/box2d/Fixture;",
            ">;"
        }
    .end annotation
.end field

.field deadBalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;",
            ">;"
        }
    .end annotation
.end field

.field delegate:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$Delegate;

.field elementsByGroupID:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;",
            ">;>;"
        }
    .end annotation
.end field

.field fieldElementsArray:[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

.field fieldElementsByID:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;",
            ">;"
        }
    .end annotation
.end field

.field fieldElementsToTick:[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

.field gameMessage:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameMessage;

.field gameState:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

.field gameTime:J

.field hasExtraBall:Z

.field lastBallPositionX:F

.field lastBallPositionY:F

.field layout:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;

.field layoutBodies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation
.end field

.field nanosSinceBallMoved:J

.field scheduledActions:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$ScheduledAction;",
            ">;"
        }
    .end annotation
.end field

.field world:Lcom/badlogic/gdx/physics/box2d/World;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->elementsByGroupID:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->RAND:Ljava/util/Random;

    .line 57
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    invoke-direct {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameState:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    const-wide/16 v0, -0x1

    .line 63
    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->nanosSinceBallMoved:J

    .line 69
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AudioPlayer$NoOpPlayer;->getInstance()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AudioPlayer$NoOpPlayer;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->audioPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AudioPlayer;

    .line 70
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Clock$SystemClock;->getInstance()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Clock$SystemClock;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->clock:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Clock;

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->deadBalls:Ljava/util/ArrayList;

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->activatedFlippers:Ljava/util/ArrayList;

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->contactedBalls:Ljava/util/ArrayList;

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->contactedFixtures:Ljava/util/ArrayList;

    return-void
.end method

.method private _startGame(Z)V
    .locals 2

    .line 164
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameState:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->layout:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->getNumberOfBalls()I

    move-result v1

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->setTotalBalls(I)V

    .line 165
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameState:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    invoke-virtual {v0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->setUnlimitedBalls(Z)V

    .line 166
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameState:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->startNewGame()V

    .line 167
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getDelegate()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$Delegate;

    move-result-object p1

    invoke-interface {p1, p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$Delegate;->gameStarted(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    return-void
.end method

.method private ballWithBody(Lcom/badlogic/gdx/physics/box2d/Body;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;
    .locals 3

    const/4 v0, 0x0

    .line 454
    :goto_0
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->balls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 455
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->balls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;

    .line 456
    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addExtraBall()V
    .locals 2

    .line 565
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameState:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->getExtraBalls()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->setExtraBalls(I)V

    return-void
.end method

.method public addScore(J)V
    .locals 1

    .line 572
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameState:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    invoke-virtual {v0, p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->addScore(J)V

    return-void
.end method

.method public beginContact(Lcom/badlogic/gdx/physics/box2d/Contact;)V
    .locals 0

    return-void
.end method

.method checkForStuckBall(J)V
    .locals 8

    .line 527
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getBalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-wide/16 p1, -0x1

    .line 528
    iput-wide p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->nanosSinceBallMoved:J

    return-void

    .line 531
    :cond_0
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getBalls()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;

    .line 532
    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    .line 533
    iget-wide v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->nanosSinceBallMoved:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 535
    iget p1, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->lastBallPositionX:F

    .line 536
    iget p1, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->lastBallPositionY:F

    .line 537
    iput-wide v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->nanosSinceBallMoved:J

    return-void

    .line 540
    :cond_1
    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Vector2;->len2()F

    move-result v3

    const v4, 0x3c23d70a    # 0.01f

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_7

    iget v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->lastBallPositionX:F

    iget v7, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->lastBallPositionY:F

    .line 541
    invoke-virtual {v2, v3, v7}, Lcom/badlogic/gdx/math/Vector2;->dst2(FF)F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    goto :goto_2

    .line 549
    :cond_2
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFlipperElements()Ljava/util/List;

    move-result-object v2

    .line 550
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 551
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->isFlipperEngaged()Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 554
    :cond_4
    iget-wide v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->nanosSinceBallMoved:J

    add-long/2addr v1, p1

    iput-wide v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->nanosSinceBallMoved:J

    const-wide p1, 0x2540be400L

    cmp-long p1, v1, p1

    if-lez p1, :cond_6

    const-wide/16 p1, 0x3e8

    const-string v1, "Bump!"

    .line 556
    invoke-virtual {p0, v1, p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    .line 558
    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->RAND:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextBoolean()Z

    move-result p2

    if-eqz p2, :cond_5

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    const/high16 p2, -0x40800000    # -1.0f

    :goto_1
    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {p1, p2, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 559
    invoke-virtual {v0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->applyLinearImpulse(Lcom/badlogic/gdx/math/Vector2;)V

    .line 560
    iput-wide v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->nanosSinceBallMoved:J

    :cond_6
    return-void

    .line 543
    :cond_7
    :goto_2
    iget p1, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->lastBallPositionX:F

    .line 544
    iget p1, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->lastBallPositionY:F

    .line 545
    iput-wide v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->nanosSinceBallMoved:J

    return-void
.end method

.method clearBallContacts()V
    .locals 1

    .line 428
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->contactedBalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 429
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->contactedFixtures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public doBallLost()V
    .locals 4

    .line 285
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameState:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->getExtraBalls()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->hasExtraBall:Z

    .line 286
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameState:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->doNextBall()V

    const/4 v0, 0x0

    .line 289
    iget-boolean v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->hasExtraBall:Z

    if-eqz v1, :cond_1

    const-string v0, "Shoot Again"

    goto :goto_1

    .line 290
    :cond_1
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameState:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->isGameInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ball "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameState:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->getBallNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    const-wide/16 v1, 0x5dc

    .line 295
    new-instance v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$1;

    invoke-direct {v3, p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$1;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2, v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->scheduleAction(JLjava/lang/Runnable;)V

    goto :goto_2

    .line 303
    :cond_3
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->endGame()V

    .line 306
    :goto_2
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getDelegate()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$Delegate;

    move-result-object v0

    invoke-interface {v0, p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$Delegate;->ballLost(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    return-void
.end method

.method public drawBalls(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;)V
    .locals 2

    const/4 v0, 0x0

    .line 350
    :goto_0
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->balls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 351
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->balls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;

    invoke-virtual {v1, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->draw(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public endContact(Lcom/badlogic/gdx/physics/box2d/Contact;)V
    .locals 2

    .line 470
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Contact;->getFixtureA()Lcom/badlogic/gdx/physics/box2d/Fixture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    invoke-direct {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->ballWithBody(Lcom/badlogic/gdx/physics/box2d/Body;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Contact;->getFixtureB()Lcom/badlogic/gdx/physics/box2d/Fixture;

    move-result-object p1

    goto :goto_0

    .line 475
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Contact;->getFixtureB()Lcom/badlogic/gdx/physics/box2d/Fixture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    invoke-direct {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->ballWithBody(Lcom/badlogic/gdx/physics/box2d/Body;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 477
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Contact;->getFixtureA()Lcom/badlogic/gdx/physics/box2d/Fixture;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 482
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->contactedBalls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->contactedFixtures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public endGame()V
    .locals 3

    .line 401
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->audioPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AudioPlayer;

    invoke-interface {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AudioPlayer;->playStart()V

    .line 402
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getBalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;

    .line 403
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->world:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/physics/box2d/World;->destroyBody(Lcom/badlogic/gdx/physics/box2d/Body;)V

    goto :goto_0

    .line 405
    :cond_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->balls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 406
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->setGameInProgress(Z)V

    const-wide/16 v0, 0x9c4

    const-string v2, "Game Over"

    .line 407
    invoke-virtual {p0, v2, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;J)V

    .line 408
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getDelegate()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$Delegate;

    move-result-object v0

    invoke-interface {v0, p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$Delegate;->gameEnded(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    return-void
.end method

.method public getAudioPlayer()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AudioPlayer;
    .locals 1

    .line 647
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->audioPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AudioPlayer;

    return-object v0
.end method

.method public getBalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;",
            ">;"
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->balls:Ljava/util/List;

    return-object v0
.end method

.method public getBox2DWorld()Lcom/badlogic/gdx/physics/box2d/World;
    .locals 1

    .line 635
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->world:Lcom/badlogic/gdx/physics/box2d/World;

    return-object v0
.end method

.method public getClock()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Clock;
    .locals 1

    .line 654
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->clock:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Clock;

    return-object v0
.end method

.method public getDelegate()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$Delegate;
    .locals 1

    .line 639
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->delegate:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$Delegate;

    return-object v0
.end method

.method public getFieldElementById(Ljava/lang/String;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;
    .locals 1

    .line 182
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->fieldElementsByID:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    return-object p1
.end method

.method public getFieldElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;",
            ">;"
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->layout:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->getFieldElements()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFieldElementsArray()[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;
    .locals 1

    .line 615
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->fieldElementsArray:[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    return-object v0
.end method

.method public getFieldLayout()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;
    .locals 1

    .line 606
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->layout:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;

    return-object v0
.end method

.method public getFlipperElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;",
            ">;"
        }
    .end annotation

    .line 609
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->layout:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->getFlipperElements()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGameMessage()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameMessage;
    .locals 1

    .line 619
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameMessage:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameMessage;

    return-object v0
.end method

.method public getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;
    .locals 1

    .line 623
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameState:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    return-object v0
.end method

.method public getGameTime()J
    .locals 2

    .line 627
    iget-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameTime:J

    return-wide v0
.end method

.method public getHeight()F
    .locals 1

    .line 596
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->layout:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->getHeight()F

    move-result v0

    return v0
.end method

.method public getLayoutBodies()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation

    .line 600
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->layoutBodies:Ljava/util/Set;

    return-object v0
.end method

.method public getScore()J
    .locals 2

    .line 576
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameState:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->getScore()J

    move-result-wide v0

    return-wide v0
.end method

.method public getScoreMultiplier()D
    .locals 2

    .line 584
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameState:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->getScoreMultiplier()D

    move-result-wide v0

    return-wide v0
.end method

.method public getTargetTimeRatio()F
    .locals 1

    .line 631
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->layout:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->getTargetTimeRatio()F

    move-result v0

    return v0
.end method

.method public getValueWithKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 643
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->layout:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;

    invoke-virtual {v0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->getValueWithKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getWidth()F
    .locals 1

    .line 593
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->layout:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->getWidth()F

    move-result v0

    return v0
.end method

.method public hasActiveElements()Z
    .locals 4

    .line 316
    iget-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameTime:J

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gez v0, :cond_0

    return v1

    .line 318
    :cond_0
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getDelegate()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$Delegate;

    move-result-object v0

    invoke-interface {v0, p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$Delegate;->isFieldActive(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 319
    :cond_1
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getBalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public incrementScoreMultiplier()V
    .locals 1

    .line 580
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameState:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->incrementScoreMultiplier()V

    return-void
.end method

.method public launchBall()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;
    .locals 10

    .line 250
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->layout:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->getLaunchPosition()Ljava/util/List;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->layout:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->getLaunchVelocity()Ljava/util/List;

    move-result-object v1

    .line 252
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->layout:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;

    invoke-virtual {v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->getBallRadius()F

    move-result v6

    .line 254
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->world:Lcom/badlogic/gdx/physics/box2d/World;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v9, 0x1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->layout:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;

    .line 255
    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->getBallColor()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v7

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->layout:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->getSecondaryBallColor()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

    move-result-object v8

    .line 254
    invoke-static/range {v3 .. v8}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->create(Lcom/badlogic/gdx/physics/box2d/World;FFFLsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v3

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {v4, v2, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/physics/box2d/Body;->setLinearVelocity(Lcom/badlogic/gdx/math/Vector2;)V

    .line 257
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->balls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->audioPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AudioPlayer;

    invoke-interface {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AudioPlayer;->playBall()V

    return-object v0
.end method

.method public postSolve(Lcom/badlogic/gdx/physics/box2d/Contact;Lcom/badlogic/gdx/physics/box2d/ContactImpulse;)V
    .locals 0

    return-void
.end method

.method public preSolve(Lcom/badlogic/gdx/physics/box2d/Contact;Lcom/badlogic/gdx/physics/box2d/Manifold;)V
    .locals 0

    return-void
.end method

.method processBallContacts()V
    .locals 6

    const/4 v0, 0x0

    .line 436
    :goto_0
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->contactedBalls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 437
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->contactedBalls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;

    .line 438
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->contactedFixtures:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 439
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->bodyToFieldElement:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    if-eqz v3, :cond_1

    .line 441
    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v4

    invoke-virtual {v3, v1, v4, p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->handleCollision(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;Lcom/badlogic/gdx/physics/box2d/Body;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    .line 442
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->delegate:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$Delegate;

    if-eqz v4, :cond_0

    .line 443
    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v2

    invoke-interface {v4, p0, v3, v2, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$Delegate;->processCollision(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;Lcom/badlogic/gdx/physics/box2d/Body;Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)V

    .line 445
    :cond_0
    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->getScore()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-eqz v1, :cond_1

    .line 446
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameState:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->getScore()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->addScore(J)V

    .line 447
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->audioPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AudioPlayer;

    invoke-interface {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AudioPlayer;->playScore()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method processElementTicks()V
    .locals 3

    .line 211
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->fieldElementsToTick:[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 213
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->fieldElementsToTick:[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->tick(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method processGameMessages()V
    .locals 4

    .line 514
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameMessage:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameMessage;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->clock:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Clock;

    invoke-interface {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameMessage:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameMessage;

    iget-wide v2, v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameMessage;->creationTime:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameMessage:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameMessage;

    iget-wide v2, v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameMessage;->duration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 516
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameMessage:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameMessage;

    :cond_0
    return-void
.end method

.method processScheduledActions()V
    .locals 5

    .line 222
    :goto_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->scheduledActions:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$ScheduledAction;

    if-eqz v0, :cond_0

    .line 223
    iget-wide v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameTime:J

    iget-object v3, v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$ScheduledAction;->actionTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 224
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->scheduledActions:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 225
    iget-object v0, v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$ScheduledAction;->action:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public receivedOrientationValues(FFF)V
    .locals 4

    float-to-double p1, p3

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr p1, v0

    .line 416
    iget-object p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->layout:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;

    invoke-virtual {p3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->getGravity()F

    move-result p3

    float-to-double v0, p3

    .line 417
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    double-to-float p3, v2

    .line 418
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double/2addr v0, p1

    double-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    neg-float p1, p1

    .line 419
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->world:Lcom/badlogic/gdx/physics/box2d/World;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, p3, p1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/physics/box2d/World;->setGravity(Lcom/badlogic/gdx/math/Vector2;)V

    return-void
.end method

.method public removeBall(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)V
    .locals 2

    .line 264
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->world:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->destroyBody(Lcom/badlogic/gdx/physics/box2d/Body;)V

    .line 265
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->balls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 266
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->balls:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 267
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->doBallLost()V

    :cond_0
    return-void
.end method

.method public removeBallWithoutBallLoss(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;)V
    .locals 2

    .line 276
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->world:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->destroyBody(Lcom/badlogic/gdx/physics/box2d/Body;)V

    .line 277
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->balls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeDeadBalls()V
    .locals 7

    .line 329
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->layout:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->getLaunchDeadZone()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 332
    :goto_0
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->balls:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 333
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->balls:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;

    .line 334
    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    .line 335
    iget v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    iget v5, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    iget v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v6, 0x2

    .line 336
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v5, 0x3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 337
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->deadBalls:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->world:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Ball;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/physics/box2d/World;->destroyBody(Lcom/badlogic/gdx/physics/box2d/Body;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    :cond_2
    :goto_1
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->deadBalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 343
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->balls:Ljava/util/List;

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->deadBalls:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 345
    :cond_3
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->deadBalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public resetForLevel(Landroid/content/Context;I)V
    .locals 4

    .line 112
    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {p1, v0, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 114
    new-instance v1, Lcom/badlogic/gdx/physics/box2d/World;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/badlogic/gdx/physics/box2d/World;-><init>(Lcom/badlogic/gdx/math/Vector2;Z)V

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->world:Lcom/badlogic/gdx/physics/box2d/World;

    .line 115
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/physics/box2d/World;->setContactListener(Lcom/badlogic/gdx/physics/box2d/ContactListener;)V

    .line 117
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->world:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-static {p2, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->layoutForLevel(ILcom/badlogic/gdx/physics/box2d/World;)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->layout:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;

    .line 118
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->world:Lcom/badlogic/gdx/physics/box2d/World;

    new-instance p2, Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->layout:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->getGravity()F

    move-result v1

    neg-float v1, v1

    invoke-direct {p2, v0, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/physics/box2d/World;->setGravity(Lcom/badlogic/gdx/math/Vector2;)V

    .line 119
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->balls:Ljava/util/List;

    .line 120
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->ballsAtTargets:Ljava/util/Set;

    .line 122
    new-instance p1, Ljava/util/PriorityQueue;

    invoke-direct {p1}, Ljava/util/PriorityQueue;-><init>()V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->scheduledActions:Ljava/util/PriorityQueue;

    const-wide/16 p1, 0x0

    .line 123
    iput-wide p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameTime:J

    .line 126
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->bodyToFieldElement:Ljava/util/Map;

    .line 127
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->fieldElementsByID:Ljava/util/Map;

    .line 128
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->layout:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;

    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->getFieldElements()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    .line 131
    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->getElementId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->fieldElementsByID:Ljava/util/Map;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->getElementId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_1
    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->getBodies()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/physics/box2d/Body;

    .line 135
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->bodyToFieldElement:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 137
    :cond_2
    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->shouldCallTick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    new-array v0, p2, [Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    .line 141
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->fieldElementsToTick:[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    .line 142
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->layout:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->getFieldElements()Ljava/util/List;

    move-result-object p1

    new-array p2, p2, [Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->fieldElementsArray:[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    const/4 p1, 0x0

    .line 144
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->delegate:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$Delegate;

    .line 145
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->layout:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->getDelegateClassName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const/16 p2, 0x2e

    .line 147
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 148
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "soft.evm.amblyopiamobilegames.juegos.pinball.game.fields."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 151
    :cond_4
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$Delegate;

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->delegate:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$Delegate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 154
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 159
    :cond_5
    new-instance p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/BaseFieldDelegate;

    invoke-direct {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/BaseFieldDelegate;-><init>()V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->delegate:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$Delegate;

    :goto_2
    return-void
.end method

.method public scheduleAction(JLjava/lang/Runnable;)V
    .locals 5

    .line 238
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$ScheduledAction;

    invoke-direct {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$ScheduledAction;-><init>()V

    .line 240
    iget-wide v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameTime:J

    const-wide/32 v3, 0xf4240

    mul-long/2addr p1, v3

    add-long/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$ScheduledAction;->actionTime:Ljava/lang/Long;

    .line 241
    iput-object p3, v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$ScheduledAction;->action:Ljava/lang/Runnable;

    .line 242
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->scheduledActions:Ljava/util/PriorityQueue;

    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAllFlippersEngaged(Z)V
    .locals 1

    .line 386
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFlipperElements()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->setFlippersEngaged(Ljava/util/List;Z)V

    return-void
.end method

.method public setAudioPlayer(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AudioPlayer;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->audioPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AudioPlayer;

    return-void
.end method

.method public setClock(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Clock;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->clock:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Clock;

    return-void
.end method

.method public setFlippersEngaged(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;",
            ">;Z)V"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->activatedFlippers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 364
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    .line 366
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;

    .line 367
    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->isFlipperEngaged()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p2, :cond_0

    .line 370
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->activatedFlippers:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move v2, v1

    .line 373
    :cond_1
    invoke-virtual {v4, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FlipperElement;->setFlipperEngaged(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    if-nez v2, :cond_4

    .line 377
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->audioPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AudioPlayer;

    invoke-interface {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AudioPlayer;->playFlipper()V

    .line 378
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementsArray()[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object p1

    array-length p2, p1

    :goto_1
    if-ge v1, p2, :cond_3

    aget-object v0, p1, v1

    .line 379
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->activatedFlippers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->flippersActivated(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 381
    :cond_3
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getDelegate()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$Delegate;

    move-result-object p1

    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->activatedFlippers:Ljava/util/ArrayList;

    invoke-interface {p1, p0, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$Delegate;->flippersActivated(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public setLeftFlippersEngaged(Z)V
    .locals 1

    .line 390
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->layout:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->getLeftFlipperElements()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->setFlippersEngaged(Ljava/util/List;Z)V

    return-void
.end method

.method public setRightFlippersEngaged(Z)V
    .locals 1

    .line 393
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->layout:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldLayout;->getRightFlipperElements()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->setFlippersEngaged(Ljava/util/List;Z)V

    return-void
.end method

.method public setScoreMultiplier(D)V
    .locals 1

    .line 588
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameState:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    invoke-virtual {v0, p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->setScoreMultiplier(D)V

    return-void
.end method

.method public showGameMessage(Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x1

    .line 509
    invoke-virtual {p0, p1, p2, p3, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->showGameMessage(Ljava/lang/String;JZ)V

    return-void
.end method

.method public showGameMessage(Ljava/lang/String;JZ)V
    .locals 0

    if-eqz p4, :cond_0

    .line 501
    iget-object p4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->audioPlayer:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AudioPlayer;

    invoke-interface {p4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/AudioPlayer;->playMessage()V

    .line 502
    :cond_0
    new-instance p4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameMessage;

    invoke-direct {p4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameMessage;-><init>()V

    iput-object p4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameMessage:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameMessage;

    .line 503
    iput-object p1, p4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameMessage;->text:Ljava/lang/String;

    .line 504
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameMessage:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameMessage;

    iput-wide p2, p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameMessage;->duration:J

    .line 505
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameMessage:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameMessage;

    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->clock:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Clock;

    invoke-interface {p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Clock;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameMessage;->creationTime:J

    return-void
.end method

.method public startGame()V
    .locals 1

    const/4 v0, 0x0

    .line 171
    invoke-direct {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->_startGame(Z)V

    return-void
.end method

.method public startGameWithUnlimitedBalls()V
    .locals 1

    const/4 v0, 0x1

    .line 174
    invoke-direct {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->_startGame(Z)V

    return-void
.end method

.method tick(JI)V
    .locals 4

    long-to-float v0, p1

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    int-to-float v1, p3

    div-float/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    .line 195
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->clearBallContacts()V

    .line 196
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->world:Lcom/badlogic/gdx/physics/box2d/World;

    const/16 v3, 0xa

    invoke-virtual {v2, v0, v3, v3}, Lcom/badlogic/gdx/physics/box2d/World;->step(FII)V

    .line 197
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->processBallContacts()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    :cond_0
    iget-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->gameTime:J

    .line 201
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->processElementTicks()V

    .line 202
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->processScheduledActions()V

    .line 203
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->processGameMessages()V

    .line 204
    invoke-virtual {p0, p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->checkForStuckBall(J)V

    .line 206
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getDelegate()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$Delegate;

    move-result-object p3

    invoke-interface {p3, p0, p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field$Delegate;->tick(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;J)V

    return-void
.end method
