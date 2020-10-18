.class public Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;
.source "ZCompressorInputStream.java"


# static fields
.field private static final BLOCK_MODE_MASK:I = 0x80

.field private static final MAGIC_1:I = 0x1f

.field private static final MAGIC_2:I = 0x9d

.field private static final MAX_CODE_SIZE_MASK:I = 0x1f


# instance fields
.field private final blockMode:Z

.field private final maxCodeSize:I

.field private totalCodesRead:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->totalCodesRead:J

    .line 43
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    move-result-wide v1

    long-to-int p1, v1

    .line 44
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    move-result-wide v1

    long-to-int v1, v1

    .line 45
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    move-result-wide v2

    long-to-int v0, v2

    const/16 v2, 0x1f

    if-ne p1, v2, :cond_3

    const/16 p1, 0x9d

    if-ne v1, p1, :cond_3

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    and-int/lit16 p1, v0, 0x80

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 49
    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->blockMode:Z

    and-int/lit8 p1, v0, 0x1f

    .line 50
    iput p1, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->maxCodeSize:I

    .line 51
    iget-boolean p1, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->blockMode:Z

    if-eqz p1, :cond_2

    const/16 p1, 0x9

    .line 52
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->setClearCode(I)V

    .line 54
    :cond_2
    iget p1, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->maxCodeSize:I

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->initializeTables(I)V

    .line 55
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->clearEntries()V

    return-void

    .line 47
    :cond_3
    :goto_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Input is not in .Z format"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private clearEntries()V
    .locals 2

    .line 59
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->blockMode:Z

    const/16 v1, 0x100

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->setTableSize(I)V

    return-void
.end method

.method public static matches([BI)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-le p1, v2, :cond_0

    .line 163
    aget-byte p1, p0, v1

    const/16 v2, 0x1f

    if-ne p1, v2, :cond_0

    aget-byte p0, p0, v0

    const/16 p1, -0x63

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method private reAlignReading()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->totalCodesRead:J

    const-wide/16 v2, 0x8

    rem-long/2addr v0, v2

    sub-long v0, v2, v0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    move-wide v0, v3

    :cond_0
    :goto_0
    cmp-long v2, v3, v0

    if-gez v2, :cond_1

    .line 87
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->readNextCode()I

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/BitInputStream;->clearBitCache()V

    return-void
.end method


# virtual methods
.method protected addEntry(IB)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->getCodeSize()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 101
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->addEntry(IBI)I

    move-result p1

    .line 102
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->getTableSize()I

    move-result p2

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->getCodeSize()I

    move-result p2

    iget v0, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->maxCodeSize:I

    if-ge p2, v0, :cond_0

    .line 103
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->reAlignReading()V

    .line 104
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->incrementCodeSize()V

    :cond_0
    return p1
.end method

.method protected decompressNextSymbol()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->readNextCode()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 132
    :cond_0
    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->blockMode:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->getClearCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 133
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->clearEntries()V

    .line 134
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->reAlignReading()V

    .line 135
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->resetCodeSize()V

    .line 136
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->resetPreviousCode()V

    return v2

    .line 140
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->getTableSize()I

    move-result v1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 141
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->addRepeatOfPreviousCode()I

    move v2, v3

    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->getTableSize()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 144
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Invalid %d bit code 0x%x"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->getCodeSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_3
    :goto_0
    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->expandCodeToOutputStack(IZ)I

    move-result v0

    return v0
.end method

.method protected readNextCode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-super {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->readNextCode()I

    move-result v0

    if-ltz v0, :cond_0

    .line 72
    iget-wide v1, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->totalCodesRead:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->totalCodesRead:J

    :cond_0
    return v0
.end method
