.class public final Lcom/google/tagmanager/protobuf/CodedOutputStream;
.super Ljava/lang/Object;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/protobuf/CodedOutputStream$OutOfSpaceException;,
        Lcom/google/tagmanager/protobuf/CodedOutputStream$ByteBufferOutputStream;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field public static final LITTLE_ENDIAN_32_SIZE:I = 0x4

.field public static final LITTLE_ENDIAN_64_SIZE:I = 0x8


# instance fields
.field private final buffer:[B

.field private final limit:I

.field private final output:Ljava/io/OutputStream;

.field private position:I

.field private totalBytesWritten:I


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    .line 58
    iput-object p1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    .line 59
    iput-object p2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->buffer:[B

    .line 60
    iput v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    .line 61
    array-length p1, p2

    iput p1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->limit:I

    return-void
.end method

.method private constructor <init>([BII)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    .line 52
    iput-object p1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->buffer:[B

    .line 53
    iput p2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    add-int/2addr p2, p3

    .line 54
    iput p2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->limit:I

    return-void
.end method

.method public static computeBoolSize(IZ)I
    .locals 0

    .line 561
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeBoolSizeNoTag(Z)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeBoolSizeNoTag(Z)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static computeByteArraySize(I[B)I
    .locals 0

    .line 620
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeByteArraySizeNoTag([B)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeByteArraySizeNoTag([B)I
    .locals 1

    .line 866
    array-length v0, p0

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    array-length p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static computeByteBufferSize(ILjava/nio/ByteBuffer;)I
    .locals 0

    .line 629
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeByteBufferSizeNoTag(Ljava/nio/ByteBuffer;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeByteBufferSizeNoTag(Ljava/nio/ByteBuffer;)I
    .locals 1

    .line 874
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static computeBytesSize(ILcom/google/tagmanager/protobuf/ByteString;)I
    .locals 0

    .line 611
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/tagmanager/protobuf/ByteString;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeBytesSizeNoTag(Lcom/google/tagmanager/protobuf/ByteString;)I
    .locals 1

    .line 857
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static computeDoubleSize(ID)I
    .locals 0

    .line 502
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeDoubleSizeNoTag(D)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeDoubleSizeNoTag(D)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static computeEnumSize(II)I
    .locals 0

    .line 655
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeEnumSizeNoTag(I)I
    .locals 0

    .line 890
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result p0

    return p0
.end method

.method public static computeFixed32Size(II)I
    .locals 0

    .line 552
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeFixed32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeFixed32SizeNoTag(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static computeFixed64Size(IJ)I
    .locals 0

    .line 543
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeFixed64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeFixed64SizeNoTag(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static computeFloatSize(IF)I
    .locals 0

    .line 510
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeFloatSizeNoTag(F)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeFloatSizeNoTag(F)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static computeGroupSize(ILcom/google/tagmanager/protobuf/MessageLite;)I
    .locals 0

    .line 579
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeGroupSizeNoTag(Lcom/google/tagmanager/protobuf/MessageLite;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeGroupSizeNoTag(Lcom/google/tagmanager/protobuf/MessageLite;)I
    .locals 0

    .line 818
    invoke-interface {p0}, Lcom/google/tagmanager/protobuf/MessageLite;->getSerializedSize()I

    move-result p0

    return p0
.end method

.method public static computeInt32Size(II)I
    .locals 0

    .line 534
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeInt32SizeNoTag(I)I
    .locals 0

    if-ltz p0, :cond_0

    .line 768
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static computeInt64Size(IJ)I
    .locals 0

    .line 526
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeInt64SizeNoTag(J)I
    .locals 0

    .line 759
    invoke-static {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeRawVarint64Size(J)I

    move-result p0

    return p0
.end method

.method public static computeLazyFieldMessageSetExtensionSize(ILcom/google/tagmanager/protobuf/LazyField;)I
    .locals 2

    const/4 v0, 0x1

    .line 723
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    invoke-static {v1, p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeLazyFieldSize(ILcom/google/tagmanager/protobuf/LazyField;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static computeLazyFieldSize(ILcom/google/tagmanager/protobuf/LazyField;)I
    .locals 0

    .line 638
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeLazyFieldSizeNoTag(Lcom/google/tagmanager/protobuf/LazyField;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeLazyFieldSizeNoTag(Lcom/google/tagmanager/protobuf/LazyField;)I
    .locals 1

    .line 848
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/LazyField;->getSerializedSize()I

    move-result p0

    .line 849
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static computeMessageSetExtensionSize(ILcom/google/tagmanager/protobuf/MessageLite;)I
    .locals 2

    const/4 v0, 0x1

    .line 699
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    invoke-static {v1, p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I
    .locals 0

    .line 602
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/google/tagmanager/protobuf/MessageLite;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeMessageSizeNoTag(Lcom/google/tagmanager/protobuf/MessageLite;)I
    .locals 1

    .line 839
    invoke-interface {p0}, Lcom/google/tagmanager/protobuf/MessageLite;->getSerializedSize()I

    move-result p0

    .line 840
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method static computePreferredBufferSize(I)I
    .locals 1

    const/16 v0, 0x1000

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static computeRawMessageSetExtensionSize(ILcom/google/tagmanager/protobuf/ByteString;)I
    .locals 2

    const/4 v0, 0x1

    .line 711
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    invoke-static {v1, p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/tagmanager/protobuf/ByteString;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static computeRawVarint32Size(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static computeRawVarint64Size(J)I
    .locals 4

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 p0, 0x8

    return p0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-nez p0, :cond_8

    const/16 p0, 0x9

    return p0

    :cond_8
    const/16 p0, 0xa

    return p0
.end method

.method public static computeSFixed32Size(II)I
    .locals 0

    .line 664
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeSFixed32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeSFixed32SizeNoTag(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static computeSFixed64Size(IJ)I
    .locals 0

    .line 673
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeSFixed64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeSFixed64SizeNoTag(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static computeSInt32Size(II)I
    .locals 0

    .line 681
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeSInt32SizeNoTag(I)I
    .locals 0

    .line 914
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result p0

    return p0
.end method

.method public static computeSInt64Size(IJ)I
    .locals 0

    .line 689
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeSInt64SizeNoTag(J)I
    .locals 0

    .line 922
    invoke-static {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeRawVarint64Size(J)I

    move-result p0

    return p0
.end method

.method public static computeStringSize(ILjava/lang/String;)I
    .locals 0

    .line 570
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeStringSizeNoTag(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    .line 805
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 806
    array-length v0, p0

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    array-length p0, p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, p0

    return v0

    :catch_0
    move-exception p0

    .line 809
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static computeTagSize(I)I
    .locals 1

    const/4 v0, 0x0

    .line 1159
    invoke-static {p0, v0}, Lcom/google/tagmanager/protobuf/WireFormat;->makeTag(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result p0

    return p0
.end method

.method public static computeUInt32Size(II)I
    .locals 0

    .line 646
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeUInt32SizeNoTag(I)I
    .locals 0

    .line 882
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result p0

    return p0
.end method

.method public static computeUInt64Size(IJ)I
    .locals 0

    .line 518
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeUInt64SizeNoTag(J)I
    .locals 0

    .line 751
    invoke-static {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeRawVarint64Size(J)I

    move-result p0

    return p0
.end method

.method public static computeUnknownGroupSize(ILcom/google/tagmanager/protobuf/MessageLite;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 593
    invoke-static {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result p0

    return p0
.end method

.method public static computeUnknownGroupSizeNoTag(Lcom/google/tagmanager/protobuf/MessageLite;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 831
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeGroupSizeNoTag(Lcom/google/tagmanager/protobuf/MessageLite;)I

    move-result p0

    return p0
.end method

.method public static encodeZigZag32(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static encodeZigZag64(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static newInstance(Ljava/io/OutputStream;)Lcom/google/tagmanager/protobuf/CodedOutputStream;
    .locals 1

    const/16 v0, 0x1000

    .line 69
    invoke-static {p0, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/io/OutputStream;I)Lcom/google/tagmanager/protobuf/CodedOutputStream;
    .locals 1

    .line 78
    new-instance v0, Lcom/google/tagmanager/protobuf/CodedOutputStream;

    new-array p1, p1, [B

    invoke-direct {v0, p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method public static newInstance(Ljava/nio/ByteBuffer;)Lcom/google/tagmanager/protobuf/CodedOutputStream;
    .locals 1

    const/16 v0, 0x1000

    .line 109
    invoke-static {p0, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance(Ljava/nio/ByteBuffer;I)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/nio/ByteBuffer;I)Lcom/google/tagmanager/protobuf/CodedOutputStream;
    .locals 1

    .line 117
    new-instance v0, Lcom/google/tagmanager/protobuf/CodedOutputStream$ByteBufferOutputStream;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream$ByteBufferOutputStream;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance([B)Lcom/google/tagmanager/protobuf/CodedOutputStream;
    .locals 2

    const/4 v0, 0x0

    .line 89
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance([BII)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance([BII)Lcom/google/tagmanager/protobuf/CodedOutputStream;
    .locals 1

    .line 102
    new-instance v0, Lcom/google/tagmanager/protobuf/CodedOutputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;-><init>([BII)V

    return-object v0
.end method

.method private refreshBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 932
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 934
    new-instance v0, Lcom/google/tagmanager/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream$OutOfSpaceException;-><init>()V

    throw v0

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->buffer:[B

    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 940
    iput v3, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    return-void
.end method

.method private writeRawBytesInternal(Ljava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1051
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1052
    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->limit:I

    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_0

    .line 1054
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->buffer:[B

    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1055
    iget p1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    .line 1056
    iget p1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    goto :goto_1

    .line 1060
    :cond_0
    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->limit:I

    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    sub-int/2addr v1, v2

    .line 1061
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->buffer:[B

    iget v3, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v1

    .line 1063
    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->limit:I

    iput v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    .line 1064
    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    .line 1065
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->refreshBuffer()V

    .line 1070
    :goto_0
    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->limit:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 1073
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->buffer:[B

    iget v3, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->limit:I

    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1074
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->buffer:[B

    iget v4, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->limit:I

    invoke-virtual {v1, v3, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 1075
    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->limit:I

    sub-int/2addr v0, v1

    .line 1076
    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->limit:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    goto :goto_0

    .line 1078
    :cond_1
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->buffer:[B

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1079
    iput v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    .line 1080
    iget p1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    :goto_1
    return-void
.end method


# virtual methods
.method public checkNoSpaceLeft()V
    .locals 2

    .line 975
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->spaceLeft()I

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 948
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 949
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->refreshBuffer()V

    :cond_0
    return-void
.end method

.method public getTotalBytesWritten()I
    .locals 1

    .line 1001
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    return v0
.end method

.method public spaceLeft()I
    .locals 2

    .line 958
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 959
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->limit:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    sub-int/2addr v0, v1

    return v0

    .line 961
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeBool(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    .line 192
    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeBoolNoTag(Z)V

    return-void
.end method

.method public writeBoolNoTag(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawByte(I)V

    return-void
.end method

.method public writeByteArray(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 262
    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    .line 263
    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeByteArrayNoTag([B)V

    return-void
.end method

.method public writeByteArrayNoTag([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 452
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawBytes([B)V

    return-void
.end method

.method public writeByteBuffer(ILjava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 269
    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    .line 270
    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeByteBufferNoTag(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public writeByteBufferNoTag(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 458
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawBytes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public writeBytes(ILcom/google/tagmanager/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 255
    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    .line 256
    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/google/tagmanager/protobuf/ByteString;)V

    return-void
.end method

.method public writeBytesNoTag(Lcom/google/tagmanager/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 446
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/tagmanager/protobuf/ByteString;)V

    return-void
.end method

.method public writeDouble(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 142
    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    .line 143
    invoke-virtual {p0, p2, p3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeDoubleNoTag(D)V

    return-void
.end method

.method public writeDoubleNoTag(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawLittleEndian64(J)V

    return-void
.end method

.method public writeEnum(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 286
    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    .line 287
    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    return-void
.end method

.method public writeEnumNoTag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    return-void
.end method

.method public writeFixed32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 184
    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    .line 185
    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    return-void
.end method

.method public writeFixed32NoTag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawLittleEndian32(I)V

    return-void
.end method

.method public writeFixed64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 177
    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    .line 178
    invoke-virtual {p0, p2, p3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    return-void
.end method

.method public writeFixed64NoTag(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawLittleEndian64(J)V

    return-void
.end method

.method public writeFloat(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 149
    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    .line 150
    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeFloatNoTag(F)V

    return-void
.end method

.method public writeFloatNoTag(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawLittleEndian32(I)V

    return-void
.end method

.method public writeGroup(ILcom/google/tagmanager/protobuf/MessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 205
    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    .line 206
    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeGroupNoTag(Lcom/google/tagmanager/protobuf/MessageLite;)V

    const/4 p2, 0x4

    .line 207
    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    return-void
.end method

.method public writeGroupNoTag(Lcom/google/tagmanager/protobuf/MessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    invoke-interface {p1, p0}, Lcom/google/tagmanager/protobuf/MessageLite;->writeTo(Lcom/google/tagmanager/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public writeGroupNoTagWithCachedSizes(Lcom/google/tagmanager/protobuf/MutableMessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    invoke-interface {p1, p0}, Lcom/google/tagmanager/protobuf/MutableMessageLite;->writeToWithCachedSizes(Lcom/google/tagmanager/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public writeGroupWithCachedSizes(ILcom/google/tagmanager/protobuf/MutableMessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 217
    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    .line 218
    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeGroupNoTagWithCachedSizes(Lcom/google/tagmanager/protobuf/MutableMessageLite;)V

    const/4 p2, 0x4

    .line 219
    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    return-void
.end method

.method public writeInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    .line 171
    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    return-void
.end method

.method public writeInt32NoTag(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 369
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    .line 372
    invoke-virtual {p0, v0, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint64(J)V

    :goto_0
    return-void
.end method

.method public writeInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    .line 164
    invoke-virtual {p0, p2, p3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt64NoTag(J)V

    return-void
.end method

.method public writeInt64NoTag(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint64(J)V

    return-void
.end method

.method public writeMessage(ILcom/google/tagmanager/protobuf/MessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 238
    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    .line 239
    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessageNoTag(Lcom/google/tagmanager/protobuf/MessageLite;)V

    return-void
.end method

.method public writeMessageNoTag(Lcom/google/tagmanager/protobuf/MessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 430
    invoke-interface {p1, p0}, Lcom/google/tagmanager/protobuf/MessageLite;->writeTo(Lcom/google/tagmanager/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public writeMessageNoTagWithCachedSizes(Lcom/google/tagmanager/protobuf/MutableMessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/MutableMessageLite;->getCachedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 440
    invoke-interface {p1, p0}, Lcom/google/tagmanager/protobuf/MutableMessageLite;->writeToWithCachedSizes(Lcom/google/tagmanager/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public writeMessageSetExtension(ILcom/google/tagmanager/protobuf/MessageLite;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 325
    invoke-virtual {p0, v1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 v2, 0x2

    .line 326
    invoke-virtual {p0, v2, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 327
    invoke-virtual {p0, v0, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessage(ILcom/google/tagmanager/protobuf/MessageLite;)V

    const/4 p1, 0x4

    .line 328
    invoke-virtual {p0, v1, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    return-void
.end method

.method public writeMessageWithCachedSizes(ILcom/google/tagmanager/protobuf/MutableMessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 248
    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    .line 249
    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessageNoTagWithCachedSizes(Lcom/google/tagmanager/protobuf/MutableMessageLite;)V

    return-void
.end method

.method public writeRawByte(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1006
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->limit:I

    if-ne v0, v1, :cond_0

    .line 1007
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->refreshBuffer()V

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->buffer:[B

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    aput-byte p1, v0, v1

    .line 1011
    iget p1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    return-void
.end method

.method public writeRawByte(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    .line 1016
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawByte(B)V

    return-void
.end method

.method public writeRawBytes(Lcom/google/tagmanager/protobuf/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1021
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/tagmanager/protobuf/ByteString;II)V

    return-void
.end method

.method public writeRawBytes(Lcom/google/tagmanager/protobuf/ByteString;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1121
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->limit:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->buffer:[B

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/google/tagmanager/protobuf/ByteString;->copyTo([BIII)V

    .line 1124
    iget p1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    .line 1125
    iget p1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    goto :goto_1

    .line 1129
    :cond_0
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->limit:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    sub-int/2addr v0, v1

    .line 1130
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->buffer:[B

    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    invoke-virtual {p1, v1, p2, v2, v0}, Lcom/google/tagmanager/protobuf/ByteString;->copyTo([BIII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 1133
    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->limit:I

    iput v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    .line 1134
    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    .line 1135
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->refreshBuffer()V

    .line 1140
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->limit:I

    if-gt p3, v0, :cond_1

    .line 1142
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->buffer:[B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/google/tagmanager/protobuf/ByteString;->copyTo([BIII)V

    .line 1143
    iput p3, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    goto :goto_0

    .line 1145
    :cond_1
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/tagmanager/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;II)V

    .line 1147
    :goto_0
    iget p1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    :goto_1
    return-void
.end method

.method public writeRawBytes(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1039
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawBytes([BII)V

    goto :goto_0

    .line 1042
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 1043
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1044
    invoke-direct {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawBytesInternal(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method

.method public writeRawBytes([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1026
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawBytes([BII)V

    return-void
.end method

.method public writeRawBytes([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1087
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->limit:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->buffer:[B

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1090
    iget p1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    .line 1091
    iget p1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    goto :goto_1

    .line 1095
    :cond_0
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->limit:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    sub-int/2addr v0, v1

    .line 1096
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->buffer:[B

    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 1099
    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->limit:I

    iput v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    .line 1100
    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    .line 1101
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->refreshBuffer()V

    .line 1106
    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->limit:I

    if-gt p3, v0, :cond_1

    .line 1108
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->buffer:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1109
    iput p3, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    goto :goto_0

    .line 1112
    :cond_1
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1114
    :goto_0
    iget p1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    :goto_1
    return-void
.end method

.method public writeRawLittleEndian32(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p1, 0xff

    .line 1220
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawByte(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 1221
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawByte(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 1222
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawByte(I)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    .line 1223
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawByte(I)V

    return-void
.end method

.method public writeRawLittleEndian64(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    .line 1230
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawByte(I)V

    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 1231
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawByte(I)V

    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 1232
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawByte(I)V

    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 1233
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawByte(I)V

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 1234
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawByte(I)V

    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 1235
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawByte(I)V

    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 1236
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawByte(I)V

    const/16 v0, 0x38

    shr-long/2addr p1, v0

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    .line 1237
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawByte(I)V

    return-void
.end method

.method public writeRawMessageSetExtension(ILcom/google/tagmanager/protobuf/ByteString;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 338
    invoke-virtual {p0, v1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 v2, 0x2

    .line 339
    invoke-virtual {p0, v2, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 340
    invoke-virtual {p0, v0, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeBytes(ILcom/google/tagmanager/protobuf/ByteString;)V

    const/4 p1, 0x4

    .line 341
    invoke-virtual {p0, v1, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    return-void
.end method

.method public writeRawVarint32(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 1169
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawByte(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    .line 1172
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawByte(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public writeRawVarint64(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int p1, p1

    .line 1195
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawByte(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    .line 1198
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawByte(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public writeSFixed32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 293
    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    .line 294
    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeSFixed32NoTag(I)V

    return-void
.end method

.method public writeSFixed32NoTag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawLittleEndian32(I)V

    return-void
.end method

.method public writeSFixed64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 300
    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    .line 301
    invoke-virtual {p0, p2, p3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeSFixed64NoTag(J)V

    return-void
.end method

.method public writeSFixed64NoTag(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 481
    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawLittleEndian64(J)V

    return-void
.end method

.method public writeSInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 307
    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    .line 308
    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeSInt32NoTag(I)V

    return-void
.end method

.method public writeSInt32NoTag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    invoke-static {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    return-void
.end method

.method public writeSInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 314
    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    .line 315
    invoke-virtual {p0, p2, p3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeSInt64NoTag(J)V

    return-void
.end method

.method public writeSInt64NoTag(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    invoke-static {p1, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint64(J)V

    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 198
    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    .line 199
    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeStringNoTag(Ljava/lang/String;)V

    return-void
.end method

.method public writeStringNoTag(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 396
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 397
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 398
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawBytes([B)V

    return-void
.end method

.method public writeTag(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1154
    invoke-static {p1, p2}, Lcom/google/tagmanager/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    return-void
.end method

.method public writeUInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 276
    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    .line 277
    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    return-void
.end method

.method public writeUInt32NoTag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    return-void
.end method

.method public writeUInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    .line 157
    invoke-virtual {p0, p2, p3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    return-void
.end method

.method public writeUInt64NoTag(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint64(J)V

    return-void
.end method

.method public writeUnknownGroup(ILcom/google/tagmanager/protobuf/MessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 232
    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeGroup(ILcom/google/tagmanager/protobuf/MessageLite;)V

    return-void
.end method

.method public writeUnknownGroupNoTag(Lcom/google/tagmanager/protobuf/MessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 424
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeGroupNoTag(Lcom/google/tagmanager/protobuf/MessageLite;)V

    return-void
.end method
