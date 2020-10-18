.class public abstract Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;
.super Ljava/lang/Object;
.source "PKWareExtraHeader.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;,
        Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;
    }
.end annotation


# instance fields
.field private centralData:[B

.field private final headerId:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private localData:[B


# direct methods
.method protected constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->headerId:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-void
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->centralData:[B

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->centralData:[B

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->copy([B)[B

    move-result-object v0

    return-object v0

    .line 159
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->getLocalFileDataData()[B

    move-result-object v0

    return-object v0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 2

    .line 143
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->centralData:[B

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->centralData:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object v0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->headerId:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->localData:[B

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->copy([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 2

    .line 112
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->localData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->localData:[B

    array-length v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 2

    .line 189
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 190
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->setCentralDirectoryData([B)V

    .line 192
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->localData:[B

    if-nez p1, :cond_0

    .line 193
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->setLocalFileDataData([B)V

    :cond_0
    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 2

    .line 173
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 174
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->setLocalFileDataData([B)V

    return-void
.end method

.method public setCentralDirectoryData([B)V
    .locals 0

    .line 132
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->copy([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->centralData:[B

    return-void
.end method

.method public setLocalFileDataData([B)V
    .locals 0

    .line 102
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->copy([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->localData:[B

    return-void
.end method
