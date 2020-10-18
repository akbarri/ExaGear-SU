.class public interface abstract Lcom/google/analytics/containertag/proto/Serving$CacheOptionOrBuilder;
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
    name = "CacheOptionOrBuilder"
.end annotation


# virtual methods
.method public abstract getExpirationSeconds()I
.end method

.method public abstract getGcacheExpirationSeconds()I
.end method

.method public abstract getLevel()Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;
.end method

.method public abstract hasExpirationSeconds()Z
.end method

.method public abstract hasGcacheExpirationSeconds()Z
.end method

.method public abstract hasLevel()Z
.end method
