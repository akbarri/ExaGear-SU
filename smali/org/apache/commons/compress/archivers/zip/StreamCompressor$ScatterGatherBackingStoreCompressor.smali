.class final Lorg/apache/commons/compress/archivers/zip/StreamCompressor$ScatterGatherBackingStoreCompressor;
.super Lorg/apache/commons/compress/archivers/zip/StreamCompressor;
.source "StreamCompressor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/StreamCompressor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScatterGatherBackingStoreCompressor"
.end annotation


# instance fields
.field private final bs:Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;


# direct methods
.method public constructor <init>(Ljava/util/zip/Deflater;Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;)V
    .locals 0

    .line 270
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;-><init>(Ljava/util/zip/Deflater;)V

    .line 271
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor$ScatterGatherBackingStoreCompressor;->bs:Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;

    return-void
.end method


# virtual methods
.method protected final writeOut([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor$ScatterGatherBackingStoreCompressor;->bs:Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;->writeOut([BII)V

    return-void
.end method
