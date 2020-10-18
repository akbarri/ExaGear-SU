.class final Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType$1;
.super Ljava/lang/Object;
.source "MutableDebug.java"

# interfaces
.implements Lcom/google/tagmanager/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/tagmanager/protobuf/Internal$EnumLiteMap<",
        "Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;
    .locals 0

    .line 380
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;->valueOf(I)Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/tagmanager/protobuf/Internal$EnumLite;
    .locals 0

    .line 378
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType$1;->findValueByNumber(I)Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo$EventType;

    move-result-object p1

    return-object p1
.end method
