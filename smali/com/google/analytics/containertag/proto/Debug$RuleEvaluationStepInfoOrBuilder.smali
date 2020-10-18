.class public interface abstract Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfoOrBuilder;
.super Ljava/lang/Object;
.source "Debug.java"

# interfaces
.implements Lcom/google/tagmanager/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RuleEvaluationStepInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getEnabledFunctions(I)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
.end method

.method public abstract getEnabledFunctionsCount()I
.end method

.method public abstract getEnabledFunctionsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRules(I)Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
.end method

.method public abstract getRulesCount()I
.end method

.method public abstract getRulesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;",
            ">;"
        }
    .end annotation
.end method
