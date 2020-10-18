.class public Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "XZCompressorInputStream.java"


# instance fields
.field private final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    if-eqz p2, :cond_0

    .line 96
    new-instance p2, Lorg/tukaani/xz/XZInputStream;

    invoke-direct {p2, p1}, Lorg/tukaani/xz/XZInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->in:Ljava/io/InputStream;

    goto :goto_0

    .line 98
    :cond_0
    new-instance p2, Lorg/tukaani/xz/SingleXZInputStream;

    invoke-direct {p2, p1}, Lorg/tukaani/xz/SingleXZInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->in:Ljava/io/InputStream;

    :goto_0
    return-void
.end method

.method public static matches([BI)Z
    .locals 3

    .line 44
    sget-object v0, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    const/4 v1, 0x0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    return v1

    :cond_0
    move p1, v1

    .line 48
    :goto_0
    sget-object v0, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    array-length v0, v0

    if-ge p1, v0, :cond_2

    .line 49
    aget-byte v0, p0, p1

    sget-object v2, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    aget-byte v2, v2, p1

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 105
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->count(I)V

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 112
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->count(I)V

    return p1
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
