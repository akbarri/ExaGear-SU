.class Lcom/google/analytics/tracking/android/GAServiceProxy;
.super Ljava/lang/Object;
.source "GAServiceProxy.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/ServiceProxy;
.implements Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;
.implements Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;,
        Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;,
        Lcom/google/analytics/tracking/android/GAServiceProxy$ReconnectTask;,
        Lcom/google/analytics/tracking/android/GAServiceProxy$FailedConnectTask;,
        Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;
    }
.end annotation


# static fields
.field private static final FAILED_CONNECT_WAIT_TIME:J = 0xbb8L

.field private static final MAX_TRIES:I = 0x2

.field private static final RECONNECT_WAIT_TIME:J = 0x1388L

.field private static final SERVICE_CONNECTION_TIMEOUT:J = 0x493e0L


# instance fields
.field private volatile client:Lcom/google/analytics/tracking/android/AnalyticsClient;

.field private clock:Lcom/google/analytics/tracking/android/Clock;

.field private volatile connectTries:I

.field private final ctx:Landroid/content/Context;

.field private volatile disconnectCheckTimer:Ljava/util/Timer;

.field private volatile failedConnectTimer:Ljava/util/Timer;

.field private forceLocalDispatch:Z

.field private final gaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field private idleTimeout:J

.field private volatile lastRequestTime:J

.field private pendingClearHits:Z

.field private pendingDispatch:Z

.field private pendingServiceDisconnect:Z

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;",
            ">;"
        }
    .end annotation
.end field

.field private volatile reConnectTimer:Ljava/util/Timer;

.field private volatile state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

.field private store:Lcom/google/analytics/tracking/android/AnalyticsStore;

.field private testStore:Lcom/google/analytics/tracking/android/AnalyticsStore;

.field private final thread:Lcom/google/analytics/tracking/android/AnalyticsThread;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)V
    .locals 2

    .line 90
    invoke-static {p1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;Lcom/google/analytics/tracking/android/AnalyticsStore;Lcom/google/analytics/tracking/android/GoogleAnalytics;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;Lcom/google/analytics/tracking/android/AnalyticsStore;Lcom/google/analytics/tracking/android/GoogleAnalytics;)V
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->queue:Ljava/util/Queue;

    const-wide/32 v0, 0x493e0

    .line 69
    iput-wide v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->idleTimeout:J

    .line 75
    iput-object p3, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->testStore:Lcom/google/analytics/tracking/android/AnalyticsStore;

    .line 76
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->ctx:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    .line 78
    iput-object p4, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->gaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 79
    new-instance p1, Lcom/google/analytics/tracking/android/GAServiceProxy$1;

    invoke-direct {p1, p0}, Lcom/google/analytics/tracking/android/GAServiceProxy$1;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V

    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->clock:Lcom/google/analytics/tracking/android/Clock;

    const/4 p1, 0x0

    .line 85
    iput p1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->connectTries:I

    .line 86
    sget-object p1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->DISCONNECTED:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    return-void
.end method

.method static synthetic access$000(Lcom/google/analytics/tracking/android/GAServiceProxy;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->sendQueue()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/analytics/tracking/android/GAServiceProxy;)Lcom/google/analytics/tracking/android/Clock;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->clock:Lcom/google/analytics/tracking/android/Clock;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/google/analytics/tracking/android/GAServiceProxy;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->disconnectFromService()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/analytics/tracking/android/GAServiceProxy;)Ljava/util/Timer;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->disconnectCheckTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/analytics/tracking/android/GAServiceProxy;)Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/analytics/tracking/android/GAServiceProxy;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->useStore()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/analytics/tracking/android/GAServiceProxy;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->connectToService()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/analytics/tracking/android/GAServiceProxy;)Ljava/util/Queue;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->queue:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/analytics/tracking/android/GAServiceProxy;)J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->lastRequestTime:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/google/analytics/tracking/android/GAServiceProxy;)J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->idleTimeout:J

    return-wide v0
.end method

.method private cancelTimer(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private clearAllTimers()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->reConnectTimer:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->cancelTimer(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->reConnectTimer:Ljava/util/Timer;

    .line 196
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->failedConnectTimer:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->cancelTimer(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->failedConnectTimer:Ljava/util/Timer;

    .line 197
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->disconnectCheckTimer:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->cancelTimer(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->disconnectCheckTimer:Ljava/util/Timer;

    return-void
.end method

.method private declared-synchronized connectToService()V
    .locals 4

    monitor-enter p0

    .line 322
    :try_start_0
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->forceLocalDispatch:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->client:Lcom/google/analytics/tracking/android/AnalyticsClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->CONNECTED_LOCAL:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    .line 324
    :try_start_1
    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->connectTries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->connectTries:I

    .line 325
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->failedConnectTimer:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->cancelTimer(Ljava/util/Timer;)Ljava/util/Timer;

    .line 326
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->CONNECTING:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    .line 327
    new-instance v0, Ljava/util/Timer;

    const-string v1, "Failed Connect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->failedConnectTimer:Ljava/util/Timer;

    .line 328
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->failedConnectTimer:Ljava/util/Timer;

    new-instance v1, Lcom/google/analytics/tracking/android/GAServiceProxy$FailedConnectTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/analytics/tracking/android/GAServiceProxy$FailedConnectTask;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;Lcom/google/analytics/tracking/android/GAServiceProxy$1;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const-string v0, "connecting to Analytics service"

    .line 329
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->client:Lcom/google/analytics/tracking/android/AnalyticsClient;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsClient;->connect()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v0, "security exception on connectToService"

    .line 332
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 333
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->useStore()V

    goto :goto_0

    :cond_0
    const-string v0, "client not initialized."

    .line 336
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 337
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->useStore()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 339
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 321
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized disconnectFromService()V
    .locals 2

    monitor-enter p0

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->client:Lcom/google/analytics/tracking/android/AnalyticsClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->CONNECTED_SERVICE:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    if-ne v0, v1, :cond_0

    .line 343
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->PENDING_DISCONNECT:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    .line 344
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->client:Lcom/google/analytics/tracking/android/AnalyticsClient;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsClient;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 341
    monitor-exit p0

    throw v0
.end method

.method private dispatchToStore()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsStore;->dispatch()V

    const/4 v0, 0x0

    .line 297
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->pendingDispatch:Z

    return-void
.end method

.method private fireReconnectAttempt()V
    .locals 4

    .line 397
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->reConnectTimer:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->cancelTimer(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->reConnectTimer:Ljava/util/Timer;

    .line 398
    new-instance v0, Ljava/util/Timer;

    const-string v1, "Service Reconnect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->reConnectTimer:Ljava/util/Timer;

    .line 399
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->reConnectTimer:Ljava/util/Timer;

    new-instance v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ReconnectTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/analytics/tracking/android/GAServiceProxy$ReconnectTask;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;Lcom/google/analytics/tracking/android/GAServiceProxy$1;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private declared-synchronized sendQueue()V
    .locals 8

    monitor-enter p0

    .line 241
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    invoke-interface {v1}, Lcom/google/analytics/tracking/android/AnalyticsThread;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsThread;->getQueue()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    new-instance v1, Lcom/google/analytics/tracking/android/GAServiceProxy$2;

    invoke-direct {v1, p0}, Lcom/google/analytics/tracking/android/GAServiceProxy$2;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    monitor-exit p0

    return-void

    .line 250
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->pendingClearHits:Z

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->clearHits()V

    .line 253
    :cond_1
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$3;->$SwitchMap$com$google$analytics$tracking$android$GAServiceProxy$ConnectState:[I

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 267
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 268
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending hit to service   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->gaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->isDryRunEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 271
    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->client:Lcom/google/analytics/tracking/android/AnalyticsClient;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;->getWireFormatParams()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;->getHitTimeInMilliseconds()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;->getCommands()Ljava/util/List;

    move-result-object v7

    invoke-interface/range {v2 .. v7}, Lcom/google/analytics/tracking/android/AnalyticsClient;->sendHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    const-string v0, "Dry run enabled. Hit not actually sent to service."

    .line 274
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 276
    :goto_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->clock:Lcom/google/analytics/tracking/android/Clock;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->lastRequestTime:J

    goto :goto_3

    .line 255
    :goto_2
    :pswitch_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 256
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending hit to store  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 258
    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;->getWireFormatParams()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;->getHitTimeInMilliseconds()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;->getCommands()Ljava/util/List;

    move-result-object v7

    invoke-interface/range {v2 .. v7}, Lcom/google/analytics/tracking/android/AnalyticsStore;->putHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V

    goto :goto_2

    .line 262
    :cond_4
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->pendingDispatch:Z

    if-eqz v0, :cond_6

    .line 263
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->dispatchToStore()V

    goto :goto_3

    :cond_5
    const-string v0, "Need to reconnect"

    .line 281
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 283
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->connectToService()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    :cond_6
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 240
    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized useStore()V
    .locals 3

    monitor-enter p0

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->CONNECTED_LOCAL:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 305
    monitor-exit p0

    return-void

    .line 308
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->clearAllTimers()V

    const-string v0, "falling back to local store"

    .line 309
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->testStore:Lcom/google/analytics/tracking/android/AnalyticsStore;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->testStore:Lcom/google/analytics/tracking/android/AnalyticsStore;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    goto :goto_0

    .line 313
    :cond_1
    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/GAServiceManager;->initialize(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)V

    .line 315
    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAServiceManager;->getStore()Lcom/google/analytics/tracking/android/AnalyticsStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    .line 317
    :goto_0
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->CONNECTED_LOCAL:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    .line 318
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->sendQueue()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 303
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public clearHits()V
    .locals 4

    const-string v0, "clearHits called"

    .line 125
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 127
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$3;->$SwitchMap$com$google$analytics$tracking$android$GAServiceProxy$ConnectState:[I

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->pendingClearHits:Z

    goto :goto_0

    .line 133
    :pswitch_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->client:Lcom/google/analytics/tracking/android/AnalyticsClient;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsClient;->clearHits()V

    .line 134
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->pendingClearHits:Z

    goto :goto_0

    .line 129
    :pswitch_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/google/analytics/tracking/android/AnalyticsStore;->clearHits(J)V

    .line 130
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->pendingClearHits:Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createService()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->client:Lcom/google/analytics/tracking/android/AnalyticsClient;

    if-eqz v0, :cond_0

    return-void

    .line 209
    :cond_0
    new-instance v0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->client:Lcom/google/analytics/tracking/android/AnalyticsClient;

    .line 210
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->connectToService()V

    return-void
.end method

.method createService(Lcom/google/analytics/tracking/android/AnalyticsClient;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->client:Lcom/google/analytics/tracking/android/AnalyticsClient;

    if-eqz v0, :cond_0

    return-void

    .line 220
    :cond_0
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->client:Lcom/google/analytics/tracking/android/AnalyticsClient;

    .line 221
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->connectToService()V

    return-void
.end method

.method public dispatch()V
    .locals 2

    .line 111
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$3;->$SwitchMap$com$google$analytics$tracking$android$GAServiceProxy$ConnectState:[I

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->pendingDispatch:Z

    goto :goto_0

    .line 113
    :pswitch_0
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->dispatchToStore()V

    :goto_0
    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized onConnected()V
    .locals 4

    monitor-enter p0

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->failedConnectTimer:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->cancelTimer(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->failedConnectTimer:Ljava/util/Timer;

    const/4 v0, 0x0

    .line 351
    iput v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->connectTries:I

    const-string v1, "Connected to service"

    .line 352
    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 353
    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->CONNECTED_SERVICE:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    .line 355
    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->pendingServiceDisconnect:Z

    if-eqz v1, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->disconnectFromService()V

    .line 357
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->pendingServiceDisconnect:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    monitor-exit p0

    return-void

    .line 361
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->sendQueue()V

    .line 362
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->disconnectCheckTimer:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->cancelTimer(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->disconnectCheckTimer:Ljava/util/Timer;

    .line 363
    new-instance v0, Ljava/util/Timer;

    const-string v1, "disconnect check"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->disconnectCheckTimer:Ljava/util/Timer;

    .line 364
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->disconnectCheckTimer:Ljava/util/Timer;

    new-instance v1, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;Lcom/google/analytics/tracking/android/GAServiceProxy$1;)V

    iget-wide v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->idleTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 349
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onConnectionFailed(ILandroid/content/Intent;)V
    .locals 1

    monitor-enter p0

    .line 386
    :try_start_0
    sget-object p2, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->PENDING_CONNECTION:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    .line 387
    iget p2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->connectTries:I

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    .line 388
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Service unavailable (code="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), will retry."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 389
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->fireReconnectAttempt()V

    goto :goto_0

    .line 391
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Service unavailable (code="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), using local store."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 392
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->useStore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 385
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDisconnected()V
    .locals 2

    monitor-enter p0

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->PENDING_DISCONNECT:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    if-ne v0, v1, :cond_0

    const-string v0, "Disconnected from service"

    .line 370
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 371
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->clearAllTimers()V

    .line 372
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->DISCONNECTED:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    goto :goto_0

    :cond_0
    const-string v0, "Unexpected disconnect."

    .line 374
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 375
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->PENDING_CONNECTION:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    .line 376
    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->connectTries:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 377
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->fireReconnectAttempt()V

    goto :goto_0

    .line 379
    :cond_1
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->useStore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 368
    monitor-exit p0

    throw v0
.end method

.method public putHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;)V"
        }
    .end annotation

    const-string v0, "putHit called"

    .line 103
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->queue:Ljava/util/Queue;

    new-instance v7, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;-><init>(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->sendQueue()V

    return-void
.end method

.method setClock(Lcom/google/analytics/tracking/android/Clock;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->clock:Lcom/google/analytics/tracking/android/Clock;

    return-void
.end method

.method public declared-synchronized setForceLocalDispatch()V
    .locals 3

    monitor-enter p0

    .line 144
    :try_start_0
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->forceLocalDispatch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 145
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "setForceLocalDispatch called."

    .line 148
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->forceLocalDispatch:Z

    .line 155
    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$3;->$SwitchMap$com$google$analytics$tracking$android$GAServiceProxy$ConnectState:[I

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 165
    :pswitch_0
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->pendingServiceDisconnect:Z

    goto :goto_0

    .line 160
    :pswitch_1
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->disconnectFromService()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    :goto_0
    :pswitch_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 143
    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setIdleTimeout(J)V
    .locals 0

    .line 229
    iput-wide p1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->idleTimeout:J

    return-void
.end method
