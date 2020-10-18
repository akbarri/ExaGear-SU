.class public final Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
.super Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
.source "Debug.java"

# interfaces
.implements Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCallOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResolvedFunctionCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall$Builder;
    }
.end annotation


# static fields
.field public static final ASSOCIATED_RULE_NAME_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/tagmanager/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTIES_FIELD_NUMBER:I = 0x1

.field public static final RESULT_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

.field private static volatile mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private associatedRuleName_:Ljava/lang/Object;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private properties_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;",
            ">;"
        }
    .end annotation
.end field

.field private result_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

.field private final unknownFields:Lcom/google/tagmanager/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3753
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall$1;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall$1;-><init>()V

    sput-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    .line 4450
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>(Z)V

    sput-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->defaultInstance:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 4451
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->defaultInstance:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3682
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, -0x1

    .line 3872
    iput-byte v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->memoizedIsInitialized:B

    .line 3908
    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->memoizedSerializedSize:I

    .line 3683
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->initFields()V

    .line 3685
    invoke-static {}, Lcom/google/tagmanager/protobuf/ByteString;->newOutput()Lcom/google/tagmanager/protobuf/ByteString$Output;

    move-result-object v0

    .line 3687
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-nez v2, :cond_9

    .line 3693
    :try_start_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readTag()I

    move-result v5

    if-eqz v5, :cond_7

    const/16 v6, 0xa

    if-eq v5, v6, :cond_5

    const/16 v6, 0x12

    if-eq v5, v6, :cond_2

    const/16 v6, 0x1a

    if-eq v5, v6, :cond_1

    .line 3699
    invoke-virtual {p0, p1, v1, p2, v5}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->parseUnknownField(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 3727
    :cond_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readBytes()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v5

    .line 3728
    iget v6, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->bitField0_:I

    .line 3729
    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName_:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 3715
    iget v6, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->bitField0_:I

    and-int/2addr v6, v4

    if-ne v6, v4, :cond_3

    .line 3716
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v5}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->toBuilder()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v5

    .line 3718
    :cond_3
    sget-object v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/Parser;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v6, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v5, :cond_4

    .line 3720
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v5, v6}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mergeFrom(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    .line 3721
    invoke-virtual {v5}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->buildPartial()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v5

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 3723
    :cond_4
    iget v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->bitField0_:I

    or-int/2addr v5, v4

    iput v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->bitField0_:I

    goto :goto_0

    :cond_5
    and-int/lit8 v5, v3, 0x1

    if-eq v5, v4, :cond_6

    .line 3707
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 3710
    :cond_6
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    sget-object v6, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/Parser;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_7
    :goto_1
    move v2, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 3737
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

    .line 3735
    invoke-virtual {p1, p0}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x1

    if-ne p2, v4, :cond_8

    .line 3741
    iget-object p2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    .line 3744
    :cond_8
    :try_start_2
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3748
    :catch_2
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    throw p1

    .line 3750
    :goto_3
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->makeExtensionsImmutable()V

    throw p1

    :cond_9
    and-int/lit8 p1, v3, 0x1

    if-ne p1, v4, :cond_a

    .line 3741
    iget-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    .line 3744
    :cond_a
    :try_start_3
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3748
    :catch_3
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    throw p1

    .line 3750
    :goto_4
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;Lcom/google/analytics/containertag/proto/Debug$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3658
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1

    .line 3664
    invoke-direct {p0, p1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;)V

    const/4 v0, -0x1

    .line 3872
    iput-byte v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->memoizedIsInitialized:B

    .line 3908
    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->memoizedSerializedSize:I

    .line 3665
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;Lcom/google/analytics/containertag/proto/Debug$1;)V
    .locals 0

    .line 3658
    invoke-direct {p0, p1}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 3667
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>()V

    const/4 p1, -0x1

    .line 3872
    iput-byte p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->memoizedIsInitialized:B

    .line 3908
    iput p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->memoizedSerializedSize:I

    .line 3667
    sget-object p1, Lcom/google/tagmanager/protobuf/ByteString;->EMPTY:Lcom/google/tagmanager/protobuf/ByteString;

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$3100(Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;)Ljava/util/List;
    .locals 0

    .line 3658
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3102(Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 3658
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 0

    .line 3658
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;)Ljava/lang/Object;
    .locals 0

    .line 3658
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3302(Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3658
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;I)I
    .locals 0

    .line 3658
    iput p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->bitField0_:I

    return p1
.end method

.method static synthetic access$3500(Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;)Lcom/google/tagmanager/protobuf/ByteString;
    .locals 0

    .line 3658
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .locals 1

    .line 3671
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->defaultInstance:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 3868
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    .line 3869
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getDefaultInstance()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    const-string v0, ""

    .line 3870
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName_:Ljava/lang/Object;

    return-void
.end method

.method public static newBuilder()Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall$Builder;
    .locals 1

    .line 4051
    invoke-static {}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall$Builder;->access$2900()Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall$Builder;
    .locals 1

    .line 4054
    invoke-static {}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->newBuilder()Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4031
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4037
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4001
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Lcom/google/tagmanager/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4007
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4042
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4048
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4021
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4027
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4011
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4017
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom([BLcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 3943
    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v1, :cond_1

    .line 3944
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3946
    :cond_1
    check-cast p1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 3949
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->getPropertiesList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->getPropertiesList()Ljava/util/List;

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

    .line 3951
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->hasResult()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->hasResult()Z

    move-result v3

    if-ne v1, v3, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    .line 3952
    :goto_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->hasResult()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v1, :cond_4

    .line 3953
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->getResult()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->getResult()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    move v1, v2

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 3956
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->hasAssociatedRuleName()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->hasAssociatedRuleName()Z

    move-result v3

    if-ne v1, v3, :cond_6

    move v1, v0

    goto :goto_3

    :cond_6
    move v1, v2

    .line 3957
    :goto_3
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->hasAssociatedRuleName()Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v1, :cond_7

    .line 3958
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->getAssociatedRuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->getAssociatedRuleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    move v1, v0

    goto :goto_4

    :cond_7
    move v1, v2

    :cond_8
    :goto_4
    return v1
.end method

.method public getAssociatedRuleName()Ljava/lang/String;
    .locals 2

    .line 3837
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName_:Ljava/lang/Object;

    .line 3838
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3839
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3841
    :cond_0
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    .line 3843
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3844
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3845
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getAssociatedRuleNameBytes()Lcom/google/tagmanager/protobuf/ByteString;
    .locals 2

    .line 3855
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName_:Ljava/lang/Object;

    .line 3856
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3857
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    .line 3860
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName_:Ljava/lang/Object;

    return-object v0

    .line 3863
    :cond_0
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .locals 1

    .line 3675
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->defaultInstance:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 3658
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/tagmanager/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;",
            ">;"
        }
    .end annotation

    .line 3765
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-object v0
.end method

.method public getProperties(I)Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    .locals 1

    .line 3796
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    return-object p1
.end method

.method public getPropertiesCount()I
    .locals 1

    .line 3790
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPropertiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;",
            ">;"
        }
    .end annotation

    .line 3777
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    return-object v0
.end method

.method public getPropertiesOrBuilder(I)Lcom/google/analytics/containertag/proto/Debug$ResolvedPropertyOrBuilder;
    .locals 1

    .line 3803
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/Debug$ResolvedPropertyOrBuilder;

    return-object p1
.end method

.method public getPropertiesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/analytics/containertag/proto/Debug$ResolvedPropertyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3784
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    return-object v0
.end method

.method public getResult()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 1

    .line 3820
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 3910
    iget v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 3914
    :goto_0
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    .line 3915
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3918
    :cond_1
    iget v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->bitField0_:I

    and-int/2addr v0, v3

    const/4 v2, 0x2

    if-ne v0, v3, :cond_2

    .line 3919
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v2, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v1, v0

    .line 3922
    :cond_2
    iget v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    const/4 v0, 0x3

    .line 3923
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->getAssociatedRuleNameBytes()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/tagmanager/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v1, v0

    .line 3926
    :cond_3
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v0

    add-int/2addr v1, v0

    .line 3927
    iput v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->memoizedSerializedSize:I

    return v1
.end method

.method public hasAssociatedRuleName()Z
    .locals 2

    .line 3831
    iget v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->bitField0_:I

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

.method public hasResult()Z
    .locals 2

    .line 3814
    iget v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->bitField0_:I

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

    .line 3966
    iget v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 3967
    iget v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 3970
    const-class v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3971
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->getPropertiesCount()I

    move-result v1

    const/16 v2, 0x35

    const/16 v3, 0x25

    if-lez v1, :cond_1

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v2

    .line 3973
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->getPropertiesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3975
    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, v2

    .line 3977
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->getResult()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3979
    :cond_2
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->hasAssociatedRuleName()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x3

    mul-int/2addr v2, v3

    .line 3981
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->getAssociatedRuleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    :cond_3
    const/16 v1, 0x1d

    mul-int/2addr v1, v0

    .line 3983
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3984
    iput v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->memoizedHashCode:I

    return v1
.end method

.method protected internalMutableDefault()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 3992
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    const-string v0, "com.google.analytics.containertag.proto.MutableDebug$ResolvedFunctionCall"

    .line 3993
    invoke-static {v0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->internalMutableDefault(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

    .line 3995
    :cond_0
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 3874
    iget-byte v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->memoizedIsInitialized:B

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

    :cond_1
    move v0, v2

    .line 3877
    :goto_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->getPropertiesCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 3878
    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->getProperties(I)Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3879
    iput-byte v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->memoizedIsInitialized:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3883
    :cond_3
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3884
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->getResult()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3885
    iput-byte v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->memoizedIsInitialized:B

    return v2

    .line 3889
    :cond_4
    iput-byte v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall$Builder;
    .locals 1

    .line 4052
    invoke-static {}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->newBuilder()Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 3658
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->newBuilderForType()Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall$Builder;
    .locals 1

    .line 4056
    invoke-static {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->newBuilder(Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 3658
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->toBuilder()Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall$Builder;

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

    .line 3935
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3895
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->getSerializedSize()I

    const/4 v0, 0x0

    .line 3896
    :goto_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 3897
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessage(ILcom/google/tagmanager/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3899
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->bitField0_:I

    and-int/2addr v0, v2

    const/4 v1, 0x2

    if-ne v0, v2, :cond_1

    .line 3900
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessage(ILcom/google/tagmanager/protobuf/MessageLite;)V

    .line 3902
    :cond_1
    iget v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 3903
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->getAssociatedRuleNameBytes()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeBytes(ILcom/google/tagmanager/protobuf/ByteString;)V

    .line 3905
    :cond_2
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/tagmanager/protobuf/ByteString;)V

    return-void
.end method
