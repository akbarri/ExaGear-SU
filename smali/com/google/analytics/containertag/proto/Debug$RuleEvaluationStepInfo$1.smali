.class final Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo$1;
.super Lcom/google/tagmanager/protobuf/AbstractParser;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/tagmanager/protobuf/AbstractParser<",
        "Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 4580
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4585
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;-><init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;Lcom/google/analytics/containertag/proto/Debug$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4580
    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo$1;->parsePartialFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    move-result-object p1

    return-object p1
.end method
