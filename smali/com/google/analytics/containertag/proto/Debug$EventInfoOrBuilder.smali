.class public interface abstract Lcom/google/analytics/containertag/proto/Debug$EventInfoOrBuilder;
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
    name = "EventInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getContainerId()Ljava/lang/String;
.end method

.method public abstract getContainerIdBytes()Lcom/google/tagmanager/protobuf/ByteString;
.end method

.method public abstract getContainerVersion()Ljava/lang/String;
.end method

.method public abstract getContainerVersionBytes()Lcom/google/tagmanager/protobuf/ByteString;
.end method

.method public abstract getDataLayerEventResult()Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;
.end method

.method public abstract getEventType()Lcom/google/analytics/containertag/proto/Debug$EventInfo$EventType;
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getKeyBytes()Lcom/google/tagmanager/protobuf/ByteString;
.end method

.method public abstract getMacroResult()Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;
.end method

.method public abstract hasContainerId()Z
.end method

.method public abstract hasContainerVersion()Z
.end method

.method public abstract hasDataLayerEventResult()Z
.end method

.method public abstract hasEventType()Z
.end method

.method public abstract hasKey()Z
.end method

.method public abstract hasMacroResult()Z
.end method
