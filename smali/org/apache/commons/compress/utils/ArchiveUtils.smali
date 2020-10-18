.class public Lorg/apache/commons/compress/utils/ArchiveUtils;
.super Ljava/lang/Object;
.source "ArchiveUtils.java"


# static fields
.field private static final MAX_SANITIZED_NAME_LENGTH:I = 0xff


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isArrayZero([BI)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 251
    aget-byte v2, p0, v1

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isEqual([BII[BII)Z
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 197
    invoke-static/range {v0 .. v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isEqual([BII[BIIZ)Z

    move-result p0

    return p0
.end method

.method public static isEqual([BII[BIIZ)Z
    .locals 5

    if-ge p2, p5, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p5

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    add-int v3, p1, v2

    .line 157
    aget-byte v3, p0, v3

    add-int v4, p4, v2

    aget-byte v4, p3, v4

    if-eq v3, v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-ne p2, p5, :cond_3

    return v0

    :cond_3
    if-eqz p6, :cond_8

    if-le p2, p5, :cond_5

    :goto_2
    if-ge p5, p2, :cond_7

    add-int p3, p1, p5

    .line 167
    aget-byte p3, p0, p3

    if-eqz p3, :cond_4

    return v1

    :cond_4
    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-ge p2, p5, :cond_7

    add-int p0, p4, p2

    .line 173
    aget-byte p0, p3, p0

    if-eqz p0, :cond_6

    return v1

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_7
    return v0

    :cond_8
    return v1
.end method

.method public static isEqual([B[B)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 208
    array-length v2, p0

    array-length v5, p1

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isEqual([BII[BIIZ)Z

    move-result p0

    return p0
.end method

.method public static isEqual([B[BZ)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 220
    array-length v2, p0

    array-length v5, p1

    move-object v0, p0

    move-object v3, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isEqual([BII[BIIZ)Z

    move-result p0

    return p0
.end method

.method public static isEqualWithNull([BII[BII)Z
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 237
    invoke-static/range {v0 .. v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isEqual([BII[BIIZ)Z

    move-result p0

    return p0
.end method

.method public static matchAsciiBuffer(Ljava/lang/String;[B)Z
    .locals 2

    const/4 v0, 0x0

    .line 91
    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result p0

    return p0
.end method

.method public static matchAsciiBuffer(Ljava/lang/String;[BII)Z
    .locals 8

    :try_start_0
    const-string v0, "US-ASCII"

    .line 76
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .line 80
    array-length v3, v1

    const/4 v7, 0x0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isEqual([BII[BIIZ)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    .line 78
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 274
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/16 v0, 0xff

    .line 275
    array-length v1, p0

    if-gt v1, v0, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v1

    .line 276
    :goto_0
    array-length p0, p0

    if-le p0, v0, :cond_1

    const/16 p0, 0xfc

    :goto_1
    if-ge p0, v0, :cond_1

    const/16 v2, 0x2e

    .line 278
    aput-char v2, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 281
    :cond_1
    array-length p0, v1

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p0, :cond_3

    .line 284
    aget-char v3, v1, v2

    .line 285
    invoke-static {v3}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 286
    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 287
    sget-object v5, Ljava/lang/Character$UnicodeBlock;->SPECIALS:Ljava/lang/Character$UnicodeBlock;

    if-eq v4, v5, :cond_2

    .line 288
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    const/16 v3, 0x3f

    .line 292
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 294
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toAsciiBytes(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "US-ASCII"

    .line 103
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static toAsciiString([B)Ljava/lang/String;
    .locals 2

    .line 117
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 119
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static toAsciiString([BII)Ljava/lang/String;
    .locals 2

    .line 133
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 135
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static toString(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Ljava/lang/String;
    .locals 5

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    invoke-interface {p0}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x64

    goto :goto_0

    :cond_0
    const/16 v1, 0x2d

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    invoke-interface {p0}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    .line 55
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
