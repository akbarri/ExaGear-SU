.class public final Lorg/apache/commons/compress/archivers/zip/ZipLong;
.super Ljava/lang/Object;
.source "ZipLong.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final AED_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

.field private static final BYTE_1:I = 0x1

.field private static final BYTE_1_MASK:I = 0xff00

.field private static final BYTE_1_SHIFT:I = 0x8

.field private static final BYTE_2:I = 0x2

.field private static final BYTE_2_MASK:I = 0xff0000

.field private static final BYTE_2_SHIFT:I = 0x10

.field private static final BYTE_3:I = 0x3

.field private static final BYTE_3_MASK:J = 0xff000000L

.field private static final BYTE_3_SHIFT:I = 0x18

.field public static final CFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

.field public static final DD_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

.field public static final LFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

.field public static final SINGLE_SEGMENT_SPLIT_MARKER:Lorg/apache/commons/compress/archivers/zip/ZipLong;

.field static final ZIP64_MAGIC:Lorg/apache/commons/compress/archivers/zip/ZipLong;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    const-wide/32 v1, 0x2014b50    # 1.6619997E-316

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>(J)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->CFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 53
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    const-wide/32 v1, 0x4034b50

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>(J)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->LFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 63
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    const-wide/32 v1, 0x8074b50

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>(J)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->DD_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 70
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    const-wide v1, 0xffffffffL

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>(J)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 80
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    const-wide/32 v1, 0x30304b50

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>(J)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->SINGLE_SEGMENT_SPLIT_MARKER:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 87
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    const-wide/32 v1, 0x8064b50

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>(J)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->AED_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->value:J

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->value:J

    return-void
.end method

.method public static getBytes(J)[B
    .locals 2

    const/4 v0, 0x4

    .line 136
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 137
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong(J[BI)V

    return-object v0
.end method

.method public static getValue([B)J
    .locals 2

    const/4 v0, 0x0

    .line 181
    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getValue([BI)J
    .locals 4

    add-int/lit8 v0, p1, 0x3

    .line 168
    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    int-to-long v0, v0

    const-wide v2, 0xff000000L

    and-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    .line 169
    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    .line 170
    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 171
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static putLong(J[BI)V
    .locals 4

    add-int/lit8 v0, p3, 0x1

    const-wide/16 v1, 0xff

    and-long/2addr v1, p0

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 151
    aput-byte v1, p2, p3

    add-int/lit8 p3, v0, 0x1

    const-wide/32 v1, 0xff00

    and-long/2addr v1, p0

    const/16 v3, 0x8

    shr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 152
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    const-wide/32 v1, 0xff0000

    and-long/2addr v1, p0

    const/16 v3, 0x10

    shr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 153
    aput-byte v1, p2, p3

    const-wide v1, 0xff000000L

    and-long/2addr p0, v1

    const/16 p3, 0x18

    shr-long/2addr p0, p3

    long-to-int p0, p0

    int-to-byte p0, p0

    .line 154
    aput-byte p0, p2, v0

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 209
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 212
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 191
    instance-of v1, p1, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    if-nez v1, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->value:J

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public getBytes()[B
    .locals 2

    .line 119
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->value:J

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getValue()J
    .locals 2

    .line 127
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 203
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public putLong([BI)V
    .locals 2

    .line 158
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->value:J

    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong(J[BI)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZipLong value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->value:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
