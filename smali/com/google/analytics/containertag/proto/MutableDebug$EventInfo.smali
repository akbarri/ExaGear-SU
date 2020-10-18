.class public final Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;
.super Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
.source "MutableDebug.java"

# interfaces
.implements Lcom/google/tagmanager/protobuf/MutableMessageLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/MutableDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite<",
        "Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;",
        ">;",
        "Lcom/google/tagmanager/protobuf/MutableMessageLite;"
    }
.end annotation


# static fields
.field public static final CONTAINER_ID_FIELD_NUMBER:I = 0x3

.field public static final CONTAINER_VERSION_FIELD_NUMBER:I = 0x2

.field public static final DATA_LAYER_EVENT_RESULT_FIELD_NUMBER:I = 0x7

.field public static final EVENT_TYPE_FIELD_NUMBER:I = 0x1

.field public static final KEY_FIELD_NUMBER:I = 0x4

.field public static final MACRO_RESULT_FIELD_NUMBER:I = 0x6

.field public static PARSER:Lcom/google/tagmanager/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

.field private static volatile immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private containerId_:Ljava/lang/Object;

.field private containerVersion_:Ljava/lang/Object;

.field private dataLayerEventResult_:Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

.field private eventType_:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;

.field private key_:Ljava/lang/Object;

.field private macroResult_:Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1082
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;-><init>(Z)V

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    .line 1083
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->initFields()V

    .line 1084
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->makeImmutable()V

    .line 1085
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/tagmanager/protobuf/MutableMessageLite;)Lcom/google/tagmanager/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 311
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;-><init>()V

    .line 395
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;->DATA_LAYER_EVENT:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->eventType_:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;

    .line 433
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerVersion_:Ljava/lang/Object;

    .line 505
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerId_:Ljava/lang/Object;

    .line 577
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->key_:Ljava/lang/Object;

    .line 311
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 312
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;-><init>()V

    .line 395
    sget-object p1, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;->DATA_LAYER_EVENT:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->eventType_:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;

    .line 433
    sget-object p1, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerVersion_:Ljava/lang/Object;

    .line 505
    sget-object p1, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerId_:Ljava/lang/Object;

    .line 577
    sget-object p1, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->key_:Ljava/lang/Object;

    return-void
.end method

.method private ensureDataLayerEventResultInitialized()V
    .locals 2

    .line 706
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->dataLayerEventResult_:Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 707
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;->newMessage()Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->dataLayerEventResult_:Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    :cond_0
    return-void
.end method

.method private ensureMacroResultInitialized()V
    .locals 2

    .line 651
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->macroResult_:Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 652
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->newMessage()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->macroResult_:Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;
    .locals 1

    .line 326
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 320
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;->DATA_LAYER_EVENT:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->eventType_:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;

    .line 321
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->macroResult_:Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    .line 322
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->dataLayerEventResult_:Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    return-void
.end method

.method public static newMessage()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;
    .locals 1

    .line 317
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;-><init>()V

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;
    .locals 2

    .line 975
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->assertMutable()V

    .line 976
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;->clear()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;

    .line 977
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;->DATA_LAYER_EVENT:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->eventType_:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;

    .line 978
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 979
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerVersion_:Ljava/lang/Object;

    .line 980
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 981
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerId_:Ljava/lang/Object;

    .line 982
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 983
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->key_:Ljava/lang/Object;

    .line 984
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 985
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->macroResult_:Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 986
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->macroResult_:Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->clear()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    .line 988
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 989
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->dataLayerEventResult_:Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 990
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->dataLayerEventResult_:Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;->clear()Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    .line 992
    :cond_1
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 1

    .line 306
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->clear()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 306
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->clear()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    move-result-object v0

    return-object v0
.end method

.method public clearContainerId()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;
    .locals 1

    .line 570
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->assertMutable()V

    .line 571
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 572
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerId_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearContainerVersion()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;
    .locals 1

    .line 498
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->assertMutable()V

    .line 499
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 500
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerVersion_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearDataLayerEventResult()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;
    .locals 2

    .line 750
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->assertMutable()V

    .line 751
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 752
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->dataLayerEventResult_:Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 753
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->dataLayerEventResult_:Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;->clear()Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    :cond_0
    return-object p0
.end method

.method public clearEventType()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;
    .locals 1

    .line 426
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->assertMutable()V

    .line 427
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 428
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;->DATA_LAYER_EVENT:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->eventType_:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;

    return-object p0
.end method

.method public clearKey()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;
    .locals 1

    .line 642
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->assertMutable()V

    .line 643
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 644
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->key_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearMacroResult()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;
    .locals 2

    .line 695
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->assertMutable()V

    .line 696
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 697
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->macroResult_:Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 698
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->macroResult_:Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->clear()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    :cond_0
    return-object p0
.end method

.method public clone()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;
    .locals 1

    .line 773
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->newMessageForType()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->mergeFrom(Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;)Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 306
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->clone()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

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

    .line 306
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->clone()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1000
    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    if-nez v1, :cond_1

    .line 1001
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1003
    :cond_1
    check-cast p1, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    .line 1006
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasEventType()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasEventType()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    .line 1007
    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasEventType()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 1008
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getEventType()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getEventType()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;

    move-result-object v2

    if-ne v1, v2, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 1011
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasContainerVersion()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasContainerVersion()Z

    move-result v2

    if-ne v1, v2, :cond_5

    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v3

    .line 1012
    :goto_2
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasContainerVersion()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 1013
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getContainerVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getContainerVersion()Ljava/lang/String;

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

    .line 1016
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasContainerId()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasContainerId()Z

    move-result v2

    if-ne v1, v2, :cond_8

    move v1, v0

    goto :goto_4

    :cond_8
    move v1, v3

    .line 1017
    :goto_4
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasContainerId()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 1018
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getContainerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getContainerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v0

    goto :goto_5

    :cond_9
    move v1, v3

    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 1021
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasKey()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasKey()Z

    move-result v2

    if-ne v1, v2, :cond_b

    move v1, v0

    goto :goto_6

    :cond_b
    move v1, v3

    .line 1022
    :goto_6
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasKey()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    .line 1023
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v0

    goto :goto_7

    :cond_c
    move v1, v3

    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    .line 1026
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasMacroResult()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasMacroResult()Z

    move-result v2

    if-ne v1, v2, :cond_e

    move v1, v0

    goto :goto_8

    :cond_e
    move v1, v3

    .line 1027
    :goto_8
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasMacroResult()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v1, :cond_f

    .line 1028
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getMacroResult()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getMacroResult()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v0

    goto :goto_9

    :cond_f
    move v1, v3

    :cond_10
    :goto_9
    if-eqz v1, :cond_11

    .line 1031
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasDataLayerEventResult()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasDataLayerEventResult()Z

    move-result v2

    if-ne v1, v2, :cond_11

    move v1, v0

    goto :goto_a

    :cond_11
    move v1, v3

    .line 1032
    :goto_a
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasDataLayerEventResult()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v1, :cond_12

    .line 1033
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getDataLayerEventResult()Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getDataLayerEventResult()Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    move v1, v0

    goto :goto_b

    :cond_12
    move v1, v3

    :cond_13
    :goto_b
    return v1
.end method

.method public getContainerId()Ljava/lang/String;
    .locals 2

    .line 518
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerId_:Ljava/lang/Object;

    .line 519
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 520
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 522
    :cond_0
    check-cast v0, [B

    .line 523
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v1

    .line 525
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->isValidUtf8([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerId_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getContainerIdAsBytes()[B
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerId_:Ljava/lang/Object;

    .line 536
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 537
    check-cast v0, Ljava/lang/String;

    .line 538
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 539
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerId_:Ljava/lang/Object;

    return-object v0

    .line 542
    :cond_0
    check-cast v0, [B

    return-object v0
.end method

.method public getContainerVersion()Ljava/lang/String;
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerVersion_:Ljava/lang/Object;

    .line 447
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 448
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 450
    :cond_0
    check-cast v0, [B

    .line 451
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->isValidUtf8([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerVersion_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getContainerVersionAsBytes()[B
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerVersion_:Ljava/lang/Object;

    .line 464
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 465
    check-cast v0, Ljava/lang/String;

    .line 466
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 467
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerVersion_:Ljava/lang/Object;

    return-object v0

    .line 470
    :cond_0
    check-cast v0, [B

    return-object v0
.end method

.method public getDataLayerEventResult()Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->dataLayerEventResult_:Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;
    .locals 1

    .line 329
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 1

    .line 306
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 306
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->eventType_:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->key_:Ljava/lang/Object;

    .line 591
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 592
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 594
    :cond_0
    check-cast v0, [B

    .line 595
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v1

    .line 597
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->isValidUtf8([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->key_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getKeyAsBytes()[B
    .locals 2

    .line 607
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->key_:Ljava/lang/Object;

    .line 608
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 609
    check-cast v0, Ljava/lang/String;

    .line 610
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 611
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->key_:Ljava/lang/Object;

    return-object v0

    .line 614
    :cond_0
    check-cast v0, [B

    return-object v0
.end method

.method public getMacroResult()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->macroResult_:Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    return-object v0
.end method

.method public getMutableDataLayerEventResult()Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;
    .locals 1

    .line 728
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->assertMutable()V

    .line 729
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->ensureDataLayerEventResultInitialized()V

    .line 730
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 731
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->dataLayerEventResult_:Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    return-object v0
.end method

.method public getMutableMacroResult()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;
    .locals 1

    .line 673
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->assertMutable()V

    .line 674
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->ensureMacroResultInitialized()V

    .line 675
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 676
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->macroResult_:Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    return-object v0
.end method

.method public getParserForType()Lcom/google/tagmanager/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;",
            ">;"
        }
    .end annotation

    .line 334
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 938
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 939
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->eventType_:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;->getNumber()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 942
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 943
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getContainerVersionAsBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 946
    :cond_1
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 947
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getContainerIdAsBytes()[B

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 950
    :cond_2
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_3

    .line 951
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getKeyAsBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 954
    :cond_3
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x6

    .line 955
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->macroResult_:Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 958
    :cond_4
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x7

    .line 959
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->dataLayerEventResult_:Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 962
    :cond_5
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v0

    add-int/2addr v2, v0

    .line 963
    iput v2, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->cachedSize:I

    return v2
.end method

.method public hasContainerId()Z
    .locals 2

    .line 512
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

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

.method public hasContainerVersion()Z
    .locals 2

    .line 440
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

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

.method public hasDataLayerEventResult()Z
    .locals 2

    .line 716
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEventType()Z
    .locals 2

    .line 402
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasKey()Z
    .locals 2

    .line 584
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

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

.method public hasMacroResult()Z
    .locals 2

    .line 661
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    const/16 v1, 0x10

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

    .line 1042
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasEventType()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x13a46

    .line 1044
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getEventType()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/Internal;->hashEnum(Lcom/google/tagmanager/protobuf/Internal$EnumLite;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    .line 1047
    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasContainerVersion()Z

    move-result v1

    const/16 v2, 0x35

    const/16 v3, 0x25

    if-eqz v1, :cond_1

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, v2

    .line 1049
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getContainerVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1051
    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasContainerId()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x3

    mul-int/2addr v0, v2

    .line 1053
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getContainerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1055
    :cond_2
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x4

    mul-int/2addr v0, v2

    .line 1057
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1059
    :cond_3
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasMacroResult()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x6

    mul-int/2addr v0, v2

    .line 1061
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getMacroResult()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1063
    :cond_4
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasDataLayerEventResult()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x7

    mul-int/2addr v2, v3

    .line 1065
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getDataLayerEventResult()Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    :cond_5
    const/16 v1, 0x1d

    mul-int/2addr v1, v0

    .line 1067
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method protected internalImmutableDefault()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 1075
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    if-nez v0, :cond_0

    const-string v0, "com.google.analytics.containertag.proto.Debug$EventInfo"

    .line 1076
    invoke-static {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    .line 1078
    :cond_0
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 759
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasMacroResult()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 760
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getMacroResult()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 764
    :cond_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasDataLayerEventResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 765
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getDataLayerEventResult()Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;)Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;
    .locals 2

    if-ne p0, p1, :cond_0

    .line 778
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(message) called on the same message."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 781
    :cond_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->assertMutable()V

    .line 782
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p0

    .line 783
    :cond_1
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasEventType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 784
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getEventType()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->setEventType(Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;)Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    .line 786
    :cond_2
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasContainerVersion()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 787
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 788
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerVersion_:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 789
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerVersion_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerVersion_:Ljava/lang/Object;

    goto :goto_0

    .line 791
    :cond_3
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerVersion_:Ljava/lang/Object;

    check-cast v0, [B

    .line 792
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerVersion_:Ljava/lang/Object;

    .line 795
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasContainerId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 796
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 797
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerId_:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 798
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerId_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerId_:Ljava/lang/Object;

    goto :goto_1

    .line 800
    :cond_5
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerId_:Ljava/lang/Object;

    check-cast v0, [B

    .line 801
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerId_:Ljava/lang/Object;

    .line 804
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 805
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 806
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->key_:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 807
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->key_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->key_:Ljava/lang/Object;

    goto :goto_2

    .line 809
    :cond_7
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->key_:Ljava/lang/Object;

    check-cast v0, [B

    .line 810
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->key_:Ljava/lang/Object;

    .line 813
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasMacroResult()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 814
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->ensureMacroResultInitialized()V

    .line 815
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->macroResult_:Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getMacroResult()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->mergeFrom(Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;)Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    .line 816
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 818
    :cond_9
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->hasDataLayerEventResult()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 819
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->ensureDataLayerEventResultInitialized()V

    .line 820
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->dataLayerEventResult_:Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getDataLayerEventResult()Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;->mergeFrom(Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;)Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    .line 821
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 823
    :cond_a
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    iget-object p1, p1, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/ByteString;->concat(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;)Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 0

    .line 306
    check-cast p1, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->mergeFrom(Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;)Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Z
    .locals 8

    .line 830
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->assertMutable()V

    const/4 v0, 0x0

    .line 832
    :try_start_0
    invoke-static {}, Lcom/google/tagmanager/protobuf/ByteString;->newOutput()Lcom/google/tagmanager/protobuf/ByteString$Output;

    move-result-object v1

    .line 834
    invoke-static {v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object v2

    move v3, v0

    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-nez v3, :cond_b

    .line 839
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readTag()I

    move-result v5

    if-eqz v5, :cond_a

    const/16 v6, 0x8

    if-eq v5, v6, :cond_8

    const/16 v7, 0x12

    if-eq v5, v7, :cond_7

    const/16 v7, 0x1a

    if-eq v5, v7, :cond_6

    const/16 v7, 0x22

    if-eq v5, v7, :cond_5

    const/16 v6, 0x32

    if-eq v5, v6, :cond_3

    const/16 v6, 0x3a

    if-eq v5, v6, :cond_1

    .line 845
    invoke-virtual {p0, p1, v2, p2, v5}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->parseUnknownField(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    .line 887
    :cond_1
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->dataLayerEventResult_:Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 888
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;->newMessage()Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->dataLayerEventResult_:Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    .line 890
    :cond_2
    iget v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 891
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->dataLayerEventResult_:Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    invoke-virtual {p1, v4, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/MutableMessageLite;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 879
    :cond_3
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->macroResult_:Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    move-result-object v5

    if-ne v4, v5, :cond_4

    .line 880
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->newMessage()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->macroResult_:Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    .line 882
    :cond_4
    iget v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 883
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->macroResult_:Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    invoke-virtual {p1, v4, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/MutableMessageLite;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 874
    :cond_5
    iget v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    or-int/2addr v4, v6

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 875
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->key_:Ljava/lang/Object;

    goto :goto_0

    .line 869
    :cond_6
    iget v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 870
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerId_:Ljava/lang/Object;

    goto :goto_0

    .line 864
    :cond_7
    iget v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 865
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerVersion_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 852
    :cond_8
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    .line 853
    invoke-static {v6}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;->valueOf(I)Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;

    move-result-object v7

    if-nez v7, :cond_9

    .line 855
    invoke-virtual {v2, v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 856
    invoke-virtual {v2, v6}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    goto/16 :goto_0

    .line 858
    :cond_9
    iget v5, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 859
    iput-object v7, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->eventType_:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;

    goto/16 :goto_0

    :cond_a
    :goto_1
    move v3, v4

    goto/16 :goto_0

    .line 896
    :cond_b
    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V

    .line 897
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    return v0
.end method

.method public newMessageForType()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;
    .locals 1

    .line 314
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 306
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->newMessageForType()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    move-result-object v0

    return-object v0
.end method

.method public setContainerId(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;
    .locals 1

    .line 549
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->assertMutable()V

    if-nez p1, :cond_0

    .line 550
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 551
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 552
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerId_:Ljava/lang/Object;

    return-object p0
.end method

.method public setContainerIdAsBytes([B)Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;
    .locals 1

    .line 560
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->assertMutable()V

    if-nez p1, :cond_0

    .line 561
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 562
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 563
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerId_:Ljava/lang/Object;

    return-object p0
.end method

.method public setContainerVersion(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;
    .locals 1

    .line 477
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->assertMutable()V

    if-nez p1, :cond_0

    .line 478
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 479
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 480
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerVersion_:Ljava/lang/Object;

    return-object p0
.end method

.method public setContainerVersionAsBytes([B)Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;
    .locals 1

    .line 488
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->assertMutable()V

    if-nez p1, :cond_0

    .line 489
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 490
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 491
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->containerVersion_:Ljava/lang/Object;

    return-object p0
.end method

.method public setDataLayerEventResult(Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;)Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;
    .locals 1

    .line 738
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->assertMutable()V

    if-nez p1, :cond_0

    .line 740
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 742
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 743
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->dataLayerEventResult_:Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    return-object p0
.end method

.method public setEventType(Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;)Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;
    .locals 1

    .line 414
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->assertMutable()V

    if-nez p1, :cond_0

    .line 416
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 418
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 419
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->eventType_:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;
    .locals 1

    .line 621
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->assertMutable()V

    if-nez p1, :cond_0

    .line 622
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 623
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 624
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->key_:Ljava/lang/Object;

    return-object p0
.end method

.method public setKeyAsBytes([B)Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;
    .locals 1

    .line 632
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->assertMutable()V

    if-nez p1, :cond_0

    .line 633
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 634
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 635
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->key_:Ljava/lang/Object;

    return-object p0
.end method

.method public setMacroResult(Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;)Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;
    .locals 1

    .line 683
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->assertMutable()V

    if-nez p1, :cond_0

    .line 685
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 687
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    .line 688
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->macroResult_:Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    return-object p0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 971
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeToWithCachedSizes(Lcom/google/tagmanager/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 907
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 908
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 909
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->eventType_:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 911
    :cond_0
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 912
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getContainerVersionAsBytes()[B

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 914
    :cond_1
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    .line 915
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getContainerIdAsBytes()[B

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 917
    :cond_2
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    .line 918
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getKeyAsBytes()[B

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 920
    :cond_3
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x6

    .line 921
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->macroResult_:Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/tagmanager/protobuf/MutableMessageLite;)V

    .line 923
    :cond_4
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x7

    .line 924
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->dataLayerEventResult_:Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/tagmanager/protobuf/MutableMessageLite;)V

    .line 926
    :cond_5
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/tagmanager/protobuf/ByteString;)V

    .line 927
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result p1

    .line 928
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getCachedSize()I

    move-result v1

    sub-int/2addr p1, v0

    if-eq v1, p1, :cond_6

    .line 929
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-void
.end method
