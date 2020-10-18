.class Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;
.super Ljava/lang/Object;
.source "DumpArchiveUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateChecksum([B)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x100

    if-ge v0, v2, :cond_0

    const/4 v2, 0x4

    mul-int/2addr v2, v0

    .line 44
    invoke-static {p0, v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x149de

    const/16 v2, 0x1c

    .line 47
    invoke-static {p0, v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v0, v1

    return v0
.end method

.method public static final convert16([BI)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 130
    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    const/4 v1, 0x0

    add-int/2addr v1, v0

    .line 131
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v1, p0

    return v1
.end method

.method public static final convert32([BI)I
    .locals 3

    add-int/lit8 v0, p1, 0x3

    .line 113
    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x2

    .line 114
    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    .line 115
    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 116
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method public static final convert64([BI)J
    .locals 6

    add-int/lit8 v0, p1, 0x7

    .line 92
    aget-byte v0, p0, v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    const-wide/16 v2, 0x0

    add-long/2addr v2, v0

    add-int/lit8 v0, p1, 0x6

    .line 93
    aget-byte v0, p0, v0

    int-to-long v0, v0

    const/16 v4, 0x30

    shl-long/2addr v0, v4

    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v0, v4

    add-long/2addr v2, v0

    add-int/lit8 v0, p1, 0x5

    .line 94
    aget-byte v0, p0, v0

    int-to-long v0, v0

    const/16 v4, 0x28

    shl-long/2addr v0, v4

    const-wide v4, 0xff0000000000L

    and-long/2addr v0, v4

    add-long/2addr v2, v0

    add-int/lit8 v0, p1, 0x4

    .line 95
    aget-byte v0, p0, v0

    int-to-long v0, v0

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    const-wide v4, 0xff00000000L

    and-long/2addr v0, v4

    add-long/2addr v2, v0

    add-int/lit8 v0, p1, 0x3

    .line 96
    aget-byte v0, p0, v0

    int-to-long v0, v0

    const/16 v4, 0x18

    shl-long/2addr v0, v4

    const-wide v4, 0xff000000L

    and-long/2addr v0, v4

    add-long/2addr v2, v0

    add-int/lit8 v0, p1, 0x2

    .line 97
    aget-byte v0, p0, v0

    int-to-long v0, v0

    const/16 v4, 0x10

    shl-long/2addr v0, v4

    const-wide/32 v4, 0xff0000

    and-long/2addr v0, v4

    add-long/2addr v2, v0

    add-int/lit8 v0, p1, 0x1

    .line 98
    aget-byte v0, p0, v0

    int-to-long v0, v0

    const/16 v4, 0x8

    shl-long/2addr v0, v4

    const-wide/32 v4, 0xff00

    and-long/2addr v0, v4

    add-long/2addr v2, v0

    .line 99
    aget-byte p0, p0, p1

    int-to-long p0, p0

    const-wide/16 v0, 0xff

    and-long/2addr p0, v0

    add-long/2addr v2, p0

    return-wide v2
.end method

.method static decode(Lorg/apache/commons/compress/archivers/zip/ZipEncoding;[BII)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 142
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    invoke-interface {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getIno([B)I
    .locals 1

    const/16 v0, 0x14

    .line 80
    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result p0

    return p0
.end method

.method public static final verify([B)Z
    .locals 3

    const/16 v0, 0x18

    .line 58
    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v0

    const/4 v1, 0x0

    const v2, 0xea6c

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x1c

    .line 65
    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v0

    .line 67
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->calculateChecksum([B)I

    move-result p0

    if-eq v0, p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
