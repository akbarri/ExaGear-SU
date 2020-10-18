.class Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;
.super Ljava/io/InputStream;
.source "ZipArchiveInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoundedInputStream"
.end annotation


# instance fields
.field private final in:Ljava/io/InputStream;

.field private final max:J

.field private pos:J

.field final synthetic this$0:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;Ljava/io/InputStream;J)V
    .locals 2

    .line 1056
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 1047
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    .line 1057
    iput-wide p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->max:J

    .line 1058
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->in:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1106
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->max:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1109
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1063
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->max:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1066
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1067
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    .line 1068
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->access$800(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;I)V

    .line 1069
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->access$900(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$708(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

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

    .line 1075
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1080
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-ltz v0, :cond_0

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->max:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    return v1

    .line 1083
    :cond_0
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->max:J

    cmp-long v0, v4, v2

    if-ltz v0, :cond_1

    int-to-long v2, p3

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->max:J

    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    int-to-long v2, p3

    .line 1084
    :goto_0
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->in:Ljava/io/InputStream;

    long-to-int v0, v2

    invoke-virtual {p3, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v1, :cond_2

    return v1

    .line 1090
    :cond_2
    iget-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    .line 1091
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    invoke-static {p2, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->access$1000(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;I)V

    .line 1092
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->access$900(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    move-result-object p2

    invoke-static {p2, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$714(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;J)J

    return p1
.end method

.method public skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1098
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->max:J

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    sub-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 1099
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    .line 1100
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    return-wide p1
.end method
