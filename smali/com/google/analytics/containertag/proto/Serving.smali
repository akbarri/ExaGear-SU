.class public final Lcom/google/analytics/containertag/proto/Serving;
.super Ljava/lang/Object;
.source "Serving.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/containertag/proto/Serving$OptionalResource;,
        Lcom/google/analytics/containertag/proto/Serving$OptionalResourceOrBuilder;,
        Lcom/google/analytics/containertag/proto/Serving$Resource;,
        Lcom/google/analytics/containertag/proto/Serving$ResourceOrBuilder;,
        Lcom/google/analytics/containertag/proto/Serving$CacheOption;,
        Lcom/google/analytics/containertag/proto/Serving$CacheOptionOrBuilder;,
        Lcom/google/analytics/containertag/proto/Serving$Rule;,
        Lcom/google/analytics/containertag/proto/Serving$RuleOrBuilder;,
        Lcom/google/analytics/containertag/proto/Serving$FunctionCall;,
        Lcom/google/analytics/containertag/proto/Serving$FunctionCallOrBuilder;,
        Lcom/google/analytics/containertag/proto/Serving$Property;,
        Lcom/google/analytics/containertag/proto/Serving$PropertyOrBuilder;,
        Lcom/google/analytics/containertag/proto/Serving$ServingValue;,
        Lcom/google/analytics/containertag/proto/Serving$ServingValueOrBuilder;,
        Lcom/google/analytics/containertag/proto/Serving$Container;,
        Lcom/google/analytics/containertag/proto/Serving$ContainerOrBuilder;,
        Lcom/google/analytics/containertag/proto/Serving$ResourceState;,
        Lcom/google/analytics/containertag/proto/Serving$ResourceType;
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
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->ext:Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;->add(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    return-void
.end method
