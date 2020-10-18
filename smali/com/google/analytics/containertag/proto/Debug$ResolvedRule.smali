.class public final Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
.super Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
.source "Debug.java"

# interfaces
.implements Lcom/google/analytics/containertag/proto/Debug$ResolvedRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResolvedRule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/containertag/proto/Debug$ResolvedRule$Builder;
    }
.end annotation


# static fields
.field public static final ADD_MACROS_FIELD_NUMBER:I = 0x5

.field public static final ADD_TAGS_FIELD_NUMBER:I = 0x3

.field public static final NEGATIVE_PREDICATES_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/tagmanager/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSITIVE_PREDICATES_FIELD_NUMBER:I = 0x1

.field public static final REMOVE_MACROS_FIELD_NUMBER:I = 0x6

.field public static final REMOVE_TAGS_FIELD_NUMBER:I = 0x4

.field public static final RESULT_FIELD_NUMBER:I = 0x7

.field private static final defaultInstance:Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

.field private static volatile mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private addMacros_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;",
            ">;"
        }
    .end annotation
.end field

.field private addTags_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private negativePredicates_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;",
            ">;"
        }
    .end annotation
.end field

.field private positivePredicates_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;",
            ">;"
        }
    .end annotation
.end field

.field private removeMacros_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;",
            ">;"
        }
    .end annotation
.end field

.field private removeTags_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;",
            ">;"
        }
    .end annotation
.end field

.field private result_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

.field private final unknownFields:Lcom/google/tagmanager/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2033
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule$1;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule$1;-><init>()V

    sput-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    .line 3607
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;-><init>(Z)V

    sput-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->defaultInstance:Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    .line 3608
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->defaultInstance:Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1913
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, -0x1

    .line 2297
    iput-byte v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->memoizedIsInitialized:B

    .line 2375
    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->memoizedSerializedSize:I

    .line 1914
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->initFields()V

    .line 1916
    invoke-static {}, Lcom/google/tagmanager/protobuf/ByteString;->newOutput()Lcom/google/tagmanager/protobuf/ByteString$Output;

    move-result-object v0

    .line 1918
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x4

    const/16 v6, 0x8

    const/16 v7, 0x10

    const/16 v8, 0x20

    const/4 v9, 0x1

    if-nez v2, :cond_17

    .line 1924
    :try_start_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readTag()I

    move-result v10

    if-eqz v10, :cond_10

    const/16 v11, 0xa

    if-eq v10, v11, :cond_e

    const/16 v11, 0x12

    if-eq v10, v11, :cond_c

    const/16 v11, 0x1a

    if-eq v10, v11, :cond_a

    const/16 v11, 0x22

    if-eq v10, v11, :cond_8

    const/16 v11, 0x2a

    if-eq v10, v11, :cond_6

    const/16 v11, 0x32

    if-eq v10, v11, :cond_4

    const/16 v11, 0x3a

    if-eq v10, v11, :cond_1

    .line 1930
    invoke-virtual {p0, p1, v1, p2, v10}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->parseUnknownField(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;I)Z

    move-result v10

    if-nez v10, :cond_0

    goto/16 :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 1986
    iget v11, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->bitField0_:I

    and-int/2addr v11, v9

    if-ne v11, v9, :cond_2

    .line 1987
    iget-object v10, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v10}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->toBuilder()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v10

    .line 1989
    :cond_2
    sget-object v11, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/Parser;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v11

    check-cast v11, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v11, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v10, :cond_3

    .line 1991
    iget-object v11, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v10, v11}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mergeFrom(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    .line 1992
    invoke-virtual {v10}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->buildPartial()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v10

    iput-object v10, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 1994
    :cond_3
    iget v10, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->bitField0_:I

    or-int/2addr v10, v9

    iput v10, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->bitField0_:I

    goto :goto_0

    :cond_4
    and-int/lit8 v10, v3, 0x20

    if-eq v10, v8, :cond_5

    .line 1978
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x20

    .line 1981
    :cond_5
    iget-object v10, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros_:Ljava/util/List;

    sget-object v11, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/Parser;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    and-int/lit8 v10, v3, 0x10

    if-eq v10, v7, :cond_7

    .line 1970
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x10

    .line 1973
    :cond_7
    iget-object v10, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros_:Ljava/util/List;

    sget-object v11, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/Parser;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    and-int/lit8 v10, v3, 0x8

    if-eq v10, v6, :cond_9

    .line 1962
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x8

    .line 1965
    :cond_9
    iget-object v10, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags_:Ljava/util/List;

    sget-object v11, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/Parser;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    and-int/lit8 v10, v3, 0x4

    if-eq v10, v5, :cond_b

    .line 1954
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x4

    .line 1957
    :cond_b
    iget-object v10, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags_:Ljava/util/List;

    sget-object v11, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/Parser;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    and-int/lit8 v10, v3, 0x2

    if-eq v10, v4, :cond_d

    .line 1946
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 1949
    :cond_d
    iget-object v10, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates_:Ljava/util/List;

    sget-object v11, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/Parser;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    and-int/lit8 v10, v3, 0x1

    if-eq v10, v9, :cond_f

    .line 1938
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 1941
    :cond_f
    iget-object v10, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates_:Ljava/util/List;

    sget-object v11, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/Parser;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_10
    :goto_1
    move v2, v9

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2002
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

    .line 2000
    invoke-virtual {p1, p0}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x1

    if-ne p2, v9, :cond_11

    .line 2006
    iget-object p2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates_:Ljava/util/List;

    :cond_11
    and-int/lit8 p2, v3, 0x2

    if-ne p2, v4, :cond_12

    .line 2009
    iget-object p2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates_:Ljava/util/List;

    :cond_12
    and-int/lit8 p2, v3, 0x4

    if-ne p2, v5, :cond_13

    .line 2012
    iget-object p2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags_:Ljava/util/List;

    :cond_13
    and-int/lit8 p2, v3, 0x8

    if-ne p2, v6, :cond_14

    .line 2015
    iget-object p2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags_:Ljava/util/List;

    :cond_14
    and-int/lit8 p2, v3, 0x10

    if-ne p2, v7, :cond_15

    .line 2018
    iget-object p2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros_:Ljava/util/List;

    :cond_15
    and-int/lit8 p2, v3, 0x20

    if-ne p2, v8, :cond_16

    .line 2021
    iget-object p2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros_:Ljava/util/List;

    .line 2024
    :cond_16
    :try_start_2
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2028
    :catch_2
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    throw p1

    .line 2030
    :goto_3
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->makeExtensionsImmutable()V

    throw p1

    :cond_17
    and-int/lit8 p1, v3, 0x1

    if-ne p1, v9, :cond_18

    .line 2006
    iget-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates_:Ljava/util/List;

    :cond_18
    and-int/lit8 p1, v3, 0x2

    if-ne p1, v4, :cond_19

    .line 2009
    iget-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates_:Ljava/util/List;

    :cond_19
    and-int/lit8 p1, v3, 0x4

    if-ne p1, v5, :cond_1a

    .line 2012
    iget-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags_:Ljava/util/List;

    :cond_1a
    and-int/lit8 p1, v3, 0x8

    if-ne p1, v6, :cond_1b

    .line 2015
    iget-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags_:Ljava/util/List;

    :cond_1b
    and-int/lit8 p1, v3, 0x10

    if-ne p1, v7, :cond_1c

    .line 2018
    iget-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros_:Ljava/util/List;

    :cond_1c
    and-int/lit8 p1, v3, 0x20

    if-ne p1, v8, :cond_1d

    .line 2021
    iget-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros_:Ljava/util/List;

    .line 2024
    :cond_1d
    :try_start_3
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2028
    :catch_3
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    throw p1

    .line 2030
    :goto_4
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;Lcom/google/analytics/containertag/proto/Debug$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1889
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;-><init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1

    .line 1895
    invoke-direct {p0, p1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;)V

    const/4 v0, -0x1

    .line 2297
    iput-byte v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->memoizedIsInitialized:B

    .line 2375
    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->memoizedSerializedSize:I

    .line 1896
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;Lcom/google/analytics/containertag/proto/Debug$1;)V
    .locals 0

    .line 1889
    invoke-direct {p0, p1}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 1898
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>()V

    const/4 p1, -0x1

    .line 2297
    iput-byte p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->memoizedIsInitialized:B

    .line 2375
    iput p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->memoizedSerializedSize:I

    .line 1898
    sget-object p1, Lcom/google/tagmanager/protobuf/ByteString;->EMPTY:Lcom/google/tagmanager/protobuf/ByteString;

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$1900(Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;)Ljava/util/List;
    .locals 0

    .line 1889
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1889
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;)Ljava/util/List;
    .locals 0

    .line 1889
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1889
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;)Ljava/util/List;
    .locals 0

    .line 1889
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1889
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;)Ljava/util/List;
    .locals 0

    .line 1889
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1889
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;)Ljava/util/List;
    .locals 0

    .line 1889
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1889
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;)Ljava/util/List;
    .locals 0

    .line 1889
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1889
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 0

    .line 1889
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;I)I
    .locals 0

    .line 1889
    iput p1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->bitField0_:I

    return p1
.end method

.method static synthetic access$2700(Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;)Lcom/google/tagmanager/protobuf/ByteString;
    .locals 0

    .line 1889
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    .locals 1

    .line 1902
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->defaultInstance:Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 2289
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates_:Ljava/util/List;

    .line 2290
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates_:Ljava/util/List;

    .line 2291
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags_:Ljava/util/List;

    .line 2292
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags_:Ljava/util/List;

    .line 2293
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros_:Ljava/util/List;

    .line 2294
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros_:Ljava/util/List;

    .line 2295
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getDefaultInstance()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-void
.end method

.method public static newBuilder()Lcom/google/analytics/containertag/proto/Debug$ResolvedRule$Builder;
    .locals 1

    .line 2555
    invoke-static {}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule$Builder;->access$1700()Lcom/google/analytics/containertag/proto/Debug$ResolvedRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;)Lcom/google/analytics/containertag/proto/Debug$ResolvedRule$Builder;
    .locals 1

    .line 2558
    invoke-static {}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->newBuilder()Lcom/google/analytics/containertag/proto/Debug$ResolvedRule$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;)Lcom/google/analytics/containertag/proto/Debug$ResolvedRule$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2535
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2541
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2505
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Lcom/google/tagmanager/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2511
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;)Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2546
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2552
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2525
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2531
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2515
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2521
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom([BLcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 2426
    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    if-nez v1, :cond_1

    .line 2427
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2429
    :cond_1
    check-cast p1, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    .line 2432
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getPositivePredicatesList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getPositivePredicatesList()Ljava/util/List;

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

    .line 2434
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getNegativePredicatesList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getNegativePredicatesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 2436
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getAddTagsList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getAddTagsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    .line 2438
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getRemoveTagsList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getRemoveTagsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v0

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    if-eqz v1, :cond_6

    .line 2440
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getAddMacrosList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getAddMacrosList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v0

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    if-eqz v1, :cond_7

    .line 2442
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getRemoveMacrosList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getRemoveMacrosList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v0

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    if-eqz v1, :cond_8

    .line 2444
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->hasResult()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->hasResult()Z

    move-result v3

    if-ne v1, v3, :cond_8

    move v1, v0

    goto :goto_6

    :cond_8
    move v1, v2

    .line 2445
    :goto_6
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->hasResult()Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v1, :cond_9

    .line 2446
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getResult()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getResult()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    move v1, v0

    goto :goto_7

    :cond_9
    move v1, v2

    :cond_a
    :goto_7
    return v1
.end method

.method public getAddMacros(I)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .locals 1

    .line 2224
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    return-object p1
.end method

.method public getAddMacrosCount()I
    .locals 1

    .line 2218
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAddMacrosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;",
            ">;"
        }
    .end annotation

    .line 2205
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros_:Ljava/util/List;

    return-object v0
.end method

.method public getAddMacrosOrBuilder(I)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCallOrBuilder;
    .locals 1

    .line 2231
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCallOrBuilder;

    return-object p1
.end method

.method public getAddMacrosOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCallOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2212
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros_:Ljava/util/List;

    return-object v0
.end method

.method public getAddTags(I)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .locals 1

    .line 2150
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    return-object p1
.end method

.method public getAddTagsCount()I
    .locals 1

    .line 2144
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAddTagsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;",
            ">;"
        }
    .end annotation

    .line 2131
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags_:Ljava/util/List;

    return-object v0
.end method

.method public getAddTagsOrBuilder(I)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCallOrBuilder;
    .locals 1

    .line 2157
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCallOrBuilder;

    return-object p1
.end method

.method public getAddTagsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCallOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2138
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags_:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    .locals 1

    .line 1906
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->defaultInstance:Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 1889
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    move-result-object v0

    return-object v0
.end method

.method public getNegativePredicates(I)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .locals 1

    .line 2113
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    return-object p1
.end method

.method public getNegativePredicatesCount()I
    .locals 1

    .line 2107
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNegativePredicatesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;",
            ">;"
        }
    .end annotation

    .line 2094
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates_:Ljava/util/List;

    return-object v0
.end method

.method public getNegativePredicatesOrBuilder(I)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCallOrBuilder;
    .locals 1

    .line 2120
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCallOrBuilder;

    return-object p1
.end method

.method public getNegativePredicatesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCallOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2101
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/tagmanager/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;",
            ">;"
        }
    .end annotation

    .line 2045
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-object v0
.end method

.method public getPositivePredicates(I)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .locals 1

    .line 2076
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    return-object p1
.end method

.method public getPositivePredicatesCount()I
    .locals 1

    .line 2070
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPositivePredicatesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;",
            ">;"
        }
    .end annotation

    .line 2057
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates_:Ljava/util/List;

    return-object v0
.end method

.method public getPositivePredicatesOrBuilder(I)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCallOrBuilder;
    .locals 1

    .line 2083
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCallOrBuilder;

    return-object p1
.end method

.method public getPositivePredicatesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCallOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2064
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates_:Ljava/util/List;

    return-object v0
.end method

.method public getRemoveMacros(I)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .locals 1

    .line 2261
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    return-object p1
.end method

.method public getRemoveMacrosCount()I
    .locals 1

    .line 2255
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRemoveMacrosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;",
            ">;"
        }
    .end annotation

    .line 2242
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros_:Ljava/util/List;

    return-object v0
.end method

.method public getRemoveMacrosOrBuilder(I)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCallOrBuilder;
    .locals 1

    .line 2268
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCallOrBuilder;

    return-object p1
.end method

.method public getRemoveMacrosOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCallOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2249
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros_:Ljava/util/List;

    return-object v0
.end method

.method public getRemoveTags(I)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .locals 1

    .line 2187
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    return-object p1
.end method

.method public getRemoveTagsCount()I
    .locals 1

    .line 2181
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRemoveTagsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;",
            ">;"
        }
    .end annotation

    .line 2168
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags_:Ljava/util/List;

    return-object v0
.end method

.method public getRemoveTagsOrBuilder(I)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCallOrBuilder;
    .locals 1

    .line 2194
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCallOrBuilder;

    return-object p1
.end method

.method public getRemoveTagsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCallOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2175
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags_:Ljava/util/List;

    return-object v0
.end method

.method public getResult()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 1

    .line 2285
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 2377
    iget v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 2381
    :goto_0
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    .line 2382
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 2385
    :goto_1
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    const/4 v3, 0x2

    .line 2386
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates_:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-static {v3, v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    .line 2389
    :goto_2
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    const/4 v3, 0x3

    .line 2390
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags_:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-static {v3, v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v0

    .line 2393
    :goto_3
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    const/4 v3, 0x4

    .line 2394
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags_:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-static {v3, v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    move v1, v0

    .line 2397
    :goto_4
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    const/4 v3, 0x5

    .line 2398
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros_:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-static {v3, v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2401
    :cond_5
    :goto_5
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    const/4 v1, 0x6

    .line 2402
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2405
    :cond_6
    iget v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->bitField0_:I

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_7

    const/4 v0, 0x7

    .line 2406
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 2409
    :cond_7
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v0

    add-int/2addr v2, v0

    .line 2410
    iput v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->memoizedSerializedSize:I

    return v2
.end method

.method public hasResult()Z
    .locals 2

    .line 2279
    iget v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->bitField0_:I

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

    .line 2454
    iget v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 2455
    iget v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2458
    const-class v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2459
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getPositivePredicatesCount()I

    move-result v1

    const/16 v2, 0x35

    const/16 v3, 0x25

    if-lez v1, :cond_1

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v2

    .line 2461
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getPositivePredicatesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2463
    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getNegativePredicatesCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, v2

    .line 2465
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getNegativePredicatesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2467
    :cond_2
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getAddTagsCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x3

    mul-int/2addr v0, v2

    .line 2469
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getAddTagsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2471
    :cond_3
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getRemoveTagsCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x4

    mul-int/2addr v0, v2

    .line 2473
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getRemoveTagsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2475
    :cond_4
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getAddMacrosCount()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x5

    mul-int/2addr v0, v2

    .line 2477
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getAddMacrosList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2479
    :cond_5
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getRemoveMacrosCount()I

    move-result v1

    if-lez v1, :cond_6

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x6

    mul-int/2addr v0, v2

    .line 2481
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getRemoveMacrosList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2483
    :cond_6
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x7

    mul-int/2addr v2, v3

    .line 2485
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getResult()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    :cond_7
    const/16 v1, 0x1d

    mul-int/2addr v1, v0

    .line 2487
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 2488
    iput v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->memoizedHashCode:I

    return v1
.end method

.method protected internalMutableDefault()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 2496
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    const-string v0, "com.google.analytics.containertag.proto.MutableDebug$ResolvedRule"

    .line 2497
    invoke-static {v0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->internalMutableDefault(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

    .line 2499
    :cond_0
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 2299
    iget-byte v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->memoizedIsInitialized:B

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

    .line 2302
    :goto_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getPositivePredicatesCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 2303
    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getPositivePredicates(I)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2304
    iput-byte v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->memoizedIsInitialized:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 2308
    :goto_2
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getNegativePredicatesCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 2309
    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getNegativePredicates(I)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2310
    iput-byte v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->memoizedIsInitialized:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v2

    .line 2314
    :goto_3
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getAddTagsCount()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 2315
    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getAddTags(I)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    .line 2316
    iput-byte v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->memoizedIsInitialized:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    move v0, v2

    .line 2320
    :goto_4
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getRemoveTagsCount()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 2321
    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getRemoveTags(I)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_8

    .line 2322
    iput-byte v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->memoizedIsInitialized:B

    return v2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    move v0, v2

    .line 2326
    :goto_5
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getAddMacrosCount()I

    move-result v3

    if-ge v0, v3, :cond_b

    .line 2327
    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getAddMacros(I)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_a

    .line 2328
    iput-byte v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->memoizedIsInitialized:B

    return v2

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    move v0, v2

    .line 2332
    :goto_6
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getRemoveMacrosCount()I

    move-result v3

    if-ge v0, v3, :cond_d

    .line 2333
    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getRemoveMacros(I)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_c

    .line 2334
    iput-byte v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->memoizedIsInitialized:B

    return v2

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2338
    :cond_d
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2339
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getResult()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2340
    iput-byte v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->memoizedIsInitialized:B

    return v2

    .line 2344
    :cond_e
    iput-byte v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/analytics/containertag/proto/Debug$ResolvedRule$Builder;
    .locals 1

    .line 2556
    invoke-static {}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->newBuilder()Lcom/google/analytics/containertag/proto/Debug$ResolvedRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 1889
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->newBuilderForType()Lcom/google/analytics/containertag/proto/Debug$ResolvedRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/analytics/containertag/proto/Debug$ResolvedRule$Builder;
    .locals 1

    .line 2560
    invoke-static {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->newBuilder(Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;)Lcom/google/analytics/containertag/proto/Debug$ResolvedRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 1889
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->toBuilder()Lcom/google/analytics/containertag/proto/Debug$ResolvedRule$Builder;

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

    .line 2418
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2350
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->getSerializedSize()I

    const/4 v0, 0x0

    move v1, v0

    .line 2351
    :goto_0
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 2352
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-virtual {p1, v3, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessage(ILcom/google/tagmanager/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 2354
    :goto_1
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x2

    .line 2355
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-virtual {p1, v2, v4}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessage(ILcom/google/tagmanager/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 2357
    :goto_2
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    .line 2358
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-virtual {p1, v2, v4}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessage(ILcom/google/tagmanager/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    .line 2360
    :goto_3
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x4

    .line 2361
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-virtual {p1, v2, v4}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessage(ILcom/google/tagmanager/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move v1, v0

    .line 2363
    :goto_4
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x5

    .line 2364
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-virtual {p1, v2, v4}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessage(ILcom/google/tagmanager/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2366
    :cond_4
    :goto_5
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    const/4 v1, 0x6

    .line 2367
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessage(ILcom/google/tagmanager/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2369
    :cond_5
    iget v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->bitField0_:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_6

    const/4 v0, 0x7

    .line 2370
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessage(ILcom/google/tagmanager/protobuf/MessageLite;)V

    .line 2372
    :cond_6
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/tagmanager/protobuf/ByteString;)V

    return-void
.end method
