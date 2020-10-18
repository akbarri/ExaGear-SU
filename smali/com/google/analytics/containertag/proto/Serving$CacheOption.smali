.class public final Lcom/google/analytics/containertag/proto/Serving$CacheOption;
.super Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
.source "Serving.java"

# interfaces
.implements Lcom/google/analytics/containertag/proto/Serving$CacheOptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheOption"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;,
        Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;
    }
.end annotation


# static fields
.field public static final EXPIRATION_SECONDS_FIELD_NUMBER:I = 0x2

.field public static final GCACHE_EXPIRATION_SECONDS_FIELD_NUMBER:I = 0x3

.field public static final LEVEL_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/tagmanager/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/Serving$CacheOption;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

.field private static volatile mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private expirationSeconds_:I

.field private gcacheExpirationSeconds_:I

.field private level_:Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/tagmanager/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5619
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption$1;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption$1;-><init>()V

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    .line 6142
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;-><init>(Z)V

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->defaultInstance:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .line 6143
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->defaultInstance:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5556
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, -0x1

    .line 5756
    iput-byte v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->memoizedIsInitialized:B

    .line 5780
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->memoizedSerializedSize:I

    .line 5557
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->initFields()V

    .line 5559
    invoke-static {}, Lcom/google/tagmanager/protobuf/ByteString;->newOutput()Lcom/google/tagmanager/protobuf/ByteString$Output;

    move-result-object v0

    .line 5561
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v2, :cond_6

    .line 5567
    :try_start_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    const/16 v5, 0x8

    if-eq v3, v5, :cond_3

    const/16 v5, 0x10

    if-eq v3, v5, :cond_2

    const/16 v5, 0x18

    if-eq v3, v5, :cond_1

    .line 5573
    invoke-virtual {p0, p1, v1, p2, v3}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->parseUnknownField(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 5597
    :cond_1
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->bitField0_:I

    .line 5598
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds_:I

    goto :goto_0

    .line 5592
    :cond_2
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->bitField0_:I

    .line 5593
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds_:I

    goto :goto_0

    .line 5580
    :cond_3
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 5581
    invoke-static {v5}, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;->valueOf(I)Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    move-result-object v6

    if-nez v6, :cond_4

    .line 5583
    invoke-virtual {v1, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 5584
    invoke-virtual {v1, v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    goto :goto_0

    .line 5586
    :cond_4
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->bitField0_:I

    .line 5587
    iput-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level_:Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;
    :try_end_0
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    :goto_1
    move v2, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 5606
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

    .line 5604
    invoke-virtual {p1, p0}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5610
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5614
    :catch_2
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    throw p1

    .line 5616
    :goto_3
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->makeExtensionsImmutable()V

    throw p1

    .line 5610
    :cond_6
    :try_start_3
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 5614
    :catch_3
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    throw p1

    .line 5616
    :goto_4
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;Lcom/google/analytics/containertag/proto/Serving$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5532
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;-><init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1

    .line 5538
    invoke-direct {p0, p1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;)V

    const/4 v0, -0x1

    .line 5756
    iput-byte v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->memoizedIsInitialized:B

    .line 5780
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->memoizedSerializedSize:I

    .line 5539
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;Lcom/google/analytics/containertag/proto/Serving$1;)V
    .locals 0

    .line 5532
    invoke-direct {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 5541
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>()V

    const/4 p1, -0x1

    .line 5756
    iput-byte p1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->memoizedIsInitialized:B

    .line 5780
    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->memoizedSerializedSize:I

    .line 5541
    sget-object p1, Lcom/google/tagmanager/protobuf/ByteString;->EMPTY:Lcom/google/tagmanager/protobuf/ByteString;

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$5402(Lcom/google/analytics/containertag/proto/Serving$CacheOption;Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;)Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;
    .locals 0

    .line 5532
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level_:Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    return-object p1
.end method

.method static synthetic access$5502(Lcom/google/analytics/containertag/proto/Serving$CacheOption;I)I
    .locals 0

    .line 5532
    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds_:I

    return p1
.end method

.method static synthetic access$5602(Lcom/google/analytics/containertag/proto/Serving$CacheOption;I)I
    .locals 0

    .line 5532
    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds_:I

    return p1
.end method

.method static synthetic access$5702(Lcom/google/analytics/containertag/proto/Serving$CacheOption;I)I
    .locals 0

    .line 5532
    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->bitField0_:I

    return p1
.end method

.method static synthetic access$5800(Lcom/google/analytics/containertag/proto/Serving$CacheOption;)Lcom/google/tagmanager/protobuf/ByteString;
    .locals 0

    .line 5532
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .locals 1

    .line 5545
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->defaultInstance:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 5752
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;->NO_CACHE:Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level_:Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    const/4 v0, 0x0

    .line 5753
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds_:I

    .line 5754
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;
    .locals 1

    .line 5927
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;->access$5200()Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/analytics/containertag/proto/Serving$CacheOption;)Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;
    .locals 1

    .line 5930
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->newBuilder()Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$CacheOption;)Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5907
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5913
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5877
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Lcom/google/tagmanager/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5883
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;)Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5918
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5924
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5897
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5903
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5887
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5893
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom([BLcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 5815
    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-nez v1, :cond_1

    .line 5816
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 5818
    :cond_1
    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .line 5821
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hasLevel()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hasLevel()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    .line 5822
    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hasLevel()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 5823
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->getLevel()Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->getLevel()Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    move-result-object v2

    if-ne v1, v2, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 5826
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hasExpirationSeconds()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hasExpirationSeconds()Z

    move-result v2

    if-ne v1, v2, :cond_5

    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v3

    .line 5827
    :goto_2
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hasExpirationSeconds()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 5828
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->getExpirationSeconds()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->getExpirationSeconds()I

    move-result v2

    if-ne v1, v2, :cond_6

    move v1, v0

    goto :goto_3

    :cond_6
    move v1, v3

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 5831
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hasGcacheExpirationSeconds()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hasGcacheExpirationSeconds()Z

    move-result v2

    if-ne v1, v2, :cond_8

    move v1, v0

    goto :goto_4

    :cond_8
    move v1, v3

    .line 5832
    :goto_4
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hasGcacheExpirationSeconds()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 5833
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->getGcacheExpirationSeconds()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->getGcacheExpirationSeconds()I

    move-result p1

    if-ne v1, p1, :cond_9

    move v1, v0

    goto :goto_5

    :cond_9
    move v1, v3

    :cond_a
    :goto_5
    return v1
.end method

.method public getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .locals 1

    .line 5549
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->defaultInstance:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 5532
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    move-result-object v0

    return-object v0
.end method

.method public getExpirationSeconds()I
    .locals 1

    .line 5731
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds_:I

    return v0
.end method

.method public getGcacheExpirationSeconds()I
    .locals 1

    .line 5748
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds_:I

    return v0
.end method

.method public getLevel()Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;
    .locals 1

    .line 5714
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level_:Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    return-object v0
.end method

.method public getParserForType()Lcom/google/tagmanager/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/Serving$CacheOption;",
            ">;"
        }
    .end annotation

    .line 5631
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 5782
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 5786
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 5787
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level_:Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5790
    :cond_1
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 5791
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds_:I

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5794
    :cond_2
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 5795
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds_:I

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5798
    :cond_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 5799
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->memoizedSerializedSize:I

    return v0
.end method

.method public hasExpirationSeconds()Z
    .locals 2

    .line 5725
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->bitField0_:I

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

.method public hasGcacheExpirationSeconds()Z
    .locals 2

    .line 5742
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->bitField0_:I

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

.method public hasLevel()Z
    .locals 2

    .line 5708
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 5841
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 5842
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 5845
    const-class v1, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5846
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hasLevel()Z

    move-result v1

    const/16 v2, 0x35

    const/16 v3, 0x25

    if-eqz v1, :cond_1

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v2

    .line 5848
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->getLevel()Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/Internal;->hashEnum(Lcom/google/tagmanager/protobuf/Internal$EnumLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5851
    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hasExpirationSeconds()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, v2

    .line 5853
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->getExpirationSeconds()I

    move-result v1

    add-int/2addr v0, v1

    .line 5855
    :cond_2
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hasGcacheExpirationSeconds()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x3

    mul-int/2addr v2, v3

    .line 5857
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->getGcacheExpirationSeconds()I

    move-result v0

    add-int/2addr v0, v2

    :cond_3
    const/16 v1, 0x1d

    mul-int/2addr v1, v0

    .line 5859
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 5860
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->memoizedHashCode:I

    return v1
.end method

.method protected internalMutableDefault()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 5868
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    const-string v0, "com.google.analytics.containertag.proto.MutableServing$CacheOption"

    .line 5869
    invoke-static {v0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->internalMutableDefault(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

    .line 5871
    :cond_0
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 5758
    iget-byte v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->memoizedIsInitialized:B

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 5761
    :cond_1
    iput-byte v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;
    .locals 1

    .line 5928
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->newBuilder()Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 5532
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->newBuilderForType()Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;
    .locals 1

    .line 5932
    invoke-static {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->newBuilder(Lcom/google/analytics/containertag/proto/Serving$CacheOption;)Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 5532
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->toBuilder()Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;

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

    .line 5807
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

    .line 5767
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->getSerializedSize()I

    .line 5768
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 5769
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level_:Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5771
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5772
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5774
    :cond_1
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 5775
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5777
    :cond_2
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/tagmanager/protobuf/ByteString;)V

    return-void
.end method
