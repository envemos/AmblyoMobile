.class Lcom/badlogic/gdx/graphics/PixmapIO$CIM;
.super Ljava/lang/Object;
.source "PixmapIO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/PixmapIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CIM"
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x7d00

.field private static final readBuffer:[B

.field private static final writeBuffer:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x7d00

    new-array v1, v0, [B

    .line 77
    sput-object v1, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->writeBuffer:[B

    new-array v0, v0, [B

    .line 78
    sput-object v0, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->readBuffer:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 8

    const/4 v0, 0x0

    .line 124
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/util/zip/InflaterInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 125
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 126
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 127
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-static {v3}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->fromGdx2DPixmapFormat(I)Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v3

    .line 128
    new-instance v4, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v4, v0, v2, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 130
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x0

    .line 131
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 132
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 134
    sget-object v3, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->readBuffer:[B

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 136
    :goto_0
    :try_start_2
    sget-object v5, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->readBuffer:[B

    invoke-virtual {v1, v5}, Ljava/io/DataInputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_0

    .line 137
    invoke-virtual {v0, v5, v2, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 139
    :cond_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    :try_start_3
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 142
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 148
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v4

    :catchall_0
    move-exception v0

    .line 139
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 146
    :goto_1
    :try_start_6
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t read Pixmap from file \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "\'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    move-object v0, v1

    .line 148
    :goto_2
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static write(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 7

    const/4 v0, 0x0

    .line 85
    :try_start_0
    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/files/FileHandle;->write(Z)Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 86
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 87
    :try_start_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 88
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 89
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->toGdx2DPixmapFormat(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 91
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 92
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 93
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 95
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    rem-int/lit16 v0, v0, 0x7d00

    .line 96
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    div-int/lit16 v1, v1, 0x7d00

    .line 98
    sget-object v4, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->writeBuffer:[B

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v5, v2

    :goto_0
    if-ge v5, v1, :cond_0

    .line 100
    :try_start_2
    sget-object v6, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->writeBuffer:[B

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 101
    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 104
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->writeBuffer:[B

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 105
    invoke-virtual {v3, v1, v2, v0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 106
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    :try_start_3
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 109
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 115
    invoke-static {v3}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 106
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    move-object v0, v3

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v3

    goto :goto_1

    :catchall_2
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p1

    .line 113
    :goto_1
    :try_start_6
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write Pixmap to file \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "\'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 115
    :goto_2
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method
