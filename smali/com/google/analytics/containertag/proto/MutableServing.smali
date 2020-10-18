.class public final Lcom/google/analytics/containertag/proto/MutableServing;
.super Ljava/lang/Object;
.source "MutableServing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;,
        Lcom/google/analytics/containertag/proto/MutableServing$Resource;,
        Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;,
        Lcom/google/analytics/containertag/proto/MutableServing$Rule;,
        Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;,
        Lcom/google/analytics/containertag/proto/MutableServing$Property;,
        Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;,
        Lcom/google/analytics/containertag/proto/MutableServing$Container;,
        Lcom/google/analytics/containertag/proto/MutableServing$ResourceState;,
        Lcom/google/analytics/containertag/proto/MutableServing$ResourceType;
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
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->ext:Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;->add(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    return-void
.end method
