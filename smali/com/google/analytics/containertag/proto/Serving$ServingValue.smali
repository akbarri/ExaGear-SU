.class public final Lcom/google/analytics/containertag/proto/Serving$ServingValue;
.super Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
.source "Serving.java"

# interfaces
.implements Lcom/google/analytics/containertag/proto/Serving$ServingValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServingValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    }
.end annotation


# static fields
.field public static final EXT_FIELD_NUMBER:I = 0x65

.field public static final LIST_ITEM_FIELD_NUMBER:I = 0x1

.field public static final MACRO_NAME_REFERENCE_FIELD_NUMBER:I = 0x6

.field public static final MACRO_REFERENCE_FIELD_NUMBER:I = 0x4

.field public static final MAP_KEY_FIELD_NUMBER:I = 0x2

.field public static final MAP_VALUE_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/tagmanager/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/Serving$ServingValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final TEMPLATE_TOKEN_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/google/analytics/containertag/proto/Serving$ServingValue;

.field public static final ext:Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            "Lcom/google/analytics/containertag/proto/Serving$ServingValue;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private listItem_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private macroNameReference_:I

.field private macroReference_:I

.field private mapKey_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mapValue_:Ljava/util/List;
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

.field private templateToken_:Ljava/util/List;
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
    .locals 8

    .line 1318
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$1;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$1;-><init>()V

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    .line 2201
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;-><init>(Z)V

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->defaultInstance:Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    .line 2202
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->defaultInstance:Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->initFields()V

    .line 2213
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getDefaultInstance()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v2

    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v3

    sget-object v6, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    const-class v7, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    const/4 v4, 0x0

    const/16 v5, 0x65

    invoke-static/range {v1 .. v7}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/tagmanager/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/tagmanager/protobuf/MessageLite;Lcom/google/tagmanager/protobuf/Internal$EnumLiteMap;ILcom/google/tagmanager/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->ext:Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1171
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, -0x1

    .line 1472
    iput-byte v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->memoizedIsInitialized:B

    .line 1505
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->memoizedSerializedSize:I

    .line 1172
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->initFields()V

    .line 1174
    invoke-static {}, Lcom/google/tagmanager/protobuf/ByteString;->newOutput()Lcom/google/tagmanager/protobuf/ByteString$Output;

    move-result-object v0

    .line 1176
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    const/4 v4, 0x4

    const/16 v5, 0x10

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez v2, :cond_11

    .line 1182
    :try_start_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readTag()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 1188
    invoke-virtual {p0, p1, v1, p2, v8}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->parseUnknownField(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;I)Z

    move-result v8

    goto/16 :goto_6

    .line 1284
    :sswitch_0
    iget v8, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->bitField0_:I

    or-int/2addr v8, v6

    iput v8, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->bitField0_:I

    .line 1285
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference_:I

    goto :goto_0

    .line 1271
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v8

    .line 1272
    invoke-virtual {p1, v8}, Lcom/google/tagmanager/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v8

    and-int/lit8 v9, v3, 0x10

    if-eq v9, v5, :cond_1

    .line 1273
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v9

    if-lez v9, :cond_1

    .line 1274
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x10

    .line 1277
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v9

    if-lez v9, :cond_2

    .line 1278
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1280
    :cond_2
    invoke-virtual {p1, v8}, Lcom/google/tagmanager/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    :sswitch_2
    and-int/lit8 v8, v3, 0x10

    if-eq v8, v5, :cond_3

    .line 1264
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x10

    .line 1267
    :cond_3
    iget-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1258
    :sswitch_3
    iget v8, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->bitField0_:I

    or-int/2addr v8, v7

    iput v8, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->bitField0_:I

    .line 1259
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference_:I

    goto :goto_0

    .line 1245
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v8

    .line 1246
    invoke-virtual {p1, v8}, Lcom/google/tagmanager/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v8

    and-int/lit8 v9, v3, 0x4

    if-eq v9, v4, :cond_4

    .line 1247
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v9

    if-lez v9, :cond_4

    .line 1248
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x4

    .line 1251
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v9

    if-lez v9, :cond_5

    .line 1252
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1254
    :cond_5
    invoke-virtual {p1, v8}, Lcom/google/tagmanager/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_5
    and-int/lit8 v8, v3, 0x4

    if-eq v8, v4, :cond_6

    .line 1238
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x4

    .line 1241
    :cond_6
    iget-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1224
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v8

    .line 1225
    invoke-virtual {p1, v8}, Lcom/google/tagmanager/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v8

    and-int/lit8 v9, v3, 0x2

    if-eq v9, v6, :cond_7

    .line 1226
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v9

    if-lez v9, :cond_7

    .line 1227
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 1230
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v9

    if-lez v9, :cond_8

    .line 1231
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1233
    :cond_8
    invoke-virtual {p1, v8}, Lcom/google/tagmanager/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_7
    and-int/lit8 v8, v3, 0x2

    if-eq v8, v6, :cond_9

    .line 1217
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 1220
    :cond_9
    iget-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1203
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v8

    .line 1204
    invoke-virtual {p1, v8}, Lcom/google/tagmanager/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v8

    and-int/lit8 v9, v3, 0x1

    if-eq v9, v7, :cond_a

    .line 1205
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v9

    if-lez v9, :cond_a

    .line 1206
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 1209
    :cond_a
    :goto_4
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v9

    if-lez v9, :cond_b

    .line 1210
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1212
    :cond_b
    invoke-virtual {p1, v8}, Lcom/google/tagmanager/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_9
    and-int/lit8 v8, v3, 0x1

    if-eq v8, v7, :cond_c

    .line 1196
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 1199
    :cond_c
    iget-object v8, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_5
    :sswitch_a
    move v2, v7

    goto/16 :goto_0

    :goto_6
    if-nez v8, :cond_0

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_7

    :catch_0
    move-exception p1

    .line 1293
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

    .line 1291
    invoke-virtual {p1, p0}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    and-int/lit8 p2, v3, 0x1

    if-ne p2, v7, :cond_d

    .line 1297
    iget-object p2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem_:Ljava/util/List;

    :cond_d
    and-int/lit8 p2, v3, 0x2

    if-ne p2, v6, :cond_e

    .line 1300
    iget-object p2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey_:Ljava/util/List;

    :cond_e
    and-int/lit8 p2, v3, 0x4

    if-ne p2, v4, :cond_f

    .line 1303
    iget-object p2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue_:Ljava/util/List;

    :cond_f
    and-int/lit8 p2, v3, 0x10

    if-ne p2, v5, :cond_10

    .line 1306
    iget-object p2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken_:Ljava/util/List;

    .line 1309
    :cond_10
    :try_start_2
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1313
    :catch_2
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    goto :goto_8

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    throw p1

    .line 1315
    :goto_8
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->makeExtensionsImmutable()V

    throw p1

    :cond_11
    and-int/lit8 p1, v3, 0x1

    if-ne p1, v7, :cond_12

    .line 1297
    iget-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem_:Ljava/util/List;

    :cond_12
    and-int/lit8 p1, v3, 0x2

    if-ne p1, v6, :cond_13

    .line 1300
    iget-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey_:Ljava/util/List;

    :cond_13
    and-int/lit8 p1, v3, 0x4

    if-ne p1, v4, :cond_14

    .line 1303
    iget-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue_:Ljava/util/List;

    :cond_14
    and-int/lit8 p1, v3, 0x10

    if-ne p1, v5, :cond_15

    .line 1306
    iget-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken_:Ljava/util/List;

    .line 1309
    :cond_15
    :try_start_3
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1313
    :catch_3
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    goto :goto_9

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    throw p1

    .line 1315
    :goto_9
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x8 -> :sswitch_9
        0xa -> :sswitch_8
        0x10 -> :sswitch_7
        0x12 -> :sswitch_6
        0x18 -> :sswitch_5
        0x1a -> :sswitch_4
        0x20 -> :sswitch_3
        0x28 -> :sswitch_2
        0x2a -> :sswitch_1
        0x30 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;Lcom/google/analytics/containertag/proto/Serving$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1147
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;-><init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1

    .line 1153
    invoke-direct {p0, p1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;)V

    const/4 v0, -0x1

    .line 1472
    iput-byte v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->memoizedIsInitialized:B

    .line 1505
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->memoizedSerializedSize:I

    .line 1154
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;Lcom/google/analytics/containertag/proto/Serving$1;)V
    .locals 0

    .line 1147
    invoke-direct {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 1156
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>()V

    const/4 p1, -0x1

    .line 1472
    iput-byte p1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->memoizedIsInitialized:B

    .line 1505
    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->memoizedSerializedSize:I

    .line 1156
    sget-object p1, Lcom/google/tagmanager/protobuf/ByteString;->EMPTY:Lcom/google/tagmanager/protobuf/ByteString;

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$1200(Lcom/google/analytics/containertag/proto/Serving$ServingValue;)Ljava/util/List;
    .locals 0

    .line 1147
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/google/analytics/containertag/proto/Serving$ServingValue;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1147
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/analytics/containertag/proto/Serving$ServingValue;)Ljava/util/List;
    .locals 0

    .line 1147
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/google/analytics/containertag/proto/Serving$ServingValue;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1147
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/google/analytics/containertag/proto/Serving$ServingValue;)Ljava/util/List;
    .locals 0

    .line 1147
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/google/analytics/containertag/proto/Serving$ServingValue;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1147
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/analytics/containertag/proto/Serving$ServingValue;I)I
    .locals 0

    .line 1147
    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference_:I

    return p1
.end method

.method static synthetic access$1600(Lcom/google/analytics/containertag/proto/Serving$ServingValue;)Ljava/util/List;
    .locals 0

    .line 1147
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/google/analytics/containertag/proto/Serving$ServingValue;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1147
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/analytics/containertag/proto/Serving$ServingValue;I)I
    .locals 0

    .line 1147
    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference_:I

    return p1
.end method

.method static synthetic access$1802(Lcom/google/analytics/containertag/proto/Serving$ServingValue;I)I
    .locals 0

    .line 1147
    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->bitField0_:I

    return p1
.end method

.method static synthetic access$1900(Lcom/google/analytics/containertag/proto/Serving$ServingValue;)Lcom/google/tagmanager/protobuf/ByteString;
    .locals 0

    .line 1147
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .locals 1

    .line 1160
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->defaultInstance:Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .line 1465
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem_:Ljava/util/List;

    .line 1466
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey_:Ljava/util/List;

    .line 1467
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue_:Ljava/util/List;

    const/4 v0, 0x0

    .line 1468
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference_:I

    .line 1469
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken_:Ljava/util/List;

    .line 1470
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 1

    .line 1698
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->access$1000()Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/analytics/containertag/proto/Serving$ServingValue;)Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 1

    .line 1701
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->newBuilder()Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$ServingValue;)Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1678
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1684
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1648
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Lcom/google/tagmanager/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1654
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1689
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1695
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1668
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1674
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1658
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1664
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom([BLcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1572
    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    if-nez v1, :cond_1

    .line 1573
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1575
    :cond_1
    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    .line 1578
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getListItemList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getListItemList()Ljava/util/List;

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

    .line 1580
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getMapKeyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getMapKeyList()Ljava/util/List;

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

    .line 1582
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getMapValueList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getMapValueList()Ljava/util/List;

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

    .line 1584
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->hasMacroReference()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->hasMacroReference()Z

    move-result v3

    if-ne v1, v3, :cond_5

    move v1, v0

    goto :goto_3

    :cond_5
    move v1, v2

    .line 1585
    :goto_3
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->hasMacroReference()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v1, :cond_6

    .line 1586
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getMacroReference()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getMacroReference()I

    move-result v3

    if-ne v1, v3, :cond_6

    move v1, v0

    goto :goto_4

    :cond_6
    move v1, v2

    :cond_7
    :goto_4
    if-eqz v1, :cond_8

    .line 1589
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getTemplateTokenList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getTemplateTokenList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v0

    goto :goto_5

    :cond_8
    move v1, v2

    :goto_5
    if-eqz v1, :cond_9

    .line 1591
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->hasMacroNameReference()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->hasMacroNameReference()Z

    move-result v3

    if-ne v1, v3, :cond_9

    move v1, v0

    goto :goto_6

    :cond_9
    move v1, v2

    .line 1592
    :goto_6
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->hasMacroNameReference()Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v1, :cond_a

    .line 1593
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getMacroNameReference()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getMacroNameReference()I

    move-result p1

    if-ne v1, p1, :cond_a

    move v1, v0

    goto :goto_7

    :cond_a
    move v1, v2

    :cond_b
    :goto_7
    return v1
.end method

.method public getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .locals 1

    .line 1164
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->defaultInstance:Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 1147
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v0

    return-object v0
.end method

.method public getListItem(I)I
    .locals 1

    .line 1355
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getListItemCount()I
    .locals 1

    .line 1349
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getListItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1343
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem_:Ljava/util/List;

    return-object v0
.end method

.method public getMacroNameReference()I
    .locals 1

    .line 1461
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference_:I

    return v0
.end method

.method public getMacroReference()I
    .locals 1

    .line 1420
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference_:I

    return v0
.end method

.method public getMapKey(I)I
    .locals 1

    .line 1379
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getMapKeyCount()I
    .locals 1

    .line 1373
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMapKeyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1367
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey_:Ljava/util/List;

    return-object v0
.end method

.method public getMapValue(I)I
    .locals 1

    .line 1403
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getMapValueCount()I
    .locals 1

    .line 1397
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMapValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1391
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/tagmanager/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/Serving$ServingValue;",
            ">;"
        }
    .end annotation

    .line 1330
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 1507
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1513
    :goto_0
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1514
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem_:Ljava/util/List;

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

    .line 1518
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getListItemList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    mul-int/2addr v1, v3

    add-int/2addr v2, v1

    move v1, v0

    move v4, v1

    .line 1522
    :goto_1
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 1523
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey_:Ljava/util/List;

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

    .line 1527
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getMapKeyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v3

    add-int/2addr v2, v1

    move v1, v0

    move v4, v1

    .line 1531
    :goto_2
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 1532
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue_:Ljava/util/List;

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

    .line 1536
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getMapValueList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v3

    add-int/2addr v2, v1

    .line 1538
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->bitField0_:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    const/4 v1, 0x4

    .line 1539
    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference_:I

    invoke-static {v1, v4}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v2, v1

    :cond_4
    move v1, v0

    .line 1544
    :goto_3
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 1545
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken_:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    add-int/2addr v2, v1

    .line 1549
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getTemplateTokenList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    .line 1551
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x6

    .line 1552
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference_:I

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 1555
    :cond_6
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v0

    add-int/2addr v2, v0

    .line 1556
    iput v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->memoizedSerializedSize:I

    return v2
.end method

.method public getTemplateToken(I)I
    .locals 1

    .line 1444
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getTemplateTokenCount()I
    .locals 1

    .line 1438
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTemplateTokenList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1432
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken_:Ljava/util/List;

    return-object v0
.end method

.method public hasMacroNameReference()Z
    .locals 2

    .line 1455
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->bitField0_:I

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

.method public hasMacroReference()Z
    .locals 2

    .line 1414
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->bitField0_:I

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

    .line 1601
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 1602
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 1605
    const-class v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1606
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getListItemCount()I

    move-result v1

    const/16 v2, 0x35

    const/16 v3, 0x25

    if-lez v1, :cond_1

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v2

    .line 1608
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getListItemList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1610
    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getMapKeyCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, v2

    .line 1612
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getMapKeyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1614
    :cond_2
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getMapValueCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x3

    mul-int/2addr v0, v2

    .line 1616
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getMapValueList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1618
    :cond_3
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->hasMacroReference()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x4

    mul-int/2addr v0, v2

    .line 1620
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getMacroReference()I

    move-result v1

    add-int/2addr v0, v1

    .line 1622
    :cond_4
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getTemplateTokenCount()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x5

    mul-int/2addr v0, v2

    .line 1624
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getTemplateTokenList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1626
    :cond_5
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->hasMacroNameReference()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x6

    mul-int/2addr v2, v3

    .line 1628
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getMacroNameReference()I

    move-result v0

    add-int/2addr v0, v2

    :cond_6
    const/16 v1, 0x1d

    mul-int/2addr v1, v0

    .line 1630
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1631
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->memoizedHashCode:I

    return v1
.end method

.method protected internalMutableDefault()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 1639
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    const-string v0, "com.google.analytics.containertag.proto.MutableServing$ServingValue"

    .line 1640
    invoke-static {v0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->internalMutableDefault(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

    .line 1642
    :cond_0
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mutableDefault:Lcom/google/tagmanager/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 1474
    iget-byte v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->memoizedIsInitialized:B

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1477
    :cond_1
    iput-byte v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 1

    .line 1699
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->newBuilder()Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 1147
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->newBuilderForType()Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 1

    .line 1703
    invoke-static {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->newBuilder(Lcom/google/analytics/containertag/proto/Serving$ServingValue;)Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 1147
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->toBuilder()Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;

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

    .line 1564
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/CodedOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1483
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getSerializedSize()I

    const/4 v0, 0x0

    move v1, v0

    .line 1484
    :goto_0
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 1485
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v3, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1487
    :goto_1
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ge v1, v2, :cond_1

    .line 1488
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v4, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 1490
    :goto_2
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    .line 1491
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue_:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v2, v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1493
    :cond_2
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->bitField0_:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x4

    .line 1494
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1496
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    const/4 v1, 0x5

    .line 1497
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1499
    :cond_4
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->bitField0_:I

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_5

    const/4 v0, 0x6

    .line 1500
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1502
    :cond_5
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/tagmanager/protobuf/ByteString;)V

    return-void
.end method
