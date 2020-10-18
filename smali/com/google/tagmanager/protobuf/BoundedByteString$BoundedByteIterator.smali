.class Lcom/google/tagmanager/protobuf/BoundedByteString$BoundedByteIterator;
.super Ljava/lang/Object;
.source "BoundedByteString.java"

# interfaces
.implements Lcom/google/tagmanager/protobuf/ByteString$ByteIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/protobuf/BoundedByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoundedByteIterator"
.end annotation


# instance fields
.field private final limit:I

.field private position:I

.field final synthetic this$0:Lcom/google/tagmanager/protobuf/BoundedByteString;


# direct methods
.method private constructor <init>(Lcom/google/tagmanager/protobuf/BoundedByteString;)V
    .locals 1

    .line 109
    iput-object p1, p0, Lcom/google/tagmanager/protobuf/BoundedByteString$BoundedByteIterator;->this$0:Lcom/google/tagmanager/protobuf/BoundedByteString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/BoundedByteString;->getOffsetIntoBytes()I

    move-result v0

    iput v0, p0, Lcom/google/tagmanager/protobuf/BoundedByteString$BoundedByteIterator;->position:I

    .line 111
    iget v0, p0, Lcom/google/tagmanager/protobuf/BoundedByteString$BoundedByteIterator;->position:I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/BoundedByteString;->size()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/tagmanager/protobuf/BoundedByteString$BoundedByteIterator;->limit:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/protobuf/BoundedByteString;Lcom/google/tagmanager/protobuf/BoundedByteString$1;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/google/tagmanager/protobuf/BoundedByteString$BoundedByteIterator;-><init>(Lcom/google/tagmanager/protobuf/BoundedByteString;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 115
    iget v0, p0, Lcom/google/tagmanager/protobuf/BoundedByteString$BoundedByteIterator;->position:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/BoundedByteString$BoundedByteIterator;->limit:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Byte;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/BoundedByteString$BoundedByteIterator;->nextByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/BoundedByteString$BoundedByteIterator;->next()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public nextByte()B
    .locals 3

    .line 124
    iget v0, p0, Lcom/google/tagmanager/protobuf/BoundedByteString$BoundedByteIterator;->position:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/BoundedByteString$BoundedByteIterator;->limit:I

    if-lt v0, v1, :cond_0

    .line 125
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/BoundedByteString$BoundedByteIterator;->this$0:Lcom/google/tagmanager/protobuf/BoundedByteString;

    iget-object v0, v0, Lcom/google/tagmanager/protobuf/BoundedByteString;->bytes:[B

    iget v1, p0, Lcom/google/tagmanager/protobuf/BoundedByteString$BoundedByteIterator;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/tagmanager/protobuf/BoundedByteString$BoundedByteIterator;->position:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public remove()V
    .locals 1

    .line 131
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
