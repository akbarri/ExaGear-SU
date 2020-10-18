.class public final Lcom/google/analytics/containertag/proto/Serving$Container;
.super Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
.source "Serving.java"

# interfaces
.implements Lcom/google/analytics/containertag/proto/Serving$ContainerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Container"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/containertag/proto/Serving$Container$Builder;
    }
.end annotation


# static fields
.field public static final CONTAINER_ID_FIELD_NUMBER:I = 0x3

.field public static final JS_RESOURCE_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/tagmanager/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/Serving$Container;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_FIELD_NUMBER:I = 0x4

.field public static final VERSION_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/google/analytics/containertag/proto/Serving$Container;

.field private static volatile mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private containerId_:Ljava/lang/Object;

.field private jsResource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private state_:Lcom/google/analytics/containertag/proto/Serving$ResourceState;

.field private final unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

.field private version_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 324
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Container$1;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Container$1;-><init>()V

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Container;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    .line 1063
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Container;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$Container;-><init>(Z)V

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Container;->defaultInstance:Lcom/google/analytics/containertag/proto/Serving$Container;

    .line 1064
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Container;->defaultInstance:Lcom/google/analytics/containertag/proto/Serving$Container;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Container;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 246
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, -0x1

    .line 468
    iput-byte v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->memoizedIsInitialized:B

    .line 511
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->memoizedSerializedSize:I

    .line 247
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->initFields()V

    .line 249
    invoke-static {}, Lcom/google/tagmanager/protobuf/ByteString;->newOutput()Lcom/google/tagmanager/protobuf/ByteString$Output;

    move-result-object v0

    .line 251
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v2, :cond_9

    .line 257
    :try_start_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_8

    const/16 v5, 0xa

    if-eq v3, v5, :cond_5

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_4

    const/16 v5, 0x20

    if-eq v3, v5, :cond_2

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_1

    .line 263
    invoke-virtual {p0, p1, v1, p2, v3}, Lcom/google/analytics/containertag/proto/Serving$Container;->parseUnknownField(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 301
    :cond_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readBytes()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v3

    .line 302
    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->bitField0_:I

    .line 303
    iput-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version_:Ljava/lang/Object;

    goto :goto_0

    .line 289
    :cond_2
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 290
    invoke-static {v4}, Lcom/google/analytics/containertag/proto/Serving$ResourceState;->valueOf(I)Lcom/google/analytics/containertag/proto/Serving$ResourceState;

    move-result-object v5

    if-nez v5, :cond_3

    .line 292
    invoke-virtual {v1, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 293
    invoke-virtual {v1, v4}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    goto :goto_0

    .line 295
    :cond_3
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->bitField0_:I

    .line 296
    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state_:Lcom/google/analytics/containertag/proto/Serving$ResourceState;

    goto :goto_0

    .line 283
    :cond_4
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readBytes()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v3

    .line 284
    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->bitField0_:I

    .line 285
    iput-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId_:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    .line 271
    iget v5, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->bitField0_:I

    and-int/2addr v5, v4

    if-ne v5, v4, :cond_6

    .line 272
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/Serving$Resource;->toBuilder()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    move-result-object v3

    .line 274
    :cond_6
    sget-object v5, Lcom/google/analytics/containertag/proto/Serving$Resource;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/Parser;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/analytics/containertag/proto/Serving$Resource;

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-eqz v3, :cond_7

    .line 276
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {v3, v5}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    .line 277
    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v3

    iput-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 279
    :cond_7
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->bitField0_:I
    :try_end_0
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_8
    :goto_1
    move v2, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 311
    :try_start_1
    new-instance p2, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 309
    invoke-virtual {p1, p0}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 319
    :catch_2
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    throw p1

    .line 321
    :goto_3
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->makeExtensionsImmutable()V

    throw p1

    .line 315
    :cond_9
    :try_start_3
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 319
    :catch_3
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    throw p1

    .line 321
    :goto_4
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;Lcom/google/analytics/containertag/proto/Serving$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/containertag/proto/Serving$Container;-><init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1

    .line 228
    invoke-direct {p0, p1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;)V

    const/4 v0, -0x1

    .line 468
    iput-byte v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->memoizedIsInitialized:B

    .line 511
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->memoizedSerializedSize:I

    .line 229
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;Lcom/google/analytics/containertag/proto/Serving$1;)V
    .locals 0

    .line 222
    invoke-direct {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Container;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 231
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>()V

    const/4 p1, -0x1

    .line 468
    iput-byte p1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->memoizedIsInitialized:B

    .line 511
    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->memoizedSerializedSize:I

    .line 231
    sget-object p1, Lcom/google/tagmanager/protobuf/ByteString;->EMPTY:Lcom/google/tagmanager/protobuf/ByteString;

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$302(Lcom/google/analytics/containertag/proto/Serving$Container;Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/analytics/containertag/proto/Serving$Resource;
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/analytics/containertag/proto/Serving$Container;)Ljava/lang/Object;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lcom/google/analytics/containertag/proto/Serving$Container;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/analytics/containertag/proto/Serving$Container;Lcom/google/analytics/containertag/proto/Serving$ResourceState;)Lcom/google/analytics/containertag/proto/Serving$ResourceState;
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state_:Lcom/google/analytics/containertag/proto/Serving$ResourceState;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/analytics/containertag/proto/Serving$Container;)Ljava/lang/Object;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/google/analytics/containertag/proto/Serving$Container;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/analytics/containertag/proto/Serving$Container;I)I
    .locals 0

    .line 222
    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->bitField0_:I

    return p1
.end method

.method static synthetic access$800(Lcom/google/analytics/containertag/proto/Serving$Container;)Lcom/google/tagmanager/protobuf/ByteString;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Container;
    .locals 1

    .line 235
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Container;->defaultInstance:Lcom/google/analytics/containertag/proto/Serving$Container;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 463
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    const-string v0, ""

    .line 464
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId_:Ljava/lang/Object;

    .line 465
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$ResourceState;->PREVIEW:Lcom/google/analytics/containertag/proto/Serving$ResourceState;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state_:Lcom/google/analytics/containertag/proto/Serving$ResourceState;

    const-string v0, ""

    .line 466
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version_:Ljava/lang/Object;

    return-void
.end method

.method public static newBuilder()Lcom/google/analytics/containertag/proto/Serving$Container$Builder;
    .locals 1

    .line 671
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->access$100()Lcom/google/analytics/containertag/proto/Serving$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/analytics/containertag/proto/Serving$Container;)Lcom/google/analytics/containertag/proto/Serving$Container$Builder;
    .locals 1

    .line 674
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Container;->newBuilder()Lcom/google/analytics/containertag/proto/Serving$Container$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Container;)Lcom/google/analytics/containertag/proto/Serving$Container$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/analytics/containertag/proto/Serving$Container;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 651
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Container;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$Container;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$Container;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 657
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Container;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$Container;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/analytics/containertag/proto/Serving$Container;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 621
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Container;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Lcom/google/tagmanager/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$Container;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$Container;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 627
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Container;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$Container;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;)Lcom/google/analytics/containertag/proto/Serving$Container;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 662
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Container;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$Container;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$Container;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 668
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Container;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$Container;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/analytics/containertag/proto/Serving$Container;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 641
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Container;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$Container;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$Container;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 647
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Container;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$Container;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$Container;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 631
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Container;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$Container;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$Container;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 637
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Container;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom([BLcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$Container;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 550
    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Serving$Container;

    if-nez v1, :cond_1

    .line 551
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 553
    :cond_1
    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$Container;

    .line 556
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->hasJsResource()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Container;->hasJsResource()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    .line 557
    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->hasJsResource()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 558
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->getJsResource()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Container;->getJsResource()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/analytics/containertag/proto/Serving$Resource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 561
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->hasContainerId()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Container;->hasContainerId()Z

    move-result v2

    if-ne v1, v2, :cond_5

    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v3

    .line 562
    :goto_2
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->hasContainerId()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 563
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->getContainerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Container;->getContainerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v0

    goto :goto_3

    :cond_6
    move v1, v3

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 566
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->hasState()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Container;->hasState()Z

    move-result v2

    if-ne v1, v2, :cond_8

    move v1, v0

    goto :goto_4

    :cond_8
    move v1, v3

    .line 567
    :goto_4
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->hasState()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 568
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->getState()Lcom/google/analytics/containertag/proto/Serving$ResourceState;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Container;->getState()Lcom/google/analytics/containertag/proto/Serving$ResourceState;

    move-result-object v2

    if-ne v1, v2, :cond_9

    move v1, v0

    goto :goto_5

    :cond_9
    move v1, v3

    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 571
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->hasVersion()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Container;->hasVersion()Z

    move-result v2

    if-ne v1, v2, :cond_b

    move v1, v0

    goto :goto_6

    :cond_b
    move v1, v3

    .line 572
    :goto_6
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->hasVersion()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    .line 573
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Container;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    move v1, v0

    goto :goto_7

    :cond_c
    move v1, v3

    :cond_d
    :goto_7
    return v1
.end method

.method public getContainerId()Ljava/lang/String;
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId_:Ljava/lang/Object;

    .line 372
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 373
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 375
    :cond_0
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    .line 377
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getContainerIdBytes()Lcom/google/tagmanager/protobuf/ByteString;
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId_:Ljava/lang/Object;

    .line 390
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 391
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    .line 394
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId_:Ljava/lang/Object;

    return-object v0

    .line 397
    :cond_0
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Serving$Container;
    .locals 1

    .line 239
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Container;->defaultInstance:Lcom/google/analytics/containertag/proto/Serving$Container;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Serving$Container;

    move-result-object v0

    return-object v0
.end method

.method public getJsResource()Lcom/google/analytics/containertag/proto/Serving$Resource;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    return-object v0
.end method

.method public getParserForType()Lcom/google/tagmanager/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/Serving$Container;",
            ">;"
        }
    .end annotation

    .line 336
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Container;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 513
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 517
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 518
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 521
    :cond_1
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    .line 522
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->getContainerIdBytes()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/tagmanager/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 525
    :cond_2
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 526
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state_:Lcom/google/analytics/containertag/proto/Serving$ResourceState;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/Serving$ResourceState;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 529
    :cond_3
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x5

    .line 530
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->getVersionBytes()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/tagmanager/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 533
    :cond_4
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 534
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->memoizedSerializedSize:I

    return v0
.end method

.method public getState()Lcom/google/analytics/containertag/proto/Serving$ResourceState;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state_:Lcom/google/analytics/containertag/proto/Serving$ResourceState;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version_:Ljava/lang/Object;

    .line 433
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 434
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 436
    :cond_0
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    .line 438
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getVersionBytes()Lcom/google/tagmanager/protobuf/ByteString;
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version_:Ljava/lang/Object;

    .line 451
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 452
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    .line 455
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version_:Ljava/lang/Object;

    return-object v0

    .line 458
    :cond_0
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    return-object v0
.end method

.method public hasContainerId()Z
    .locals 2

    .line 365
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasJsResource()Z
    .locals 2

    .line 348
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasState()Z
    .locals 2

    .line 409
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVersion()Z
    .locals 2

    .line 426
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 581
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 582
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 585
    const-class v1, Lcom/google/analytics/containertag/proto/Serving$Container;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 586
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->hasJsResource()Z

    move-result v1

    const/16 v2, 0x35

    const/16 v3, 0x25

    if-eqz v1, :cond_1

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v2

    .line 588
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->getJsResource()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 590
    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->hasContainerId()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x3

    mul-int/2addr v0, v2

    .line 592
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->getContainerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 594
    :cond_2
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->hasState()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x4

    mul-int/2addr v0, v2

    .line 596
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->getState()Lcom/google/analytics/containertag/proto/Serving$ResourceState;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/Internal;->hashEnum(Lcom/google/tagmanager/protobuf/Internal$EnumLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 599
    :cond_3
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->hasVersion()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x5

    mul-int/2addr v2, v3

    .line 601
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    :cond_4
    const/16 v1, 0x1d

    mul-int/2addr v1, v0

    .line 603
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 604
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->memoizedHashCode:I

    return v1
.end method

.method protected internalMutableDefault()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 612
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Container;->mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    const-string v0, "com.google.analytics.containertag.proto.MutableServing$Container"

    .line 613
    invoke-static {v0}, Lcom/google/analytics/containertag/proto/Serving$Container;->internalMutableDefault(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Container;->mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

    .line 615
    :cond_0
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Container;->mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 470
    iget-byte v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->memoizedIsInitialized:B

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 473
    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->hasJsResource()Z

    move-result v0

    if-nez v0, :cond_2

    .line 474
    iput-byte v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->memoizedIsInitialized:B

    return v2

    .line 477
    :cond_2
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->hasContainerId()Z

    move-result v0

    if-nez v0, :cond_3

    .line 478
    iput-byte v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->memoizedIsInitialized:B

    return v2

    .line 481
    :cond_3
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->hasState()Z

    move-result v0

    if-nez v0, :cond_4

    .line 482
    iput-byte v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->memoizedIsInitialized:B

    return v2

    .line 485
    :cond_4
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->getJsResource()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    .line 486
    iput-byte v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->memoizedIsInitialized:B

    return v2

    .line 489
    :cond_5
    iput-byte v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/analytics/containertag/proto/Serving$Container$Builder;
    .locals 1

    .line 672
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Container;->newBuilder()Lcom/google/analytics/containertag/proto/Serving$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->newBuilderForType()Lcom/google/analytics/containertag/proto/Serving$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/analytics/containertag/proto/Serving$Container$Builder;
    .locals 1

    .line 676
    invoke-static {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->newBuilder(Lcom/google/analytics/containertag/proto/Serving$Container;)Lcom/google/analytics/containertag/proto/Serving$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->toBuilder()Lcom/google/analytics/containertag/proto/Serving$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 542
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 495
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->getSerializedSize()I

    .line 496
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 497
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessage(ILcom/google/tagmanager/protobuf/MessageLite;)V

    .line 499
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 500
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->getContainerIdBytes()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeBytes(ILcom/google/tagmanager/protobuf/ByteString;)V

    .line 502
    :cond_1
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 503
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state_:Lcom/google/analytics/containertag/proto/Serving$ResourceState;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$ResourceState;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 505
    :cond_2
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x5

    .line 506
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->getVersionBytes()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeBytes(ILcom/google/tagmanager/protobuf/ByteString;)V

    .line 508
    :cond_3
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/tagmanager/protobuf/ByteString;)V

    return-void
.end method
