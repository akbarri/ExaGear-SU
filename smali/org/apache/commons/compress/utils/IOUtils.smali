.class public final Lorg/apache/commons/compress/utils/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final COPY_BUF_SIZE:I = 0x1f58

.field private static final SKIP_BUF:[B

.field private static final SKIP_BUF_SIZE:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1000

    .line 38
    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/compress/utils/IOUtils;->SKIP_BUF:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 201
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1f58

    .line 57
    invoke-static {p0, p1, v0}, Lorg/apache/commons/compress/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    new-array p2, p2, [B

    const-wide/16 v0, 0x0

    :goto_0
    const/4 v2, -0x1

    .line 77
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    .line 78
    invoke-virtual {p1, p2, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v3

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static readFully(Ljava/io/InputStream;[B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 134
    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result p0

    return p0
.end method

.method public static readFully(Ljava/io/InputStream;[BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p3, :cond_3

    if-ltz p2, :cond_3

    add-int v0, p3, p2

    .line 155
    array-length v1, p1

    if-le v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, p3, :cond_2

    add-int v1, p2, v0

    sub-int v2, p3, v0

    .line 160
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    .line 156
    :cond_3
    :goto_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static skip(Ljava/io/InputStream;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-wide v0, p1

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 103
    invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    sub-long/2addr v0, v4

    goto :goto_0

    :cond_1
    :goto_1
    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 111
    sget-object v4, Lorg/apache/commons/compress/utils/IOUtils;->SKIP_BUF:[B

    const/4 v5, 0x0

    const-wide/16 v6, 0x1000

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {p0, v4, v5, v6}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    goto :goto_2

    :cond_2
    int-to-long v4, v4

    sub-long/2addr v0, v4

    goto :goto_1

    :cond_3
    :goto_2
    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 189
    invoke-static {p0, v0}, Lorg/apache/commons/compress/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 190
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
