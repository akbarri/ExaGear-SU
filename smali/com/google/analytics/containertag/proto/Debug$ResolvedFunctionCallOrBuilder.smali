.class public interface abstract Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCallOrBuilder;
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
    name = "ResolvedFunctionCallOrBuilder"
.end annotation


# virtual methods
.method public abstract getAssociatedRuleName()Ljava/lang/String;
.end method

.method public abstract getAssociatedRuleNameBytes()Lcom/google/tagmanager/protobuf/ByteString;
.end method

.method public abstract getProperties(I)Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
.end method

.method public abstract getPropertiesCount()I
.end method

.method public abstract getPropertiesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResult()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
.end method

.method public abstract hasAssociatedRuleName()Z
.end method

.method public abstract hasResult()Z
.end method
