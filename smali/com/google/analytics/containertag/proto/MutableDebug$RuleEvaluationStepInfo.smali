.class public final Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;
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
    name = "RuleEvaluationStepInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite<",
        "Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;",
        ">;",
        "Lcom/google/tagmanager/protobuf/MutableMessageLite;"
    }
.end annotation


# static fields
.field public static final ENABLED_FUNCTIONS_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/tagmanager/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final RULES_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

.field private static volatile immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private enabledFunctions_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;",
            ">;"
        }
    .end annotation
.end field

.field private rules_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3041
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;-><init>(Z)V

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    .line 3042
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->initFields()V

    .line 3043
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->makeImmutable()V

    .line 3044
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/tagmanager/protobuf/MutableMessageLite;)Lcom/google/tagmanager/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2636
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 2660
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->rules_:Ljava/util/List;

    .line 2759
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->enabledFunctions_:Ljava/util/List;

    .line 2636
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 2637
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;-><init>()V

    const/4 p1, 0x0

    .line 2660
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->rules_:Ljava/util/List;

    .line 2759
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->enabledFunctions_:Ljava/util/List;

    return-void
.end method

.method private ensureEnabledFunctionsInitialized()V
    .locals 1

    .line 2761
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->enabledFunctions_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2762
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->enabledFunctions_:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private ensureRulesInitialized()V
    .locals 1

    .line 2662
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->rules_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2663
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->rules_:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;
    .locals 1

    .line 2648
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    return-void
.end method

.method public static newMessage()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;
    .locals 1

    .line 2642
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addAllEnabledFunctions(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;"
        }
    .end annotation

    .line 2829
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->assertMutable()V

    .line 2830
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->ensureEnabledFunctionsInitialized()V

    .line 2831
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->enabledFunctions_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllRules(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;"
        }
    .end annotation

    .line 2730
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->assertMutable()V

    .line 2731
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->ensureRulesInitialized()V

    .line 2732
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->rules_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addEnabledFunctions()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;
    .locals 2

    .line 2806
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->assertMutable()V

    .line 2807
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->ensureEnabledFunctionsInitialized()V

    .line 2808
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->newMessage()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object v0

    .line 2809
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->enabledFunctions_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addEnabledFunctions(Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;)Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;
    .locals 1

    .line 2816
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->assertMutable()V

    if-nez p1, :cond_0

    .line 2818
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 2820
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->ensureEnabledFunctionsInitialized()V

    .line 2821
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->enabledFunctions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addRules()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;
    .locals 2

    .line 2707
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->assertMutable()V

    .line 2708
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->ensureRulesInitialized()V

    .line 2709
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;->newMessage()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;

    move-result-object v0

    .line 2710
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->rules_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addRules(Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;)Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;
    .locals 1

    .line 2717
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->assertMutable()V

    if-nez p1, :cond_0

    .line 2719
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 2721
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->ensureRulesInitialized()V

    .line 2722
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->rules_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public clear()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;
    .locals 1

    .line 2991
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->assertMutable()V

    .line 2992
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;->clear()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;

    const/4 v0, 0x0

    .line 2993
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->rules_:Ljava/util/List;

    .line 2994
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->enabledFunctions_:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 1

    .line 2631
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->clear()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 2631
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->clear()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    move-result-object v0

    return-object v0
.end method

.method public clearEnabledFunctions()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;
    .locals 1

    .line 2852
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->assertMutable()V

    const/4 v0, 0x0

    .line 2853
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->enabledFunctions_:Ljava/util/List;

    return-object p0
.end method

.method public clearRules()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;
    .locals 1

    .line 2753
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->assertMutable()V

    const/4 v0, 0x0

    .line 2754
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->rules_:Ljava/util/List;

    return-object p0
.end method

.method public clone()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;
    .locals 1

    .line 2872
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->newMessageForType()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->mergeFrom(Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;)Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 2631
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->clone()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

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

    .line 2631
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->clone()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 3002
    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    if-nez v1, :cond_1

    .line 3003
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3005
    :cond_1
    check-cast p1, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    .line 3008
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->getRulesList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->getRulesList()Ljava/util/List;

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

    .line 3010
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->getEnabledFunctionsList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->getEnabledFunctionsList()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;
    .locals 1

    .line 2651
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 1

    .line 2631
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 2631
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledFunctions(I)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;
    .locals 1

    .line 2794
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->enabledFunctions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    return-object p1
.end method

.method public getEnabledFunctionsCount()I
    .locals 1

    .line 2771
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->enabledFunctions_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->enabledFunctions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getEnabledFunctionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;",
            ">;"
        }
    .end annotation

    .line 2777
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->enabledFunctions_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2778
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2780
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->enabledFunctions_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMutableEnabledFunctions(I)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;
    .locals 1

    .line 2800
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->enabledFunctions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    return-object p1
.end method

.method public getMutableEnabledFunctionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;",
            ">;"
        }
    .end annotation

    .line 2786
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->assertMutable()V

    .line 2787
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->ensureEnabledFunctionsInitialized()V

    .line 2788
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->enabledFunctions_:Ljava/util/List;

    return-object v0
.end method

.method public getMutableRules(I)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;
    .locals 1

    .line 2701
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->rules_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;

    return-object p1
.end method

.method public getMutableRulesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;",
            ">;"
        }
    .end annotation

    .line 2687
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->assertMutable()V

    .line 2688
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->ensureRulesInitialized()V

    .line 2689
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->rules_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/tagmanager/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;",
            ">;"
        }
    .end annotation

    .line 2656
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-object v0
.end method

.method public getRules(I)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;
    .locals 1

    .line 2695
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->rules_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;

    return-object p1
.end method

.method public getRulesCount()I
    .locals 1

    .line 2672
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->rules_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->rules_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getRulesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;",
            ">;"
        }
    .end annotation

    .line 2678
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->rules_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2679
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2681
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->rules_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 2966
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->rules_:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    move v2, v0

    .line 2967
    :goto_0
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->rules_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2968
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->rules_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/tagmanager/protobuf/MessageLite;

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2972
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->enabledFunctions_:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2973
    :goto_1
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->enabledFunctions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    const/4 v0, 0x2

    .line 2974
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->enabledFunctions_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-static {v0, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2978
    :cond_2
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v0

    add-int/2addr v2, v0

    .line 2979
    iput v2, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->cachedSize:I

    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 3018
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->getRulesCount()I

    move-result v0

    if-lez v0, :cond_0

    const v0, 0x13a46

    .line 3020
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->getRulesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    .line 3022
    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->getEnabledFunctionsCount()I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0x25

    mul-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    const/16 v0, 0x35

    mul-int/2addr v0, v1

    .line 3024
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->getEnabledFunctionsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    const/16 v1, 0x1d

    mul-int/2addr v1, v0

    .line 3026
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method protected internalImmutableDefault()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 3034
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    if-nez v0, :cond_0

    const-string v0, "com.google.analytics.containertag.proto.Debug$RuleEvaluationStepInfo"

    .line 3035
    invoke-static {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    .line 3037
    :cond_0
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 2858
    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->getRulesCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2859
    invoke-virtual {p0, v1}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->getRules(I)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 2863
    :goto_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->getEnabledFunctionsCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2864
    invoke-virtual {p0, v1}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->getEnabledFunctions(I)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;)Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;
    .locals 2

    if-ne p0, p1, :cond_0

    .line 2877
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(message) called on the same message."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2880
    :cond_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->assertMutable()V

    .line 2881
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p0

    .line 2882
    :cond_1
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->rules_:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->rules_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2883
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->ensureRulesInitialized()V

    .line 2884
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->rules_:Ljava/util/List;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->rules_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2887
    :cond_2
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->enabledFunctions_:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->enabledFunctions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2888
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->ensureEnabledFunctionsInitialized()V

    .line 2889
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->enabledFunctions_:Ljava/util/List;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->enabledFunctions_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2892
    :cond_3
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    iget-object p1, p1, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/ByteString;->concat(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;)Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 0

    .line 2631
    check-cast p1, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->mergeFrom(Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;)Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Z
    .locals 7

    .line 2899
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->assertMutable()V

    const/4 v0, 0x0

    .line 2901
    :try_start_0
    invoke-static {}, Lcom/google/tagmanager/protobuf/ByteString;->newOutput()Lcom/google/tagmanager/protobuf/ByteString$Output;

    move-result-object v1

    .line 2903
    invoke-static {v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object v2

    move v3, v0

    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-nez v3, :cond_4

    .line 2908
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readTag()I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v6, 0xa

    if-eq v5, v6, :cond_2

    const/16 v6, 0x12

    if-eq v5, v6, :cond_1

    .line 2914
    invoke-virtual {p0, p1, v2, p2, v5}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->parseUnknownField(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 2925
    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->addEnabledFunctions()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/MutableMessageLite;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 2921
    :cond_2
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->addRules()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/MutableMessageLite;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    :cond_3
    :goto_1
    move v3, v4

    goto :goto_0

    .line 2930
    :cond_4
    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V

    .line 2931
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    return v0
.end method

.method public newMessageForType()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;
    .locals 1

    .line 2639
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 2631
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->newMessageForType()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    move-result-object v0

    return-object v0
.end method

.method public setEnabledFunctions(ILcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;)Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;
    .locals 1

    .line 2840
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->assertMutable()V

    if-nez p2, :cond_0

    .line 2842
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 2844
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->ensureEnabledFunctionsInitialized()V

    .line 2845
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->enabledFunctions_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setRules(ILcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;)Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;
    .locals 1

    .line 2741
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->assertMutable()V

    if-nez p2, :cond_0

    .line 2743
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 2745
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->ensureRulesInitialized()V

    .line 2746
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->rules_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 2987
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeToWithCachedSizes(Lcom/google/tagmanager/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2941
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 2942
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->rules_:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    .line 2943
    :goto_0
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->rules_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2944
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->rules_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/tagmanager/protobuf/MutableMessageLite;

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/tagmanager/protobuf/MutableMessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2948
    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->enabledFunctions_:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 2949
    :goto_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->enabledFunctions_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    const/4 v1, 0x2

    .line 2950
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->enabledFunctions_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/tagmanager/protobuf/MutableMessageLite;

    invoke-virtual {p1, v1, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/tagmanager/protobuf/MutableMessageLite;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2954
    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/tagmanager/protobuf/ByteString;)V

    .line 2955
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result p1

    .line 2956
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->getCachedSize()I

    move-result v1

    sub-int/2addr p1, v0

    if-eq v1, p1, :cond_2

    .line 2957
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method
