.class Lcn/iwgang/countdownview/CustomCountDownTimer$1;
.super Landroid/os/Handler;
.source "CustomCountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/iwgang/countdownview/CustomCountDownTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/iwgang/countdownview/CustomCountDownTimer;


# direct methods
.method constructor <init>(Lcn/iwgang/countdownview/CustomCountDownTimer;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcn/iwgang/countdownview/CustomCountDownTimer$1;->this$0:Lcn/iwgang/countdownview/CustomCountDownTimer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 99
    iget-object p1, p0, Lcn/iwgang/countdownview/CustomCountDownTimer$1;->this$0:Lcn/iwgang/countdownview/CustomCountDownTimer;

    monitor-enter p1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcn/iwgang/countdownview/CustomCountDownTimer$1;->this$0:Lcn/iwgang/countdownview/CustomCountDownTimer;

    invoke-static {v0}, Lcn/iwgang/countdownview/CustomCountDownTimer;->access$000(Lcn/iwgang/countdownview/CustomCountDownTimer;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/iwgang/countdownview/CustomCountDownTimer$1;->this$0:Lcn/iwgang/countdownview/CustomCountDownTimer;

    invoke-static {v0}, Lcn/iwgang/countdownview/CustomCountDownTimer;->access$100(Lcn/iwgang/countdownview/CustomCountDownTimer;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 104
    :cond_0
    iget-object v0, p0, Lcn/iwgang/countdownview/CustomCountDownTimer$1;->this$0:Lcn/iwgang/countdownview/CustomCountDownTimer;

    invoke-static {v0}, Lcn/iwgang/countdownview/CustomCountDownTimer;->access$200(Lcn/iwgang/countdownview/CustomCountDownTimer;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 106
    iget-object v0, p0, Lcn/iwgang/countdownview/CustomCountDownTimer$1;->this$0:Lcn/iwgang/countdownview/CustomCountDownTimer;

    invoke-virtual {v0}, Lcn/iwgang/countdownview/CustomCountDownTimer;->onFinish()V

    goto :goto_1

    .line 108
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 109
    iget-object v6, p0, Lcn/iwgang/countdownview/CustomCountDownTimer$1;->this$0:Lcn/iwgang/countdownview/CustomCountDownTimer;

    invoke-virtual {v6, v0, v1}, Lcn/iwgang/countdownview/CustomCountDownTimer;->onTick(J)V

    .line 112
    iget-object v0, p0, Lcn/iwgang/countdownview/CustomCountDownTimer$1;->this$0:Lcn/iwgang/countdownview/CustomCountDownTimer;

    invoke-static {v0}, Lcn/iwgang/countdownview/CustomCountDownTimer;->access$300(Lcn/iwgang/countdownview/CustomCountDownTimer;)J

    move-result-wide v0

    add-long/2addr v4, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v4, v0

    :goto_0
    cmp-long v0, v4, v2

    if-gez v0, :cond_2

    .line 116
    iget-object v0, p0, Lcn/iwgang/countdownview/CustomCountDownTimer$1;->this$0:Lcn/iwgang/countdownview/CustomCountDownTimer;

    invoke-static {v0}, Lcn/iwgang/countdownview/CustomCountDownTimer;->access$300(Lcn/iwgang/countdownview/CustomCountDownTimer;)J

    move-result-wide v0

    add-long/2addr v4, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 118
    invoke-virtual {p0, v0}, Lcn/iwgang/countdownview/CustomCountDownTimer$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v5}, Lcn/iwgang/countdownview/CustomCountDownTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 120
    :goto_1
    monitor-exit p1

    return-void

    .line 101
    :cond_3
    :goto_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    .line 120
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
