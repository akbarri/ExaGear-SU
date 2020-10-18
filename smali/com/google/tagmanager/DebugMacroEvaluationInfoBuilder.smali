.class Lcom/google/tagmanager/DebugMacroEvaluationInfoBuilder;
.super Ljava/lang/Object;
.source "DebugMacroEvaluationInfoBuilder.java"

# interfaces
.implements Lcom/google/tagmanager/MacroEvaluationInfoBuilder;


# instance fields
.field private macroEvaluationInfo:Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;


# direct methods
.method public constructor <init>(Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/google/tagmanager/DebugMacroEvaluationInfoBuilder;->macroEvaluationInfo:Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    return-void
.end method


# virtual methods
.method public createResult()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;
    .locals 2

    .line 19
    new-instance v0, Lcom/google/tagmanager/DebugResolvedFunctionCallBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/DebugMacroEvaluationInfoBuilder;->macroEvaluationInfo:Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->getMutableResult()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/tagmanager/DebugResolvedFunctionCallBuilder;-><init>(Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;)V

    return-object v0
.end method

.method public createRulesEvaluation()Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;
    .locals 2

    .line 24
    new-instance v0, Lcom/google/tagmanager/DebugRuleEvaluationStepInfoBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/DebugMacroEvaluationInfoBuilder;->macroEvaluationInfo:Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->getMutableRulesEvaluation()Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/tagmanager/DebugRuleEvaluationStepInfoBuilder;-><init>(Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;)V

    return-object v0
.end method
