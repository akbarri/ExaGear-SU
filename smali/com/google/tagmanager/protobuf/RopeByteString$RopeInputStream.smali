.class Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;
.super Ljava/io/InputStream;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/protobuf/RopeByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RopeInputStream"
.end annotation


# instance fields
.field private currentPiece:Lcom/google/tagmanager/protobuf/LiteralByteString;

.field private currentPieceIndex:I

.field private currentPieceOffsetInRope:I

.field private currentPieceSize:I

.field private mark:I

.field private pieceIterator:Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;

.field final synthetic this$0:Lcom/google/tagmanager/protobuf/RopeByteString;


# direct methods
.method public constructor <init>(Lcom/google/tagmanager/protobuf/RopeByteString;)V
    .locals 0

    .line 806
    iput-object p1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->this$0:Lcom/google/tagmanager/protobuf/RopeByteString;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 807
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->initialize()V

    return-void
.end method

.method private advanceIfCurrentPieceFullyRead()V
    .locals 2

    .line 915
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/google/tagmanager/protobuf/LiteralByteString;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPieceSize:I

    if-ne v0, v1, :cond_1

    .line 918
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPieceOffsetInRope:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPieceSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPieceOffsetInRope:I

    const/4 v0, 0x0

    .line 919
    iput v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    .line 920
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->pieceIterator:Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 921
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->pieceIterator:Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;->next()Lcom/google/tagmanager/protobuf/LiteralByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/google/tagmanager/protobuf/LiteralByteString;

    .line 922
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/google/tagmanager/protobuf/LiteralByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPieceSize:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 924
    iput-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/google/tagmanager/protobuf/LiteralByteString;

    .line 925
    iput v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPieceSize:I

    :cond_1
    :goto_0
    return-void
.end method

.method private initialize()V
    .locals 3

    .line 902
    new-instance v0, Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->this$0:Lcom/google/tagmanager/protobuf/RopeByteString;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/RopeByteString$1;)V

    iput-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->pieceIterator:Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;

    .line 903
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->pieceIterator:Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;->next()Lcom/google/tagmanager/protobuf/LiteralByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/google/tagmanager/protobuf/LiteralByteString;

    .line 904
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/google/tagmanager/protobuf/LiteralByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPieceSize:I

    const/4 v0, 0x0

    .line 905
    iput v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    .line 906
    iput v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPieceOffsetInRope:I

    return-void
.end method

.method private readSkipInternal([BII)I
    .locals 4

    move v0, p2

    move p2, p3

    :goto_0
    if-lez p2, :cond_2

    .line 843
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->advanceIfCurrentPieceFullyRead()V

    .line 844
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/google/tagmanager/protobuf/LiteralByteString;

    if-nez v1, :cond_0

    if-ne p2, p3, :cond_2

    const/4 p1, -0x1

    return p1

    .line 852
    :cond_0
    iget v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPieceSize:I

    iget v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    sub-int/2addr v1, v2

    .line 853
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eqz p1, :cond_1

    .line 855
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/google/tagmanager/protobuf/LiteralByteString;

    iget v3, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    invoke-virtual {v2, p1, v3, v0, v1}, Lcom/google/tagmanager/protobuf/LiteralByteString;->copyTo([BIII)V

    add-int/2addr v0, v1

    .line 858
    :cond_1
    iget v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    sub-int/2addr p2, v1

    goto :goto_0

    :cond_2
    sub-int/2addr p3, p2

    return p3
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 878
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPieceOffsetInRope:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    add-int/2addr v0, v1

    .line 879
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->this$0:Lcom/google/tagmanager/protobuf/RopeByteString;

    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/RopeByteString;->size()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public mark(I)V
    .locals 1

    .line 890
    iget p1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPieceOffsetInRope:I

    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->mark:I

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 868
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->advanceIfCurrentPieceFullyRead()V

    .line 869
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/google/tagmanager/protobuf/LiteralByteString;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPiece:Lcom/google/tagmanager/protobuf/LiteralByteString;

    iget v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->currentPieceIndex:I

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/protobuf/LiteralByteString;->byteAt(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 1

    if-nez p1, :cond_0

    .line 813
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_0
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    .line 814
    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_1

    goto :goto_0

    .line 817
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->readSkipInternal([BII)I

    move-result p1

    return p1

    .line 815
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 3

    monitor-enter p0

    .line 896
    :try_start_0
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->initialize()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 897
    iget v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->mark:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->readSkipInternal([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 895
    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 823
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    move-wide p1, v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    long-to-int p1, p1

    .line 827
    invoke-direct {p0, v0, v1, p1}, Lcom/google/tagmanager/protobuf/RopeByteString$RopeInputStream;->readSkipInternal([BII)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method
