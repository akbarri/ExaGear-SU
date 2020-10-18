.class public Lorg/apache/commons/compress/utils/BoundedInputStream;
.super Ljava/io/InputStream;
.source "BoundedInputStream.java"


# instance fields
.field private bytesRemaining:J

.field private final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->in:Ljava/io/InputStream;

    .line 40
    iput-wide p2, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->bytesRemaining:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-wide v0, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 46
    iget-wide v0, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->bytesRemaining:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->bytesRemaining:J

    .line 47
    iget-object v0, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-wide v0, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    int-to-long v0, p3

    .line 58
    iget-wide v2, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->bytesRemaining:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 59
    iget-wide v0, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->bytesRemaining:J

    long-to-int p3, v0

    .line 61
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_2

    .line 63
    iget-wide p2, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->bytesRemaining:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->bytesRemaining:J

    :cond_2
    return p1
.end method
