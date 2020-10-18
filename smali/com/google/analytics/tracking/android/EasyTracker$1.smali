.class Lcom/google/analytics/tracking/android/EasyTracker$1;
.super Ljava/lang/Object;
.source "EasyTracker.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/Clock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/analytics/tracking/android/EasyTracker;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/ParameterLoader;Lcom/google/analytics/tracking/android/GoogleAnalytics;Lcom/google/analytics/tracking/android/ServiceManager;Lcom/google/analytics/tracking/android/TrackerHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/EasyTracker;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/EasyTracker;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/google/analytics/tracking/android/EasyTracker$1;->this$0:Lcom/google/analytics/tracking/android/EasyTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
