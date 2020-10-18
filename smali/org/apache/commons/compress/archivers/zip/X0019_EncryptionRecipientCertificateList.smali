.class public Lorg/apache/commons/compress/archivers/zip/X0019_EncryptionRecipientCertificateList;
.super Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;
.source "X0019_EncryptionRecipientCertificateList.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    return-void
.end method
