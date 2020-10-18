.class final Lorg/apache/commons/compress/archivers/zip/StreamCompressor$DataOutputCompressor;
.super Lorg/apache/commons/compress/archivers/zip/StreamCompressor;
.source "StreamCompressor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/StreamCompressor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataOutputCompressor"
.end annotation


# instance fields
.field private final raf:Ljava/io/DataOutput;


# direct methods
.method public constructor <init>(Ljava/util/zip/Deflater;Ljava/io/DataOutput;)V
    .locals 0

    .line 300
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;-><init>(Ljava/util/zip/Deflater;)V

    .line 301
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor$DataOutputCompressor;->raf:Ljava/io/DataOutput;

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

    .line 307
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor$DataOutputCompressor;->raf:Ljava/io/DataOutput;

    invoke-interface {v0, p1, p2, p3}, Ljava/io/DataOutput;->write([BII)V

    return-void
.end method
