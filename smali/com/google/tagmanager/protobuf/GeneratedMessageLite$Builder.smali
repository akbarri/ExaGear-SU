.class public abstract Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
.super Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/tagmanager/protobuf/GeneratedMessageLite;",
        "BuilderType:",
        "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;",
        ">",
        "Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder<",
        "TBuilderType;>;"
    }
.end annotation


# instance fields
.field private unknownFields:Lcom/google/tagmanager/protobuf/ByteString;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;-><init>()V

    .line 103
    sget-object v0, Lcom/google/tagmanager/protobuf/ByteString;->EMPTY:Lcom/google/tagmanager/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 63
    sget-object v0, Lcom/google/tagmanager/protobuf/ByteString;->EMPTY:Lcom/google/tagmanager/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/tagmanager/protobuf/ByteString;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-object v0
.end method

.method public abstract mergeFrom(Lcom/google/tagmanager/protobuf/GeneratedMessageLite;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method protected parseUnknownField(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-virtual {p1, p4, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->skipField(ILcom/google/tagmanager/protobuf/CodedOutputStream;)Z

    move-result p1

    return p1
.end method

.method public final setUnknownFields(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/protobuf/ByteString;",
            ")TBuilderType;"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-object p0
.end method
