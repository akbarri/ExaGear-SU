.class Lcom/google/tagmanager/protobuf/LiteralByteString;
.super Lcom/google/tagmanager/protobuf/ByteString;
.source "LiteralByteString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/protobuf/LiteralByteString$LiteralByteIterator;
    }
.end annotation


# instance fields
.field protected final bytes:[B

.field private hash:I


# direct methods
.method constructor <init>([B)V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/ByteString;-><init>()V

    const/4 v0, 0x0

    .line 212
    iput v0, p0, Lcom/google/tagmanager/protobuf/LiteralByteString;->hash:I

    .line 34
    iput-object p1, p0, Lcom/google/tagmanager/protobuf/LiteralByteString;->bytes:[B

    return-void
.end method

.method static hashCode(I[BII)I
    .locals 2

    move v0, p0

    move p0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge p0, v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 247
    aget-byte v1, p1, p0

    add-int/2addr v0, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method static hashCode([B)I
    .locals 3

    const/4 v0, 0x0

    .line 253
    array-length v1, p0

    array-length v2, p0

    invoke-static {v1, p0, v0, v2}, Lcom/google/tagmanager/protobuf/LiteralByteString;->hashCode(I[BII)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method


# virtual methods
.method public asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asReadOnlyByteBufferList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public byteAt(I)B
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LiteralByteString;->bytes:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public copyTo(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected copyToInternal([BIII)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LiteralByteString;->bytes:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 152
    :cond_0
    instance-of v1, p1, Lcom/google/tagmanager/protobuf/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->size()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 159
    :cond_2
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->size()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 163
    :cond_3
    instance-of v0, p1, Lcom/google/tagmanager/protobuf/LiteralByteString;

    if-eqz v0, :cond_4

    .line 164
    check-cast p1, Lcom/google/tagmanager/protobuf/LiteralByteString;

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->size()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->equalsRange(Lcom/google/tagmanager/protobuf/LiteralByteString;II)Z

    move-result p1

    return p1

    .line 165
    :cond_4
    instance-of v0, p1, Lcom/google/tagmanager/protobuf/RopeByteString;

    if-eqz v0, :cond_5

    .line 166
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 168
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method equalsRange(Lcom/google/tagmanager/protobuf/LiteralByteString;II)Z
    .locals 4

    .line 184
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/LiteralByteString;->size()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 185
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Length too large: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    add-int v0, p2, p3

    .line 188
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/LiteralByteString;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ran off end of other: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/LiteralByteString;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LiteralByteString;->bytes:[B

    .line 195
    iget-object v1, p1, Lcom/google/tagmanager/protobuf/LiteralByteString;->bytes:[B

    .line 196
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v2

    add-int/2addr v2, p3

    .line 197
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result p3

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result p1

    add-int/2addr p1, p2

    :goto_0
    if-ge p3, v2, :cond_3

    .line 200
    aget-byte p2, v0, p3

    aget-byte v3, v1, p1

    if-eq p2, v3, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method protected getOffsetIntoBytes()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getTreeDepth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 222
    iget v0, p0, Lcom/google/tagmanager/protobuf/LiteralByteString;->hash:I

    if-nez v0, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 226
    invoke-virtual {p0, v0, v1, v0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->partialHash(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 230
    :cond_0
    iput v0, p0, Lcom/google/tagmanager/protobuf/LiteralByteString;->hash:I

    :cond_1
    return v0
.end method

.method protected isBalanced()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isValidUtf8()Z
    .locals 3

    .line 134
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v0

    .line 135
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lcom/google/tagmanager/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v0

    return v0
.end method

.method public iterator()Lcom/google/tagmanager/protobuf/ByteString$ByteIterator;
    .locals 2

    .line 278
    new-instance v0, Lcom/google/tagmanager/protobuf/LiteralByteString$LiteralByteIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/tagmanager/protobuf/LiteralByteString$LiteralByteIterator;-><init>(Lcom/google/tagmanager/protobuf/LiteralByteString;Lcom/google/tagmanager/protobuf/LiteralByteString$1;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->iterator()Lcom/google/tagmanager/protobuf/ByteString$ByteIterator;

    move-result-object v0

    return-object v0
.end method

.method public newCodedInput()Lcom/google/tagmanager/protobuf/CodedInputStream;
    .locals 1

    .line 270
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->newInstance(Lcom/google/tagmanager/protobuf/LiteralByteString;)Lcom/google/tagmanager/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public newInput()Ljava/io/InputStream;
    .locals 4

    .line 262
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method protected partialHash(III)I
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {p1, v0, v1, p3}, Lcom/google/tagmanager/protobuf/LiteralByteString;->hashCode(I[BII)I

    move-result p1

    return p1
.end method

.method protected partialIsValidUtf8(III)I
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v0

    add-int/2addr v0, p2

    .line 141
    iget-object p2, p0, Lcom/google/tagmanager/protobuf/LiteralByteString;->bytes:[B

    add-int/2addr p3, v0

    invoke-static {p1, p2, v0, p3}, Lcom/google/tagmanager/protobuf/Utf8;->partialIsValidUtf8(I[BII)I

    move-result p1

    return p1
.end method

.method protected peekCachedHashCode()I
    .locals 1

    .line 237
    iget v0, p0, Lcom/google/tagmanager/protobuf/LiteralByteString;->hash:I

    return v0
.end method

.method public size()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LiteralByteString;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public substring(II)Lcom/google/tagmanager/protobuf/ByteString;
    .locals 3

    if-gez p1, :cond_0

    .line 56
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

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->size()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 60
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " > "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->size()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sub-int v0, p2, p1

    if-gez v0, :cond_2

    .line 65
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

    .line 72
    sget-object p1, Lcom/google/tagmanager/protobuf/ByteString;->EMPTY:Lcom/google/tagmanager/protobuf/ByteString;

    goto :goto_0

    .line 74
    :cond_3
    new-instance p2, Lcom/google/tagmanager/protobuf/BoundedByteString;

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v2

    add-int/2addr v2, p1

    invoke-direct {p2, v1, v2, v0}, Lcom/google/tagmanager/protobuf/BoundedByteString;-><init>([BII)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method writeToInternal(Ljava/io/OutputStream;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, v0, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
