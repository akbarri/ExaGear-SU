.class Lorg/apache/commons/compress/archivers/zip/CircularBuffer;
.super Ljava/lang/Object;
.source "CircularBuffer.java"


# instance fields
.field private final buffer:[B

.field private readIndex:I

.field private final size:I

.field private writeIndex:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->size:I

    .line 44
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->buffer:[B

    return-void
.end method


# virtual methods
.method public available()Z
    .locals 2

    .line 51
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->readIndex:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->writeIndex:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public copy(II)V
    .locals 5

    .line 81
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->writeIndex:I

    sub-int/2addr v0, p1

    add-int/2addr p2, v0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 84
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->buffer:[B

    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->writeIndex:I

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->buffer:[B

    iget v3, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->size:I

    add-int/2addr v3, v0

    iget v4, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->size:I

    rem-int/2addr v3, v4

    aget-byte v2, v2, v3

    aput-byte v2, p1, v1

    .line 85
    iget p1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->writeIndex:I

    add-int/lit8 p1, p1, 0x1

    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->size:I

    rem-int/2addr p1, v1

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->writeIndex:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get()I
    .locals 3

    .line 66
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->available()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->buffer:[B

    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->readIndex:I

    aget-byte v0, v0, v1

    .line 68
    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->readIndex:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->size:I

    rem-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->readIndex:I

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public put(I)V
    .locals 2

    .line 58
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->buffer:[B

    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->writeIndex:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 59
    iget p1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->writeIndex:I

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->size:I

    rem-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->writeIndex:I

    return-void
.end method
