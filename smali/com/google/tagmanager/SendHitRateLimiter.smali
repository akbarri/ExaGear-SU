.class Lcom/google/tagmanager/SendHitRateLimiter;
.super Ljava/lang/Object;
.source "SendHitRateLimiter.java"

# interfaces
.implements Lcom/google/tagmanager/RateLimiter;


# instance fields
.field private mLastTrackTime:J

.field private final mMaxTokens:I

.field private final mMillisecondsPerToken:J

.field private final mTokenLock:Ljava/lang/Object;

.field private mTokens:D


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x3c

    const-wide/16 v1, 0x7d0

    .line 37
    invoke-direct {p0, v0, v1, v2}, Lcom/google/tagmanager/SendHitRateLimiter;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokenLock:Ljava/lang/Object;

    .line 27
    iput p1, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mMaxTokens:I

    .line 28
    iget p1, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mMaxTokens:I

    int-to-double v0, p1

    iput-wide v0, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokens:D

    .line 29
    iput-wide p2, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mMillisecondsPerToken:J

    return-void
.end method


# virtual methods
.method setLastTrackTime(J)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 42
    iput-wide p1, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mLastTrackTime:J

    return-void
.end method

.method setTokensAvailable(J)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    long-to-double p1, p1

    .line 47
    iput-wide p1, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokens:D

    return-void
.end method

.method public tokenAvailable()Z
    .locals 9

    .line 60
    iget-object v0, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokenLock:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 62
    iget-wide v3, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokens:D

    iget v5, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mMaxTokens:I

    int-to-double v5, v5

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    .line 63
    iget-wide v3, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mLastTrackTime:J

    sub-long v3, v1, v3

    long-to-double v3, v3

    .line 64
    iget-wide v5, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mMillisecondsPerToken:J

    long-to-double v5, v5

    div-double/2addr v3, v5

    const-wide/16 v5, 0x0

    cmpl-double v5, v3, v5

    if-lez v5, :cond_0

    .line 66
    iget v5, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mMaxTokens:I

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokens:D

    add-double/2addr v7, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokens:D

    .line 69
    :cond_0
    iput-wide v1, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mLastTrackTime:J

    .line 70
    iget-wide v1, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokens:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1

    .line 71
    iget-wide v1, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokens:D

    sub-double/2addr v1, v3

    iput-wide v1, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokens:D

    const/4 v1, 0x1

    .line 72
    monitor-exit v0

    return v1

    :cond_1
    const-string v1, "No more tokens available."

    .line 74
    invoke-static {v1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 75
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 76
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
