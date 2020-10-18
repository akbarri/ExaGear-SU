.class public interface abstract Lcom/google/analytics/containertag/proto/Serving$ContainerOrBuilder;
.super Ljava/lang/Object;
.source "Serving.java"

# interfaces
.implements Lcom/google/tagmanager/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContainerOrBuilder"
.end annotation


# virtual methods
.method public abstract getContainerId()Ljava/lang/String;
.end method

.method public abstract getContainerIdBytes()Lcom/google/tagmanager/protobuf/ByteString;
.end method

.method public abstract getJsResource()Lcom/google/analytics/containertag/proto/Serving$Resource;
.end method

.method public abstract getState()Lcom/google/analytics/containertag/proto/Serving$ResourceState;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract getVersionBytes()Lcom/google/tagmanager/protobuf/ByteString;
.end method

.method public abstract hasContainerId()Z
.end method

.method public abstract hasJsResource()Z
.end method

.method public abstract hasState()Z
.end method

.method public abstract hasVersion()Z
.end method
