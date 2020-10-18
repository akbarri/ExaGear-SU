.class Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;
.super Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;
.source "UnshrinkingInputStream.java"


# static fields
.field private static final MAX_CODE_SIZE:I = 0xd

.field private static final MAX_TABLE_SIZE:I = 0x2000


# instance fields
.field private final isUsed:[Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    const/16 p1, 0x9

    .line 39
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->setClearCode(I)V

    const/16 p1, 0xd

    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->initializeTables(I)V

    .line 41
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->getPrefixesLength()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x100

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    .line 43
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    aput-boolean v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->getClearCode()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->setTableSize(I)V

    return-void
.end method

.method private partialClear()V
    .locals 6

    const/16 v0, 0x2000

    .line 63
    new-array v0, v0, [Z

    const/4 v1, 0x0

    move v2, v1

    .line 64
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    const/4 v4, -0x1

    const/4 v5, 0x1

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 65
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->getPrefix(I)I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 66
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->getPrefix(I)I

    move-result v3

    aput-boolean v5, v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->getClearCode()I

    move-result v2

    add-int/2addr v2, v5

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 70
    aget-boolean v3, v0, v2

    if-nez v3, :cond_2

    .line 71
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    aput-boolean v1, v3, v2

    .line 72
    invoke-virtual {p0, v2, v4}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->setPrefix(II)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method protected addEntry(IB)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->getTableSize()I

    move-result v0

    :goto_0
    const/16 v1, 0x2000

    if-ge v0, v1, :cond_0

    .line 51
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->setTableSize(I)V

    .line 55
    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->addEntry(IBI)I

    move-result p1

    if-ltz p1, :cond_1

    .line 57
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    const/4 v0, 0x1

    aput-boolean v0, p2, p1

    :cond_1
    return p1
.end method

.method protected decompressNextSymbol()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->readNextCode()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->getClearCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_5

    .line 95
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->readNextCode()I

    move-result v0

    if-gez v0, :cond_1

    .line 97
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected EOF;"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ne v0, v3, :cond_3

    .line 99
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->getCodeSize()I

    move-result v0

    const/16 v1, 0xd

    if-ge v0, v1, :cond_2

    .line 100
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->incrementCodeSize()V

    goto :goto_0

    .line 102
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempt to increase code size beyond maximum"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 105
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->partialClear()V

    .line 106
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->getClearCode()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->setTableSize(I)V

    :goto_0
    return v2

    .line 108
    :cond_4
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid clear code subcode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_5
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_6

    .line 115
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->addRepeatOfPreviousCode()I

    move-result v0

    move v2, v3

    .line 118
    :cond_6
    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->expandCodeToOutputStack(IZ)I

    move-result v0

    return v0
.end method
