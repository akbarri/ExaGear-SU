.class public Lcom/google/analytics/tracking/android/GoogleAnalytics;
.super Lcom/google/analytics/tracking/android/TrackerHandler;
.source "GoogleAnalytics.java"


# static fields
.field private static sInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;


# instance fields
.field private volatile mAppOptOut:Ljava/lang/Boolean;

.field private mContext:Landroid/content/Context;

.field private mDefaultTracker:Lcom/google/analytics/tracking/android/Tracker;

.field private mDryRun:Z

.field private mLogger:Lcom/google/analytics/tracking/android/Logger;

.field private mThread:Lcom/google/analytics/tracking/android/AnalyticsThread;

.field private final mTrackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/tracking/android/Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 48
    invoke-static {p1}, Lcom/google/analytics/tracking/android/GAThread;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GAThread;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/TrackerHandler;-><init>()V

    const/4 v0, 0x0

    .line 38
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mAppOptOut:Ljava/lang/Boolean;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mTrackers:Ljava/util/Map;

    if-nez p1, :cond_0

    .line 53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mThread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    .line 58
    iget-object p1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->initializeProvider(Landroid/content/Context;)V

    .line 59
    iget-object p1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->initializeProvider(Landroid/content/Context;)V

    .line 60
    iget-object p1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->initializeProvider(Landroid/content/Context;)V

    .line 62
    new-instance p1, Lcom/google/analytics/tracking/android/DefaultLoggerImpl;

    invoke-direct {p1}, Lcom/google/analytics/tracking/android/DefaultLoggerImpl;-><init>()V

    iput-object p1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mLogger:Lcom/google/analytics/tracking/android/Logger;

    return-void
.end method

.method static clearDefaultProviders()V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 122
    invoke-static {}, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->dropInstance()V

    .line 123
    invoke-static {}, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->dropInstance()V

    .line 124
    invoke-static {}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->dropInstance()V

    return-void
.end method

.method static clearInstance()V
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 114
    const-class v0, Lcom/google/analytics/tracking/android/GoogleAnalytics;

    monitor-enter v0

    const/4 v1, 0x0

    .line 115
    :try_start_0
    sput-object v1, Lcom/google/analytics/tracking/android/GoogleAnalytics;->sInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 116
    invoke-static {}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->clearDefaultProviders()V

    .line 117
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getInstance()Lcom/google/analytics/tracking/android/GoogleAnalytics;
    .locals 2

    .line 86
    const-class v0, Lcom/google/analytics/tracking/android/GoogleAnalytics;

    monitor-enter v0

    .line 87
    :try_start_0
    sget-object v1, Lcom/google/analytics/tracking/android/GoogleAnalytics;->sInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 88
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;
    .locals 2

    .line 71
    const-class v0, Lcom/google/analytics/tracking/android/GoogleAnalytics;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/google/analytics/tracking/android/GoogleAnalytics;->sInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-direct {v1, p0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/analytics/tracking/android/GoogleAnalytics;->sInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 75
    :cond_0
    sget-object p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->sInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 76
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static getNewInstance(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)Lcom/google/analytics/tracking/android/GoogleAnalytics;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 100
    const-class v0, Lcom/google/analytics/tracking/android/GoogleAnalytics;

    monitor-enter v0

    .line 101
    :try_start_0
    sget-object v1, Lcom/google/analytics/tracking/android/GoogleAnalytics;->sInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    if-eqz v1, :cond_0

    .line 102
    sget-object v1, Lcom/google/analytics/tracking/android/GoogleAnalytics;->sInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->close()V

    .line 104
    :cond_0
    new-instance v1, Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-direct {v1, p0, p1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)V

    sput-object v1, Lcom/google/analytics/tracking/android/GoogleAnalytics;->sInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 105
    sget-object p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->sInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 106
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method close()V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public closeTracker(Ljava/lang/String;)V
    .locals 2

    .line 223
    monitor-enter p0

    .line 224
    :try_start_0
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->CLOSE_TRACKER:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 225
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mTrackers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/tracking/android/Tracker;

    .line 226
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mDefaultTracker:Lcom/google/analytics/tracking/android/Tracker;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 227
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mDefaultTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 229
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAppOptOut()Z
    .locals 2

    .line 274
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_APP_OPT_OUT:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 275
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mAppOptOut:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getDefaultTracker()Lcom/google/analytics/tracking/android/Tracker;
    .locals 2

    .line 200
    monitor-enter p0

    .line 201
    :try_start_0
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_DEFAULT_TRACKER:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 202
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mDefaultTracker:Lcom/google/analytics/tracking/android/Tracker;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 203
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLogger()Lcom/google/analytics/tracking/android/Logger;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mLogger:Lcom/google/analytics/tracking/android/Logger;

    return-object v0
.end method

.method public getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;
    .locals 0

    .line 192
    invoke-virtual {p0, p1, p1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object p1

    return-object p1
.end method

.method public getTracker(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;
    .locals 2

    .line 162
    monitor-enter p0

    .line 163
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Tracker name cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mTrackers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/Tracker;

    if-nez v0, :cond_1

    .line 169
    new-instance v0, Lcom/google/analytics/tracking/android/Tracker;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/analytics/tracking/android/Tracker;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/TrackerHandler;)V

    .line 170
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mTrackers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object p1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mDefaultTracker:Lcom/google/analytics/tracking/android/Tracker;

    if-nez p1, :cond_1

    .line 172
    iput-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mDefaultTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 175
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "&tid"

    .line 176
    invoke-virtual {v0, p1, p2}, Lcom/google/analytics/tracking/android/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_2
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object p1

    sget-object p2, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_TRACKER:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {p1, p2}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 179
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 180
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isDryRunEnabled()Z
    .locals 2

    .line 143
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_DRY_RUN:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 144
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mDryRun:Z

    return v0
.end method

.method sendHit(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 235
    monitor-enter p0

    if-nez p1, :cond_0

    .line 238
    :try_start_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hit cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const-string v0, "&ul"

    .line 241
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Utils;->getLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/analytics/tracking/android/Utils;->putIfAbsent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "&sr"

    .line 242
    invoke-static {}, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->getProvider()Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

    move-result-object v1

    const-string v2, "&sr"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/analytics/tracking/android/Utils;->putIfAbsent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "&_u"

    .line 244
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/GAUsage;->getAndClearSequence()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAUsage;->getAndClearUsage()Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mThread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    invoke-interface {v0, p1}, Lcom/google/analytics/tracking/android/AnalyticsThread;->sendHit(Ljava/util/Map;)V

    .line 248
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setAppOptOut(Z)V
    .locals 2

    .line 263
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_APP_OPT_OUT:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 264
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mAppOptOut:Ljava/lang/Boolean;

    .line 265
    iget-object p1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mAppOptOut:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 266
    iget-object p1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mThread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    invoke-interface {p1}, Lcom/google/analytics/tracking/android/AnalyticsThread;->clearHits()V

    :cond_0
    return-void
.end method

.method public setDefaultTracker(Lcom/google/analytics/tracking/android/Tracker;)V
    .locals 2

    .line 210
    monitor-enter p0

    .line 211
    :try_start_0
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_DEFAULT_TRACKER:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 212
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mDefaultTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 213
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setDryRun(Z)V
    .locals 2

    .line 135
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_DRY_RUN:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 136
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mDryRun:Z

    return-void
.end method

.method public setLogger(Lcom/google/analytics/tracking/android/Logger;)V
    .locals 2

    .line 292
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_LOGGER:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 293
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mLogger:Lcom/google/analytics/tracking/android/Logger;

    return-void
.end method
