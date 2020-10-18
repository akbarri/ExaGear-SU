.class Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;
.super Ljava/util/TimerTask;
.source "GAServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/tracking/android/GAServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisconnectCheckTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;


# direct methods
.method private constructor <init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/GAServiceProxy;Lcom/google/analytics/tracking/android/GAServiceProxy$1;)V
    .locals 0

    .line 419
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 422
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->access$400(Lcom/google/analytics/tracking/android/GAServiceProxy;)Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->CONNECTED_SERVICE:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->access$700(Lcom/google/analytics/tracking/android/GAServiceProxy;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->access$800(Lcom/google/analytics/tracking/android/GAServiceProxy;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    invoke-static {v2}, Lcom/google/analytics/tracking/android/GAServiceProxy;->access$900(Lcom/google/analytics/tracking/android/GAServiceProxy;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    invoke-static {v2}, Lcom/google/analytics/tracking/android/GAServiceProxy;->access$1000(Lcom/google/analytics/tracking/android/GAServiceProxy;)Lcom/google/analytics/tracking/android/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/analytics/tracking/android/Clock;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string v0, "Disconnecting due to inactivity"

    .line 425
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->access$1100(Lcom/google/analytics/tracking/android/GAServiceProxy;)V

    goto :goto_0

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->access$1200(Lcom/google/analytics/tracking/android/GAServiceProxy;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    invoke-direct {v1, v2}, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    invoke-static {v2}, Lcom/google/analytics/tracking/android/GAServiceProxy;->access$900(Lcom/google/analytics/tracking/android/GAServiceProxy;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_0
    return-void
.end method
