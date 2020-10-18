.class public Lorg/apache/commons/compress/archivers/zip/ScatterStatistics;
.super Ljava/lang/Object;
.source "ScatterStatistics.java"


# instance fields
.field private final compressionElapsed:J

.field private final mergingElapsed:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterStatistics;->compressionElapsed:J

    .line 32
    iput-wide p3, p0, Lorg/apache/commons/compress/archivers/zip/ScatterStatistics;->mergingElapsed:J

    return-void
.end method


# virtual methods
.method public getCompressionElapsed()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterStatistics;->compressionElapsed:J

    return-wide v0
.end method

.method public getMergingElapsed()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterStatistics;->mergingElapsed:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compressionElapsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterStatistics;->compressionElapsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms, mergingElapsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterStatistics;->mergingElapsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
