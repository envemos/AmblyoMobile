.class public Lsoft/evm/amblyopiamobilegames/utils/GifImageView;
.super Landroid/view/View;
.source "GifImageView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mInputStream:Ljava/io/InputStream;

.field private mMovie:Landroid/graphics/Movie;

.field private mStart:J

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 35
    invoke-interface {p2, p1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "background"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 36
    invoke-interface {p2, p1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 37
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->setGifImageResource(I)V

    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->setFocusable(Z)V

    .line 43
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->mInputStream:Ljava/io/InputStream;

    invoke-static {v0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->mMovie:Landroid/graphics/Movie;

    .line 44
    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->mWidth:I

    .line 45
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->mHeight:I

    .line 47
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->requestLayout()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 60
    iget-wide v2, p0, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->mStart:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 61
    iput-wide v0, p0, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->mStart:J

    .line 64
    :cond_0
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->mMovie:Landroid/graphics/Movie;

    if-eqz v2, :cond_2

    .line 66
    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x3e8

    .line 71
    :cond_1
    iget-wide v3, p0, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->mStart:J

    sub-long/2addr v0, v3

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    .line 73
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v1, v0}, Landroid/graphics/Movie;->setTime(I)Z

    .line 75
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->mMovie:Landroid/graphics/Movie;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 76
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->invalidate()V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 52
    iget p1, p0, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->mWidth:I

    iget p2, p0, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->mHeight:I

    invoke-virtual {p0, p1, p2}, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setGifImageResource(I)V
    .locals 1

    .line 81
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->mInputStream:Ljava/io/InputStream;

    .line 82
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->init()V

    return-void
.end method

.method public setGifImageUri(Landroid/net/Uri;)V
    .locals 1

    .line 87
    :try_start_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->mInputStream:Ljava/io/InputStream;

    .line 88
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/utils/GifImageView;->init()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "GIfImageView"

    const-string v0, "File not found"

    .line 90
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
