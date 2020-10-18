.class Lcom/google/tagmanager/DebugRuleEvaluationStepInfoBuilder;
.super Ljava/lang/Object;
.source "DebugRuleEvaluationStepInfoBuilder.java"

# interfaces
.implements Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;


# instance fields
.field private ruleEvaluationStepInfo:Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;


# direct methods
.method public constructor <init>(Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/tagmanager/DebugRuleEvaluationStepInfoBuilder;->ruleEvaluationStepInfo:Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    return-void
.end method


# virtual methods
.method public createResolvedRuleBuilder()Lcom/google/tagmanager/ResolvedRuleBuilder;
    .locals 2

    .line 31
    new-instance v0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/DebugRuleEvaluationStepInfoBuilder;->ruleEvaluationStepInfo:Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->addRules()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/tagmanager/DebugResolvedRuleBuilder;-><init>(Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;)V

    return-object v0
.end method

.method public setEnabledFunctions(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 24
    iget-object v1, p0, Lcom/google/tagmanager/DebugRuleEvaluationStepInfoBuilder;->ruleEvaluationStepInfo:Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    invoke-static {v0}, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->translateExpandedFunctionCall(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;->addEnabledFunctions(Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;)Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    goto :goto_0

    :cond_0
    return-void
.end method
