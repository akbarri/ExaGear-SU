.class public interface abstract Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
.super Ljava/lang/Object;
.source "ZipExtraField.java"


# virtual methods
.method public abstract getCentralDirectoryData()[B
.end method

.method public abstract getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
.end method

.method public abstract getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
.end method

.method public abstract getLocalFileDataData()[B
.end method

.method public abstract getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
.end method

.method public abstract parseFromCentralDirectoryData([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation
.end method

.method public abstract parseFromLocalFileData([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation
.end method
