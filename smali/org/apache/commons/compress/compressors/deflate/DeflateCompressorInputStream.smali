.class public Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "DeflateCompressorInputStream.java"


# static fields
.field private static final MAGIC_1:I = 0x78

.field private static final MAGIC_2a:I = 0x1

.field private static final MAGIC_2b:I = 0x5e

.field private static final MAGIC_2c:I = 0x9c

.field private static final MAGIC_2d:I = 0xda


# instance fields
.field private final in:Ljava/io/InputStream;

.field private final inflater:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 50
    new-instance v0, Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 62
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-virtual {p2}, Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;->withZlibHeader()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {v0, p2}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->inflater:Ljava/util/zip/Inflater;

    .line 63
    new-instance p2, Ljava/util/zip/InflaterInputStream;

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-direct {p2, p1, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    iput-object p2, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->in:Ljava/io/InputStream;

    return-void
.end method

.method public static matches([BI)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-le p1, v2, :cond_1

    .line 118
    aget-byte p1, p0, v0

    const/16 v2, 0x78

    if-ne p1, v2, :cond_1

    aget-byte p1, p0, v1

    if-eq p1, v1, :cond_0

    aget-byte p1, p0, v1

    const/16 v2, 0x5e

    if-eq p1, v2, :cond_0

    aget-byte p1, p0, v1

    const/16 v2, -0x64

    if-eq p1, v2, :cond_0

    aget-byte p0, p0, v1

    const/16 p1, -0x26

    if-ne p0, p1, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->end()V

    throw v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 70
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->count(I)V

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 78
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->count(I)V

    return p1
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
