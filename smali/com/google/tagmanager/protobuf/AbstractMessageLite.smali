.class public abstract Lcom/google/tagmanager/protobuf/AbstractMessageLite;
.super Ljava/lang/Object;
.source "AbstractMessageLite.java"

# interfaces
.implements Lcom/google/tagmanager/protobuf/MessageLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;
    }
.end annotation


# instance fields
.field protected memoizedHashCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/google/tagmanager/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return-void
.end method

.method protected static checkByteStringIsUtf8(Lcom/google/tagmanager/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/ByteString;->isValidUtf8()Z

    move-result p0

    if-nez p0, :cond_0

    .line 84
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Byte string is not UTF-8."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method


# virtual methods
.method public mutableCopy()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mutableCopy() is not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method newUninitializedMessageException()Lcom/google/tagmanager/protobuf/UninitializedMessageException;
    .locals 1

    .line 78
    new-instance v0, Lcom/google/tagmanager/protobuf/UninitializedMessageException;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/protobuf/UninitializedMessageException;-><init>(Lcom/google/tagmanager/protobuf/MessageLite;)V

    return-object v0
.end method

.method public toByteArray()[B
    .locals 3

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    .line 37
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance([B)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object v1

    .line 38
    invoke-virtual {p0, v1}, Lcom/google/tagmanager/protobuf/AbstractMessageLite;->writeTo(Lcom/google/tagmanager/protobuf/CodedOutputStream;)V

    .line 39
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->checkNoSpaceLeft()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 42
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toByteString()Lcom/google/tagmanager/protobuf/ByteString;
    .locals 3

    .line 23
    :try_start_0
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/ByteString;->newCodedBuilder(I)Lcom/google/tagmanager/protobuf/ByteString$CodedBuilder;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString$CodedBuilder;->getCodedOutput()Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/tagmanager/protobuf/AbstractMessageLite;->writeTo(Lcom/google/tagmanager/protobuf/CodedOutputStream;)V

    .line 26
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString$CodedBuilder;->build()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 28
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a ByteString threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeDelimitedTo(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v0

    .line 59
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computePreferredBufferSize(I)I

    move-result v1

    .line 61
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object p1

    .line 63
    invoke-virtual {p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/AbstractMessageLite;->writeTo(Lcom/google/tagmanager/protobuf/CodedOutputStream;)V

    .line 65
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computePreferredBufferSize(I)I

    move-result v0

    .line 51
    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/AbstractMessageLite;->writeTo(Lcom/google/tagmanager/protobuf/CodedOutputStream;)V

    .line 54
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V

    return-void
.end method
