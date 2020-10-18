.class public Lcom/google/analytics/tracking/android/Tracker;
.super Ljava/lang/Object;
.source "Tracker.java"


# static fields
.field static final MAX_TOKENS:J = 0x1d4c0L

.field static final NUM_TOKENS_PER_HIT:J = 0x7d0L


# instance fields
.field private final mAppFieldsDefaultProvider:Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

.field private final mClientIdDefaultProvider:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

.field private final mHandler:Lcom/google/analytics/tracking/android/TrackerHandler;

.field private mLastTrackTime:J

.field private final mName:Ljava/lang/String;

.field private final mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenResolutionDefaultProvider:Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

.field private mTokens:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/TrackerHandler;)V
    .locals 7

    .line 61
    invoke-static {}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->getProvider()Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    move-result-object v4

    invoke-static {}, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->getProvider()Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

    move-result-object v5

    invoke-static {}, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->getProvider()Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/analytics/tracking/android/Tracker;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/TrackerHandler;Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/TrackerHandler;Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;)V
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    const-wide/32 v0, 0x1d4c0

    .line 53
    iput-wide v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTokens:J

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Tracker name cannot be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Tracker;->mName:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/google/analytics/tracking/android/Tracker;->mHandler:Lcom/google/analytics/tracking/android/TrackerHandler;

    .line 75
    iget-object p1, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    const-string p3, "&tid"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object p1, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    const-string p2, "useSecure"

    const-string p3, "1"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iput-object p4, p0, Lcom/google/analytics/tracking/android/Tracker;->mClientIdDefaultProvider:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    .line 81
    iput-object p5, p0, Lcom/google/analytics/tracking/android/Tracker;->mScreenResolutionDefaultProvider:Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

    .line 82
    iput-object p6, p0, Lcom/google/analytics/tracking/android/Tracker;->mAppFieldsDefaultProvider:Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 135
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    const-string v0, "&ul"

    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Lcom/google/analytics/tracking/android/Utils;->getLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mClientIdDefaultProvider:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mClientIdDefaultProvider:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->providesField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mClientIdDefaultProvider:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mScreenResolutionDefaultProvider:Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mScreenResolutionDefaultProvider:Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->providesField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mScreenResolutionDefaultProvider:Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 152
    :cond_4
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mAppFieldsDefaultProvider:Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mAppFieldsDefaultProvider:Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->providesField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 154
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mAppFieldsDefaultProvider:Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 89
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_TRACKER_NAME:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 90
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public send(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 104
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SEND:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 106
    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-eqz p1, :cond_0

    .line 108
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    const-string p1, "&tid"

    .line 111
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    const-string p1, "Missing tracking id (%s) parameter."

    .line 112
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "&tid"

    aput-object v4, v3, v1

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    :cond_1
    const-string p1, "&t"

    .line 115
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p1, "Missing hit type (%s) parameter."

    .line 117
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "&t"

    aput-object v3, v2, v1

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    const-string p1, ""

    :cond_2
    const-string v1, "transaction"

    .line 122
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "item"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/Tracker;->tokensAvailable()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "Too many hits sent too quickly, rate limiting invoked."

    .line 125
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_3
    iget-object p1, p0, Lcom/google/analytics/tracking/android/Tracker;->mHandler:Lcom/google/analytics/tracking/android/TrackerHandler;

    invoke-virtual {p1, v0}, Lcom/google/analytics/tracking/android/TrackerHandler;->sendHit(Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 165
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    if-nez p2, :cond_0

    .line 167
    iget-object p2, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method setLastTrackTime(J)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 175
    iput-wide p1, p0, Lcom/google/analytics/tracking/android/Tracker;->mLastTrackTime:J

    return-void
.end method

.method setTokens(J)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 180
    iput-wide p1, p0, Lcom/google/analytics/tracking/android/Tracker;->mTokens:J

    return-void
.end method

.method declared-synchronized tokensAvailable()Z
    .locals 8
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 193
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 194
    iget-wide v2, p0, Lcom/google/analytics/tracking/android/Tracker;->mTokens:J

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 195
    iget-wide v2, p0, Lcom/google/analytics/tracking/android/Tracker;->mLastTrackTime:J

    sub-long v2, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 197
    iget-wide v6, p0, Lcom/google/analytics/tracking/android/Tracker;->mTokens:J

    add-long/2addr v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/analytics/tracking/android/Tracker;->mTokens:J

    .line 200
    :cond_0
    iput-wide v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mLastTrackTime:J

    .line 201
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTokens:J

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 202
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTokens:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTokens:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 203
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    const-string v0, "Excessive tracking detected.  Tracking call ignored."

    .line 205
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 206
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 192
    monitor-exit p0

    throw v0
.end method
