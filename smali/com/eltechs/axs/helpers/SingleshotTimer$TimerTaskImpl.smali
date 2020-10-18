.class Lcom/eltechs/axs/helpers/SingleshotTimer$TimerTaskImpl;
.super Ljava/util/TimerTask;
.source "SingleshotTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/helpers/SingleshotTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerTaskImpl"
.end annotation


# instance fields
.field private final action:Ljava/lang/Runnable;

.field private cancelled:Z

.field final synthetic this$0:Lcom/eltechs/axs/helpers/SingleshotTimer;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/helpers/SingleshotTimer;Ljava/lang/Runnable;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/eltechs/axs/helpers/SingleshotTimer$TimerTaskImpl;->this$0:Lcom/eltechs/axs/helpers/SingleshotTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/eltechs/axs/helpers/SingleshotTimer$TimerTaskImpl;->action:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/eltechs/axs/helpers/SingleshotTimer$TimerTaskImpl;->this$0:Lcom/eltechs/axs/helpers/SingleshotTimer;

    monitor-enter v0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/eltechs/axs/helpers/SingleshotTimer$TimerTaskImpl;->this$0:Lcom/eltechs/axs/helpers/SingleshotTimer;

    invoke-static {v1}, Lcom/eltechs/axs/helpers/SingleshotTimer;->access$000(Lcom/eltechs/axs/helpers/SingleshotTimer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 64
    iput-boolean v1, p0, Lcom/eltechs/axs/helpers/SingleshotTimer$TimerTaskImpl;->cancelled:Z

    .line 65
    invoke-super {p0}, Ljava/util/TimerTask;->cancel()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 66
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/eltechs/axs/helpers/SingleshotTimer$TimerTaskImpl;->this$0:Lcom/eltechs/axs/helpers/SingleshotTimer;

    monitor-enter v0

    .line 50
    :try_start_0
    iget-boolean v1, p0, Lcom/eltechs/axs/helpers/SingleshotTimer$TimerTaskImpl;->cancelled:Z

    if-nez v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/eltechs/axs/helpers/SingleshotTimer$TimerTaskImpl;->action:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 53
    iget-object v1, p0, Lcom/eltechs/axs/helpers/SingleshotTimer$TimerTaskImpl;->this$0:Lcom/eltechs/axs/helpers/SingleshotTimer;

    invoke-static {v1}, Lcom/eltechs/axs/helpers/SingleshotTimer;->access$000(Lcom/eltechs/axs/helpers/SingleshotTimer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
