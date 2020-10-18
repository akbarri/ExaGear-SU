.class Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;
.super Ljava/lang/Object;
.source "ScatterZipOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompressedEntry"
.end annotation


# instance fields
.field final compressedSize:J

.field final crc:J

.field final size:J

.field final zipArchiveEntryRequest:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;JJJ)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;->zipArchiveEntryRequest:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;

    .line 61
    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;->crc:J

    .line 62
    iput-wide p4, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;->compressedSize:J

    .line 63
    iput-wide p6, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;->size:J

    return-void
.end method


# virtual methods
.method public transferToArchiveEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .locals 3

    .line 73
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;->zipArchiveEntryRequest:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;->getZipArchiveEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    .line 74
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;->compressedSize:J

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCompressedSize(J)V

    .line 75
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;->size:J

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    .line 76
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;->crc:J

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCrc(J)V

    .line 77
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;->zipArchiveEntryRequest:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;->getMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setMethod(I)V

    return-object v0
.end method
