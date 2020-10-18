.class public Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;
.super Ljava/lang/Object;
.source "X000A_NTFS.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;


# static fields
.field private static final EPOCH_OFFSET:J = -0x19db1ded53e8000L

.field private static final HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private static final TIME_ATTR_SIZE:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private static final TIME_ATTR_TAG:Lorg/apache/commons/compress/archivers/zip/ZipShort;


# instance fields
.field private accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

.field private createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

.field private modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 68
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->TIME_ATTR_TAG:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 69
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->TIME_ATTR_SIZE:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 72
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 73
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-void
.end method

.method private static dateToZip(Ljava/util/Date;)Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 385
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    mul-long/2addr v1, v3

    const-wide v3, -0x19db1ded53e8000L

    sub-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    return-object v0
.end method

.method private readTimeAttr([BII)V
    .locals 1

    const/16 v0, 0x1a

    if-lt p3, v0, :cond_0

    .line 364
    new-instance p3, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-direct {p3, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>([BI)V

    .line 365
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->TIME_ATTR_SIZE:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {v0, p3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    add-int/lit8 p2, p2, 0x2

    .line 367
    new-instance p3, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-direct {p3, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    add-int/lit8 p2, p2, 0x8

    .line 369
    new-instance p3, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-direct {p3, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    add-int/lit8 p2, p2, 0x8

    .line 371
    new-instance p3, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-direct {p3, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    .line 357
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 358
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 359
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-void
.end method

.method private static zipToDate(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)Ljava/util/Date;
    .locals 4

    if-eqz p0, :cond_1

    .line 389
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 390
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v0

    const-wide v2, -0x19db1ded53e8000L

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    .line 391
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 325
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 326
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;

    .line 328
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iget-object v2, p1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iget-object v2, p1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iget-object v2, p1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iget-object v2, p1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iget-object v2, p1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iget-object p1, p1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1

    :cond_4
    return v1
.end method

.method public getAccessJavaTime()Ljava/util/Date;
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->zipToDate(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAccessTime()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-object v0
.end method

.method public getCentralDirectoryData()[B
    .locals 1

    .line 144
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->getLocalFileDataData()[B

    move-result-object v0

    return-object v0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v0

    return-object v0
.end method

.method public getCreateJavaTime()Ljava/util/Date;
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->zipToDate(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCreateTime()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-object v0
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .line 82
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 5

    .line 122
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue()I

    move-result v0

    new-array v0, v0, [B

    .line 124
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->TIME_ATTR_TAG:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->TIME_ATTR_SIZE:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes()[B

    move-result-object v1

    const/4 v4, 0x6

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes()[B

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v3, v0, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes()[B

    move-result-object v1

    const/16 v4, 0x10

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes()[B

    move-result-object v1

    const/16 v4, 0x18

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 2

    .line 93
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public getModifyJavaTime()Ljava/util/Date;
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->zipToDate(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getModifyTime()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 338
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    const/16 v1, -0x7b

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 341
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->hashCode()I

    move-result v0

    const/16 v2, 0xb

    invoke-static {v0, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    xor-int/2addr v1, v0

    .line 346
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->hashCode()I

    move-result v0

    const/16 v2, 0x16

    invoke-static {v0, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    xor-int/2addr v1, v0

    :cond_2
    return v1
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->reset()V

    .line 185
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->parseFromLocalFileData([BII)V

    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    add-int/2addr p3, p2

    add-int/lit8 p2, p2, 0x4

    :goto_0
    add-int/lit8 v0, p2, 0x4

    if-gt v0, p3, :cond_1

    .line 165
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>([BI)V

    add-int/lit8 p2, p2, 0x2

    .line 167
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->TIME_ATTR_TAG:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sub-int/2addr p3, p2

    .line 168
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->readTimeAttr([BII)V

    goto :goto_1

    .line 171
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>([BI)V

    .line 172
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue()I

    move-result v0

    const/4 v1, 0x2

    add-int/2addr v1, v0

    add-int/2addr p2, v1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setAccessJavaTime(Ljava/util/Date;)V
    .locals 0

    .line 289
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->dateToZip(Ljava/util/Date;)Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->setAccessTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    return-void
.end method

.method public setAccessTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V
    .locals 0

    if-nez p1, :cond_0

    .line 263
    sget-object p1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-void
.end method

.method public setCreateJavaTime(Ljava/util/Date;)V
    .locals 0

    .line 304
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->dateToZip(Ljava/util/Date;)Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->setCreateTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    return-void
.end method

.method public setCreateTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V
    .locals 0

    if-nez p1, :cond_0

    .line 273
    sget-object p1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-void
.end method

.method public setModifyJavaTime(Ljava/util/Date;)V
    .locals 0

    .line 281
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->dateToZip(Ljava/util/Date;)Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->setModifyTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    return-void
.end method

.method public setModifyTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V
    .locals 0

    if-nez p1, :cond_0

    .line 253
    sget-object p1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x000A Zip Extra Field:"

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Modify:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->getModifyJavaTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Access:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->getAccessJavaTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Create:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->getCreateJavaTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
