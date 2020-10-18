.class public interface abstract Lcom/google/analytics/containertag/proto/Debug$DebugEventsOrBuilder;
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
    name = "DebugEventsOrBuilder"
.end annotation


# virtual methods
.method public abstract getEvent(I)Lcom/google/analytics/containertag/proto/Debug$EventInfo;
.end method

.method public abstract getEventCount()I
.end method

.method public abstract getEventList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Debug$EventInfo;",
            ">;"
        }
    .end annotation
.end method
