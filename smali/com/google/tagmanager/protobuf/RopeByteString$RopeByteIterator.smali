.class Lcom/google/tagmanager/protobuf/RopeByteString$RopeByteIterator;
.super Ljava/lang/Object;
.source "RopeByteString.java"

# interfaces
.implements Lcom/google/tagmanager/protobuf/ByteString$ByteIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/protobuf/RopeByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RopeByteIterator"
.end annotation


# instance fields
.field private bytes:Lcom/google/tagmanager/protobuf/ByteString$ByteIterator;

.field bytesRemaining:I

.field private final pieces:Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;

.field final synthetic this$0:Lcom/google/tagmanager/protobuf/RopeByteString;


# direct methods
.method private constructor <init>(Lcom/google/tagmanager/protobuf/RopeByteString;)V
    .locals 2

    .line 761
    iput-object p1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeByteIterator;->this$0:Lcom/google/tagmanager/protobuf/RopeByteString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 762
    new-instance v0, Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/RopeByteString$1;)V

    iput-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeByteIterator;->pieces:Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;

    .line 763
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeByteIterator;->pieces:Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;->next()Lcom/google/tagmanager/protobuf/LiteralByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->iterator()Lcom/google/tagmanager/protobuf/ByteString$ByteIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeByteIterator;->bytes:Lcom/google/tagmanager/protobuf/ByteString$ByteIterator;

    .line 764
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/RopeByteString;->size()I

    move-result p1

    iput p1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeByteIterator;->bytesRemaining:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/protobuf/RopeByteString;Lcom/google/tagmanager/protobuf/RopeByteString$1;)V
    .locals 0

    .line 755
    invoke-direct {p0, p1}, Lcom/google/tagmanager/protobuf/RopeByteString$RopeByteIterator;-><init>(Lcom/google/tagmanager/protobuf/RopeByteString;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 768
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeByteIterator;->bytesRemaining:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Byte;
    .locals 1

    .line 772
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/RopeByteString$RopeByteIterator;->nextByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 755
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/RopeByteString$RopeByteIterator;->next()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public nextByte()B
    .locals 1

    .line 776
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeByteIterator;->bytes:Lcom/google/tagmanager/protobuf/ByteString$ByteIterator;

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/ByteString$ByteIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeByteIterator;->pieces:Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/RopeByteString$PieceIterator;->next()Lcom/google/tagmanager/protobuf/LiteralByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->iterator()Lcom/google/tagmanager/protobuf/ByteString$ByteIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeByteIterator;->bytes:Lcom/google/tagmanager/protobuf/ByteString$ByteIterator;

    .line 779
    :cond_0
    iget v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeByteIterator;->bytesRemaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeByteIterator;->bytesRemaining:I

    .line 780
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$RopeByteIterator;->bytes:Lcom/google/tagmanager/protobuf/ByteString$ByteIterator;

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/ByteString$ByteIterator;->nextByte()B

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .line 784
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
