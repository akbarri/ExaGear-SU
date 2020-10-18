.class public final Lcom/google/tagmanager/protobuf/CodedInputStream;
.super Ljava/lang/Object;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/protobuf/CodedInputStream$RefillCallback;,
        Lcom/google/tagmanager/protobuf/CodedInputStream$SkippedDataSink;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final DEFAULT_RECURSION_LIMIT:I = 0x40

.field private static final DEFAULT_SIZE_LIMIT:I = 0x4000000


# instance fields
.field private final buffer:[B

.field private final bufferIsImmutable:Z

.field private bufferPos:I

.field private bufferSize:I

.field private bufferSizeAfterLimit:I

.field private currentLimit:I

.field private enableAliasing:Z

.field private final input:Ljava/io/InputStream;

.field private lastTag:I

.field private recursionDepth:I

.field private recursionLimit:I

.field private refillCallback:Lcom/google/tagmanager/protobuf/CodedInputStream$RefillCallback;

.field private sizeLimit:I

.field private totalBytesRetired:I


# direct methods
.method private constructor <init>(Lcom/google/tagmanager/protobuf/LiteralByteString;)V
    .locals 2

    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 800
    iput-boolean v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->enableAliasing:Z

    const v0, 0x7fffffff

    .line 812
    iput v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->currentLimit:I

    const/16 v0, 0x40

    .line 816
    iput v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionLimit:I

    const/high16 v0, 0x4000000

    .line 819
    iput v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->sizeLimit:I

    const/4 v0, 0x0

    .line 992
    iput-object v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->refillCallback:Lcom/google/tagmanager/protobuf/CodedInputStream$RefillCallback;

    .line 844
    iget-object v1, p1, Lcom/google/tagmanager/protobuf/LiteralByteString;->bytes:[B

    iput-object v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->buffer:[B

    .line 845
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    iput v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    .line 846
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/LiteralByteString;->size()I

    move-result p1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    .line 847
    iget p1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    neg-int p1, p1

    iput p1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 848
    iput-object v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    const/4 p1, 0x1

    .line 849
    iput-boolean p1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferIsImmutable:Z

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 800
    iput-boolean v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->enableAliasing:Z

    const v1, 0x7fffffff

    .line 812
    iput v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->currentLimit:I

    const/16 v1, 0x40

    .line 816
    iput v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionLimit:I

    const/high16 v1, 0x4000000

    .line 819
    iput v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->sizeLimit:I

    const/4 v1, 0x0

    .line 992
    iput-object v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->refillCallback:Lcom/google/tagmanager/protobuf/CodedInputStream$RefillCallback;

    const/16 v1, 0x1000

    .line 835
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->buffer:[B

    .line 836
    iput v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    .line 837
    iput v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    .line 838
    iput v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 839
    iput-object p1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    .line 840
    iput-boolean v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferIsImmutable:Z

    return-void
.end method

.method private constructor <init>([BII)V
    .locals 2

    .line 825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 800
    iput-boolean v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->enableAliasing:Z

    const v1, 0x7fffffff

    .line 812
    iput v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->currentLimit:I

    const/16 v1, 0x40

    .line 816
    iput v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionLimit:I

    const/high16 v1, 0x4000000

    .line 819
    iput v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->sizeLimit:I

    const/4 v1, 0x0

    .line 992
    iput-object v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->refillCallback:Lcom/google/tagmanager/protobuf/CodedInputStream$RefillCallback;

    .line 826
    iput-object p1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->buffer:[B

    add-int/2addr p3, p2

    .line 827
    iput p3, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    .line 828
    iput p2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    neg-int p1, p2

    .line 829
    iput p1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 830
    iput-object v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    .line 831
    iput-boolean v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferIsImmutable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/tagmanager/protobuf/CodedInputStream;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    return p0
.end method

.method static synthetic access$100(Lcom/google/tagmanager/protobuf/CodedInputStream;)[B
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->buffer:[B

    return-object p0
.end method

.method public static decodeZigZag32(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static decodeZigZag64(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method static newInstance(Lcom/google/tagmanager/protobuf/LiteralByteString;)Lcom/google/tagmanager/protobuf/CodedInputStream;
    .locals 1

    .line 92
    new-instance v0, Lcom/google/tagmanager/protobuf/CodedInputStream;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;-><init>(Lcom/google/tagmanager/protobuf/LiteralByteString;)V

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->pushLimit(I)I
    :try_end_0
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static newInstance(Ljava/io/InputStream;)Lcom/google/tagmanager/protobuf/CodedInputStream;
    .locals 1

    .line 30
    new-instance v0, Lcom/google/tagmanager/protobuf/CodedInputStream;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static newInstance(Ljava/nio/ByteBuffer;)Lcom/google/tagmanager/protobuf/CodedInputStream;
    .locals 3

    .line 77
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->newInstance([BII)Lcom/google/tagmanager/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0

    .line 81
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 82
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 83
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 84
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->newInstance([B)Lcom/google/tagmanager/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance([B)Lcom/google/tagmanager/protobuf/CodedInputStream;
    .locals 2

    const/4 v0, 0x0

    .line 37
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->newInstance([BII)Lcom/google/tagmanager/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance([BII)Lcom/google/tagmanager/protobuf/CodedInputStream;
    .locals 1

    .line 45
    new-instance v0, Lcom/google/tagmanager/protobuf/CodedInputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;-><init>([BII)V

    .line 52
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->pushLimit(I)I
    :try_end_0
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 61
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static readRawVarint32(ILjava/io/InputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p0, 0x80

    if-nez v0, :cond_0

    return p0

    :cond_0
    and-int/lit8 p0, p0, 0x7f

    const/4 v0, 0x7

    :goto_0
    const/16 v1, 0x20

    const/4 v2, -0x1

    if-ge v0, v1, :cond_3

    .line 694
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 696
    invoke-static {}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_1
    and-int/lit8 v2, v1, 0x7f

    shl-int/2addr v2, v0

    or-int/2addr p0, v2

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_2

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_3
    :goto_1
    const/16 v1, 0x40

    if-ge v0, v1, :cond_6

    .line 705
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 707
    invoke-static {}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_4
    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_5

    return p0

    :cond_5
    add-int/lit8 v0, v0, 0x7

    goto :goto_1

    .line 713
    :cond_6
    invoke-static {}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static readRawVarint32(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 673
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 675
    invoke-static {}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 677
    :cond_0
    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result p0

    return p0
.end method

.method private recomputeBufferSizeAfterLimit()V
    .locals 2

    .line 937
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    .line 938
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v0, v1

    .line 939
    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->currentLimit:I

    if-le v0, v1, :cond_0

    .line 941
    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->currentLimit:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    .line 942
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 944
    iput v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    :goto_0
    return-void
.end method

.method private refillBuffer(Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1002
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    if-ge v0, v1, :cond_0

    .line 1003
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "refillBuffer() called when buffer wasn\'t empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1007
    :cond_0
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->currentLimit:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_1

    .line 1010
    invoke-static {}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_1
    return v2

    .line 1016
    :cond_2
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->refillCallback:Lcom/google/tagmanager/protobuf/CodedInputStream$RefillCallback;

    if-eqz v0, :cond_3

    .line 1017
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->refillCallback:Lcom/google/tagmanager/protobuf/CodedInputStream$RefillCallback;

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/CodedInputStream$RefillCallback;->onRefill()V

    .line 1020
    :cond_3
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 1022
    iput v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    .line 1023
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->buffer:[B

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    .line 1024
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    if-ge v0, v1, :cond_5

    goto :goto_2

    .line 1029
    :cond_5
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    if-ne v0, v1, :cond_7

    .line 1030
    iput v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    if-eqz p1, :cond_6

    .line 1032
    invoke-static {}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_6
    return v2

    .line 1037
    :cond_7
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->recomputeBufferSizeAfterLimit()V

    .line 1038
    iget p1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    add-int/2addr p1, v0

    .line 1040
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->sizeLimit:I

    if-gt p1, v0, :cond_9

    if-gez p1, :cond_8

    goto :goto_1

    :cond_8
    const/4 p1, 0x1

    return p1

    .line 1041
    :cond_9
    :goto_1
    invoke-static {}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1025
    :cond_a
    :goto_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputStream#read(byte[]) returned invalid result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nThe InputStream implementation is buggy."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private skipRawVarint()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 658
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 662
    :cond_1
    invoke-static {}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 145
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->lastTag:I

    if-eq v0, p1, :cond_0

    .line 146
    invoke-static {}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_0
    return-void
.end method

.method public enableAliasing(Z)V
    .locals 0

    .line 853
    iput-boolean p1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->enableAliasing:Z

    return-void
.end method

.method public getBytesUntilLimit()I
    .locals 2

    .line 963
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 967
    :cond_0
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v0, v1

    .line 968
    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->currentLimit:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public getLastTag()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->lastTag:I

    return v0
.end method

.method public getTotalBytesRead()I
    .locals 2

    .line 985
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isAtEnd()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 977
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->refillBuffer(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public mergeToMessage(Lcom/google/tagmanager/protobuf/MutableMessageLite;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    new-instance v0, Lcom/google/tagmanager/protobuf/CodedInputStream$SkippedDataSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/tagmanager/protobuf/CodedInputStream$SkippedDataSink;-><init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/CodedInputStream$1;)V

    .line 306
    iput-object v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->refillCallback:Lcom/google/tagmanager/protobuf/CodedInputStream$RefillCallback;

    .line 307
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->skipMessage()V

    .line 308
    iput-object v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->refillCallback:Lcom/google/tagmanager/protobuf/CodedInputStream$RefillCallback;

    .line 309
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/CodedInputStream$SkippedDataSink;->getSkippedData()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-interface {p1, v1, v2, v0}, Lcom/google/tagmanager/protobuf/MutableMessageLite;->mergeFrom([BII)Z

    move-result p1

    if-nez p1, :cond_0

    .line 311
    invoke-static {}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_0
    return-void
.end method

.method public popLimit(I)V
    .locals 0

    .line 954
    iput p1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->currentLimit:I

    .line 955
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->recomputeBufferSizeAfterLimit()V

    return-void
.end method

.method public pushLimit(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    if-gez p1, :cond_0

    .line 922
    invoke-static {}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 924
    :cond_0
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 925
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->currentLimit:I

    if-le p1, v0, :cond_1

    .line 927
    invoke-static {}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 929
    :cond_1
    iput p1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->currentLimit:I

    .line 931
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->recomputeBufferSizeAfterLimit()V

    return v0
.end method

.method public readBool()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readByteArray()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    if-nez v0, :cond_0

    .line 546
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 547
    :cond_0
    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    if-lez v0, :cond_1

    .line 550
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->buffer:[B

    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    iget v3, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 552
    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    return-object v1

    .line 556
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public readByteBuffer()Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 562
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    if-nez v0, :cond_0

    .line 564
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    .line 565
    :cond_0
    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_2

    if-lez v0, :cond_2

    .line 571
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferIsImmutable:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->enableAliasing:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->buffer:[B

    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->buffer:[B

    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    iget v3, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 575
    :goto_0
    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    return-object v1

    .line 579
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public readBytes()Lcom/google/tagmanager/protobuf/ByteString;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 525
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    if-nez v0, :cond_0

    .line 527
    sget-object v0, Lcom/google/tagmanager/protobuf/ByteString;->EMPTY:Lcom/google/tagmanager/protobuf/ByteString;

    return-object v0

    .line 528
    :cond_0
    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_2

    if-lez v0, :cond_2

    .line 531
    iget-boolean v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferIsImmutable:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->enableAliasing:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/tagmanager/protobuf/BoundedByteString;

    iget-object v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->buffer:[B

    iget v3, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    invoke-direct {v1, v2, v3, v0}, Lcom/google/tagmanager/protobuf/BoundedByteString;-><init>([BII)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->buffer:[B

    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    invoke-static {v1, v2, v0}, Lcom/google/tagmanager/protobuf/ByteString;->copyFrom([BII)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v1

    .line 534
    :goto_0
    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    return-object v1

    .line 538
    :cond_2
    new-instance v1, Lcom/google/tagmanager/protobuf/LiteralByteString;

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawBytes(I)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/tagmanager/protobuf/LiteralByteString;-><init>([B)V

    return-object v1
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 593
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readGroup(ILcom/google/tagmanager/protobuf/Parser;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/tagmanager/protobuf/MessageLite;",
            ">(I",
            "Lcom/google/tagmanager/protobuf/Parser<",
            "TT;>;",
            "Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionLimit:I

    if-lt v0, v1, :cond_0

    .line 441
    invoke-static {}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 443
    :cond_0
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    .line 444
    invoke-interface {p2, p0, p3}, Lcom/google/tagmanager/protobuf/Parser;->parsePartialFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/tagmanager/protobuf/MessageLite;

    const/4 p3, 0x4

    .line 445
    invoke-static {p1, p3}, Lcom/google/tagmanager/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 447
    iget p1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    return-object p2
.end method

.method public readGroup(ILcom/google/tagmanager/protobuf/MessageLite$Builder;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionLimit:I

    if-lt v0, v1, :cond_0

    .line 407
    invoke-static {}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 409
    :cond_0
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    .line 410
    invoke-interface {p2, p0, p3}, Lcom/google/tagmanager/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite$Builder;

    const/4 p2, 0x4

    .line 411
    invoke-static {p1, p2}, Lcom/google/tagmanager/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 413
    iget p1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    return-void
.end method

.method public readGroup(ILcom/google/tagmanager/protobuf/MutableMessageLite;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionLimit:I

    if-lt v0, v1, :cond_0

    .line 425
    invoke-static {}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 427
    :cond_0
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    .line 428
    invoke-interface {p2, p0, p3}, Lcom/google/tagmanager/protobuf/MutableMessageLite;->mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Z

    const/4 p2, 0x4

    .line 429
    invoke-static {p1, p2}, Lcom/google/tagmanager/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 431
    iget p1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    return-void
.end method

.method public readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMessage(Lcom/google/tagmanager/protobuf/Parser;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/tagmanager/protobuf/MessageLite;",
            ">(",
            "Lcom/google/tagmanager/protobuf/Parser<",
            "TT;>;",
            "Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 511
    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionLimit:I

    if-lt v1, v2, :cond_0

    .line 512
    invoke-static {}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 514
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v0

    .line 515
    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    .line 516
    invoke-interface {p1, p0, p2}, Lcom/google/tagmanager/protobuf/Parser;->parsePartialFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/tagmanager/protobuf/MessageLite;

    const/4 p2, 0x0

    .line 517
    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 518
    iget p2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    .line 519
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->popLimit(I)V

    return-object p1
.end method

.method public readMessage(Lcom/google/tagmanager/protobuf/MessageLite$Builder;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 475
    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionLimit:I

    if-lt v1, v2, :cond_0

    .line 476
    invoke-static {}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 478
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v0

    .line 479
    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    .line 480
    invoke-interface {p1, p0, p2}, Lcom/google/tagmanager/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite$Builder;

    const/4 p1, 0x0

    .line 481
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 482
    iget p1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    .line 483
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->popLimit(I)V

    return-void
.end method

.method public readMessage(Lcom/google/tagmanager/protobuf/MutableMessageLite;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 493
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 494
    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionLimit:I

    if-lt v1, v2, :cond_0

    .line 495
    invoke-static {}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 497
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v0

    .line 498
    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    .line 499
    invoke-interface {p1, p0, p2}, Lcom/google/tagmanager/protobuf/MutableMessageLite;->mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Z

    const/4 p1, 0x0

    .line 500
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 501
    iget p1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionDepth:I

    .line 502
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->popLimit(I)V

    return-void
.end method

.method public readRawByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1054
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1055
    invoke-direct {p0, v0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->refillBuffer(Z)Z

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->buffer:[B

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readRawBytes(I)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_0

    .line 1068
    invoke-static {}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1071
    :cond_0
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->currentLimit:I

    if-le v0, v1, :cond_1

    .line 1073
    iget p1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->currentLimit:I

    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->totalBytesRetired:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->skipRawBytes(I)V

    .line 1075
    invoke-static {}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1078
    :cond_1
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-gt p1, v0, :cond_2

    .line 1080
    new-array v0, p1, [B

    .line 1081
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->buffer:[B

    iget v3, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    invoke-static {v2, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1082
    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    return-object v0

    :cond_2
    const/16 v0, 0x1000

    if-ge p1, v0, :cond_4

    .line 1089
    new-array v0, p1, [B

    .line 1090
    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    iget v3, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v2, v3

    .line 1091
    iget-object v3, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->buffer:[B

    iget v4, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1092
    iget v3, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    iput v3, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    const/4 v3, 0x1

    .line 1097
    invoke-direct {p0, v3}, Lcom/google/tagmanager/protobuf/CodedInputStream;->refillBuffer(Z)Z

    :goto_0
    sub-int v4, p1, v2

    .line 1099
    iget v5, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    if-le v4, v5, :cond_3

    .line 1100
    iget-object v4, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->buffer:[B

    iget v5, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    invoke-static {v4, v1, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1101
    iget v4, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v2, v4

    .line 1102
    iget v4, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    iput v4, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    .line 1103
    invoke-direct {p0, v3}, Lcom/google/tagmanager/protobuf/CodedInputStream;->refillBuffer(Z)Z

    goto :goto_0

    .line 1106
    :cond_3
    iget-object p1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->buffer:[B

    invoke-static {p1, v1, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1107
    iput v4, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    return-object v0

    .line 1121
    :cond_4
    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    .line 1122
    iget v3, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    .line 1125
    iget v4, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v5, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 1126
    iput v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    .line 1127
    iput v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    sub-int/2addr v3, v2

    sub-int v4, p1, v3

    .line 1131
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-lez v4, :cond_8

    .line 1134
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v6, v6, [B

    move v7, v1

    .line 1136
    :goto_2
    array-length v8, v6

    if-ge v7, v8, :cond_7

    .line 1137
    iget-object v8, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    const/4 v9, -0x1

    if-nez v8, :cond_5

    move v8, v9

    goto :goto_3

    :cond_5
    iget-object v8, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    array-length v10, v6

    sub-int/2addr v10, v7

    invoke-virtual {v8, v6, v7, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    :goto_3
    if-ne v8, v9, :cond_6

    .line 1140
    invoke-static {}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1142
    :cond_6
    iget v9, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->totalBytesRetired:I

    add-int/2addr v9, v8

    iput v9, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->totalBytesRetired:I

    add-int/2addr v7, v8

    goto :goto_2

    .line 1145
    :cond_7
    array-length v7, v6

    sub-int/2addr v4, v7

    .line 1146
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1150
    :cond_8
    new-array p1, p1, [B

    .line 1154
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->buffer:[B

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1157
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1158
    array-length v4, v2

    invoke-static {v2, v1, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1159
    array-length v2, v2

    add-int/2addr v3, v2

    goto :goto_4

    :cond_9
    return-object p1
.end method

.method public readRawLittleEndian32()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 733
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawByte()B

    move-result v0

    .line 734
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    .line 735
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawByte()B

    move-result v2

    .line 736
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawByte()B

    move-result v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public readRawLittleEndian64()J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 745
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawByte()B

    move-result v0

    .line 746
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    .line 747
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawByte()B

    move-result v2

    .line 748
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawByte()B

    move-result v3

    .line 749
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawByte()B

    move-result v4

    .line 750
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawByte()B

    move-result v5

    .line 751
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawByte()B

    move-result v6

    .line 752
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawByte()B

    move-result v7

    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    int-to-long v0, v1

    and-long/2addr v0, v10

    const/16 v12, 0x8

    shl-long/2addr v0, v12

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v10

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v10

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v10

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v10

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v10

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v10

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readRawVarint32()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 623
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawByte()B

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    .line 628
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_1

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_1

    :cond_1
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 632
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_1

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 636
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_1

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 640
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 644
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 648
    :cond_5
    invoke-static {}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_6
    :goto_1
    return v0
.end method

.method public readRawVarint64()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_1

    .line 721
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawByte()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    .line 728
    :cond_1
    invoke-static {}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readSFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 598
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 603
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 613
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 365
    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 368
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->buffer:[B

    iget v3, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    const-string v4, "UTF-8"

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 369
    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    return-object v1

    .line 373
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawBytes(I)[B

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 386
    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 389
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->buffer:[B

    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    invoke-static {v1, v2, v0}, Lcom/google/tagmanager/protobuf/ByteString;->copyFrom([BII)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v1

    .line 390
    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    goto :goto_0

    .line 393
    :cond_0
    new-instance v1, Lcom/google/tagmanager/protobuf/LiteralByteString;

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawBytes(I)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/tagmanager/protobuf/LiteralByteString;-><init>([B)V

    .line 395
    :goto_0
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    invoke-static {}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 398
    :cond_1
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readTag()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->lastTag:I

    return v0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->lastTag:I

    .line 127
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->lastTag:I

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 130
    invoke-static {}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 132
    :cond_1
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->lastTag:I

    return v0
.end method

.method public readUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 585
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnknownGroup(ILcom/google/tagmanager/protobuf/MessageLite$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 467
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readGroup(ILcom/google/tagmanager/protobuf/MessageLite$Builder;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public resetSizeCounter()V
    .locals 1

    .line 903
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    neg-int v0, v0

    iput v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->totalBytesRetired:I

    return-void
.end method

.method public setRecursionLimit(I)I
    .locals 3

    if-gez p1, :cond_0

    .line 865
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recursion limit cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 868
    :cond_0
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionLimit:I

    .line 869
    iput p1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->recursionLimit:I

    return v0
.end method

.method public setSizeLimit(I)I
    .locals 3

    if-gez p1, :cond_0

    .line 891
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size limit cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 894
    :cond_0
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->sizeLimit:I

    .line 895
    iput p1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->sizeLimit:I

    return v0
.end method

.method public skipField(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-static {p1}, Lcom/google/tagmanager/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 183
    invoke-static {}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 180
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->skipRawBytes(I)V

    return v2

    :pswitch_1
    const/4 p1, 0x0

    return p1

    .line 172
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->skipMessage()V

    .line 173
    invoke-static {p1}, Lcom/google/tagmanager/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->checkLastTagWas(I)V

    return v2

    .line 169
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->skipRawBytes(I)V

    return v2

    :pswitch_4
    const/16 p1, 0x8

    .line 166
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->skipRawBytes(I)V

    return v2

    .line 163
    :pswitch_5
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->skipRawVarint()V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public skipField(ILcom/google/tagmanager/protobuf/CodedOutputStream;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    invoke-static {p1}, Lcom/google/tagmanager/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 234
    invoke-static {}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 228
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawLittleEndian32()I

    move-result v0

    .line 229
    invoke-virtual {p2, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 230
    invoke-virtual {p2, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    return v1

    :pswitch_1
    const/4 p1, 0x0

    return p1

    .line 216
    :pswitch_2
    invoke-virtual {p2, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 217
    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->skipMessage(Lcom/google/tagmanager/protobuf/CodedOutputStream;)V

    .line 218
    invoke-static {p1}, Lcom/google/tagmanager/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    .line 220
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 221
    invoke-virtual {p2, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    return v1

    .line 210
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readBytes()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    .line 211
    invoke-virtual {p2, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 212
    invoke-virtual {p2, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/google/tagmanager/protobuf/ByteString;)V

    return v1

    .line 204
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawLittleEndian64()J

    move-result-wide v2

    .line 205
    invoke-virtual {p2, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 206
    invoke-virtual {p2, v2, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    return v1

    .line 198
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    .line 199
    invoke-virtual {p2, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 200
    invoke-virtual {p2, v2, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public skipMessage()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readTag()I

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public skipMessage(Lcom/google/tagmanager/protobuf/CodedOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readTag()I

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    invoke-virtual {p0, v0, p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->skipField(ILcom/google/tagmanager/protobuf/CodedOutputStream;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public skipRawBytes(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_0

    .line 1175
    invoke-static {}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1178
    :cond_0
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->currentLimit:I

    if-le v0, v1, :cond_1

    .line 1180
    iget p1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->currentLimit:I

    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->totalBytesRetired:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->skipRawBytes(I)V

    .line 1182
    invoke-static {}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1185
    :cond_1
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    .line 1187
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    goto :goto_1

    .line 1190
    :cond_2
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v0, v1

    .line 1191
    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    iput v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    const/4 v1, 0x1

    .line 1196
    invoke-direct {p0, v1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->refillBuffer(Z)Z

    :goto_0
    sub-int v2, p1, v0

    .line 1197
    iget v3, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    if-le v2, v3, :cond_3

    .line 1198
    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v0, v2

    .line 1199
    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferSize:I

    iput v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    .line 1200
    invoke-direct {p0, v1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->refillBuffer(Z)Z

    goto :goto_0

    .line 1203
    :cond_3
    iput v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream;->bufferPos:I

    :goto_1
    return-void
.end method
