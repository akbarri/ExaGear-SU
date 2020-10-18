.class public final Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;
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
    name = "MacroEvaluationInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite<",
        "Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;",
        ">;",
        "Lcom/google/tagmanager/protobuf/MutableMessageLite;"
    }
.end annotation


# static fields
.field public static final MACRO_FIELD_NUMBER:I = 0x2d4c0bd

.field public static PARSER:Lcom/google/tagmanager/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_FIELD_NUMBER:I = 0x3

.field public static final RULES_EVALUATION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

.field private static volatile immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

.field public static final macro:Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;",
            "Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private result_:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

.field private rulesEvaluation_:Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 3775
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;-><init>(Z)V

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    .line 3776
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->initFields()V

    .line 3777
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->makeImmutable()V

    .line 3778
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/tagmanager/protobuf/MutableMessageLite;)Lcom/google/tagmanager/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    .line 3787
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getDefaultInstance()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v1

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    move-result-object v2

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    move-result-object v3

    sget-object v6, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    const-class v7, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    const/4 v4, 0x0

    const v5, 0x2d4c0bd

    invoke-static/range {v1 .. v7}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/tagmanager/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/tagmanager/protobuf/MessageLite;Lcom/google/tagmanager/protobuf/Internal$EnumLiteMap;ILcom/google/tagmanager/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->macro:Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3445
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;-><init>()V

    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 3446
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;-><init>()V

    return-void
.end method

.method private ensureResultInitialized()V
    .locals 2

    .line 3529
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->result_:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3530
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->newMessage()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->result_:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    :cond_0
    return-void
.end method

.method private ensureRulesEvaluationInitialized()V
    .locals 2

    .line 3474
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->rulesEvaluation_:Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3475
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->newMessage()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->rulesEvaluation_:Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;
    .locals 1

    .line 3459
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 3454
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->rulesEvaluation_:Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    .line 3455
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->result_:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    return-void
.end method

.method public static newMessage()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;
    .locals 1

    .line 3451
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;-><init>()V

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;
    .locals 2

    .line 3713
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->assertMutable()V

    .line 3714
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;->clear()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;

    .line 3715
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->rulesEvaluation_:Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3716
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->rulesEvaluation_:Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->clear()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    .line 3718
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

    .line 3719
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->result_:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 3720
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->result_:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->clear()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    .line 3722
    :cond_1
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 1

    .line 3440
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->clear()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 3440
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->clear()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    move-result-object v0

    return-object v0
.end method

.method public clearResult()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;
    .locals 2

    .line 3573
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->assertMutable()V

    .line 3574
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

    .line 3575
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->result_:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3576
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->result_:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->clear()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    :cond_0
    return-object p0
.end method

.method public clearRulesEvaluation()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;
    .locals 2

    .line 3518
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->assertMutable()V

    .line 3519
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

    .line 3520
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->rulesEvaluation_:Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3521
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->rulesEvaluation_:Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->clear()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    :cond_0
    return-object p0
.end method

.method public clone()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;
    .locals 1

    .line 3596
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->newMessageForType()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->mergeFrom(Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;)Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 3440
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->clone()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

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

    .line 3440
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->clone()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 3730
    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    if-nez v1, :cond_1

    .line 3731
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3733
    :cond_1
    check-cast p1, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    .line 3736
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->hasRulesEvaluation()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->hasRulesEvaluation()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    .line 3737
    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->hasRulesEvaluation()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 3738
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->getRulesEvaluation()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->getRulesEvaluation()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 3741
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->hasResult()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->hasResult()Z

    move-result v2

    if-ne v1, v2, :cond_5

    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v3

    .line 3742
    :goto_2
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->hasResult()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 3743
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->getResult()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->getResult()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v1, v0

    goto :goto_3

    :cond_6
    move v1, v3

    :cond_7
    :goto_3
    return v1
.end method

.method public final getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;
    .locals 1

    .line 3462
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 1

    .line 3440
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 3440
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMutableResult()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;
    .locals 1

    .line 3551
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->assertMutable()V

    .line 3552
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->ensureResultInitialized()V

    .line 3553
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

    .line 3554
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->result_:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    return-object v0
.end method

.method public getMutableRulesEvaluation()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;
    .locals 1

    .line 3496
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->assertMutable()V

    .line 3497
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->ensureRulesEvaluationInitialized()V

    .line 3498
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

    .line 3499
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->rulesEvaluation_:Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    return-object v0
.end method

.method public getParserForType()Lcom/google/tagmanager/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;",
            ">;"
        }
    .end annotation

    .line 3467
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-object v0
.end method

.method public getResult()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;
    .locals 1

    .line 3545
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->result_:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    return-object v0
.end method

.method public getRulesEvaluation()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;
    .locals 1

    .line 3490
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->rulesEvaluation_:Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 3692
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3693
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->rulesEvaluation_:Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    invoke-static {v1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3696
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 3697
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->result_:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3700
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v0

    add-int/2addr v2, v0

    .line 3701
    iput v2, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->cachedSize:I

    return v2
.end method

.method public hasResult()Z
    .locals 2

    .line 3539
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

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

.method public hasRulesEvaluation()Z
    .locals 2

    .line 3484
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

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
    .locals 2

    .line 3752
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->hasRulesEvaluation()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x13a46

    .line 3754
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->getRulesEvaluation()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    .line 3756
    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x25

    mul-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x3

    const/16 v0, 0x35

    mul-int/2addr v0, v1

    .line 3758
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->getResult()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    const/16 v1, 0x1d

    mul-int/2addr v1, v0

    .line 3760
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method protected internalImmutableDefault()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 3768
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    if-nez v0, :cond_0

    const-string v0, "com.google.analytics.containertag.proto.Debug$MacroEvaluationInfo"

    .line 3769
    invoke-static {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    .line 3771
    :cond_0
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 3582
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->hasRulesEvaluation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3583
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->getRulesEvaluation()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 3587
    :cond_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3588
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->getResult()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;)Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;
    .locals 2

    if-ne p0, p1, :cond_0

    .line 3601
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(message) called on the same message."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3604
    :cond_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->assertMutable()V

    .line 3605
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p0

    .line 3606
    :cond_1
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->hasRulesEvaluation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3607
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->ensureRulesEvaluationInitialized()V

    .line 3608
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->rulesEvaluation_:Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->getRulesEvaluation()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->mergeFrom(Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;)Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    .line 3609
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

    .line 3611
    :cond_2
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3612
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->ensureResultInitialized()V

    .line 3613
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->result_:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->getResult()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->mergeFrom(Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    .line 3614
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

    .line 3616
    :cond_3
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    iget-object p1, p1, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/ByteString;->concat(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;)Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 0

    .line 3440
    check-cast p1, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->mergeFrom(Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;)Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Z
    .locals 7

    .line 3623
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->assertMutable()V

    const/4 v0, 0x0

    .line 3625
    :try_start_0
    invoke-static {}, Lcom/google/tagmanager/protobuf/ByteString;->newOutput()Lcom/google/tagmanager/protobuf/ByteString$Output;

    move-result-object v1

    .line 3627
    invoke-static {v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object v2

    move v3, v0

    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-nez v3, :cond_6

    .line 3632
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readTag()I

    move-result v5

    if-eqz v5, :cond_5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_3

    const/16 v6, 0x1a

    if-eq v5, v6, :cond_1

    .line 3638
    invoke-virtual {p0, p1, v2, p2, v5}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->parseUnknownField(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 3653
    :cond_1
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->result_:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 3654
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->newMessage()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->result_:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    .line 3656
    :cond_2
    iget v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

    .line 3657
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->result_:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    invoke-virtual {p1, v4, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/MutableMessageLite;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 3645
    :cond_3
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->rulesEvaluation_:Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    move-result-object v6

    if-ne v5, v6, :cond_4

    .line 3646
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->newMessage()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->rulesEvaluation_:Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    .line 3648
    :cond_4
    iget v5, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

    .line 3649
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->rulesEvaluation_:Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    invoke-virtual {p1, v4, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/MutableMessageLite;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    :cond_5
    :goto_1
    move v3, v4

    goto :goto_0

    .line 3662
    :cond_6
    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V

    .line 3663
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    return v0
.end method

.method public newMessageForType()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;
    .locals 1

    .line 3448
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 3440
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->newMessageForType()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    move-result-object v0

    return-object v0
.end method

.method public setResult(Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;)Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;
    .locals 1

    .line 3561
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->assertMutable()V

    if-nez p1, :cond_0

    .line 3563
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 3565
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

    .line 3566
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->result_:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    return-object p0
.end method

.method public setRulesEvaluation(Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;)Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;
    .locals 1

    .line 3506
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->assertMutable()V

    if-nez p1, :cond_0

    .line 3508
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 3510
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

    .line 3511
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->rulesEvaluation_:Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    return-object p0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 3709
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeToWithCachedSizes(Lcom/google/tagmanager/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3673
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 3674
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 3675
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->rulesEvaluation_:Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    invoke-virtual {p1, v2, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/tagmanager/protobuf/MutableMessageLite;)V

    .line 3677
    :cond_0
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    .line 3678
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->result_:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    invoke-virtual {p1, v1, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/tagmanager/protobuf/MutableMessageLite;)V

    .line 3680
    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/tagmanager/protobuf/ByteString;)V

    .line 3681
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result p1

    .line 3682
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->getCachedSize()I

    move-result v1

    sub-int/2addr p1, v0

    if-eq v1, p1, :cond_2

    .line 3683
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method
