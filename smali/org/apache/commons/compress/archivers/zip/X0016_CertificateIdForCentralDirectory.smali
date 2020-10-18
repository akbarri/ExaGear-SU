.class public Lorg/apache/commons/compress/archivers/zip/X0016_CertificateIdForCentralDirectory;
.super Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;
.source "X0016_CertificateIdForCentralDirectory.java"


# instance fields
.field private hashAlg:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

.field private rcount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    return-void
.end method


# virtual methods
.method public getHashAlgorithm()Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X0016_CertificateIdForCentralDirectory;->hashAlg:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    return-object v0
.end method

.method public getRecordCount()I
    .locals 1

    .line 59
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/X0016_CertificateIdForCentralDirectory;->rcount:I

    return v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 0

    .line 72
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result p3

    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/X0016_CertificateIdForCentralDirectory;->rcount:I

    add-int/lit8 p2, p2, 0x2

    .line 73
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->getAlgorithmByCode(I)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/X0016_CertificateIdForCentralDirectory;->hashAlg:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    return-void
.end method
