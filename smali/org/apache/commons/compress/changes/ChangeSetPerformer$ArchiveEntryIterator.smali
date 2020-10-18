.class interface abstract Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveEntryIterator;
.super Ljava/lang/Object;
.source "ChangeSetPerformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/changes/ChangeSetPerformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ArchiveEntryIterator"
.end annotation


# virtual methods
.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract hasNext()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract next()Lorg/apache/commons/compress/archivers/ArchiveEntry;
.end method
