.class final Lcom/google/analytics/containertag/proto/MutableServing$ResourceState$1;
.super Ljava/lang/Object;
.source "MutableServing.java"

# interfaces
.implements Lcom/google/tagmanager/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/MutableServing$ResourceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/tagmanager/protobuf/Internal$EnumLiteMap<",
        "Lcom/google/analytics/containertag/proto/MutableServing$ResourceState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/analytics/containertag/proto/MutableServing$ResourceState;
    .locals 0

    .line 156
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/MutableServing$ResourceState;->valueOf(I)Lcom/google/analytics/containertag/proto/MutableServing$ResourceState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/tagmanager/protobuf/Internal$EnumLite;
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/MutableServing$ResourceState$1;->findValueByNumber(I)Lcom/google/analytics/containertag/proto/MutableServing$ResourceState;

    move-result-object p1

    return-object p1
.end method
