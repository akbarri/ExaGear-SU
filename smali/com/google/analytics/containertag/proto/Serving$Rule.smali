.class public final Lcom/google/analytics/containertag/proto/Serving$Rule;
.super Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
.source "Serving.java"

# interfaces
.implements Lcom/google/analytics/containertag/proto/Serving$RuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    }
.end annotation


# static fields
.field public static final ADD_MACRO_FIELD_NUMBER:I = 0x7

.field public static final ADD_MACRO_RULE_NAME_FIELD_NUMBER:I = 0x9

.field public static final ADD_TAG_FIELD_NUMBER:I = 0x3

.field public static final ADD_TAG_RULE_NAME_FIELD_NUMBER:I = 0x5

.field public static final NEGATIVE_PREDICATE_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/tagmanager/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/Serving$Rule;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSITIVE_PREDICATE_FIELD_NUMBER:I = 0x1

.field public static final REMOVE_MACRO_FIELD_NUMBER:I = 0x8

.field public static final REMOVE_MACRO_RULE_NAME_FIELD_NUMBER:I = 0xa

.field public static final REMOVE_TAG_FIELD_NUMBER:I = 0x4

.field public static final REMOVE_TAG_RULE_NAME_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lcom/google/analytics/containertag/proto/Serving$Rule;

.field private static volatile mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private addMacroRuleName_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private addMacro_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private addTagRuleName_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private addTag_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private negativePredicate_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private positivePredicate_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private removeMacroRuleName_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private removeMacro_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private removeTagRuleName_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private removeTag_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final unknownFields:Lcom/google/tagmanager/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4005
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Rule$1;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Rule$1;-><init>()V

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    .line 5491
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Rule;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$Rule;-><init>(Z)V

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->defaultInstance:Lcom/google/analytics/containertag/proto/Serving$Rule;

    .line 5492
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->defaultInstance:Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 3724
    invoke-direct/range {p0 .. p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v3, -0x1

    .line 4272
    iput-byte v3, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->memoizedIsInitialized:B

    .line 4317
    iput v3, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->memoizedSerializedSize:I

    .line 3725
    invoke-direct/range {p0 .. p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->initFields()V

    .line 3727
    invoke-static {}, Lcom/google/tagmanager/protobuf/ByteString;->newOutput()Lcom/google/tagmanager/protobuf/ByteString$Output;

    move-result-object v3

    .line 3729
    invoke-static {v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :cond_0
    :goto_0
    const/16 v10, 0x10

    const/16 v11, 0x20

    const/16 v12, 0x40

    const/16 v13, 0x80

    const/16 v14, 0x100

    const/16 v15, 0x200

    if-nez v5, :cond_29

    .line 3735
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readTag()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    move-object/from16 v8, p2

    .line 3741
    invoke-virtual {v1, v2, v4, v8, v7}, Lcom/google/analytics/containertag/proto/Serving$Rule;->parseUnknownField(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    goto/16 :goto_d

    .line 3945
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v7

    .line 3946
    invoke-virtual {v2, v7}, Lcom/google/tagmanager/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v7

    and-int/lit16 v8, v6, 0x200

    if-eq v8, v15, :cond_1

    .line 3947
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_1

    .line 3948
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName_:Ljava/util/List;

    or-int/lit16 v6, v6, 0x200

    .line 3951
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_2

    .line 3952
    iget-object v8, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3954
    :cond_2
    invoke-virtual {v2, v7}, Lcom/google/tagmanager/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_b

    :sswitch_1
    and-int/lit16 v7, v6, 0x200

    if-eq v7, v15, :cond_3

    .line 3938
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName_:Ljava/util/List;

    or-int/lit16 v6, v6, 0x200

    .line 3941
    :cond_3
    iget-object v7, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 3924
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v7

    .line 3925
    invoke-virtual {v2, v7}, Lcom/google/tagmanager/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v7

    and-int/lit16 v8, v6, 0x100

    if-eq v8, v14, :cond_4

    .line 3926
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_4

    .line 3927
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName_:Ljava/util/List;

    or-int/lit16 v6, v6, 0x100

    .line 3930
    :cond_4
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_5

    .line 3931
    iget-object v8, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3933
    :cond_5
    invoke-virtual {v2, v7}, Lcom/google/tagmanager/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_b

    :sswitch_3
    and-int/lit16 v7, v6, 0x100

    if-eq v7, v14, :cond_6

    .line 3917
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName_:Ljava/util/List;

    or-int/lit16 v6, v6, 0x100

    .line 3920
    :cond_6
    iget-object v7, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 3903
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v7

    .line 3904
    invoke-virtual {v2, v7}, Lcom/google/tagmanager/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v7

    and-int/lit16 v8, v6, 0x80

    if-eq v8, v13, :cond_7

    .line 3905
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_7

    .line 3906
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro_:Ljava/util/List;

    or-int/lit16 v6, v6, 0x80

    .line 3909
    :cond_7
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_8

    .line 3910
    iget-object v8, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3912
    :cond_8
    invoke-virtual {v2, v7}, Lcom/google/tagmanager/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_b

    :sswitch_5
    and-int/lit16 v7, v6, 0x80

    if-eq v7, v13, :cond_9

    .line 3896
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro_:Ljava/util/List;

    or-int/lit16 v6, v6, 0x80

    .line 3899
    :cond_9
    iget-object v7, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 3882
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v7

    .line 3883
    invoke-virtual {v2, v7}, Lcom/google/tagmanager/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v7

    and-int/lit8 v8, v6, 0x40

    if-eq v8, v12, :cond_a

    .line 3884
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_a

    .line 3885
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro_:Ljava/util/List;

    or-int/lit8 v6, v6, 0x40

    .line 3888
    :cond_a
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_b

    .line 3889
    iget-object v8, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3891
    :cond_b
    invoke-virtual {v2, v7}, Lcom/google/tagmanager/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_b

    :sswitch_7
    and-int/lit8 v7, v6, 0x40

    if-eq v7, v12, :cond_c

    .line 3875
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro_:Ljava/util/List;

    or-int/lit8 v6, v6, 0x40

    .line 3878
    :cond_c
    iget-object v7, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 3861
    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v7

    .line 3862
    invoke-virtual {v2, v7}, Lcom/google/tagmanager/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v7

    and-int/lit8 v8, v6, 0x20

    if-eq v8, v11, :cond_d

    .line 3863
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_d

    .line 3864
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName_:Ljava/util/List;

    or-int/lit8 v6, v6, 0x20

    .line 3867
    :cond_d
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_e

    .line 3868
    iget-object v8, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3870
    :cond_e
    invoke-virtual {v2, v7}, Lcom/google/tagmanager/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_b

    :sswitch_9
    and-int/lit8 v7, v6, 0x20

    if-eq v7, v11, :cond_f

    .line 3854
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName_:Ljava/util/List;

    or-int/lit8 v6, v6, 0x20

    .line 3857
    :cond_f
    iget-object v7, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 3840
    :sswitch_a
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v7

    .line 3841
    invoke-virtual {v2, v7}, Lcom/google/tagmanager/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v7

    and-int/lit8 v8, v6, 0x10

    if-eq v8, v10, :cond_10

    .line 3842
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_10

    .line 3843
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName_:Ljava/util/List;

    or-int/lit8 v6, v6, 0x10

    .line 3846
    :cond_10
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_11

    .line 3847
    iget-object v8, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 3849
    :cond_11
    invoke-virtual {v2, v7}, Lcom/google/tagmanager/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_b

    :sswitch_b
    and-int/lit8 v7, v6, 0x10

    if-eq v7, v10, :cond_12

    .line 3833
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName_:Ljava/util/List;

    or-int/lit8 v6, v6, 0x10

    .line 3836
    :cond_12
    iget-object v7, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 3819
    :sswitch_c
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v7

    .line 3820
    invoke-virtual {v2, v7}, Lcom/google/tagmanager/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v7

    and-int/lit8 v8, v6, 0x8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_13

    .line 3821
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_13

    .line 3822
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag_:Ljava/util/List;

    or-int/lit8 v6, v6, 0x8

    .line 3825
    :cond_13
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_14

    .line 3826
    iget-object v8, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 3828
    :cond_14
    invoke-virtual {v2, v7}, Lcom/google/tagmanager/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_b

    :sswitch_d
    and-int/lit8 v7, v6, 0x8

    const/16 v8, 0x8

    if-eq v7, v8, :cond_15

    .line 3812
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag_:Ljava/util/List;

    or-int/lit8 v6, v6, 0x8

    .line 3815
    :cond_15
    iget-object v7, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 3798
    :sswitch_e
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v7

    .line 3799
    invoke-virtual {v2, v7}, Lcom/google/tagmanager/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v7

    and-int/lit8 v8, v6, 0x4

    const/4 v9, 0x4

    if-eq v8, v9, :cond_16

    .line 3800
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_16

    .line 3801
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag_:Ljava/util/List;

    or-int/lit8 v6, v6, 0x4

    .line 3804
    :cond_16
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_17

    .line 3805
    iget-object v8, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 3807
    :cond_17
    invoke-virtual {v2, v7}, Lcom/google/tagmanager/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_b

    :sswitch_f
    and-int/lit8 v7, v6, 0x4

    const/4 v8, 0x4

    if-eq v7, v8, :cond_18

    .line 3791
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag_:Ljava/util/List;

    or-int/lit8 v6, v6, 0x4

    .line 3794
    :cond_18
    iget-object v7, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 3777
    :sswitch_10
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v7

    .line 3778
    invoke-virtual {v2, v7}, Lcom/google/tagmanager/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v7

    and-int/lit8 v8, v6, 0x2

    const/4 v9, 0x2

    if-eq v8, v9, :cond_19

    .line 3779
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_19

    .line 3780
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate_:Ljava/util/List;

    or-int/lit8 v6, v6, 0x2

    .line 3783
    :cond_19
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_1a

    .line 3784
    iget-object v8, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 3786
    :cond_1a
    invoke-virtual {v2, v7}, Lcom/google/tagmanager/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_b

    :sswitch_11
    and-int/lit8 v7, v6, 0x2

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1b

    .line 3770
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate_:Ljava/util/List;

    or-int/lit8 v6, v6, 0x2

    .line 3773
    :cond_1b
    iget-object v7, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 3756
    :sswitch_12
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v7

    .line 3757
    invoke-virtual {v2, v7}, Lcom/google/tagmanager/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v7

    and-int/lit8 v8, v6, 0x1

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1c

    .line 3758
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_1c

    .line 3759
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate_:Ljava/util/List;

    or-int/lit8 v6, v6, 0x1

    .line 3762
    :cond_1c
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_1d

    .line 3763
    iget-object v8, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 3765
    :cond_1d
    invoke-virtual {v2, v7}, Lcom/google/tagmanager/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_b

    :sswitch_13
    and-int/lit8 v7, v6, 0x1

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1e

    .line 3749
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate_:Ljava/util/List;

    or-int/lit8 v6, v6, 0x1

    .line 3752
    :cond_1e
    iget-object v7, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_b
    move-object/from16 v8, p2

    goto/16 :goto_0

    :sswitch_14
    move-object/from16 v8, p2

    :goto_c
    const/4 v5, 0x1

    goto/16 :goto_0

    :goto_d
    if-nez v7, :cond_0

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_e

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 3962
    :try_start_1
    new-instance v5, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 3960
    invoke-virtual {v2, v1}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_e
    and-int/lit8 v5, v6, 0x1

    const/4 v7, 0x1

    if-ne v5, v7, :cond_1f

    .line 3966
    iget-object v5, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate_:Ljava/util/List;

    :cond_1f
    and-int/lit8 v5, v6, 0x2

    const/4 v7, 0x2

    if-ne v5, v7, :cond_20

    .line 3969
    iget-object v5, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate_:Ljava/util/List;

    :cond_20
    and-int/lit8 v5, v6, 0x4

    const/4 v7, 0x4

    if-ne v5, v7, :cond_21

    .line 3972
    iget-object v5, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag_:Ljava/util/List;

    :cond_21
    and-int/lit8 v5, v6, 0x8

    const/16 v7, 0x8

    if-ne v5, v7, :cond_22

    .line 3975
    iget-object v5, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag_:Ljava/util/List;

    :cond_22
    and-int/lit8 v5, v6, 0x10

    if-ne v5, v10, :cond_23

    .line 3978
    iget-object v5, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName_:Ljava/util/List;

    :cond_23
    and-int/lit8 v5, v6, 0x20

    if-ne v5, v11, :cond_24

    .line 3981
    iget-object v5, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName_:Ljava/util/List;

    :cond_24
    and-int/lit8 v5, v6, 0x40

    if-ne v5, v12, :cond_25

    .line 3984
    iget-object v5, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro_:Ljava/util/List;

    :cond_25
    and-int/lit16 v5, v6, 0x80

    if-ne v5, v13, :cond_26

    .line 3987
    iget-object v5, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro_:Ljava/util/List;

    :cond_26
    and-int/lit16 v5, v6, 0x100

    if-ne v5, v14, :cond_27

    .line 3990
    iget-object v5, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName_:Ljava/util/List;

    :cond_27
    and-int/lit16 v5, v6, 0x200

    if-ne v5, v15, :cond_28

    .line 3993
    iget-object v5, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName_:Ljava/util/List;

    .line 3996
    :cond_28
    :try_start_2
    invoke-virtual {v4}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4000
    :catch_2
    invoke-virtual {v3}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v3

    iput-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    goto :goto_f

    :catchall_1
    move-exception v0

    invoke-virtual {v3}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v2

    iput-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    throw v0

    .line 4002
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->makeExtensionsImmutable()V

    throw v2

    :cond_29
    and-int/lit8 v2, v6, 0x1

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2a

    .line 3966
    iget-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate_:Ljava/util/List;

    :cond_2a
    and-int/lit8 v2, v6, 0x2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2b

    .line 3969
    iget-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate_:Ljava/util/List;

    :cond_2b
    and-int/lit8 v2, v6, 0x4

    const/4 v5, 0x4

    if-ne v2, v5, :cond_2c

    .line 3972
    iget-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag_:Ljava/util/List;

    :cond_2c
    and-int/lit8 v2, v6, 0x8

    const/16 v5, 0x8

    if-ne v2, v5, :cond_2d

    .line 3975
    iget-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag_:Ljava/util/List;

    :cond_2d
    and-int/lit8 v2, v6, 0x10

    if-ne v2, v10, :cond_2e

    .line 3978
    iget-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName_:Ljava/util/List;

    :cond_2e
    and-int/lit8 v2, v6, 0x20

    if-ne v2, v11, :cond_2f

    .line 3981
    iget-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName_:Ljava/util/List;

    :cond_2f
    and-int/lit8 v2, v6, 0x40

    if-ne v2, v12, :cond_30

    .line 3984
    iget-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro_:Ljava/util/List;

    :cond_30
    and-int/lit16 v2, v6, 0x80

    if-ne v2, v13, :cond_31

    .line 3987
    iget-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro_:Ljava/util/List;

    :cond_31
    and-int/lit16 v2, v6, 0x100

    if-ne v2, v14, :cond_32

    .line 3990
    iget-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName_:Ljava/util/List;

    :cond_32
    and-int/lit16 v2, v6, 0x200

    if-ne v2, v15, :cond_33

    .line 3993
    iget-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName_:Ljava/util/List;

    .line 3996
    :cond_33
    :try_start_3
    invoke-virtual {v4}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 4000
    :catch_3
    invoke-virtual {v3}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v2

    iput-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    goto :goto_10

    :catchall_2
    move-exception v0

    invoke-virtual {v3}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v2

    iput-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    throw v0

    .line 4002
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_14
        0x8 -> :sswitch_13
        0xa -> :sswitch_12
        0x10 -> :sswitch_11
        0x12 -> :sswitch_10
        0x18 -> :sswitch_f
        0x1a -> :sswitch_e
        0x20 -> :sswitch_d
        0x22 -> :sswitch_c
        0x28 -> :sswitch_b
        0x2a -> :sswitch_a
        0x30 -> :sswitch_9
        0x32 -> :sswitch_8
        0x38 -> :sswitch_7
        0x3a -> :sswitch_6
        0x40 -> :sswitch_5
        0x42 -> :sswitch_4
        0x48 -> :sswitch_3
        0x4a -> :sswitch_2
        0x50 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;Lcom/google/analytics/containertag/proto/Serving$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3700
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/containertag/proto/Serving$Rule;-><init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1

    .line 3706
    invoke-direct {p0, p1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;)V

    const/4 v0, -0x1

    .line 4272
    iput-byte v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->memoizedIsInitialized:B

    .line 4317
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->memoizedSerializedSize:I

    .line 3707
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;Lcom/google/analytics/containertag/proto/Serving$1;)V
    .locals 0

    .line 3700
    invoke-direct {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 3709
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>()V

    const/4 p1, -0x1

    .line 4272
    iput-byte p1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->memoizedIsInitialized:B

    .line 4317
    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->memoizedSerializedSize:I

    .line 3709
    sget-object p1, Lcom/google/tagmanager/protobuf/ByteString;->EMPTY:Lcom/google/tagmanager/protobuf/ByteString;

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$4000(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;
    .locals 0

    .line 3700
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4002(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 3700
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;
    .locals 0

    .line 3700
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4102(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 3700
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;
    .locals 0

    .line 3700
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4202(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 3700
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;
    .locals 0

    .line 3700
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4302(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 3700
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;
    .locals 0

    .line 3700
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4402(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 3700
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;
    .locals 0

    .line 3700
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4502(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 3700
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;
    .locals 0

    .line 3700
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4602(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 3700
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;
    .locals 0

    .line 3700
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4702(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 3700
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;
    .locals 0

    .line 3700
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4802(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 3700
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;
    .locals 0

    .line 3700
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4902(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 3700
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5000(Lcom/google/analytics/containertag/proto/Serving$Rule;)Lcom/google/tagmanager/protobuf/ByteString;
    .locals 0

    .line 3700
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Rule;
    .locals 1

    .line 3713
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->defaultInstance:Lcom/google/analytics/containertag/proto/Serving$Rule;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 4261
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate_:Ljava/util/List;

    .line 4262
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate_:Ljava/util/List;

    .line 4263
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag_:Ljava/util/List;

    .line 4264
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag_:Ljava/util/List;

    .line 4265
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName_:Ljava/util/List;

    .line 4266
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName_:Ljava/util/List;

    .line 4267
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro_:Ljava/util/List;

    .line 4268
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro_:Ljava/util/List;

    .line 4269
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName_:Ljava/util/List;

    .line 4270
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName_:Ljava/util/List;

    return-void
.end method

.method public static newBuilder()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 4574
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->access$3800()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/analytics/containertag/proto/Serving$Rule;)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 4577
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Rule;->newBuilder()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Rule;)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/analytics/containertag/proto/Serving$Rule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4554
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$Rule;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$Rule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4560
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$Rule;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/analytics/containertag/proto/Serving$Rule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4524
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Lcom/google/tagmanager/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$Rule;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$Rule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4530
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$Rule;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;)Lcom/google/analytics/containertag/proto/Serving$Rule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4565
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$Rule;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$Rule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4571
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$Rule;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/analytics/containertag/proto/Serving$Rule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4544
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$Rule;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$Rule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4550
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$Rule;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$Rule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4534
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$Rule;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$Rule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4540
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom([BLcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$Rule;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 4430
    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-nez v1, :cond_1

    .line 4431
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4433
    :cond_1
    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$Rule;

    .line 4436
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getPositivePredicateList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getPositivePredicateList()Ljava/util/List;

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

    .line 4438
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getNegativePredicateList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getNegativePredicateList()Ljava/util/List;

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

    .line 4440
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getAddTagList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getAddTagList()Ljava/util/List;

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

    .line 4442
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getRemoveTagList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getRemoveTagList()Ljava/util/List;

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

    .line 4444
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getAddTagRuleNameList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getAddTagRuleNameList()Ljava/util/List;

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

    .line 4446
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getRemoveTagRuleNameList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getRemoveTagRuleNameList()Ljava/util/List;

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

    .line 4448
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getAddMacroList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getAddMacroList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v0

    goto :goto_6

    :cond_8
    move v1, v2

    :goto_6
    if-eqz v1, :cond_9

    .line 4450
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getRemoveMacroList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getRemoveMacroList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v0

    goto :goto_7

    :cond_9
    move v1, v2

    :goto_7
    if-eqz v1, :cond_a

    .line 4452
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getAddMacroRuleNameList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getAddMacroRuleNameList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v0

    goto :goto_8

    :cond_a
    move v1, v2

    :goto_8
    if-eqz v1, :cond_b

    .line 4454
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getRemoveMacroRuleNameList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getRemoveMacroRuleNameList()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_9

    :cond_b
    move v0, v2

    :goto_9
    return v0
.end method

.method public getAddMacro(I)I
    .locals 1

    .line 4185
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getAddMacroCount()I
    .locals 1

    .line 4179
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAddMacroList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4173
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro_:Ljava/util/List;

    return-object v0
.end method

.method public getAddMacroRuleName(I)I
    .locals 1

    .line 4233
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getAddMacroRuleNameCount()I
    .locals 1

    .line 4227
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAddMacroRuleNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4221
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName_:Ljava/util/List;

    return-object v0
.end method

.method public getAddTag(I)I
    .locals 1

    .line 4089
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getAddTagCount()I
    .locals 1

    .line 4083
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAddTagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4077
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag_:Ljava/util/List;

    return-object v0
.end method

.method public getAddTagRuleName(I)I
    .locals 1

    .line 4137
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getAddTagRuleNameCount()I
    .locals 1

    .line 4131
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAddTagRuleNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4125
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName_:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Serving$Rule;
    .locals 1

    .line 3717
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->defaultInstance:Lcom/google/analytics/containertag/proto/Serving$Rule;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 3700
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Serving$Rule;

    move-result-object v0

    return-object v0
.end method

.method public getNegativePredicate(I)I
    .locals 1

    .line 4065
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getNegativePredicateCount()I
    .locals 1

    .line 4059
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNegativePredicateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4053
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/tagmanager/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/Serving$Rule;",
            ">;"
        }
    .end annotation

    .line 4017
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-object v0
.end method

.method public getPositivePredicate(I)I
    .locals 1

    .line 4041
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getPositivePredicateCount()I
    .locals 1

    .line 4035
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPositivePredicateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4029
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate_:Ljava/util/List;

    return-object v0
.end method

.method public getRemoveMacro(I)I
    .locals 1

    .line 4209
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getRemoveMacroCount()I
    .locals 1

    .line 4203
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRemoveMacroList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4197
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro_:Ljava/util/List;

    return-object v0
.end method

.method public getRemoveMacroRuleName(I)I
    .locals 1

    .line 4257
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getRemoveMacroRuleNameCount()I
    .locals 1

    .line 4251
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRemoveMacroRuleNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4245
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName_:Ljava/util/List;

    return-object v0
.end method

.method public getRemoveTag(I)I
    .locals 1

    .line 4113
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getRemoveTagCount()I
    .locals 1

    .line 4107
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRemoveTagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4101
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag_:Ljava/util/List;

    return-object v0
.end method

.method public getRemoveTagRuleName(I)I
    .locals 1

    .line 4161
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getRemoveTagRuleNameCount()I
    .locals 1

    .line 4155
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRemoveTagRuleNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4149
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 4319
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 4325
    :goto_0
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 4326
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v2, v0

    .line 4330
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getPositivePredicateList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    mul-int/2addr v1, v3

    add-int/2addr v2, v1

    move v1, v0

    move v4, v1

    .line 4334
    :goto_1
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 4335
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate_:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v2, v4

    .line 4339
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getNegativePredicateList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v3

    add-int/2addr v2, v1

    move v1, v0

    move v4, v1

    .line 4343
    :goto_2
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 4344
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag_:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v2, v4

    .line 4348
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getAddTagList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v3

    add-int/2addr v2, v1

    move v1, v0

    move v4, v1

    .line 4352
    :goto_3
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 4353
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag_:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    add-int/2addr v2, v4

    .line 4357
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getRemoveTagList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v3

    add-int/2addr v2, v1

    move v1, v0

    move v4, v1

    .line 4361
    :goto_4
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 4362
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName_:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    add-int/2addr v2, v4

    .line 4366
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getAddTagRuleNameList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v3

    add-int/2addr v2, v1

    move v1, v0

    move v4, v1

    .line 4370
    :goto_5
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 4371
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName_:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    add-int/2addr v2, v4

    .line 4375
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getRemoveTagRuleNameList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v3

    add-int/2addr v2, v1

    move v1, v0

    move v4, v1

    .line 4379
    :goto_6
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 4380
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro_:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    add-int/2addr v2, v4

    .line 4384
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getAddMacroList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v3

    add-int/2addr v2, v1

    move v1, v0

    move v4, v1

    .line 4388
    :goto_7
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    .line 4389
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro_:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    add-int/2addr v2, v4

    .line 4393
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getRemoveMacroList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v3

    add-int/2addr v2, v1

    move v1, v0

    move v4, v1

    .line 4397
    :goto_8
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_9

    .line 4398
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName_:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_9
    add-int/2addr v2, v4

    .line 4402
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getAddMacroRuleNameList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v3

    add-int/2addr v2, v1

    move v1, v0

    .line 4406
    :goto_9
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_a

    .line 4407
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName_:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_a
    add-int/2addr v2, v1

    .line 4411
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getRemoveMacroRuleNameList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    .line 4413
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v0

    add-int/2addr v2, v0

    .line 4414
    iput v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->memoizedSerializedSize:I

    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 4461
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 4462
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 4465
    const-class v1, Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4466
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getPositivePredicateCount()I

    move-result v1

    const/16 v2, 0x35

    const/16 v3, 0x25

    if-lez v1, :cond_1

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v2

    .line 4468
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getPositivePredicateList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4470
    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getNegativePredicateCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, v2

    .line 4472
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getNegativePredicateList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4474
    :cond_2
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getAddTagCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x3

    mul-int/2addr v0, v2

    .line 4476
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getAddTagList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4478
    :cond_3
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getRemoveTagCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x4

    mul-int/2addr v0, v2

    .line 4480
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getRemoveTagList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4482
    :cond_4
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getAddTagRuleNameCount()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x5

    mul-int/2addr v0, v2

    .line 4484
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getAddTagRuleNameList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4486
    :cond_5
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getRemoveTagRuleNameCount()I

    move-result v1

    if-lez v1, :cond_6

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x6

    mul-int/2addr v0, v2

    .line 4488
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getRemoveTagRuleNameList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4490
    :cond_6
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getAddMacroCount()I

    move-result v1

    if-lez v1, :cond_7

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x7

    mul-int/2addr v0, v2

    .line 4492
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getAddMacroList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4494
    :cond_7
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getRemoveMacroCount()I

    move-result v1

    if-lez v1, :cond_8

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x8

    mul-int/2addr v0, v2

    .line 4496
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getRemoveMacroList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4498
    :cond_8
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getAddMacroRuleNameCount()I

    move-result v1

    if-lez v1, :cond_9

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x9

    mul-int/2addr v0, v2

    .line 4500
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getAddMacroRuleNameList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4502
    :cond_9
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getRemoveMacroRuleNameCount()I

    move-result v1

    if-lez v1, :cond_a

    mul-int/2addr v3, v0

    add-int/lit8 v3, v3, 0xa

    mul-int/2addr v2, v3

    .line 4504
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getRemoveMacroRuleNameList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    :cond_a
    const/16 v1, 0x1d

    mul-int/2addr v1, v0

    .line 4506
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 4507
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->memoizedHashCode:I

    return v1
.end method

.method protected internalMutableDefault()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 4515
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    const-string v0, "com.google.analytics.containertag.proto.MutableServing$Rule"

    .line 4516
    invoke-static {v0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->internalMutableDefault(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

    .line 4518
    :cond_0
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 4274
    iget-byte v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->memoizedIsInitialized:B

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 4277
    :cond_1
    iput-byte v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 4575
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Rule;->newBuilder()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 3700
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->newBuilderForType()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 4579
    invoke-static {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->newBuilder(Lcom/google/analytics/containertag/proto/Serving$Rule;)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 3700
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->toBuilder()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

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

    .line 4422
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

    .line 4283
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getSerializedSize()I

    const/4 v0, 0x0

    move v1, v0

    .line 4284
    :goto_0
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4285
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 4287
    :goto_1
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x2

    .line 4288
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 4290
    :goto_2
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    .line 4291
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    .line 4293
    :goto_3
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x4

    .line 4294
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move v1, v0

    .line 4296
    :goto_4
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x5

    .line 4297
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    move v1, v0

    .line 4299
    :goto_5
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x6

    .line 4300
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    move v1, v0

    .line 4302
    :goto_6
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    const/4 v2, 0x7

    .line 4303
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    move v1, v0

    .line 4305
    :goto_7
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    const/16 v2, 0x8

    .line 4306
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_7
    move v1, v0

    .line 4308
    :goto_8
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    const/16 v2, 0x9

    .line 4309
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 4311
    :cond_8
    :goto_9
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    const/16 v1, 0xa

    .line 4312
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 4314
    :cond_9
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/tagmanager/protobuf/ByteString;)V

    return-void
.end method
