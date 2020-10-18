.class public Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;
.super Ljava/lang/Object;
.source "TarArchiveSparseEntry.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/tar/TarConstants;


# instance fields
.field private final isExtended:Z


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f8

    .line 57
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseBoolean([BI)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;->isExtended:Z

    return-void
.end method


# virtual methods
.method public isExtended()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;->isExtended:Z

    return v0
.end method
