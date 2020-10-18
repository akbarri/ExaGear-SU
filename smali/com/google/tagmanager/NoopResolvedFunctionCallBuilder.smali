.class Lcom/google/tagmanager/NoopResolvedFunctionCallBuilder;
.super Ljava/lang/Object;
.source "NoopResolvedFunctionCallBuilder.java"

# interfaces
.implements Lcom/google/tagmanager/ResolvedFunctionCallBuilder;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createResolvedPropertyBuilder(Ljava/lang/String;)Lcom/google/tagmanager/ResolvedPropertyBuilder;
    .locals 0

    .line 13
    new-instance p1, Lcom/google/tagmanager/NoopResolvedPropertyBuilder;

    invoke-direct {p1}, Lcom/google/tagmanager/NoopResolvedPropertyBuilder;-><init>()V

    return-object p1
.end method

.method public setFunctionResult(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V
    .locals 0

    return-void
.end method
