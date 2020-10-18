.class Lcom/google/tagmanager/NoopEventInfoBuilder;
.super Ljava/lang/Object;
.source "NoopEventInfoBuilder.java"

# interfaces
.implements Lcom/google/tagmanager/EventInfoBuilder;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDataLayerEventEvaluationInfoBuilder()Lcom/google/tagmanager/DataLayerEventEvaluationInfoBuilder;
    .locals 1

    .line 16
    new-instance v0, Lcom/google/tagmanager/NoopDataLayerEventEvaluationInfoBuilder;

    invoke-direct {v0}, Lcom/google/tagmanager/NoopDataLayerEventEvaluationInfoBuilder;-><init>()V

    return-object v0
.end method

.method public createMacroEvaluationInfoBuilder()Lcom/google/tagmanager/MacroEvaluationInfoBuilder;
    .locals 1

    .line 11
    new-instance v0, Lcom/google/tagmanager/NoopMacroEvaluationInfoBuilder;

    invoke-direct {v0}, Lcom/google/tagmanager/NoopMacroEvaluationInfoBuilder;-><init>()V

    return-object v0
.end method

.method public processEventInfo()V
    .locals 0

    return-void
.end method
