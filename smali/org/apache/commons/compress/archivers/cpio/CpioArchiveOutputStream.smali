.class public Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
.source "CpioArchiveOutputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/cpio/CpioConstants;


# instance fields
.field private final blockSize:I

.field private closed:Z

.field private crc:J

.field final encoding:Ljava/lang/String;

.field private entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

.field private final entryFormat:S

.field private finished:Z

.field private final names:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;",
            ">;"
        }
    .end annotation
.end field

.field private nextArtificalDeviceAndInode:J

.field private final out:Ljava/io/OutputStream;

.field private written:J

.field private final zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x1

    .line 175
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;-><init>(Ljava/io/OutputStream;S)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x200

    .line 190
    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;-><init>(Ljava/io/OutputStream;SILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;S)V
    .locals 2

    const-string v0, "US-ASCII"

    const/16 v1, 0x200

    .line 111
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;-><init>(Ljava/io/OutputStream;SILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;SI)V
    .locals 1

    const-string v0, "US-ASCII"

    .line 129
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;-><init>(Ljava/io/OutputStream;SILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;SILjava/lang/String;)V
    .locals 2

    .line 149
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->closed:Z

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->names:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    .line 82
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->crc:J

    const-wide/16 v0, 0x1

    .line 90
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    .line 150
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const/16 p1, 0x8

    if-eq p2, p1, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 158
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown format: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_0
    :pswitch_0
    iput-short p2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entryFormat:S

    .line 162
    iput p3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->blockSize:I

    .line 163
    iput-object p4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->encoding:Ljava/lang/String;

    .line 164
    invoke-static {p4}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 201
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private pad(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_0

    .line 496
    new-array v0, p1, [B

    .line 497
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 498
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->count(I)V

    :cond_0
    return-void
.end method

.method private writeAsciiLong(JII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x10

    if-ne p4, v1, :cond_0

    .line 514
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    if-ne p4, v1, :cond_1

    .line 516
    invoke-static {p1, p2}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 518
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-gt p1, p3, :cond_3

    .line 522
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p3, p1

    int-to-long p1, p3

    const/4 p3, 0x0

    move p4, p3

    :goto_1
    int-to-long v1, p4

    cmp-long v1, v1, p1

    if-gez v1, :cond_2

    const-string v1, "0"

    .line 524
    invoke-virtual {v0, p3, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 526
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 528
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, p3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 530
    :goto_2
    invoke-static {p1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 531
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 532
    array-length p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->count(I)V

    return-void
.end method

.method private writeBinaryLong(JIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->long2byteArray(JIZ)[B

    move-result-object p1

    .line 505
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 506
    array-length p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->count(I)V

    return-void
.end method

.method private writeCString(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 542
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    .line 543
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    invoke-virtual {v1, v2, p1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 544
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    .line 545
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->count(I)V

    return-void
.end method

.method private writeHeader(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getFormat()S

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 271
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getFormat()S

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    const-string v1, "070702"

    invoke-static {v1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 257
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->count(I)V

    .line 258
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeNewEntry(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;)V

    goto :goto_0

    .line 251
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    const-string v1, "070701"

    invoke-static {v1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 252
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->count(I)V

    .line 253
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeNewEntry(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x71c7

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 267
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 268
    invoke-direct {p0, p1, v3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeOldBinaryEntry(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;Z)V

    goto :goto_0

    .line 261
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    const-string v1, "070707"

    invoke-static {v1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 262
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->count(I)V

    .line 263
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeOldAsciiEntry(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeNewEntry(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getInode()J

    move-result-wide v0

    .line 277
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getDeviceMin()J

    move-result-wide v2

    const-string v4, "TRAILER!!!"

    .line 278
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_0

    move-wide v0, v5

    move-wide v2, v0

    goto :goto_0

    :cond_0
    cmp-long v4, v0, v5

    const-wide/16 v7, 0x1

    if-nez v4, :cond_1

    cmp-long v4, v2, v5

    if-nez v4, :cond_1

    .line 282
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    .line 283
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    add-long/2addr v7, v4

    iput-wide v7, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    const/16 v6, 0x20

    shr-long/2addr v4, v6

    and-long/2addr v2, v4

    goto :goto_0

    .line 285
    :cond_1
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    const-wide v9, 0x100000000L

    mul-long/2addr v9, v2

    add-long/2addr v9, v0

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-long/2addr v4, v7

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    :goto_0
    const/16 v4, 0x10

    const/16 v5, 0x8

    .line 291
    invoke-direct {p0, v0, v1, v5, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 292
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getMode()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v5, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 293
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getUID()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v5, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 294
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getGID()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v5, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 295
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getNumberOfLinks()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v5, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 296
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v5, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 297
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getSize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v5, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 298
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getDeviceMaj()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v5, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 299
    invoke-direct {p0, v2, v3, v5, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 300
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getRemoteDeviceMaj()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v5, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 301
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getRemoteDeviceMin()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v5, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 302
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1, v5, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 303
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getChksum()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v5, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 304
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeCString(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getHeaderPadCount()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->pad(I)V

    return-void
.end method

.method private writeOldAsciiEntry(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getInode()J

    move-result-wide v0

    .line 311
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getDevice()J

    move-result-wide v2

    const-string v4, "TRAILER!!!"

    .line 312
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_0

    move-wide v0, v5

    move-wide v2, v0

    goto :goto_0

    :cond_0
    cmp-long v4, v0, v5

    const-wide/16 v7, 0x1

    if-nez v4, :cond_1

    cmp-long v4, v2, v5

    if-nez v4, :cond_1

    .line 316
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    const-wide/32 v2, 0x3ffff

    and-long/2addr v0, v2

    .line 317
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    add-long/2addr v7, v4

    iput-wide v7, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    const/16 v6, 0x12

    shr-long/2addr v4, v6

    and-long/2addr v2, v4

    goto :goto_0

    .line 319
    :cond_1
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    const-wide/32 v9, 0x40000

    mul-long/2addr v9, v2

    add-long/2addr v9, v0

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-long/2addr v4, v7

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    :goto_0
    const/4 v4, 0x6

    const/16 v5, 0x8

    .line 325
    invoke-direct {p0, v2, v3, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 326
    invoke-direct {p0, v0, v1, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 327
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getMode()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 328
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getUID()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 329
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getGID()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 330
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getNumberOfLinks()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 331
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getRemoteDevice()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 332
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getTime()J

    move-result-wide v0

    const/16 v2, 0xb

    invoke-direct {p0, v0, v1, v2, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 333
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 334
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getSize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v2, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeAsciiLong(JII)V

    .line 335
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeCString(Ljava/lang/String;)V

    return-void
.end method

.method private writeOldBinaryEntry(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getInode()J

    move-result-wide v0

    .line 341
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getDevice()J

    move-result-wide v2

    const-string v4, "TRAILER!!!"

    .line 342
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_0

    move-wide v0, v5

    move-wide v2, v0

    goto :goto_0

    :cond_0
    cmp-long v4, v0, v5

    const-wide/16 v7, 0x1

    if-nez v4, :cond_1

    cmp-long v4, v2, v5

    if-nez v4, :cond_1

    .line 346
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    .line 347
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    add-long/2addr v7, v4

    iput-wide v7, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    const/16 v6, 0x10

    shr-long/2addr v4, v6

    and-long/2addr v2, v4

    goto :goto_0

    .line 349
    :cond_1
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    const-wide/32 v9, 0x10000

    mul-long/2addr v9, v2

    add-long/2addr v9, v0

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-long/2addr v4, v7

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->nextArtificalDeviceAndInode:J

    :goto_0
    const/4 v4, 0x2

    .line 355
    invoke-direct {p0, v2, v3, v4, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 356
    invoke-direct {p0, v0, v1, v4, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 357
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getMode()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 358
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getUID()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 359
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getGID()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 360
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getNumberOfLinks()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 361
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getRemoteDevice()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 362
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getTime()J

    move-result-wide v0

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 363
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1, v4, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 364
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getSize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v2, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeBinaryLong(JIZ)V

    .line 365
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeCString(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getHeaderPadCount()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->pad(I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 484
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->finished:Z

    if-nez v0, :cond_0

    .line 485
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->finish()V

    .line 488
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->closed:Z

    if-nez v0, :cond_1

    .line 489
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x1

    .line 490
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->closed:Z

    :cond_1
    return-void
.end method

.method public closeArchiveEntry()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->finished:Z

    if-eqz v0, :cond_0

    .line 378
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->ensureOpen()V

    .line 383
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    if-nez v0, :cond_1

    .line 384
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Trying to close non-existent entry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getSize()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->written:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 388
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid entry size (expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->written:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getDataPadCount()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->pad(I)V

    .line 393
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getFormat()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->crc:J

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getChksum()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 395
    new-instance v0, Ljava/io/IOException;

    const-string v1, "CRC Error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    .line 397
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    const-wide/16 v0, 0x0

    .line 398
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->crc:J

    .line 399
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->written:J

    return-void
.end method

.method public createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 556
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->finished:Z

    if-eqz v0, :cond_0

    .line 557
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream has already been finished"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 559
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public finish()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 453
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->ensureOpen()V

    .line 454
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->finished:Z

    if-eqz v0, :cond_0

    .line 455
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This archive has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    if-eqz v0, :cond_1

    .line 459
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This archive contains unclosed entries."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_1
    new-instance v0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    iget-short v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entryFormat:S

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(S)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    .line 462
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    const-string v1, "TRAILER!!!"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setName(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setNumberOfLinks(J)V

    .line 464
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeHeader(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;)V

    .line 465
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->closeArchiveEntry()V

    .line 467
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->getBytesWritten()J

    move-result-wide v0

    iget v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->blockSize:I

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    if-eqz v0, :cond_2

    .line 469
    iget v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->blockSize:I

    sub-int/2addr v1, v0

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->pad(I)V

    :cond_2
    const/4 v0, 0x1

    .line 472
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->finished:Z

    return-void
.end method

.method public putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->finished:Z

    if-eqz v0, :cond_0

    .line 222
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Stream has already been finished"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_0
    check-cast p1, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    .line 226
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->ensureOpen()V

    .line 227
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->closeArchiveEntry()V

    .line 230
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setTime(J)V

    .line 234
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getFormat()S

    move-result v0

    .line 235
    iget-short v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entryFormat:S

    if-eq v0, v1, :cond_3

    .line 236
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " does not match existing format: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entryFormat:S

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 239
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->names:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 240
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_4
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->writeHeader(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;)V

    .line 244
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    const-wide/16 v0, 0x0

    .line 245
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->written:J

    return-void
.end method

.method public write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->ensureOpen()V

    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    .line 420
    array-length v0, p1

    sub-int/2addr v0, p3

    if-le p2, v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p3, :cond_1

    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    if-nez v0, :cond_2

    .line 427
    new-instance p1, Ljava/io/IOException;

    const-string p2, "no current CPIO entry"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 429
    :cond_2
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->written:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getSize()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    .line 430
    new-instance p1, Ljava/io/IOException;

    const-string p2, "attempt to write past end of STORED entry"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 432
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 433
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->written:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->written:J

    .line 434
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getFormat()S

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_4

    .line 436
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->crc:J

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->crc:J

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 439
    :cond_4
    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;->count(I)V

    return-void

    .line 421
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
