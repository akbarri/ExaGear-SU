.class public Lcom/google/analytics/tracking/android/EasyTracker;
.super Lcom/google/analytics/tracking/android/Tracker;
.source "EasyTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/tracking/android/EasyTracker$NotInForegroundTimerTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_SAMPLE_RATE:I = 0x64

.field private static final EASY_TRACKER_NAME:Ljava/lang/String; = "easy_tracker"

.field static final NUM_MILLISECONDS_TO_WAIT_FOR_OPEN_ACTIVITY:I = 0x3e8

.field private static sInstance:Lcom/google/analytics/tracking/android/EasyTracker;

.field private static sResourcePackageName:Ljava/lang/String;


# instance fields
.field private mActivitiesActive:I

.field private final mActivityNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClock:Lcom/google/analytics/tracking/android/Clock;

.field private mContext:Landroid/content/Context;

.field private final mGoogleAnalytics:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field private mIsAutoActivityTracking:Z

.field private mIsInForeground:Z

.field private mIsReportUncaughtExceptionsEnabled:Z

.field private mLastOnStopTime:J

.field private mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

.field private mServiceManager:Lcom/google/analytics/tracking/android/ServiceManager;

.field private mSessionTimeout:J

.field private mStartSessionOnNextSend:Z

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 94
    new-instance v2, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;

    invoke-direct {v2, p1}, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v3

    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/analytics/tracking/android/EasyTracker;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/ParameterLoader;Lcom/google/analytics/tracking/android/GoogleAnalytics;Lcom/google/analytics/tracking/android/ServiceManager;Lcom/google/analytics/tracking/android/TrackerHandler;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/ParameterLoader;Lcom/google/analytics/tracking/android/GoogleAnalytics;Lcom/google/analytics/tracking/android/ServiceManager;Lcom/google/analytics/tracking/android/TrackerHandler;)V
    .locals 2

    const-string v0, "easy_tracker"

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    move-object p5, p3

    :goto_0
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, v0, v1, p5}, Lcom/google/analytics/tracking/android/Tracker;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/TrackerHandler;)V

    const/4 p5, 0x0

    .line 155
    iput-boolean p5, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mIsAutoActivityTracking:Z

    .line 160
    iput p5, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mActivitiesActive:I

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mActivityNameMap:Ljava/util/Map;

    .line 189
    iput-boolean p5, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mIsInForeground:Z

    .line 192
    iput-boolean p5, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mStartSessionOnNextSend:Z

    .line 102
    sget-object p5, Lcom/google/analytics/tracking/android/EasyTracker;->sResourcePackageName:Ljava/lang/String;

    if-eqz p5, :cond_1

    .line 103
    sget-object p5, Lcom/google/analytics/tracking/android/EasyTracker;->sResourcePackageName:Ljava/lang/String;

    invoke-interface {p2, p5}, Lcom/google/analytics/tracking/android/ParameterLoader;->setResourcePackageName(Ljava/lang/String;)V

    .line 106
    :cond_1
    iput-object p3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mGoogleAnalytics:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 108
    invoke-direct {p0, p1, p2, p4}, Lcom/google/analytics/tracking/android/EasyTracker;->setContext(Landroid/content/Context;Lcom/google/analytics/tracking/android/ParameterLoader;Lcom/google/analytics/tracking/android/ServiceManager;)V

    .line 110
    new-instance p1, Lcom/google/analytics/tracking/android/EasyTracker$1;

    invoke-direct {p1, p0}, Lcom/google/analytics/tracking/android/EasyTracker$1;-><init>(Lcom/google/analytics/tracking/android/EasyTracker;)V

    iput-object p1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mClock:Lcom/google/analytics/tracking/android/Clock;

    return-void
.end method

.method static synthetic access$102(Lcom/google/analytics/tracking/android/EasyTracker;Z)Z
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mIsInForeground:Z

    return p1
.end method

.method private declared-synchronized clearExistingTimer()V
    .locals 1

    monitor-enter p0

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 388
    iput-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 385
    monitor-exit p0

    throw v0
.end method

.method private getActivityName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    .line 402
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    .line 403
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mActivityNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mActivityNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    invoke-interface {v0, p1}, Lcom/google/analytics/tracking/android/ParameterLoader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p1

    .line 410
    :cond_1
    iget-object v1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mActivityNameMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;
    .locals 1

    .line 130
    sget-object v0, Lcom/google/analytics/tracking/android/EasyTracker;->sInstance:Lcom/google/analytics/tracking/android/EasyTracker;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/google/analytics/tracking/android/EasyTracker;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/analytics/tracking/android/EasyTracker;->sInstance:Lcom/google/analytics/tracking/android/EasyTracker;

    .line 133
    :cond_0
    sget-object p0, Lcom/google/analytics/tracking/android/EasyTracker;->sInstance:Lcom/google/analytics/tracking/android/EasyTracker;

    return-object p0
.end method

.method private getLogLevelFromString(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Logger$LogLevel;
    .locals 0

    .line 288
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/analytics/tracking/android/Logger$LogLevel;->valueOf(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Logger$LogLevel;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static getNewInstance(Landroid/content/Context;Lcom/google/analytics/tracking/android/ParameterLoader;Lcom/google/analytics/tracking/android/GoogleAnalytics;Lcom/google/analytics/tracking/android/ServiceManager;Lcom/google/analytics/tracking/android/TrackerHandler;)Lcom/google/analytics/tracking/android/EasyTracker;
    .locals 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 142
    new-instance v6, Lcom/google/analytics/tracking/android/EasyTracker;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/analytics/tracking/android/EasyTracker;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/ParameterLoader;Lcom/google/analytics/tracking/android/GoogleAnalytics;Lcom/google/analytics/tracking/android/ServiceManager;Lcom/google/analytics/tracking/android/TrackerHandler;)V

    sput-object v6, Lcom/google/analytics/tracking/android/EasyTracker;->sInstance:Lcom/google/analytics/tracking/android/EasyTracker;

    .line 143
    sget-object p0, Lcom/google/analytics/tracking/android/EasyTracker;->sInstance:Lcom/google/analytics/tracking/android/EasyTracker;

    return-object p0
.end method

.method private loadParameters()V
    .locals 5

    const-string v0, "Starting EasyTracker."

    .line 208
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v1, "ga_trackingId"

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/ParameterLoader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v1, "ga_api_key"

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/ParameterLoader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "&tid"

    .line 216
    invoke-virtual {p0, v1, v0}, Lcom/google/analytics/tracking/android/EasyTracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EasyTracker] trackingId loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v1, "ga_appName"

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/ParameterLoader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EasyTracker] app name loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    const-string v1, "&an"

    .line 222
    invoke-virtual {p0, v1, v0}, Lcom/google/analytics/tracking/android/EasyTracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v1, "ga_appVersion"

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/ParameterLoader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EasyTracker] app version loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    const-string v1, "&av"

    .line 231
    invoke-virtual {p0, v1, v0}, Lcom/google/analytics/tracking/android/EasyTracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v1, "ga_logLevel"

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/ParameterLoader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 236
    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/EasyTracker;->getLogLevelFromString(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Logger$LogLevel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EasyTracker] log level loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mGoogleAnalytics:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/analytics/tracking/android/Logger;->setLogLevel(Lcom/google/analytics/tracking/android/Logger$LogLevel;)V

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v1, "ga_sampleFrequency"

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/ParameterLoader;->getDoubleFromString(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_4

    .line 246
    new-instance v0, Ljava/lang/Double;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v2, "ga_sampleRate"

    const/16 v3, 0x64

    invoke-interface {v1, v2, v3}, Lcom/google/analytics/tracking/android/ParameterLoader;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-double v1, v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    .line 248
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_5

    const-string v1, "&sf"

    .line 249
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/analytics/tracking/android/EasyTracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EasyTracker] sample rate loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v1, "ga_dispatchPeriod"

    const/16 v2, 0x708

    invoke-interface {v0, v1, v2}, Lcom/google/analytics/tracking/android/ParameterLoader;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EasyTracker] dispatch period loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mServiceManager:Lcom/google/analytics/tracking/android/ServiceManager;

    invoke-virtual {v1, v0}, Lcom/google/analytics/tracking/android/ServiceManager;->setLocalDispatchPeriod(I)V

    .line 258
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v1, "ga_sessionTimeout"

    const/16 v2, 0x1e

    invoke-interface {v0, v1, v2}, Lcom/google/analytics/tracking/android/ParameterLoader;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mSessionTimeout:J

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EasyTracker] session timeout loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mSessionTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v1, "ga_autoActivityTracking"

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/ParameterLoader;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v1, "ga_auto_activity_tracking"

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/ParameterLoader;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mIsAutoActivityTracking:Z

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EasyTracker] auto activity tracking loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mIsAutoActivityTracking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v1, "ga_anonymizeIp"

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/ParameterLoader;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v1, "&aip"

    const-string v2, "1"

    .line 268
    invoke-virtual {p0, v1, v2}, Lcom/google/analytics/tracking/android/EasyTracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EasyTracker] anonymize ip loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 272
    :cond_8
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v1, "ga_reportUncaughtExceptions"

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/ParameterLoader;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mIsReportUncaughtExceptionsEnabled:Z

    .line 274
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mIsReportUncaughtExceptionsEnabled:Z

    if-eqz v0, :cond_9

    .line 275
    new-instance v0, Lcom/google/analytics/tracking/android/ExceptionReporter;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mServiceManager:Lcom/google/analytics/tracking/android/ServiceManager;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/analytics/tracking/android/ExceptionReporter;-><init>(Lcom/google/analytics/tracking/android/Tracker;Lcom/google/analytics/tracking/android/ServiceManager;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    .line 277
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EasyTracker] report uncaught exceptions loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mIsReportUncaughtExceptionsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 282
    :cond_9
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v1, "ga_dryRun"

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/ParameterLoader;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 283
    iget-object v1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mGoogleAnalytics:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {v1, v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->setDryRun(Z)V

    return-void
.end method

.method private setContext(Landroid/content/Context;Lcom/google/analytics/tracking/android/ParameterLoader;Lcom/google/analytics/tracking/android/ServiceManager;)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "Context cannot be null"

    .line 309
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    .line 311
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mContext:Landroid/content/Context;

    .line 312
    iput-object p3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mServiceManager:Lcom/google/analytics/tracking/android/ServiceManager;

    .line 313
    iput-object p2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    .line 314
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->loadParameters()V

    return-void
.end method

.method public static setResourcePackageName(Ljava/lang/String;)V
    .locals 0

    .line 445
    sput-object p0, Lcom/google/analytics/tracking/android/EasyTracker;->sResourcePackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public activityStart(Landroid/app/Activity;)V
    .locals 4

    .line 327
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->EASY_TRACKER_ACTIVITY_START:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 330
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->clearExistingTimer()V

    .line 332
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mIsInForeground:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mActivitiesActive:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->checkForNewSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mStartSessionOnNextSend:Z

    .line 335
    :cond_0
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mIsInForeground:Z

    .line 336
    iget v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mActivitiesActive:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mActivitiesActive:I

    .line 337
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mIsAutoActivityTracking:Z

    if-eqz v0, :cond_1

    .line 338
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "&t"

    const-string v3, "appview"

    .line 339
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    const-string v1, "&cd"

    .line 342
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/EasyTracker;->getActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/google/analytics/tracking/android/EasyTracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0, v0}, Lcom/google/analytics/tracking/android/EasyTracker;->send(Ljava/util/Map;)V

    .line 344
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    :cond_1
    return-void
.end method

.method public activityStop(Landroid/app/Activity;)V
    .locals 3

    .line 356
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object p1

    sget-object v0, Lcom/google/analytics/tracking/android/GAUsage$Field;->EASY_TRACKER_ACTIVITY_STOP:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {p1, v0}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 357
    iget p1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mActivitiesActive:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mActivitiesActive:I

    .line 360
    iget p1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mActivitiesActive:I

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mActivitiesActive:I

    .line 362
    iget-object p1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mClock:Lcom/google/analytics/tracking/android/Clock;

    invoke-interface {p1}, Lcom/google/analytics/tracking/android/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mLastOnStopTime:J

    .line 364
    iget p1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mActivitiesActive:I

    if-nez p1, :cond_0

    .line 365
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->clearExistingTimer()V

    .line 368
    new-instance p1, Lcom/google/analytics/tracking/android/EasyTracker$NotInForegroundTimerTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/analytics/tracking/android/EasyTracker$NotInForegroundTimerTask;-><init>(Lcom/google/analytics/tracking/android/EasyTracker;Lcom/google/analytics/tracking/android/EasyTracker$1;)V

    iput-object p1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mTimerTask:Ljava/util/TimerTask;

    .line 369
    new-instance p1, Ljava/util/Timer;

    const-string v0, "waitForActivityStart"

    invoke-direct {p1, v0}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mTimer:Ljava/util/Timer;

    .line 370
    iget-object p1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method

.method checkForNewSession()Z
    .locals 6

    .line 198
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mSessionTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mSessionTimeout:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mClock:Lcom/google/analytics/tracking/android/Clock;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mLastOnStopTime:J

    iget-wide v4, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mSessionTimeout:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public dispatchLocalHits()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mServiceManager:Lcom/google/analytics/tracking/android/ServiceManager;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/ServiceManager;->dispatchLocalHits()V

    return-void
.end method

.method getActivitiesActive()I
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 422
    iget v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mActivitiesActive:I

    return v0
.end method

.method overrideUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 297
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mIsReportUncaughtExceptionsEnabled:Z

    if-eqz v0, :cond_0

    .line 298
    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method

.method public send(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 427
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mStartSessionOnNextSend:Z

    if-eqz v0, :cond_0

    const-string v0, "&sc"

    const-string v1, "start"

    .line 428
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 429
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mStartSessionOnNextSend:Z

    .line 431
    :cond_0
    invoke-super {p0, p1}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method

.method setClock(Lcom/google/analytics/tracking/android/Clock;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 417
    iput-object p1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mClock:Lcom/google/analytics/tracking/android/Clock;

    return-void
.end method
