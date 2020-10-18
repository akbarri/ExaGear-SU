.class Lcom/google/tagmanager/TrackerProvider;
.super Ljava/lang/Object;
.source "TrackerProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/TrackerProvider$LoggerImpl;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGoogleAnalytics:Lcom/google/analytics/tracking/android/GoogleAnalytics;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/tagmanager/TrackerProvider;->mContext:Landroid/content/Context;

    return-void
.end method

.method constructor <init>(Lcom/google/analytics/tracking/android/GoogleAnalytics;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/tagmanager/TrackerProvider;->mGoogleAnalytics:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 26
    iget-object p1, p0, Lcom/google/tagmanager/TrackerProvider;->mGoogleAnalytics:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    new-instance v0, Lcom/google/tagmanager/TrackerProvider$LoggerImpl;

    invoke-direct {v0}, Lcom/google/tagmanager/TrackerProvider$LoggerImpl;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->setLogger(Lcom/google/analytics/tracking/android/Logger;)V

    return-void
.end method

.method private declared-synchronized initTrackProviderIfNecessary()V
    .locals 2

    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/TrackerProvider;->mGoogleAnalytics:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/google/tagmanager/TrackerProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/TrackerProvider;->mGoogleAnalytics:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 43
    iget-object v0, p0, Lcom/google/tagmanager/TrackerProvider;->mGoogleAnalytics:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    new-instance v1, Lcom/google/tagmanager/TrackerProvider$LoggerImpl;

    invoke-direct {v1}, Lcom/google/tagmanager/TrackerProvider$LoggerImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->setLogger(Lcom/google/analytics/tracking/android/Logger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 40
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public close(Lcom/google/analytics/tracking/android/Tracker;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/tagmanager/TrackerProvider;->mGoogleAnalytics:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Tracker;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->closeTracker(Ljava/lang/String;)V

    return-void
.end method

.method public getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/google/tagmanager/TrackerProvider;->initTrackProviderIfNecessary()V

    .line 32
    iget-object v0, p0, Lcom/google/tagmanager/TrackerProvider;->mGoogleAnalytics:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object p1

    return-object p1
.end method
