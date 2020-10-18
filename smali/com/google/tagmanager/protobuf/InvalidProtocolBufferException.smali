.class public Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
.super Ljava/io/IOException;
.source "InvalidProtocolBufferException.java"


# static fields
.field private static final serialVersionUID:J = -0x166db9773d0dffacL


# instance fields
.field private unfinishedMessage:Lcom/google/tagmanager/protobuf/MessageLite;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lcom/google/tagmanager/protobuf/MessageLite;

    return-void
.end method

.method static invalidEndTag()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
    .locals 2

    .line 66
    new-instance v0, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static invalidTag()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
    .locals 2

    .line 61
    new-instance v0, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static invalidUtf8()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
    .locals 2

    .line 92
    new-instance v0, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static invalidWireType()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
    .locals 2

    .line 71
    new-instance v0, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static malformedVarint()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
    .locals 2

    .line 56
    new-instance v0, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static negativeSize()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
    .locals 2

    .line 50
    new-instance v0, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static parseFailure()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
    .locals 2

    .line 88
    new-instance v0, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    const-string v1, "Failed to parse the message."

    invoke-direct {v0, v1}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static recursionLimitExceeded()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
    .locals 2

    .line 76
    new-instance v0, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {v0, v1}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static sizeLimitExceeded()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
    .locals 2

    .line 82
    new-instance v0, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    invoke-direct {v0, v1}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static truncatedMessage()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
    .locals 2

    .line 42
    new-instance v0, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getUnfinishedMessage()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lcom/google/tagmanager/protobuf/MessageLite;

    return-object v0
.end method

.method public setUnfinishedMessage(Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lcom/google/tagmanager/protobuf/MessageLite;

    return-object p0
.end method
