.class Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveInputStreamIterator;
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
    name = "ArchiveInputStreamIterator"
.end annotation


# instance fields
.field private final in:Lorg/apache/commons/compress/archivers/ArchiveInputStream;

.field private next:Lorg/apache/commons/compress/archivers/ArchiveEntry;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/ArchiveInputStream;)V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveInputStreamIterator;->in:Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveInputStreamIterator;->in:Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveInputStreamIterator;->in:Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveInputStreamIterator;->next:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveInputStreamIterator;->next:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    return-object v0
.end method
