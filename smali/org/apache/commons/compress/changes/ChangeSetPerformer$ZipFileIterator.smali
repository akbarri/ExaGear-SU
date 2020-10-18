.class Lorg/apache/commons/compress/changes/ChangeSetPerformer$ZipFileIterator;
.super Ljava/lang/Object;
.source "ChangeSetPerformer.java"

# interfaces
.implements Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveEntryIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/changes/ChangeSetPerformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZipFileIterator"
.end annotation


# instance fields
.field private current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

.field private final in:Lorg/apache/commons/compress/archivers/zip/ZipFile;

.field private final nestedEnum:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ZipFileIterator;->in:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .line 268
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getEntriesInPhysicalOrder()Ljava/util/Enumeration;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ZipFileIterator;->nestedEnum:Ljava/util/Enumeration;

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ZipFileIterator;->in:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    iget-object v1, p0, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ZipFileIterator;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 272
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ZipFileIterator;->nestedEnum:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public next()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ZipFileIterator;->nestedEnum:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    iput-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ZipFileIterator;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    return-object v0
.end method
