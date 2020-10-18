.class final Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel$1;
.super Ljava/lang/Object;
.source "Serving.java"

# interfaces
.implements Lcom/google/tagmanager/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/tagmanager/protobuf/Internal$EnumLiteMap<",
        "Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;
    .locals 0

    .line 5686
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;->valueOf(I)Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/tagmanager/protobuf/Internal$EnumLite;
    .locals 0

    .line 5684
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel$1;->findValueByNumber(I)Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    move-result-object p1

    return-object p1
.end method
