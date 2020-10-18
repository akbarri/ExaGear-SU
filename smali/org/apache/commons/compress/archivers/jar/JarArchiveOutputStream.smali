.class public Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;
.super Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
.source "JarArchiveOutputStream.java"


# instance fields
.field private jarMarkerAdded:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;->jarMarkerAdded:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;->jarMarkerAdded:Z

    .line 53
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;->setEncoding(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;->jarMarkerAdded:Z

    if-nez v0, :cond_0

    .line 60
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-static {}, Lorg/apache/commons/compress/archivers/zip/JarMarker;->getInstance()Lorg/apache/commons/compress/archivers/zip/JarMarker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->addAsFirstExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;->jarMarkerAdded:Z

    .line 63
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    return-void
.end method
