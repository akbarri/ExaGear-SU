.class Lcom/google/tagmanager/DebugResolvedFunctionCallBuilder;
.super Ljava/lang/Object;
.source "DebugResolvedFunctionCallBuilder.java"

# interfaces
.implements Lcom/google/tagmanager/ResolvedFunctionCallBuilder;


# instance fields
.field private resolvedFunctionCall:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;


# direct methods
.method public constructor <init>(Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/tagmanager/DebugResolvedFunctionCallBuilder;->resolvedFunctionCall:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    return-void
.end method


# virtual methods
.method public createResolvedPropertyBuilder(Ljava/lang/String;)Lcom/google/tagmanager/ResolvedPropertyBuilder;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/tagmanager/DebugResolvedFunctionCallBuilder;->resolvedFunctionCall:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->addProperties()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p1}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->setKey(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    .line 23
    new-instance p1, Lcom/google/tagmanager/DebugResolvedPropertyBuilder;

    invoke-direct {p1, v0}, Lcom/google/tagmanager/DebugResolvedPropertyBuilder;-><init>(Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;)V

    return-object p1
.end method

.method public setFunctionResult(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/tagmanager/DebugResolvedFunctionCallBuilder;->resolvedFunctionCall:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    invoke-static {p1}, Lcom/google/tagmanager/DebugValueBuilder;->copyImmutableValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->setResult(Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    return-void
.end method
