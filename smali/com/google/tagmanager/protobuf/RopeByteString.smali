.class Lcom/google/tagmanager/protobuf/RopeByteString;
.super Lcom/google/tagmanager/protobuf/ByteString;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;,
        Lcom/google/tagmanager/protobuf/RopeByteString$RopeByteIterator;,
        Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;,
        Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;
    }
.end annotation


# static fields
.field private static final minLengthByDepth:[I


# instance fields
.field private hash:I

.field private final left:Lcom/google/tagmanager/protobuf/ByteString;

.field private final leftLength:I

.field private final right:Lcom/google/tagmanager/protobuf/ByteString;

.field private final totalLength:I

.field private final treeDepth:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-lez v1, :cond_0

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v1

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_0

    :cond_0
    const v1, 0x7fffffff

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    sput-object v1, Lcom/google/tagmanager/protobuf/RopeByteString;->minLengthByDepth:[I

    const/4 v1, 0x0

    .line 80
    :goto_1
    sget-object v2, Lcom/google/tagmanager/protobuf/RopeByteString;->minLengthByDepth:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 82
    sget-object v2, Lcom/google/tagmanager/protobuf/RopeByteString;->minLengthByDepth:[I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;)V
    .locals 2

    .line 101
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/ByteString;-><init>()V

    const/4 v0, 0x0

    .line 515
    iput v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->hash:I

    .line 102
    iput-object p1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    .line 103
    iput-object p2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    .line 104
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    .line 105
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    invoke-virtual {p2}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->totalLength:I

    .line 106
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/ByteString;->getTreeDepth()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/tagmanager/protobuf/ByteString;->getTreeDepth()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->treeDepth:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/RopeByteString$1;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/tagmanager/protobuf/RopeByteString;-><init>(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$300()[I
    .locals 1

    .line 42
    sget-object v0, Lcom/google/tagmanager/protobuf/RopeByteString;->minLengthByDepth:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/tagmanager/protobuf/RopeByteString;)Lcom/google/tagmanager/protobuf/ByteString;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/tagmanager/protobuf/RopeByteString;)Lcom/google/tagmanager/protobuf/ByteString;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    return-object p0
.end method

.method static concatenate(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;
    .locals 6

    .line 125
    instance-of v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/tagmanager/protobuf/RopeByteString;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 127
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    move-object p0, p1

    goto/16 :goto_2

    .line 132
    :cond_2
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x80

    if-ge v2, v3, :cond_3

    .line 136
    invoke-static {p0, p1}, Lcom/google/tagmanager/protobuf/RopeByteString;->concatenateBytes(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/LiteralByteString;

    move-result-object p0

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    .line 137
    iget-object v4, v0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v4}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v4, v3, :cond_4

    .line 149
    iget-object p0, v0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-static {p0, p1}, Lcom/google/tagmanager/protobuf/RopeByteString;->concatenateBytes(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/LiteralByteString;

    move-result-object p0

    .line 150
    new-instance p1, Lcom/google/tagmanager/protobuf/RopeByteString;

    iget-object v0, v0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-direct {p1, v0, p0}, Lcom/google/tagmanager/protobuf/RopeByteString;-><init>(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 151
    iget-object v3, v0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/google/tagmanager/protobuf/ByteString;->getTreeDepth()I

    move-result v3

    iget-object v4, v0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v4}, Lcom/google/tagmanager/protobuf/ByteString;->getTreeDepth()I

    move-result v4

    if-le v3, v4, :cond_5

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/RopeByteString;->getTreeDepth()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/ByteString;->getTreeDepth()I

    move-result v4

    if-le v3, v4, :cond_5

    .line 159
    new-instance p0, Lcom/google/tagmanager/protobuf/RopeByteString;

    iget-object v1, v0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-direct {p0, v1, p1}, Lcom/google/tagmanager/protobuf/RopeByteString;-><init>(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;)V

    .line 160
    new-instance p1, Lcom/google/tagmanager/protobuf/RopeByteString;

    iget-object v0, v0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-direct {p1, v0, p0}, Lcom/google/tagmanager/protobuf/RopeByteString;-><init>(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;)V

    goto :goto_1

    .line 164
    :cond_5
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/ByteString;->getTreeDepth()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/ByteString;->getTreeDepth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 165
    sget-object v3, Lcom/google/tagmanager/protobuf/RopeByteString;->minLengthByDepth:[I

    aget v0, v3, v0

    if-lt v2, v0, :cond_6

    .line 167
    new-instance v0, Lcom/google/tagmanager/protobuf/RopeByteString;

    invoke-direct {v0, p0, p1}, Lcom/google/tagmanager/protobuf/RopeByteString;-><init>(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;)V

    move-object p0, v0

    goto :goto_2

    .line 169
    :cond_6
    new-instance v0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;

    invoke-direct {v0, v1}, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;-><init>(Lcom/google/tagmanager/protobuf/RopeByteString$1;)V

    invoke-static {v0, p0, p1}, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->access$100(Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private static concatenateBytes(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/LiteralByteString;
    .locals 4

    .line 186
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v0

    .line 187
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v1

    add-int v2, v0, v1

    .line 188
    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 189
    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/google/tagmanager/protobuf/ByteString;->copyTo([BIII)V

    .line 190
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/google/tagmanager/protobuf/ByteString;->copyTo([BIII)V

    .line 191
    new-instance p0, Lcom/google/tagmanager/protobuf/LiteralByteString;

    invoke-direct {p0, v2}, Lcom/google/tagmanager/protobuf/LiteralByteString;-><init>([B)V

    return-object p0
.end method

.method private equalsFragments(Lcom/google/tagmanager/protobuf/ByteString;)Z
    .locals 11

    .line 466
    new-instance v0, Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/RopeByteString$1;)V

    .line 467
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/protobuf/LiteralByteString;

    .line 470
    new-instance v3, Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;

    invoke-direct {v3, p1, v1}, Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/RopeByteString$1;)V

    .line 471
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/tagmanager/protobuf/LiteralByteString;

    const/4 v1, 0x0

    move-object v4, p1

    move p1, v1

    move v5, p1

    move v6, v5

    .line 475
    :goto_0
    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/LiteralByteString;->size()I

    move-result v7

    sub-int/2addr v7, p1

    .line 476
    invoke-virtual {v4}, Lcom/google/tagmanager/protobuf/LiteralByteString;->size()I

    move-result v8

    sub-int/2addr v8, v5

    .line 477
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-nez p1, :cond_0

    .line 480
    invoke-virtual {v2, v4, v5, v9}, Lcom/google/tagmanager/protobuf/LiteralByteString;->equalsRange(Lcom/google/tagmanager/protobuf/LiteralByteString;II)Z

    move-result v10

    goto :goto_1

    :cond_0
    invoke-virtual {v4, v2, p1, v9}, Lcom/google/tagmanager/protobuf/LiteralByteString;->equalsRange(Lcom/google/tagmanager/protobuf/LiteralByteString;II)Z

    move-result v10

    :goto_1
    if-nez v10, :cond_1

    return v1

    :cond_1
    add-int/2addr v6, v9

    .line 488
    iget v10, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->totalLength:I

    if-lt v6, v10, :cond_3

    .line 489
    iget p1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->totalLength:I

    if-ne v6, p1, :cond_2

    const/4 p1, 0x1

    return p1

    .line 492
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_3
    if-ne v9, v7, :cond_4

    .line 497
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/tagmanager/protobuf/LiteralByteString;

    move-object v2, p1

    move p1, v1

    goto :goto_2

    :cond_4
    add-int/2addr p1, v9

    :goto_2
    if-ne v9, v8, :cond_5

    .line 503
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/tagmanager/protobuf/LiteralByteString;

    move v5, v1

    goto :goto_0

    :cond_5
    add-int/2addr v5, v9

    goto :goto_0
.end method

.method static newInstanceForTest(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/RopeByteString;
    .locals 1

    .line 206
    new-instance v0, Lcom/google/tagmanager/protobuf/RopeByteString;

    invoke-direct {v0, p0, p1}, Lcom/google/tagmanager/protobuf/RopeByteString;-><init>(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;)V

    return-object v0
.end method


# virtual methods
.method public asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 353
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/RopeByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asReadOnlyByteBufferList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 362
    new-instance v1, Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/RopeByteString$1;)V

    .line 363
    :goto_0
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;->next()Lcom/google/tagmanager/protobuf/LiteralByteString;

    move-result-object v2

    .line 365
    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/LiteralByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public byteAt(I)B
    .locals 3

    if-gez p1, :cond_0

    .line 222
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->totalLength:I

    if-le p1, v0, :cond_1

    .line 225
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index > length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->totalLength:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_1
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    if-ge p1, v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/ByteString;->byteAt(I)B

    move-result p1

    goto :goto_0

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    iget v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/ByteString;->byteAt(I)B

    move-result p1

    :goto_0
    return p1
.end method

.method public copyTo(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/ByteString;->copyTo(Ljava/nio/ByteBuffer;)V

    .line 348
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/ByteString;->copyTo(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected copyToInternal([BIII)V
    .locals 2

    add-int v0, p2, p4

    .line 332
    iget v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/tagmanager/protobuf/ByteString;->copyToInternal([BIII)V

    goto :goto_0

    .line 334
    :cond_0
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    iget v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/tagmanager/protobuf/ByteString;->copyToInternal([BIII)V

    goto :goto_0

    .line 338
    :cond_1
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr v0, p2

    .line 339
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/google/tagmanager/protobuf/ByteString;->copyToInternal([BIII)V

    .line 340
    iget-object p2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    const/4 v1, 0x0

    add-int/2addr p3, v0

    sub-int/2addr p4, v0

    invoke-virtual {p2, p1, v1, p3, p4}, Lcom/google/tagmanager/protobuf/ByteString;->copyToInternal([BIII)V

    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 428
    :cond_0
    instance-of v1, p1, Lcom/google/tagmanager/protobuf/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 432
    :cond_1
    check-cast p1, Lcom/google/tagmanager/protobuf/ByteString;

    .line 433
    iget v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->totalLength:I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 436
    :cond_2
    iget v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->totalLength:I

    if-nez v1, :cond_3

    return v0

    .line 445
    :cond_3
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->hash:I

    if-eqz v0, :cond_4

    .line 446
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/ByteString;->peekCachedHashCode()I

    move-result v0

    if-eqz v0, :cond_4

    .line 447
    iget v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->hash:I

    if-eq v1, v0, :cond_4

    return v2

    .line 452
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/tagmanager/protobuf/RopeByteString;->equalsFragments(Lcom/google/tagmanager/protobuf/ByteString;)Z

    move-result p1

    return p1
.end method

.method protected getTreeDepth()I
    .locals 1

    .line 249
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->treeDepth:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 519
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->hash:I

    if-nez v0, :cond_1

    .line 522
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->totalLength:I

    const/4 v1, 0x0

    .line 523
    iget v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->totalLength:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/tagmanager/protobuf/RopeByteString;->partialHash(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 527
    :cond_0
    iput v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->hash:I

    :cond_1
    return v0
.end method

.method protected isBalanced()Z
    .locals 3

    .line 262
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->totalLength:I

    sget-object v1, Lcom/google/tagmanager/protobuf/RopeByteString;->minLengthByDepth:[I

    iget v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->treeDepth:I

    aget v1, v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValidUtf8()Z
    .locals 4

    .line 401
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    iget v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/google/tagmanager/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v0

    .line 402
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    iget-object v3, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/tagmanager/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public iterator()Lcom/google/tagmanager/protobuf/ByteString$ByteIterator;
    .locals 2

    .line 752
    new-instance v0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeByteIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/tagmanager/protobuf/RopeByteString$RopeByteIterator;-><init>(Lcom/google/tagmanager/protobuf/RopeByteString;Lcom/google/tagmanager/protobuf/RopeByteString$1;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/RopeByteString;->iterator()Lcom/google/tagmanager/protobuf/ByteString$ByteIterator;

    move-result-object v0

    return-object v0
.end method

.method public newCodedInput()Lcom/google/tagmanager/protobuf/CodedInputStream;
    .locals 1

    .line 556
    new-instance v0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;-><init>(Lcom/google/tagmanager/protobuf/RopeByteString;)V

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/tagmanager/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public newInput()Ljava/io/InputStream;
    .locals 1

    .line 561
    new-instance v0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;-><init>(Lcom/google/tagmanager/protobuf/RopeByteString;)V

    return-object v0
.end method

.method protected partialHash(III)I
    .locals 2

    add-int v0, p2, p3

    .line 540
    iget v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_0

    .line 541
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/tagmanager/protobuf/ByteString;->partialHash(III)I

    move-result p1

    return p1

    .line 542
    :cond_0
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    iget v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/tagmanager/protobuf/ByteString;->partialHash(III)I

    move-result p1

    return p1

    .line 545
    :cond_1
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr v0, p2

    .line 546
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/tagmanager/protobuf/ByteString;->partialHash(III)I

    move-result p1

    .line 547
    iget-object p2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    const/4 v1, 0x0

    sub-int/2addr p3, v0

    invoke-virtual {p2, p1, v1, p3}, Lcom/google/tagmanager/protobuf/ByteString;->partialHash(III)I

    move-result p1

    return p1
.end method

.method protected partialIsValidUtf8(III)I
    .locals 2

    add-int v0, p2, p3

    .line 409
    iget v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/tagmanager/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result p1

    return p1

    .line 411
    :cond_0
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    iget v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/tagmanager/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result p1

    return p1

    .line 414
    :cond_1
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr v0, p2

    .line 415
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/tagmanager/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result p1

    .line 416
    iget-object p2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    const/4 v1, 0x0

    sub-int/2addr p3, v0

    invoke-virtual {p2, p1, v1, p3}, Lcom/google/tagmanager/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result p1

    return p1
.end method

.method protected peekCachedHashCode()I
    .locals 1

    .line 534
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->hash:I

    return v0
.end method

.method public size()I
    .locals 1

    .line 241
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->totalLength:I

    return v0
.end method

.method public substring(II)Lcom/google/tagmanager/protobuf/ByteString;
    .locals 3

    if-gez p1, :cond_0

    .line 283
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Beginning index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " < 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 286
    :cond_0
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->totalLength:I

    if-le p2, v0, :cond_1

    .line 287
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " > "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->totalLength:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sub-int v0, p2, p1

    if-gez v0, :cond_2

    .line 292
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Beginning index larger than ending index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez v0, :cond_3

    .line 300
    sget-object p1, Lcom/google/tagmanager/protobuf/ByteString;->EMPTY:Lcom/google/tagmanager/protobuf/ByteString;

    goto :goto_0

    .line 301
    :cond_3
    iget v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->totalLength:I

    if-ne v0, v1, :cond_4

    move-object p1, p0

    goto :goto_0

    .line 306
    :cond_4
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    if-gt p2, v0, :cond_5

    .line 308
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0, p1, p2}, Lcom/google/tagmanager/protobuf/ByteString;->substring(II)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    goto :goto_0

    .line 309
    :cond_5
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    if-lt p1, v0, :cond_6

    .line 311
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    iget v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/tagmanager/protobuf/ByteString;->substring(II)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    goto :goto_0

    .line 315
    :cond_6
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/ByteString;->substring(I)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    .line 316
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr p2, v2

    invoke-virtual {v0, v1, p2}, Lcom/google/tagmanager/protobuf/ByteString;->substring(II)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p2

    .line 320
    new-instance v0, Lcom/google/tagmanager/protobuf/RopeByteString;

    invoke-direct {v0, p1, p2}, Lcom/google/tagmanager/protobuf/RopeByteString;-><init>(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 393
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/RopeByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    .line 373
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method

.method writeToInternal(Ljava/io/OutputStream;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p2, p3

    .line 379
    iget v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_0

    .line 380
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/tagmanager/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    goto :goto_0

    .line 381
    :cond_0
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    iget v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/tagmanager/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    goto :goto_0

    .line 384
    :cond_1
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr v0, p2

    .line 385
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->left:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/tagmanager/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    .line 386
    iget-object p2, p0, Lcom/google/tagmanager/protobuf/RopeByteString;->right:Lcom/google/tagmanager/protobuf/ByteString;

    const/4 v1, 0x0

    sub-int/2addr p3, v0

    invoke-virtual {p2, p1, v1, p3}, Lcom/google/tagmanager/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    :goto_0
    return-void
.end method
