.class Lcom/google/tagmanager/DebugEventInfoBuilder;
.super Ljava/lang/Object;
.source "DebugEventInfoBuilder.java"

# interfaces
.implements Lcom/google/tagmanager/EventInfoBuilder;


# instance fields
.field private dataLayerEventBuilder:Lcom/google/tagmanager/DebugDataLayerEventEvaluationInfoBuilder;

.field eventInfoBuilder:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private handler:Lcom/google/tagmanager/DebugInformationHandler;

.field private macroBuilder:Lcom/google/tagmanager/DebugMacroEvaluationInfoBuilder;


# direct methods
.method public constructor <init>(Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/tagmanager/DebugInformationHandler;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->newMessage()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->eventInfoBuilder:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    .line 23
    iget-object v0, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->eventInfoBuilder:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    invoke-virtual {v0, p1}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->setEventType(Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;)Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    .line 24
    iget-object v0, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->eventInfoBuilder:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    invoke-virtual {v0, p2}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->setContainerVersion(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    .line 25
    iget-object p2, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->eventInfoBuilder:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    invoke-virtual {p2, p3}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->setContainerId(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    .line 26
    iget-object p2, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->eventInfoBuilder:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    invoke-virtual {p2, p4}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->setKey(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    .line 27
    iput-object p5, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->handler:Lcom/google/tagmanager/DebugInformationHandler;

    .line 28
    sget-object p2, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;->DATA_LAYER_EVENT:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;

    invoke-virtual {p1, p2}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 29
    new-instance p1, Lcom/google/tagmanager/DebugDataLayerEventEvaluationInfoBuilder;

    iget-object p2, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->eventInfoBuilder:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    invoke-virtual {p2}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getMutableDataLayerEventResult()Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/tagmanager/DebugDataLayerEventEvaluationInfoBuilder;-><init>(Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;)V

    iput-object p1, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->dataLayerEventBuilder:Lcom/google/tagmanager/DebugDataLayerEventEvaluationInfoBuilder;

    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Lcom/google/tagmanager/DebugMacroEvaluationInfoBuilder;

    iget-object p2, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->eventInfoBuilder:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    invoke-virtual {p2}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->getMutableMacroResult()Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/tagmanager/DebugMacroEvaluationInfoBuilder;-><init>(Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;)V

    iput-object p1, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->macroBuilder:Lcom/google/tagmanager/DebugMacroEvaluationInfoBuilder;

    :goto_0
    return-void
.end method


# virtual methods
.method public createDataLayerEventEvaluationInfoBuilder()Lcom/google/tagmanager/DataLayerEventEvaluationInfoBuilder;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->dataLayerEventBuilder:Lcom/google/tagmanager/DebugDataLayerEventEvaluationInfoBuilder;

    return-object v0
.end method

.method public createMacroEvaluationInfoBuilder()Lcom/google/tagmanager/MacroEvaluationInfoBuilder;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->macroBuilder:Lcom/google/tagmanager/DebugMacroEvaluationInfoBuilder;

    return-object v0
.end method

.method public processEventInfo()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->handler:Lcom/google/tagmanager/DebugInformationHandler;

    iget-object v1, p0, Lcom/google/tagmanager/DebugEventInfoBuilder;->eventInfoBuilder:Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    invoke-interface {v0, v1}, Lcom/google/tagmanager/DebugInformationHandler;->receiveEventInfo(Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;)V

    return-void
.end method
