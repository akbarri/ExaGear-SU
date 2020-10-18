.class Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper$SimpleEncodingHolder;
.super Ljava/lang/Object;
.source "ZipEncodingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleEncodingHolder"
.end annotation


# instance fields
.field private encoding:Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;

.field private final highChars:[C


# direct methods
.method constructor <init>([C)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper$SimpleEncodingHolder;->highChars:[C

    return-void
.end method


# virtual methods
.method public declared-synchronized getEncoding()Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;
    .locals 2

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper$SimpleEncodingHolder;->encoding:Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper$SimpleEncodingHolder;->highChars:[C

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;-><init>([C)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper$SimpleEncodingHolder;->encoding:Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;

    .line 64
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper$SimpleEncodingHolder;->encoding:Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 60
    monitor-exit p0

    throw v0
.end method
