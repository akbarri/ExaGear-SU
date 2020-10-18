.class public final Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;
.super Ljava/lang/Object;
.source "BufferSizeConfiguration.java"


# instance fields
.field private initialInputBufferCapacity:I

.field private initialOutputBufferCapacity:I

.field private inputBufferSizeHardLimit:I

.field private outputBufferSizeHardLimit:I

.field private outputBufferSizeLimit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    .line 15
    iput v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;->initialInputBufferCapacity:I

    .line 17
    iput v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;->initialOutputBufferCapacity:I

    const/high16 v0, 0x10000

    .line 19
    iput v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;->outputBufferSizeLimit:I

    const/high16 v0, 0x200000

    .line 21
    iput v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;->inputBufferSizeHardLimit:I

    .line 23
    iput v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;->outputBufferSizeHardLimit:I

    return-void
.end method

.method public static createDefaultConfiguration()Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;
    .locals 1

    .line 27
    new-instance v0, Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;

    invoke-direct {v0}, Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;-><init>()V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getInitialInputBufferCapacity()I
    .locals 1

    monitor-enter p0

    .line 32
    :try_start_0
    iget v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;->initialInputBufferCapacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInitialOutputBufferCapacity()I
    .locals 1

    monitor-enter p0

    .line 42
    :try_start_0
    iget v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;->initialOutputBufferCapacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInputBufferSizeHardLimit()I
    .locals 1

    monitor-enter p0

    .line 62
    :try_start_0
    iget v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;->inputBufferSizeHardLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOutputBufferSizeHardLimit()I
    .locals 1

    monitor-enter p0

    .line 72
    :try_start_0
    iget v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;->outputBufferSizeHardLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOutputBufferSizeLimit()I
    .locals 1

    monitor-enter p0

    .line 52
    :try_start_0
    iget v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;->outputBufferSizeLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setInitialInputBufferCapacity(I)V
    .locals 0

    monitor-enter p0

    .line 37
    :try_start_0
    iput p1, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;->initialInputBufferCapacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 36
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setInitialOutputBufferCapacity(I)V
    .locals 0

    monitor-enter p0

    .line 47
    :try_start_0
    iput p1, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;->initialOutputBufferCapacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 46
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setInputBufferSizeHardLimit(I)V
    .locals 0

    monitor-enter p0

    .line 67
    :try_start_0
    iput p1, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;->inputBufferSizeHardLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 66
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setOutputBufferSizeHardLimit(I)V
    .locals 0

    monitor-enter p0

    .line 77
    :try_start_0
    iput p1, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;->outputBufferSizeHardLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 76
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setOutputBufferSizeLimit(I)V
    .locals 0

    monitor-enter p0

    .line 57
    :try_start_0
    iput p1, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/BufferSizeConfiguration;->outputBufferSizeLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 56
    monitor-exit p0

    throw p1
.end method
