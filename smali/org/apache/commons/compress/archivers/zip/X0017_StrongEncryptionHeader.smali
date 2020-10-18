.class public Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;
.super Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;
.source "X0017_StrongEncryptionHeader.java"


# instance fields
.field private algId:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

.field private bitlen:I

.field private erdData:[B

.field private flags:I

.field private format:I

.field private hashAlg:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

.field private hashSize:I

.field private ivData:[B

.field private keyBlob:[B

.field private rcount:J

.field private recipientKeyHash:[B

.field private vCRC32:[B

.field private vData:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 248
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    return-void
.end method


# virtual methods
.method public getEncryptionAlgorithm()Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->algId:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    return-object v0
.end method

.method public getHashAlgorithm()Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashAlg:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    return-object v0
.end method

.method public getRecordCount()J
    .locals 2

    .line 276
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->rcount:J

    return-wide v0
.end method

.method public parseCentralDirectoryFormat([BII)V
    .locals 4

    .line 303
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result p3

    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->format:I

    add-int/lit8 p3, p2, 0x2

    .line 304
    invoke-static {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result p3

    invoke-static {p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->getAlgorithmByCode(I)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    move-result-object p3

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->algId:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    add-int/lit8 p3, p2, 0x4

    .line 305
    invoke-static {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result p3

    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->bitlen:I

    add-int/lit8 p3, p2, 0x6

    .line 306
    invoke-static {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result p3

    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->flags:I

    add-int/lit8 p3, p2, 0x8

    .line 307
    invoke-static {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->rcount:J

    .line 309
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->rcount:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_1

    add-int/lit8 p3, p2, 0xc

    .line 310
    invoke-static {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result p3

    invoke-static {p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->getAlgorithmByCode(I)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    move-result-object p3

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashAlg:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    add-int/lit8 p2, p2, 0xe

    .line 311
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    int-to-long v0, p2

    .line 313
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->rcount:J

    cmp-long p3, v0, v2

    if-gez p3, :cond_1

    move p3, p1

    .line 314
    :goto_1
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    if-ge p3, v0, :cond_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public parseFileFormat([BII)V
    .locals 7

    .line 331
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result p3

    .line 332
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->ivData:[B

    add-int/lit8 v0, p2, 0x4

    .line 333
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->ivData:[B

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, p3

    add-int/lit8 p3, p2, 0x6

    .line 335
    invoke-static {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result p3

    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->format:I

    add-int/lit8 p3, p2, 0x8

    .line 336
    invoke-static {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result p3

    invoke-static {p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->getAlgorithmByCode(I)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    move-result-object p3

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->algId:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    add-int/lit8 p3, p2, 0xa

    .line 337
    invoke-static {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result p3

    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->bitlen:I

    add-int/lit8 p3, p2, 0xc

    .line 338
    invoke-static {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result p3

    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->flags:I

    add-int/lit8 p3, p2, 0xe

    .line 340
    invoke-static {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result p3

    .line 341
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->erdData:[B

    add-int/lit8 v0, p2, 0x10

    .line 342
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->erdData:[B

    invoke-static {p1, v0, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, p3

    .line 344
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->rcount:J

    .line 345
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rcount: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->rcount:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 346
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->rcount:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    const/4 v1, 0x4

    if-nez v0, :cond_0

    add-int/lit8 v0, p2, 0x14

    add-int/2addr v0, p3

    .line 347
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    add-int/lit8 v3, v0, -0x4

    .line 348
    new-array v4, v3, [B

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->vData:[B

    .line 349
    new-array v4, v1, [B

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->vCRC32:[B

    add-int/lit8 p2, p2, 0x16

    add-int/2addr p2, p3

    .line 350
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->vData:[B

    invoke-static {p1, p2, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p2, v1

    .line 351
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->vCRC32:[B

    invoke-static {p1, p2, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p2, 0x14

    add-int/2addr v0, p3

    .line 353
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->getAlgorithmByCode(I)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashAlg:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    add-int/lit8 v0, p2, 0x16

    add-int/2addr v0, p3

    .line 354
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    add-int/lit8 v3, p2, 0x18

    add-int/2addr v3, p3

    .line 355
    invoke-static {p1, v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v4

    .line 356
    iget v5, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    new-array v5, v5, [B

    iput-object v5, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->recipientKeyHash:[B

    .line 357
    iget v5, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    sub-int v5, v4, v5

    new-array v5, v5, [B

    iput-object v5, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->keyBlob:[B

    .line 358
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->recipientKeyHash:[B

    iget v6, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    invoke-static {p1, v3, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    iget v5, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    add-int/2addr v3, v5

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->keyBlob:[B

    iget v6, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    sub-int v6, v4, v6

    invoke-static {p1, v3, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p2, p2, 0x1a

    add-int/2addr p2, p3

    add-int/2addr p2, v4

    .line 361
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result p2

    add-int/lit8 p3, p2, -0x4

    .line 362
    new-array v3, p3, [B

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->vData:[B

    .line 363
    new-array v3, v1, [B

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->vCRC32:[B

    add-int/2addr v0, v4

    .line 364
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->vData:[B

    invoke-static {p1, v0, v3, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, p2

    sub-int/2addr v0, v1

    .line 365
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->vCRC32:[B

    invoke-static {p1, v0, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 0

    .line 379
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->parseFromCentralDirectoryData([BII)V

    .line 380
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->parseCentralDirectoryFormat([BII)V

    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 0

    .line 373
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->parseFromLocalFileData([BII)V

    .line 374
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->parseFileFormat([BII)V

    return-void
.end method
