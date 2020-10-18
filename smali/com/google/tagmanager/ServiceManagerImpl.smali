.class Lcom/google/tagmanager/ServiceManagerImpl;
.super Lcom/google/tagmanager/ServiceManager;
.source "ServiceManagerImpl.java"


# static fields
.field private static final MSG_KEY:I = 0x1

.field private static final MSG_OBJECT:Ljava/lang/Object;

.field private static instance:Lcom/google/tagmanager/ServiceManagerImpl;


# instance fields
.field private connected:Z

.field private ctx:Landroid/content/Context;

.field private dispatchPeriodInSeconds:I

.field private handler:Landroid/os/Handler;

.field private listenForNetwork:Z

.field private listener:Lcom/google/tagmanager/HitStoreStateListener;

.field private networkReceiver:Lcom/google/tagmanager/NetworkReceiver;

.field private pendingDispatch:Z

.field private readyToDispatch:Z

.field private store:Lcom/google/tagmanager/HitStore;

.field private storeIsEmpty:Z

.field private volatile thread:Lcom/google/tagmanager/HitSendingThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/tagmanager/ServiceManagerImpl;->MSG_OBJECT:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Lcom/google/tagmanager/ServiceManager;-><init>()V

    const/16 v0, 0x708

    .line 41
    iput v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->pendingDispatch:Z

    const/4 v1, 0x0

    .line 43
    iput-boolean v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->readyToDispatch:Z

    .line 46
    iput-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->connected:Z

    .line 50
    iput-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->listenForNetwork:Z

    .line 52
    new-instance v0, Lcom/google/tagmanager/ServiceManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/ServiceManagerImpl$1;-><init>(Lcom/google/tagmanager/ServiceManagerImpl;)V

    iput-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->listener:Lcom/google/tagmanager/HitStoreStateListener;

    .line 66
    iput-boolean v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->storeIsEmpty:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/tagmanager/HitSendingThread;Lcom/google/tagmanager/HitStore;Z)V
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 87
    invoke-direct {p0}, Lcom/google/tagmanager/ServiceManager;-><init>()V

    const/16 v0, 0x708

    .line 41
    iput v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->pendingDispatch:Z

    const/4 v1, 0x0

    .line 43
    iput-boolean v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->readyToDispatch:Z

    .line 46
    iput-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->connected:Z

    .line 50
    iput-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->listenForNetwork:Z

    .line 52
    new-instance v0, Lcom/google/tagmanager/ServiceManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/ServiceManagerImpl$1;-><init>(Lcom/google/tagmanager/ServiceManagerImpl;)V

    iput-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->listener:Lcom/google/tagmanager/HitStoreStateListener;

    .line 66
    iput-boolean v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->storeIsEmpty:Z

    .line 88
    iput-object p3, p0, Lcom/google/tagmanager/ServiceManagerImpl;->store:Lcom/google/tagmanager/HitStore;

    .line 89
    iput-object p2, p0, Lcom/google/tagmanager/ServiceManagerImpl;->thread:Lcom/google/tagmanager/HitSendingThread;

    .line 90
    iput-boolean p4, p0, Lcom/google/tagmanager/ServiceManagerImpl;->listenForNetwork:Z

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/ServiceManagerImpl;->initialize(Landroid/content/Context;Lcom/google/tagmanager/HitSendingThread;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/tagmanager/ServiceManagerImpl;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->connected:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 22
    sget-object v0, Lcom/google/tagmanager/ServiceManagerImpl;->MSG_OBJECT:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/tagmanager/ServiceManagerImpl;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    return p0
.end method

.method static synthetic access$300(Lcom/google/tagmanager/ServiceManagerImpl;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->storeIsEmpty:Z

    return p0
.end method

.method static synthetic access$400(Lcom/google/tagmanager/ServiceManagerImpl;)Landroid/os/Handler;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/tagmanager/ServiceManagerImpl;)Lcom/google/tagmanager/HitStore;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->store:Lcom/google/tagmanager/HitStore;

    return-object p0
.end method

.method static clearInstance()V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 82
    sput-object v0, Lcom/google/tagmanager/ServiceManagerImpl;->instance:Lcom/google/tagmanager/ServiceManagerImpl;

    return-void
.end method

.method public static getInstance()Lcom/google/tagmanager/ServiceManagerImpl;
    .locals 1

    .line 71
    sget-object v0, Lcom/google/tagmanager/ServiceManagerImpl;->instance:Lcom/google/tagmanager/ServiceManagerImpl;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/google/tagmanager/ServiceManagerImpl;

    invoke-direct {v0}, Lcom/google/tagmanager/ServiceManagerImpl;-><init>()V

    sput-object v0, Lcom/google/tagmanager/ServiceManagerImpl;->instance:Lcom/google/tagmanager/ServiceManagerImpl;

    .line 74
    :cond_0
    sget-object v0, Lcom/google/tagmanager/ServiceManagerImpl;->instance:Lcom/google/tagmanager/ServiceManagerImpl;

    return-object v0
.end method

.method private initializeHandler()V
    .locals 4

    .line 100
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/tagmanager/ServiceManagerImpl$2;

    invoke-direct {v2, p0}, Lcom/google/tagmanager/ServiceManagerImpl$2;-><init>(Lcom/google/tagmanager/ServiceManagerImpl;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    .line 116
    iget v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    if-lez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/tagmanager/ServiceManagerImpl;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private initializeNetworkReceiver()V
    .locals 2

    .line 95
    new-instance v0, Lcom/google/tagmanager/NetworkReceiver;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/NetworkReceiver;-><init>(Lcom/google/tagmanager/ServiceManager;)V

    iput-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->networkReceiver:Lcom/google/tagmanager/NetworkReceiver;

    .line 96
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->networkReceiver:Lcom/google/tagmanager/NetworkReceiver;

    iget-object v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->ctx:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/NetworkReceiver;->register(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized dispatch()V
    .locals 2

    monitor-enter p0

    .line 180
    :try_start_0
    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->readyToDispatch:Z

    if-nez v0, :cond_0

    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    .line 181
    invoke-static {v0}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->pendingDispatch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    .line 186
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->thread:Lcom/google/tagmanager/HitSendingThread;

    new-instance v1, Lcom/google/tagmanager/ServiceManagerImpl$3;

    invoke-direct {v1, p0}, Lcom/google/tagmanager/ServiceManagerImpl$3;-><init>(Lcom/google/tagmanager/ServiceManagerImpl;)V

    invoke-interface {v0, v1}, Lcom/google/tagmanager/HitSendingThread;->queueToThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 179
    monitor-exit p0

    throw v0
.end method

.method getListener()Lcom/google/tagmanager/HitStoreStateListener;
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->listener:Lcom/google/tagmanager/HitStoreStateListener;

    return-object v0
.end method

.method declared-synchronized getStore()Lcom/google/tagmanager/HitStore;
    .locals 3

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->store:Lcom/google/tagmanager/HitStore;

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->ctx:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    new-instance v0, Lcom/google/tagmanager/PersistentHitStore;

    iget-object v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->listener:Lcom/google/tagmanager/HitStoreStateListener;

    iget-object v2, p0, Lcom/google/tagmanager/ServiceManagerImpl;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/tagmanager/PersistentHitStore;-><init>(Lcom/google/tagmanager/HitStoreStateListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->store:Lcom/google/tagmanager/HitStore;

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 162
    invoke-direct {p0}, Lcom/google/tagmanager/ServiceManagerImpl;->initializeHandler()V

    :cond_2
    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->readyToDispatch:Z

    .line 167
    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->pendingDispatch:Z

    if-eqz v0, :cond_3

    .line 168
    invoke-virtual {p0}, Lcom/google/tagmanager/ServiceManagerImpl;->dispatch()V

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->pendingDispatch:Z

    .line 172
    :cond_3
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->networkReceiver:Lcom/google/tagmanager/NetworkReceiver;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->listenForNetwork:Z

    if-eqz v0, :cond_4

    .line 173
    invoke-direct {p0}, Lcom/google/tagmanager/ServiceManagerImpl;->initializeNetworkReceiver()V

    .line 175
    :cond_4
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->store:Lcom/google/tagmanager/HitStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 151
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized initialize(Landroid/content/Context;Lcom/google/tagmanager/HitSendingThread;)V
    .locals 1

    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->ctx:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 133
    monitor-exit p0

    return-void

    .line 135
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->ctx:Landroid/content/Context;

    .line 137
    iget-object p1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->thread:Lcom/google/tagmanager/HitSendingThread;

    if-nez p1, :cond_1

    .line 138
    iput-object p2, p0, Lcom/google/tagmanager/ServiceManagerImpl;->thread:Lcom/google/tagmanager/HitSendingThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 131
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onRadioPowered()V
    .locals 4

    monitor-enter p0

    .line 238
    :try_start_0
    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->storeIsEmpty:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->connected:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    if-lez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/google/tagmanager/ServiceManagerImpl;->MSG_OBJECT:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    sget-object v3, Lcom/google/tagmanager/ServiceManagerImpl;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 237
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDispatchPeriod(I)V
    .locals 4

    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string v0, "Dispatch period set with null handler. Dispatch will run once initialization is complete."

    .line 197
    invoke-static {v0}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 199
    iput p1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    .line 203
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->storeIsEmpty:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->connected:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    if-lez v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/google/tagmanager/ServiceManagerImpl;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 206
    :cond_1
    iput p1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    if-lez p1, :cond_2

    .line 207
    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->storeIsEmpty:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->connected:Z

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    sget-object v3, Lcom/google/tagmanager/ServiceManagerImpl;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 195
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updateConnectivityStatus(Z)V
    .locals 1

    monitor-enter p0

    .line 233
    :try_start_0
    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->storeIsEmpty:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/tagmanager/ServiceManagerImpl;->updatePowerSaveMode(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 232
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updatePowerSaveMode(ZZ)V
    .locals 4
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 215
    :try_start_0
    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->storeIsEmpty:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/google/tagmanager/ServiceManagerImpl;->connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p2, :cond_0

    .line 216
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-nez p2, :cond_2

    .line 218
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    if-lez v1, :cond_2

    .line 219
    iget-object v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/google/tagmanager/ServiceManagerImpl;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    .line 221
    iget v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    if-lez v1, :cond_3

    .line 222
    iget-object v1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    sget-object v3, Lcom/google/tagmanager/ServiceManagerImpl;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget v2, p0, Lcom/google/tagmanager/ServiceManagerImpl;->dispatchPeriodInSeconds:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 225
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerSaveMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_5

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const-string v1, "terminated."

    goto :goto_1

    :cond_5
    :goto_0
    const-string v1, "initiated."

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 227
    iput-boolean p1, p0, Lcom/google/tagmanager/ServiceManagerImpl;->storeIsEmpty:Z

    .line 228
    iput-boolean p2, p0, Lcom/google/tagmanager/ServiceManagerImpl;->connected:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 214
    monitor-exit p0

    throw p1
.end method
