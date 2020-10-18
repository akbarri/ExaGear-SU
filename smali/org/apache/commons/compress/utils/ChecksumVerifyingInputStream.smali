.class public Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;
.super Ljava/io/InputStream;
.source "ChecksumVerifyingInputStream.java"


# instance fields
.field private bytesRemaining:J

.field private final checksum:Ljava/util/zip/Checksum;

.field private final expectedChecksum:J

.field private final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/util/zip/Checksum;Ljava/io/InputStream;JJ)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->checksum:Ljava/util/zip/Checksum;

    .line 39
    iput-object p2, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->in:Ljava/io/InputStream;

    .line 40
    iput-wide p5, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->expectedChecksum:J

    .line 41
    iput-wide p3, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->bytesRemaining:J

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

    .line 107
    iget-object v0, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-wide v0, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_1

    .line 57
    iget-object v1, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v1, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 58
    iget-wide v4, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->bytesRemaining:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->bytesRemaining:J

    .line 60
    :cond_1
    iget-wide v4, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->bytesRemaining:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_2

    iget-wide v1, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->expectedChecksum:J

    iget-object v3, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v3}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 61
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Checksum verification failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 74
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-ltz p3, :cond_0

    .line 87
    iget-object v0, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    .line 88
    iget-wide p1, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->bytesRemaining:J

    int-to-long v0, p3

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->bytesRemaining:J

    .line 90
    :cond_0
    iget-wide p1, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->bytesRemaining:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_1

    iget-wide p1, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->expectedChecksum:J

    iget-object v0, p0, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1

    .line 91
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Checksum verification failed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return p3
.end method

.method public skip(J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;->read()I

    move-result p1

    if-ltz p1, :cond_0

    const-wide/16 p1, 0x1

    return-wide p1

    :cond_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method
