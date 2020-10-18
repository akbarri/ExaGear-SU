.class public abstract Lcn/iwgang/countdownview/CustomCountDownTimer;
.super Ljava/lang/Object;
.source "CustomCountDownTimer.java"


# static fields
.field private static final MSG:I = 0x1


# instance fields
.field private isPause:Z

.field private isStop:Z

.field private final mCountdownInterval:J

.field private mHandler:Landroid/os/Handler;

.field private final mMillisInFuture:J

.field private mPauseTimeInFuture:J

.field private mStopTimeInFuture:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcn/iwgang/countdownview/CustomCountDownTimer;->isStop:Z

    .line 21
    iput-boolean v0, p0, Lcn/iwgang/countdownview/CustomCountDownTimer;->isPause:Z

    .line 94
    new-instance v0, Lcn/iwgang/countdownview/CustomCountDownTimer$1;

    invoke-direct {v0, p0}, Lcn/iwgang/countdownview/CustomCountDownTimer$1;-><init>(Lcn/iwgang/countdownview/CustomCountDownTimer;)V

    iput-object v0, p0, Lcn/iwgang/countdownview/CustomCountDownTimer;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0xf

    add-long/2addr p1, v0

    .line 30
    :cond_0
    iput-wide p1, p0, Lcn/iwgang/countdownview/CustomCountDownTimer;->mMillisInFuture:J

    .line 31
    iput-wide p3, p0, Lcn/iwgang/countdownview/CustomCountDownTimer;->mCountdownInterval:J

    return-void
.end method

.method static synthetic access$000(Lcn/iwgang/countdownview/CustomCountDownTimer;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lcn/iwgang/countdownview/CustomCountDownTimer;->isStop:Z

    return p0
.end method

.method static synthetic access$100(Lcn/iwgang/countdownview/CustomCountDownTimer;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lcn/iwgang/countdownview/CustomCountDownTimer;->isPause:Z

    return p0
.end method

.method static synthetic access$200(Lcn/iwgang/countdownview/CustomCountDownTimer;)J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcn/iwgang/countdownview/CustomCountDownTimer;->mStopTimeInFuture:J

    return-wide v0
.end method

.method static synthetic access$300(Lcn/iwgang/countdownview/CustomCountDownTimer;)J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcn/iwgang/countdownview/CustomCountDownTimer;->mCountdownInterval:J

    return-wide v0
.end method

.method private declared-synchronized start(J)Lcn/iwgang/countdownview/CustomCountDownTimer;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 35
    :try_start_0
    iput-boolean v0, p0, Lcn/iwgang/countdownview/CustomCountDownTimer;->isStop:Z

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcn/iwgang/countdownview/CustomCountDownTimer;->onFinish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-object p0

    .line 40
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcn/iwgang/countdownview/CustomCountDownTimer;->mStopTimeInFuture:J

    .line 41
    iget-object p1, p0, Lcn/iwgang/countdownview/CustomCountDownTimer;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcn/iwgang/countdownview/CustomCountDownTimer;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 34
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public abstract onFinish()V
.end method

.method public abstract onTick(J)V
.end method

.method public final declared-synchronized pause()V
    .locals 5

    monitor-enter p0

    .line 65
    :try_start_0
    iget-boolean v0, p0, Lcn/iwgang/countdownview/CustomCountDownTimer;->isStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 67
    :try_start_1
    iput-boolean v0, p0, Lcn/iwgang/countdownview/CustomCountDownTimer;->isPause:Z

    .line 68
    iget-wide v1, p0, Lcn/iwgang/countdownview/CustomCountDownTimer;->mStopTimeInFuture:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcn/iwgang/countdownview/CustomCountDownTimer;->mPauseTimeInFuture:J

    .line 69
    iget-object v1, p0, Lcn/iwgang/countdownview/CustomCountDownTimer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 64
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized restart()V
    .locals 2

    monitor-enter p0

    .line 76
    :try_start_0
    iget-boolean v0, p0, Lcn/iwgang/countdownview/CustomCountDownTimer;->isStop:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/iwgang/countdownview/CustomCountDownTimer;->isPause:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcn/iwgang/countdownview/CustomCountDownTimer;->isPause:Z

    .line 79
    iget-wide v0, p0, Lcn/iwgang/countdownview/CustomCountDownTimer;->mPauseTimeInFuture:J

    invoke-direct {p0, v0, v1}, Lcn/iwgang/countdownview/CustomCountDownTimer;->start(J)Lcn/iwgang/countdownview/CustomCountDownTimer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 76
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 75
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized start()V
    .locals 2

    monitor-enter p0

    .line 49
    :try_start_0
    iget-wide v0, p0, Lcn/iwgang/countdownview/CustomCountDownTimer;->mMillisInFuture:J

    invoke-direct {p0, v0, v1}, Lcn/iwgang/countdownview/CustomCountDownTimer;->start(J)Lcn/iwgang/countdownview/CustomCountDownTimer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 48
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 56
    :try_start_0
    iput-boolean v0, p0, Lcn/iwgang/countdownview/CustomCountDownTimer;->isStop:Z

    .line 57
    iget-object v1, p0, Lcn/iwgang/countdownview/CustomCountDownTimer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 55
    monitor-exit p0

    throw v0
.end method
