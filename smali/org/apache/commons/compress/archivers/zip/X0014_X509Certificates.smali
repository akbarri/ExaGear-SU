.class public Lorg/apache/commons/compress/archivers/zip/X0014_X509Certificates;
.super Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;
.source "X0014_X509Certificates.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    return-void
.end method
