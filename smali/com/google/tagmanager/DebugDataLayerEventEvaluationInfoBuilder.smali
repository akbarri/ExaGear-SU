.class Lcom/google/tagmanager/DebugDataLayerEventEvaluationInfoBuilder;
.super Ljava/lang/Object;
.source "DebugDataLayerEventEvaluationInfoBuilder.java"

# interfaces
.implements Lcom/google/tagmanager/DataLayerEventEvaluationInfoBuilder;


# instance fields
.field private dataLayerEvent:Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;


# direct methods
.method public constructor <init>(Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/google/tagmanager/DebugDataLayerEventEvaluationInfoBuilder;->dataLayerEvent:Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    return-void
.end method


# virtual methods
.method public createAndAddResult()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;
    .locals 2

    .line 20
    new-instance v0, Lcom/google/tagmanager/DebugResolvedFunctionCallBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/DebugDataLayerEventEvaluationInfoBuilder;->dataLayerEvent:Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;->addResults()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/tagmanager/DebugResolvedFunctionCallBuilder;-><init>(Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;)V

    return-object v0
.end method

.method public createRulesEvaluation()Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;
    .locals 2

    .line 25
    new-instance v0, Lcom/google/tagmanager/DebugRuleEvaluationStepInfoBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/DebugDataLayerEventEvaluationInfoBuilder;->dataLayerEvent:Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;->getMutableRulesEvaluation()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/tagmanager/DebugRuleEvaluationStepInfoBuilder;-><init>(Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;)V

    return-object v0
.end method
