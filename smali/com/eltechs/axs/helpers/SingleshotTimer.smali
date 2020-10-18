.class public Lcom/eltechs/axs/helpers/SingleshotTimer;
.super Ljava/lang/Object;
.source "SingleshotTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/helpers/SingleshotTimer$TimerTaskImpl;
    }
.end annotation


# instance fields
.field private final impl:Ljava/util/Timer;

.field private final scheduledActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/eltechs/axs/helpers/SingleshotTimer$TimerTaskImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/helpers/SingleshotTimer;->impl:Ljava/util/Timer;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/helpers/SingleshotTimer;->scheduledActions:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/helpers/SingleshotTimer;)Ljava/util/ArrayList;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/eltechs/axs/helpers/SingleshotTimer;->scheduledActions:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    monitor-enter p0

    .line 29
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/helpers/SingleshotTimer;->scheduledActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/eltechs/axs/helpers/SingleshotTimer;->scheduledActions:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/eltechs/axs/helpers/SingleshotTimer;->scheduledActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/helpers/SingleshotTimer$TimerTaskImpl;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/SingleshotTimer$TimerTaskImpl;->cancel()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 33
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 28
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized schedule(ILjava/lang/Runnable;)Ljava/util/TimerTask;
    .locals 3

    monitor-enter p0

    .line 21
    :try_start_0
    new-instance v0, Lcom/eltechs/axs/helpers/SingleshotTimer$TimerTaskImpl;

    invoke-direct {v0, p0, p2}, Lcom/eltechs/axs/helpers/SingleshotTimer$TimerTaskImpl;-><init>(Lcom/eltechs/axs/helpers/SingleshotTimer;Ljava/lang/Runnable;)V

    .line 22
    iget-object p2, p0, Lcom/eltechs/axs/helpers/SingleshotTimer;->scheduledActions:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object p2, p0, Lcom/eltechs/axs/helpers/SingleshotTimer;->impl:Ljava/util/Timer;

    int-to-long v1, p1

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0

    throw p1
.end method
