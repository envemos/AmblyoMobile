.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;
.super Landroid/view/View;
.source "ScoreView.java"


# static fields
.field static final HIGH_SCORE_MESSAGE:I = 0x2

.field static final LAST_SCORE_MESSAGE:I = 0x1

.field static SCORE_FORMAT:Ljava/text/NumberFormat;

.field static final TOUCH_TO_START_MESSAGE:I


# instance fields
.field field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

.field fps:D

.field fpsPaint:Landroid/graphics/Paint;

.field fpsRect:Landroid/graphics/Rect;

.field gameOverMessageCycleTime:I

.field gameOverMessageIndex:I

.field highScoreIndex:I

.field highScores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field lastUpdateTime:Ljava/lang/Long;

.field multiplierPaint:Landroid/graphics/Paint;

.field remainingBallPaint:Landroid/graphics/Paint;

.field showFPS:Z

.field textPaint:Landroid/graphics/Paint;

.field textRect:Landroid/graphics/Rect;

.field usedBallPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->SCORE_FORMAT:Ljava/text/NumberFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->textPaint:Landroid/graphics/Paint;

    .line 24
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->textRect:Landroid/graphics/Rect;

    .line 26
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->fpsPaint:Landroid/graphics/Paint;

    .line 27
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->fpsRect:Landroid/graphics/Rect;

    .line 29
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->usedBallPaint:Landroid/graphics/Paint;

    .line 30
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->remainingBallPaint:Landroid/graphics/Paint;

    .line 31
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->multiplierPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 40
    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->gameOverMessageIndex:I

    .line 41
    iput p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->highScoreIndex:I

    const/16 v0, 0xdac

    .line 42
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->gameOverMessageCycleTime:I

    .line 45
    iput-boolean p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->showFPS:Z

    .line 51
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->textPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v1, v1, p2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 52
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->textPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v2, "window"

    .line 56
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 57
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 58
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->textPaint:Landroid/graphics/Paint;

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41c00000    # 24.0f

    mul-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 60
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->fpsPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1, v1, p2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 61
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->fpsPaint:Landroid/graphics/Paint;

    iget p2, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 63
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->multiplierPaint:Landroid/graphics/Paint;

    const/16 p2, 0x20

    const/16 v2, 0xe0

    invoke-virtual {p1, v1, p2, v2, p2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 64
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->multiplierPaint:Landroid/graphics/Paint;

    iget p2, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 66
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->usedBallPaint:Landroid/graphics/Paint;

    const/16 p2, 0x80

    invoke-virtual {p1, v1, p2, p2, p2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 67
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->usedBallPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->remainingBallPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 69
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->remainingBallPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private formatScore(JZ)Ljava/lang/String;
    .locals 1

    .line 220
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->SCORE_FORMAT:Ljava/text/NumberFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 221
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "*"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method currentMillis()J
    .locals 2

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method cycleGameOverMessage(J)V
    .locals 6

    .line 168
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->gameOverMessageIndex:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    .line 185
    iget p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->highScoreIndex:I

    add-int/2addr p1, v2

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->highScoreIndex:I

    .line 186
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->highScores:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->highScores:Ljava/util/List;

    iget p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->highScoreIndex:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long p1, p1, v3

    if-gtz p1, :cond_5

    .line 187
    :cond_0
    iput v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->highScoreIndex:I

    .line 188
    iput v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->gameOverMessageIndex:I

    goto :goto_0

    .line 192
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown gameOverMessageIndex: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->gameOverMessageIndex:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 179
    :cond_2
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->highScores:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long p1, p1, v3

    if-lez p1, :cond_5

    .line 180
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->gameOverMessageIndex:I

    .line 181
    iput v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->highScoreIndex:I

    goto :goto_0

    :cond_3
    cmp-long p1, p1, v3

    if-lez p1, :cond_4

    .line 171
    iput v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->gameOverMessageIndex:I

    goto :goto_0

    .line 173
    :cond_4
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->highScores:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long p1, p1, v3

    if-lez p1, :cond_5

    .line 174
    iput v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->gameOverMessageIndex:I

    .line 175
    iput v5, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->highScoreIndex:I

    :cond_5
    :goto_0
    return-void
.end method

.method displayedGameOverMessage(JZ)Ljava/lang/String;
    .locals 2

    .line 198
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->gameOverMessageIndex:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-ne v0, p1, :cond_1

    .line 205
    iget p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->highScoreIndex:I

    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->highScores:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 207
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->highScores:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->formatScore(JZ)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_0

    .line 209
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "High Score: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 212
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    add-int/2addr p1, v1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " Score: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 215
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown gameOverMessageIndex: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->gameOverMessageIndex:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 202
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Last Score: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->formatScore(JZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, "Touch to start"

    return-object p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 81
    iget-object v2, v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    monitor-enter v2

    .line 83
    :try_start_0
    iget-object v3, v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameMessage()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameMessage;

    move-result-object v3

    .line 84
    iget-object v4, v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getGameState()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;

    move-result-object v4

    .line 85
    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->isGameInProgress()Z

    move-result v5

    .line 86
    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->getTotalBalls()I

    move-result v6

    .line 87
    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->hasUnlimitedBalls()Z

    move-result v7

    .line 88
    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->getBallNumber()I

    move-result v8

    .line 89
    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->getScoreMultiplier()D

    move-result-wide v9

    .line 90
    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameState;->getScore()J

    move-result-wide v11

    .line 91
    iget-object v4, v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    invoke-virtual {v4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getBalls()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v14, 0x0

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v14

    .line 92
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0xff

    const/16 v15, 0x8

    .line 94
    invoke-virtual {v0, v2, v15, v15, v15}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    if-eqz v3, :cond_1

    .line 95
    iget-object v2, v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GameMessage;->text:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_5

    if-eqz v5, :cond_2

    .line 100
    invoke-direct {v1, v11, v12, v7}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->formatScore(JZ)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 103
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->currentMillis()J

    move-result-wide v2

    .line 104
    iget-object v15, v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->lastUpdateTime:Ljava/lang/Long;

    if-nez v15, :cond_3

    .line 105
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->lastUpdateTime:Ljava/lang/Long;

    move-wide/from16 v17, v9

    goto :goto_2

    .line 107
    :cond_3
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    sub-long v15, v2, v15

    iget v13, v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->gameOverMessageCycleTime:I

    move-wide/from16 v17, v9

    int-to-long v9, v13

    cmp-long v9, v15, v9

    if-lez v9, :cond_4

    .line 108
    invoke-virtual {v1, v11, v12}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->cycleGameOverMessage(J)V

    .line 109
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->lastUpdateTime:Ljava/lang/Long;

    .line 111
    :cond_4
    :goto_2
    invoke-virtual {v1, v11, v12, v7}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->displayedGameOverMessage(JZ)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_5
    :goto_3
    move-wide/from16 v17, v9

    .line 115
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->getWidth()I

    move-result v3

    .line 116
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->getHeight()I

    move-result v9

    .line 117
    iget-object v10, v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    iget-object v12, v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v2, v14, v11, v12}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 119
    div-int/lit8 v10, v3, 0x2

    iget-object v11, v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    int-to-float v10, v10

    div-int/lit8 v11, v9, 0x2

    iget-object v12, v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    int-to-float v11, v11

    iget-object v12, v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 121
    iget-boolean v2, v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->showFPS:Z

    if-eqz v2, :cond_6

    iget-wide v10, v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->fps:D

    const-wide/16 v12, 0x0

    cmpl-double v2, v10, v12

    if-lez v2, :cond_6

    const-string v2, "%.1f fps"

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    .line 122
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v13, v14

    invoke-static {v2, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v10, v3

    const v11, 0x3ca3d70a    # 0.02f

    mul-float/2addr v10, v11

    int-to-float v11, v9

    const/high16 v12, 0x3e800000    # 0.25f

    mul-float/2addr v11, v12

    iget-object v12, v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->fpsPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_6
    if-eqz v5, :cond_c

    int-to-float v2, v3

    const/high16 v3, 0x42960000    # 75.0f

    div-float v3, v2, v3

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v10, v3, v5

    int-to-float v9, v9

    add-float v11, v10, v3

    sub-float v12, v9, v11

    sub-float/2addr v2, v10

    sub-float/2addr v2, v3

    if-eqz v7, :cond_7

    const/4 v4, 0x4

    :goto_5
    if-ltz v4, :cond_a

    int-to-float v6, v4

    mul-float/2addr v6, v11

    sub-float v6, v2, v6

    .line 137
    iget-object v7, v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->remainingBallPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6, v12, v3, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v6

    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_7
    move v7, v14

    :goto_6
    if-ge v7, v6, :cond_a

    int-to-float v10, v7

    mul-float/2addr v10, v11

    sub-float v10, v2, v10

    add-int v13, v8, v7

    add-int/2addr v13, v4

    if-gt v13, v6, :cond_8

    const/4 v13, 0x1

    goto :goto_7

    :cond_8
    move v13, v14

    :goto_7
    if-eqz v13, :cond_9

    .line 147
    iget-object v13, v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->remainingBallPaint:Landroid/graphics/Paint;

    goto :goto_8

    :cond_9
    iget-object v13, v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->usedBallPaint:Landroid/graphics/Paint;

    .line 146
    :goto_8
    invoke-virtual {v0, v10, v12, v3, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_a
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v17, v3

    if-lez v3, :cond_c

    move-wide/from16 v3, v17

    double-to-int v6, v3

    int-to-double v7, v6

    cmpl-double v7, v3, v7

    if-nez v7, :cond_b

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_b
    const-string v6, "%.2fx"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v7, v14

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_9
    mul-float/2addr v11, v5

    sub-float/2addr v2, v11

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v9, v4

    .line 156
    iget-object v4, v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->multiplierPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_c
    return-void

    :catchall_0
    move-exception v0

    .line 92
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setFPS(D)V
    .locals 0

    .line 237
    iput-wide p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->fps:D

    return-void
.end method

.method public setField(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->field:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    return-void
.end method

.method public setHighQuality(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 226
    :goto_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->remainingBallPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 227
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->usedBallPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setHighScores(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 234
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->highScores:Ljava/util/List;

    return-void
.end method

.method public setShowFPS(Z)V
    .locals 0

    .line 240
    iput-boolean p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/ScoreView;->showFPS:Z

    return-void
.end method
