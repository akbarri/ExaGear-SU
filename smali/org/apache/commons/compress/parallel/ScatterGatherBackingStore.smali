.class public interface abstract Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;
.super Ljava/lang/Object;
.source "ScatterGatherBackingStore.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract closeForWriting()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeOut([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
