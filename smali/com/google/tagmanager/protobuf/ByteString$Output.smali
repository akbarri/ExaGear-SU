.class public final Lcom/google/tagmanager/protobuf/ByteString$Output;
.super Ljava/io/OutputStream;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Output"
.end annotation


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B


# instance fields
.field private buffer:[B

.field private bufferPos:I

.field private final flushedBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/tagmanager/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private flushedBuffersTotalBytes:I

.field private final initialCapacity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 737
    new-array v0, v0, [B

    sput-object v0, Lcom/google/tagmanager/protobuf/ByteString$Output;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 755
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    if-gez p1, :cond_0

    .line 757
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Buffer size < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 759
    :cond_0
    iput p1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->initialCapacity:I

    .line 760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    .line 761
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    return-void
.end method

.method private flushFullBuffer(I)V
    .locals 3

    .line 863
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/tagmanager/protobuf/LiteralByteString;

    iget-object v2, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    invoke-direct {v1, v2}, Lcom/google/tagmanager/protobuf/LiteralByteString;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    iget v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    const/4 v2, 0x0

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    .line 868
    iget v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->initialCapacity:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    ushr-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 870
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    .line 871
    iput v2, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    return-void
.end method

.method private flushLastBuffer()V
    .locals 4

    .line 879
    iget v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    const/4 v2, 0x0

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 880
    iget v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    if-lez v0, :cond_1

    .line 881
    iget v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    new-array v0, v0, [B

    .line 882
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    iget v3, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 883
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/tagmanager/protobuf/LiteralByteString;

    invoke-direct {v3, v0}, Lcom/google/tagmanager/protobuf/LiteralByteString;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/tagmanager/protobuf/LiteralByteString;

    iget-object v3, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    invoke-direct {v1, v3}, Lcom/google/tagmanager/protobuf/LiteralByteString;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    sget-object v0, Lcom/google/tagmanager/protobuf/ByteString$Output;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    .line 896
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    .line 897
    iput v2, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    return-void
.end method


# virtual methods
.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 846
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 847
    iput v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    .line 848
    iput v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 849
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 845
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 2

    monitor-enter p0

    .line 837
    :try_start_0
    iget v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toByteString()Lcom/google/tagmanager/protobuf/ByteString;
    .locals 1

    monitor-enter p0

    .line 799
    :try_start_0
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushLastBuffer()V

    .line 800
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/ByteString;->copyFrom(Ljava/lang/Iterable;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 798
    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "<ByteString.Output@%s size=%d>"

    const/4 v1, 0x2

    .line 853
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/ByteString$Output;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized write(I)V
    .locals 3

    monitor-enter p0

    .line 766
    :try_start_0
    iget v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 767
    invoke-direct {p0, v0}, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushFullBuffer(I)V

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    iget v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 765
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .locals 3

    monitor-enter p0

    .line 774
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    sub-int/2addr v0, v1

    if-gt p3, v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    iget v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 777
    iget p1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    goto :goto_0

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    sub-int/2addr v0, v1

    .line 781
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    iget v2, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 786
    invoke-direct {p0, p3}, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushFullBuffer(I)V

    .line 787
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 788
    iput p3, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 773
    monitor-exit p0

    throw p1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 814
    monitor-enter p0

    .line 817
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/tagmanager/protobuf/ByteString;

    .line 819
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    .line 820
    iget v2, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    .line 821
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    .line 822
    array-length v4, v0

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v0, v5

    .line 823
    invoke-virtual {v6, p1}, Lcom/google/tagmanager/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 826
    :cond_0
    new-array v0, v2, [B

    .line 827
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 828
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    :catchall_0
    move-exception p1

    .line 821
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
