.class public interface abstract Lcom/google/tagmanager/protobuf/MutableMessageLite;
.super Ljava/lang/Object;
.source "MutableMessageLite.java"

# interfaces
.implements Lcom/google/tagmanager/protobuf/MessageLite;
.implements Ljava/lang/Cloneable;


# virtual methods
.method public abstract clear()Lcom/google/tagmanager/protobuf/MutableMessageLite;
.end method

.method public abstract clone()Lcom/google/tagmanager/protobuf/MutableMessageLite;
.end method

.method public abstract getCachedSize()I
.end method

.method public abstract getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
.end method

.method public abstract immutableCopy()Lcom/google/tagmanager/protobuf/MessageLite;
.end method

.method public abstract mergeDelimitedFrom(Ljava/io/InputStream;)Z
.end method

.method public abstract mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Z
.end method

.method public abstract mergeFrom(Lcom/google/tagmanager/protobuf/ByteString;)Z
.end method

.method public abstract mergeFrom(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Z
.end method

.method public abstract mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;)Z
.end method

.method public abstract mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Z
.end method

.method public abstract mergeFrom(Ljava/io/InputStream;)Z
.end method

.method public abstract mergeFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Z
.end method

.method public abstract mergeFrom(Ljava/nio/ByteBuffer;)Z
.end method

.method public abstract mergeFrom(Ljava/nio/ByteBuffer;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Z
.end method

.method public abstract mergeFrom([B)Z
.end method

.method public abstract mergeFrom([BII)Z
.end method

.method public abstract mergeFrom([BIILcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Z
.end method

.method public abstract mergeFrom([BLcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Z
.end method

.method public abstract mergePartialFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Z
.end method

.method public abstract newMessageForType()Lcom/google/tagmanager/protobuf/MutableMessageLite;
.end method

.method public abstract parseDelimitedFrom(Ljava/io/InputStream;)Z
.end method

.method public abstract parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Z
.end method

.method public abstract parseFrom(Lcom/google/tagmanager/protobuf/ByteString;)Z
.end method

.method public abstract parseFrom(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Z
.end method

.method public abstract parseFrom(Ljava/io/InputStream;)Z
.end method

.method public abstract parseFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Z
.end method

.method public abstract parseFrom(Ljava/nio/ByteBuffer;)Z
.end method

.method public abstract parseFrom(Ljava/nio/ByteBuffer;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Z
.end method

.method public abstract parseFrom([B)Z
.end method

.method public abstract parseFrom([BII)Z
.end method

.method public abstract parseFrom([BIILcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Z
.end method

.method public abstract parseFrom([BLcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Z
.end method

.method public abstract writeToWithCachedSizes(Lcom/google/tagmanager/protobuf/CodedOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
