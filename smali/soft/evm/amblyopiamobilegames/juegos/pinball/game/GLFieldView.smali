.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;
.super Landroid/opengl/GLSurfaceView;
.source "GLFieldView.java"

# interfaces
.implements Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field static COS_VALUES:[F

.field static HQ_COS_VALUES:[F

.field static HQ_SIN_VALUES:[F

.field static SIN_VALUES:[F


# instance fields
.field lineVertexList:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;

.field manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

.field renderDone:Z

.field final renderLock:Ljava/lang/Object;

.field vertexListManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexListManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x14

    new-array v1, v0, [F

    .line 57
    sput-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->SIN_VALUES:[F

    new-array v0, v0, [F

    .line 58
    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->COS_VALUES:[F

    const/16 v2, 0x28

    new-array v3, v2, [F

    .line 59
    sput-object v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->HQ_SIN_VALUES:[F

    new-array v2, v2, [F

    .line 60
    sput-object v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->HQ_COS_VALUES:[F

    .line 63
    invoke-static {v1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->buildSinCosTables([F[F)V

    .line 64
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->HQ_SIN_VALUES:[F

    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->HQ_COS_VALUES:[F

    invoke-static {v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->buildSinCosTables([F[F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance p1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexListManager;

    invoke-direct {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexListManager;-><init>()V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->vertexListManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexListManager;

    .line 136
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->renderLock:Ljava/lang/Object;

    .line 23
    invoke-virtual {p0, p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->setRenderMode(I)V

    const/4 p1, 0x1

    .line 25
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->setFocusable(Z)V

    return-void
.end method

.method static buildSinCosTables([F[F)V
    .locals 5

    .line 68
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 71
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    const-wide v1, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v3, v0

    mul-double/2addr v3, v1

    .line 72
    array-length v1, p0

    int-to-double v1, v1

    div-double/2addr v3, v1

    .line 73
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, p0, v0

    .line 74
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 69
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array lengths don\'t match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public doDraw()V
    .locals 2

    .line 166
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->renderLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 167
    :try_start_0
    iput-boolean v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->renderDone:Z

    .line 168
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 170
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->requestRender()V

    .line 172
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->renderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    :catch_0
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->renderDone:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    .line 175
    :try_start_2
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->renderLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 179
    :cond_0
    :try_start_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 168
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method drawCircle(FFFLsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;I)V
    .locals 5

    .line 119
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->vertexListManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexListManager;

    invoke-virtual {v0, p5}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexListManager;->addVertexListForMode(I)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;

    move-result-object p5

    .line 120
    iget v0, p4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->red:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iget v2, p4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->green:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->blue:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget p4, p4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->alpha:I

    int-to-float p4, p4

    div-float/2addr p4, v1

    invoke-virtual {p5, v0, v2, v3, p4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->addColor(FFFF)V

    .line 123
    sget-object p4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->SIN_VALUES:[F

    .line 124
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->COS_VALUES:[F

    .line 125
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    iget-boolean v1, v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->highQuality:Z

    if-eqz v1, :cond_0

    .line 126
    sget-object p4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->HQ_SIN_VALUES:[F

    .line 127
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->HQ_COS_VALUES:[F

    :cond_0
    const/4 v1, 0x0

    .line 129
    :goto_0
    array-length v2, p4

    if-ge v1, v2, :cond_1

    .line 130
    aget v2, p4, v1

    mul-float/2addr v2, p3

    add-float/2addr v2, p1

    .line 131
    aget v3, v0, v1

    mul-float/2addr v3, p3

    add-float/2addr v3, p2

    .line 132
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {v4, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->world2pixelX(F)F

    move-result v2

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {v4, v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->world2pixelY(F)F

    move-result v3

    invoke-virtual {p5, v2, v3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->addVertex(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public drawLine(FFFFLsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->lineVertexList:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {v1, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->world2pixelX(F)F

    move-result p1

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {v1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->world2pixelY(F)F

    move-result p2

    invoke-virtual {v0, p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->addVertex(FF)V

    .line 100
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->lineVertexList:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;

    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {p2, p3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->world2pixelX(F)F

    move-result p2

    iget-object p3, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {p3, p4}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->world2pixelY(F)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->addVertex(FF)V

    .line 102
    iget p1, p5, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->red:I

    int-to-float p1, p1

    const/high16 p2, 0x437f0000    # 255.0f

    div-float/2addr p1, p2

    .line 103
    iget p3, p5, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->green:I

    int-to-float p3, p3

    div-float/2addr p3, p2

    .line 104
    iget p4, p5, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->blue:I

    int-to-float p4, p4

    div-float/2addr p4, p2

    .line 105
    iget p5, p5, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;->alpha:I

    int-to-float p5, p5

    div-float/2addr p5, p2

    .line 106
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->lineVertexList:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;

    invoke-virtual {p2, p1, p3, p4, p5}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->addColor(FFFF)V

    .line 107
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->lineVertexList:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;

    invoke-virtual {p2, p1, p3, p4, p5}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;->addColor(FFFF)V

    return-void
.end method

.method endGLElements(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->vertexListManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexListManager;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexListManager;->end()V

    const/16 v0, 0xbd0

    .line 86
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0x4100

    .line 87
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    const/16 v0, 0x1700

    .line 88
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 89
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    const/high16 v0, 0x40000000    # 2.0f

    .line 91
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 93
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->vertexListManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexListManager;

    invoke-virtual {v0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexListManager;->render(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public fillCircle(FFFLsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V
    .locals 6

    const/4 v5, 0x6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 111
    invoke-virtual/range {v0 .. v5}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->drawCircle(FFFLsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;I)V

    return-void
.end method

.method public frameCircle(FFFLsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;)V
    .locals 6

    const/4 v5, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 115
    invoke-virtual/range {v0 .. v5}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->drawCircle(FFFLsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;I)V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    .line 140
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->getField()Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    monitor-enter v0

    .line 143
    :try_start_0
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->startGLElements(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 145
    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->getFieldElementsArray()[Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 146
    invoke-virtual {v4, p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/FieldElement;->draw(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {v0, p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Field;->drawBalls(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/IFieldRenderer;)V

    .line 151
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->endGLElements(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 152
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 154
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->renderLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 155
    :try_start_1
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->renderDone:Z

    .line 156
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->renderLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 157
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    .line 152
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 44
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {v0, p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->handleKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 48
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {v0, p1, p2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->handleKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    const/4 v0, 0x0

    .line 183
    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 187
    invoke-interface {p1, p2, p2, p2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    const/16 v0, 0xc50

    const/16 v1, 0x1101

    .line 188
    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    const/16 v0, 0x1d00

    .line 189
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    const/16 v0, 0xb71

    .line 190
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const/16 v0, 0xbe2

    .line 193
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    .line 194
    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v0, 0x1701

    .line 196
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 197
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 199
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, p2, v0, v1, p2}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 40
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    invoke-virtual {v0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setManager(Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->manager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/FieldViewManager;

    return-void
.end method

.method startGLElements(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    .line 79
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->vertexListManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexListManager;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexListManager;->begin()V

    .line 80
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->vertexListManager:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexListManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexListManager;->addVertexListForMode(I)Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/GLFieldView;->lineVertexList:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/util/GLVertexList;

    return-void
.end method
