.class public interface abstract Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfoOrBuilder;
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
    name = "DataLayerEventEvaluationInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getResults(I)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
.end method

.method public abstract getResultsCount()I
.end method

.method public abstract getResultsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRulesEvaluation()Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;
.end method

.method public abstract hasRulesEvaluation()Z
.end method
