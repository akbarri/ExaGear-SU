.class public final Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
.super Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
.source "Serving.java"

# interfaces
.implements Lcom/google/analytics/containertag/proto/Serving$FunctionCallOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FunctionCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;
    }
.end annotation


# static fields
.field public static final FUNCTION_FIELD_NUMBER:I = 0x2

.field public static final LIVE_ONLY_FIELD_NUMBER:I = 0x6

.field public static final NAME_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/tagmanager/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/Serving$FunctionCall;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_FIELD_NUMBER:I = 0x3

.field public static final SERVER_SIDE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

.field private static volatile mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private function_:I

.field private liveOnly_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:I

.field private property_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private serverSide_:Z

.field private final unknownFields:Lcom/google/tagmanager/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2891
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$1;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$1;-><init>()V

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    .line 3556
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>(Z)V

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->defaultInstance:Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 3557
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->defaultInstance:Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2806
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, -0x1

    .line 3006
    iput-byte v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->memoizedIsInitialized:B

    .line 3040
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->memoizedSerializedSize:I

    .line 2807
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->initFields()V

    .line 2809
    invoke-static {}, Lcom/google/tagmanager/protobuf/ByteString;->newOutput()Lcom/google/tagmanager/protobuf/ByteString$Output;

    move-result-object v0

    .line 2811
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-nez v2, :cond_c

    .line 2817
    :try_start_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readTag()I

    move-result v5

    if-eqz v5, :cond_a

    const/16 v6, 0x8

    if-eq v5, v6, :cond_9

    const/16 v6, 0x10

    if-eq v5, v6, :cond_8

    const/16 v6, 0x18

    if-eq v5, v6, :cond_6

    const/16 v6, 0x1a

    if-eq v5, v6, :cond_3

    const/16 v6, 0x20

    if-eq v5, v6, :cond_2

    const/16 v6, 0x30

    if-eq v5, v6, :cond_1

    .line 2823
    invoke-virtual {p0, p1, v1, p2, v5}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->parseUnknownField(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_2

    .line 2866
    :cond_1
    iget v5, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->bitField0_:I

    .line 2867
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly_:Z

    goto :goto_0

    .line 2861
    :cond_2
    iget v5, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->bitField0_:I

    .line 2862
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name_:I

    goto :goto_0

    .line 2848
    :cond_3
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v5

    .line 2849
    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v5

    and-int/lit8 v6, v3, 0x1

    if-eq v6, v4, :cond_4

    .line 2850
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_4

    .line 2851
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 2854
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_5

    .line 2855
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2857
    :cond_5
    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    :cond_6
    and-int/lit8 v5, v3, 0x1

    if-eq v5, v4, :cond_7

    .line 2841
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 2844
    :cond_7
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2835
    :cond_8
    iget v5, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->bitField0_:I

    or-int/2addr v5, v4

    iput v5, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->bitField0_:I

    .line 2836
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function_:I

    goto/16 :goto_0

    .line 2830
    :cond_9
    iget v5, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->bitField0_:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->bitField0_:I

    .line 2831
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide_:Z
    :try_end_0
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_a
    :goto_2
    move v2, v4

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 2875
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

    .line 2873
    invoke-virtual {p1, p0}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v3, 0x1

    if-ne p2, v4, :cond_b

    .line 2879
    iget-object p2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property_:Ljava/util/List;

    .line 2882
    :cond_b
    :try_start_2
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2886
    :catch_2
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    throw p1

    .line 2888
    :goto_4
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->makeExtensionsImmutable()V

    throw p1

    :cond_c
    and-int/lit8 p1, v3, 0x1

    if-ne p1, v4, :cond_d

    .line 2879
    iget-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property_:Ljava/util/List;

    .line 2882
    :cond_d
    :try_start_3
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2886
    :catch_3
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    goto :goto_5

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    throw p1

    .line 2888
    :goto_5
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;Lcom/google/analytics/containertag/proto/Serving$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2782
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1

    .line 2788
    invoke-direct {p0, p1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;)V

    const/4 v0, -0x1

    .line 3006
    iput-byte v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->memoizedIsInitialized:B

    .line 3040
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->memoizedSerializedSize:I

    .line 2789
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;Lcom/google/analytics/containertag/proto/Serving$1;)V
    .locals 0

    .line 2782
    invoke-direct {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 2791
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>()V

    const/4 p1, -0x1

    .line 3006
    iput-byte p1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->memoizedIsInitialized:B

    .line 3040
    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->memoizedSerializedSize:I

    .line 2791
    sget-object p1, Lcom/google/tagmanager/protobuf/ByteString;->EMPTY:Lcom/google/tagmanager/protobuf/ByteString;

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$3000(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;)Ljava/util/List;
    .locals 0

    .line 2782
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3002(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 2782
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;I)I
    .locals 0

    .line 2782
    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function_:I

    return p1
.end method

.method static synthetic access$3202(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;I)I
    .locals 0

    .line 2782
    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name_:I

    return p1
.end method

.method static synthetic access$3302(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;Z)Z
    .locals 0

    .line 2782
    iput-boolean p1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly_:Z

    return p1
.end method

.method static synthetic access$3402(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;Z)Z
    .locals 0

    .line 2782
    iput-boolean p1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide_:Z

    return p1
.end method

.method static synthetic access$3502(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;I)I
    .locals 0

    .line 2782
    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->bitField0_:I

    return p1
.end method

.method static synthetic access$3600(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;)Lcom/google/tagmanager/protobuf/ByteString;
    .locals 0

    .line 2782
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 1

    .line 2795
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->defaultInstance:Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 3000
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property_:Ljava/util/List;

    const/4 v0, 0x0

    .line 3001
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function_:I

    .line 3002
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name_:I

    .line 3003
    iput-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly_:Z

    .line 3004
    iput-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide_:Z

    return-void
.end method

.method public static newBuilder()Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;
    .locals 1

    .line 3216
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->access$2800()Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;
    .locals 1

    .line 3219
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->newBuilder()Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3196
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3202
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3166
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Lcom/google/tagmanager/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3172
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3207
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3213
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3186
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3192
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3176
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3182
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom([BLcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 3088
    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v1, :cond_1

    .line 3089
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3091
    :cond_1
    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 3094
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->getPropertyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->getPropertyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    .line 3096
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hasFunction()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hasFunction()Z

    move-result v3

    if-ne v1, v3, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    .line 3097
    :goto_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hasFunction()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v1, :cond_4

    .line 3098
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->getFunction()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->getFunction()I

    move-result v3

    if-ne v1, v3, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    move v1, v2

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 3101
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hasName()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hasName()Z

    move-result v3

    if-ne v1, v3, :cond_6

    move v1, v0

    goto :goto_3

    :cond_6
    move v1, v2

    .line 3102
    :goto_3
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hasName()Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v1, :cond_7

    .line 3103
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->getName()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->getName()I

    move-result v3

    if-ne v1, v3, :cond_7

    move v1, v0

    goto :goto_4

    :cond_7
    move v1, v2

    :cond_8
    :goto_4
    if-eqz v1, :cond_9

    .line 3106
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hasLiveOnly()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hasLiveOnly()Z

    move-result v3

    if-ne v1, v3, :cond_9

    move v1, v0

    goto :goto_5

    :cond_9
    move v1, v2

    .line 3107
    :goto_5
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hasLiveOnly()Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v1, :cond_a

    .line 3108
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->getLiveOnly()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->getLiveOnly()Z

    move-result v3

    if-ne v1, v3, :cond_a

    move v1, v0

    goto :goto_6

    :cond_a
    move v1, v2

    :cond_b
    :goto_6
    if-eqz v1, :cond_c

    .line 3111
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hasServerSide()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hasServerSide()Z

    move-result v3

    if-ne v1, v3, :cond_c

    move v1, v0

    goto :goto_7

    :cond_c
    move v1, v2

    .line 3112
    :goto_7
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hasServerSide()Z

    move-result v3

    if-eqz v3, :cond_e

    if-eqz v1, :cond_d

    .line 3113
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->getServerSide()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->getServerSide()Z

    move-result p1

    if-ne v1, p1, :cond_d

    move v1, v0

    goto :goto_8

    :cond_d
    move v1, v2

    :cond_e
    :goto_8
    return v1
.end method

.method public getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 1

    .line 2799
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->defaultInstance:Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 2782
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    move-result-object v0

    return-object v0
.end method

.method public getFunction()I
    .locals 1

    .line 2945
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function_:I

    return v0
.end method

.method public getLiveOnly()Z
    .locals 1

    .line 2979
    iget-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly_:Z

    return v0
.end method

.method public getName()I
    .locals 1

    .line 2962
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name_:I

    return v0
.end method

.method public getParserForType()Lcom/google/tagmanager/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/Serving$FunctionCall;",
            ">;"
        }
    .end annotation

    .line 2903
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-object v0
.end method

.method public getProperty(I)I
    .locals 1

    .line 2928
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getPropertyCount()I
    .locals 1

    .line 2922
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPropertyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2916
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 3042
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 3046
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 3047
    iget-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide_:Z

    invoke-static {v3, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    .line 3050
    :goto_0
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->bitField0_:I

    and-int/2addr v1, v3

    const/4 v4, 0x2

    if-ne v1, v3, :cond_2

    .line 3051
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function_:I

    invoke-static {v4, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    move v1, v2

    .line 3056
    :goto_1
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 3057
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property_:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v0, v1

    .line 3061
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->getPropertyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    .line 3063
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->bitField0_:I

    and-int/2addr v1, v4

    const/4 v2, 0x4

    if-ne v1, v4, :cond_4

    .line 3064
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name_:I

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3067
    :cond_4
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->bitField0_:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x6

    .line 3068
    iget-boolean v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly_:Z

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3071
    :cond_5
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 3072
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->memoizedSerializedSize:I

    return v0
.end method

.method public getServerSide()Z
    .locals 1

    .line 2996
    iget-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide_:Z

    return v0
.end method

.method public hasFunction()Z
    .locals 2

    .line 2939
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasLiveOnly()Z
    .locals 2

    .line 2973
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .line 2956
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->bitField0_:I

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

.method public hasServerSide()Z
    .locals 2

    .line 2990
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->bitField0_:I

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

    .line 3121
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 3122
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 3125
    const-class v1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3126
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->getPropertyCount()I

    move-result v1

    const/16 v2, 0x35

    const/16 v3, 0x25

    if-lez v1, :cond_1

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x3

    mul-int/2addr v0, v2

    .line 3128
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->getPropertyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3130
    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hasFunction()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, v2

    .line 3132
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->getFunction()I

    move-result v1

    add-int/2addr v0, v1

    .line 3134
    :cond_2
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hasName()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x4

    mul-int/2addr v0, v2

    .line 3136
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->getName()I

    move-result v1

    add-int/2addr v0, v1

    .line 3138
    :cond_3
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hasLiveOnly()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x6

    mul-int/2addr v0, v2

    .line 3140
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->getLiveOnly()Z

    move-result v1

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 3143
    :cond_4
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hasServerSide()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    .line 3145
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->getServerSide()Z

    move-result v0

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v0, v2

    :cond_5
    const/16 v1, 0x1d

    mul-int/2addr v1, v0

    .line 3148
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3149
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->memoizedHashCode:I

    return v1
.end method

.method protected internalMutableDefault()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 3157
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    const-string v0, "com.google.analytics.containertag.proto.MutableServing$FunctionCall"

    .line 3158
    invoke-static {v0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->internalMutableDefault(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

    .line 3160
    :cond_0
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 3008
    iget-byte v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->memoizedIsInitialized:B

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 3011
    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hasFunction()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3012
    iput-byte v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->memoizedIsInitialized:B

    return v1

    .line 3015
    :cond_2
    iput-byte v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->memoizedIsInitialized:B

    return v2
.end method

.method public newBuilderForType()Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;
    .locals 1

    .line 3217
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->newBuilder()Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 2782
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->newBuilderForType()Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;
    .locals 1

    .line 3221
    invoke-static {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->newBuilder(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 2782
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->toBuilder()Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;

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

    .line 3080
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3021
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->getSerializedSize()I

    .line 3022
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 3023
    iget-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3025
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->bitField0_:I

    and-int/2addr v0, v2

    const/4 v1, 0x2

    if-ne v0, v2, :cond_1

    .line 3026
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_1
    const/4 v0, 0x0

    .line 3028
    :goto_0
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    const/4 v2, 0x3

    .line 3029
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3031
    :cond_2
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->bitField0_:I

    and-int/2addr v0, v1

    const/4 v2, 0x4

    if-ne v0, v1, :cond_3

    .line 3032
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3034
    :cond_3
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4

    const/4 v0, 0x6

    .line 3035
    iget-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3037
    :cond_4
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/tagmanager/protobuf/ByteString;)V

    return-void
.end method
