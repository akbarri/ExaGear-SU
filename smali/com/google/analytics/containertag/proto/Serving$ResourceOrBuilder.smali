.class public interface abstract Lcom/google/analytics/containertag/proto/Serving$ResourceOrBuilder;
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
    name = "ResourceOrBuilder"
.end annotation


# virtual methods
.method public abstract getEnableAutoEventTracking()Z
.end method

.method public abstract getKey(I)Ljava/lang/String;
.end method

.method public abstract getKeyBytes(I)Lcom/google/tagmanager/protobuf/ByteString;
.end method

.method public abstract getKeyCount()I
.end method

.method public abstract getKeyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLiveJsCacheOption()Lcom/google/analytics/containertag/proto/Serving$CacheOption;
.end method

.method public abstract getMacro(I)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
.end method

.method public abstract getMacroCount()I
.end method

.method public abstract getMacroList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Serving$FunctionCall;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMalwareScanAuthCode()Ljava/lang/String;
.end method

.method public abstract getMalwareScanAuthCodeBytes()Lcom/google/tagmanager/protobuf/ByteString;
.end method

.method public abstract getPredicate(I)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
.end method

.method public abstract getPredicateCount()I
.end method

.method public abstract getPredicateList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Serving$FunctionCall;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPreviewAuthCode()Ljava/lang/String;
.end method

.method public abstract getPreviewAuthCodeBytes()Lcom/google/tagmanager/protobuf/ByteString;
.end method

.method public abstract getProperty(I)Lcom/google/analytics/containertag/proto/Serving$Property;
.end method

.method public abstract getPropertyCount()I
.end method

.method public abstract getPropertyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Serving$Property;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReportingSampleRate()F
.end method

.method public abstract getResourceFormatVersion()I
.end method

.method public abstract getRule(I)Lcom/google/analytics/containertag/proto/Serving$Rule;
.end method

.method public abstract getRuleCount()I
.end method

.method public abstract getRuleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Serving$Rule;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTag(I)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
.end method

.method public abstract getTagCount()I
.end method

.method public abstract getTagList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Serving$FunctionCall;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTemplateVersionSet()Ljava/lang/String;
.end method

.method public abstract getTemplateVersionSetBytes()Lcom/google/tagmanager/protobuf/ByteString;
.end method

.method public abstract getUsageContext(I)Ljava/lang/String;
.end method

.method public abstract getUsageContextBytes(I)Lcom/google/tagmanager/protobuf/ByteString;
.end method

.method public abstract getUsageContextCount()I
.end method

.method public abstract getUsageContextList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getValue(I)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
.end method

.method public abstract getValueCount()I
.end method

.method public abstract getValueList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract getVersionBytes()Lcom/google/tagmanager/protobuf/ByteString;
.end method

.method public abstract hasEnableAutoEventTracking()Z
.end method

.method public abstract hasLiveJsCacheOption()Z
.end method

.method public abstract hasMalwareScanAuthCode()Z
.end method

.method public abstract hasPreviewAuthCode()Z
.end method

.method public abstract hasReportingSampleRate()Z
.end method

.method public abstract hasResourceFormatVersion()Z
.end method

.method public abstract hasTemplateVersionSet()Z
.end method

.method public abstract hasVersion()Z
.end method
