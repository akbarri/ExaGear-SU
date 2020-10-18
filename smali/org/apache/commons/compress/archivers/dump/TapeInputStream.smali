.class Lorg/apache/commons/compress/archivers/dump/TapeInputStream;
.super Ljava/io/FilterInputStream;
.source "TapeInputStream.java"


# static fields
.field private static final recordSize:I = 0x400


# instance fields
.field private blockBuffer:[B

.field private blockSize:I

.field private bytesRead:J

.field private currBlkIdx:I

.field private isCompressed:Z

.field private readOffset:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 50
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x400

    .line 38
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    .line 40
    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    .line 42
    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->isCompressed:Z

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    return-void
.end method

.method private readBlock(Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 261
    new-instance p1, Ljava/io/IOException;

    const-string v0, "input buffer is closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 264
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->isCompressed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    goto/16 :goto_3

    .line 269
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    const/4 v3, 0x4

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 272
    :cond_2
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    .line 274
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    invoke-static {v0, v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v0

    and-int/lit8 v4, v0, 0x1

    if-ne v4, v1, :cond_3

    move v4, v1

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    if-nez v4, :cond_4

    .line 279
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    invoke-direct {p0, p1, v2, v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)Z

    move-result p1

    .line 280
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    goto/16 :goto_4

    :cond_4
    shr-int/lit8 v4, v0, 0x1

    and-int/lit8 v4, v4, 0x7

    shr-int/2addr v0, v3

    const v3, 0xfffffff

    and-int/2addr v0, v3

    .line 285
    new-array v3, v0, [B

    .line 286
    invoke-direct {p0, v3, v2, v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)Z

    move-result v5

    .line 287
    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    if-nez p1, :cond_5

    .line 291
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_1

    .line 293
    :cond_5
    sget-object p1, Lorg/apache/commons/compress/archivers/dump/TapeInputStream$1;->$SwitchMap$org$apache$commons$compress$archivers$dump$DumpArchiveConstants$COMPRESSION_TYPE:[I

    and-int/lit8 v0, v4, 0x3

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;->find(I)Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    .line 322
    new-instance p1, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;

    invoke-direct {p1}, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;-><init>()V

    throw p1

    .line 318
    :pswitch_0
    new-instance p1, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;

    const-string v0, "LZO"

    invoke-direct {p1, v0}, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 314
    :pswitch_1
    new-instance p1, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;

    const-string v0, "BZLIB2"

    invoke-direct {p1, v0}, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 297
    :pswitch_2
    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1}, Ljava/util/zip/Inflater;-><init>()V

    .line 299
    :try_start_0
    array-length v0, v3

    invoke-virtual {p1, v3, v2, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 300
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    invoke-virtual {p1, v0}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v0

    .line 302
    iget v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    if-eq v0, v3, :cond_6

    .line 303
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/ShortFileException;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/ShortFileException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    :cond_6
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->end()V

    :goto_1
    move p1, v5

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 306
    :try_start_1
    new-instance v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;

    const-string v2, "bad data"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    :goto_2
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->end()V

    throw v0

    .line 266
    :cond_7
    :goto_3
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    invoke-direct {p0, p1, v2, v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)Z

    move-result p1

    .line 267
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    .line 328
    :goto_4
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    .line 329
    iput v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readFully([BII)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result p1

    if-ge p1, p3, :cond_0

    .line 341
    new-instance p1, Lorg/apache/commons/compress/archivers/dump/ShortFileException;

    invoke-direct {p1}, Lorg/apache/commons/compress/archivers/dump/ShortFileException;-><init>()V

    throw p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    if-ge v0, v1, :cond_0

    .line 91
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    sub-int/2addr v0, v1

    return v0

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->in:Ljava/io/InputStream;

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

    .line 206
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->in:Ljava/io/InputStream;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public getBytesRead()J
    .locals 2

    .line 351
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    return-wide v0
.end method

.method public peek()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readBlock(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v0, 0x400

    .line 226
    new-array v0, v0, [B

    .line 227
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "all reads must be multiple of record size (1024 bytes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    rem-int/lit16 v0, p3, 0x400

    if-eqz v0, :cond_0

    .line 118
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "all reads must be multiple of record size (1024 bytes."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    .line 129
    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readBlock(Z)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, -0x1

    return p1

    .line 135
    :cond_1
    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    sub-int v2, p3, v0

    add-int/2addr v1, v2

    iget v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    if-gt v1, v3, :cond_2

    goto :goto_1

    .line 140
    :cond_2
    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    sub-int v2, v1, v2

    .line 144
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    iget v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    invoke-static {v1, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    add-int/2addr v0, v2

    add-int/2addr p2, v2

    goto :goto_0

    :cond_3
    return v0
.end method

.method public readRecord()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 239
    new-array v0, v0, [B

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 243
    array-length v3, v0

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->read([BII)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 244
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/ShortFileException;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/ShortFileException;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public resetBlockSize(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iput-boolean p2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->isCompressed:Z

    const/16 p2, 0x400

    mul-int/2addr p1, p2

    .line 71
    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    .line 74
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    .line 77
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    .line 78
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    sub-int/2addr v0, p2

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)Z

    .line 81
    iput v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    .line 82
    iput p2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    return-void
.end method

.method public skip(J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x400

    .line 163
    rem-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 164
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "all reads must be multiple of record size (1024 bytes."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    cmp-long v0, v2, p1

    if-gez v0, :cond_4

    .line 176
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    if-ne v0, v1, :cond_2

    sub-long v0, p1, v2

    iget v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readBlock(Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 p1, -0x1

    return-wide p1

    .line 183
    :cond_2
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    int-to-long v0, v0

    sub-long v4, p1, v2

    add-long/2addr v0, v4

    iget v6, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    int-to-long v6, v6

    cmp-long v0, v0, v6

    if-gtz v0, :cond_3

    goto :goto_2

    .line 188
    :cond_3
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    sub-int/2addr v0, v1

    int-to-long v4, v0

    .line 192
    :goto_2
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    int-to-long v0, v0

    add-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    add-long/2addr v2, v4

    goto :goto_0

    :cond_4
    return-wide v2
.end method
