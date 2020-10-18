.class public final Lcom/google/analytics/containertag/proto/MutableDebug;
.super Ljava/lang/Object;
.source "MutableDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;,
        Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;,
        Lcom/google/analytics/containertag/proto/MutableDebug$DataLayerEventEvaluationInfo;,
        Lcom/google/analytics/containertag/proto/MutableDebug$RuleEvaluationStepInfo;,
        Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;,
        Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;,
        Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;,
        Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V
    .locals 1

    .line 10
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->macro:Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;->add(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    return-void
.end method
