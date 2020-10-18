.class public interface abstract Lcom/google/analytics/containertag/proto/Serving$FunctionCallOrBuilder;
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
    name = "FunctionCallOrBuilder"
.end annotation


# virtual methods
.method public abstract getFunction()I
.end method

.method public abstract getLiveOnly()Z
.end method

.method public abstract getName()I
.end method

.method public abstract getProperty(I)I
.end method

.method public abstract getPropertyCount()I
.end method

.method public abstract getPropertyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServerSide()Z
.end method

.method public abstract hasFunction()Z
.end method

.method public abstract hasLiveOnly()Z
.end method

.method public abstract hasName()Z
.end method

.method public abstract hasServerSide()Z
.end method
