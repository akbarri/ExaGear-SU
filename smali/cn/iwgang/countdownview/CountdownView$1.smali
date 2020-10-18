.class Lcn/iwgang/countdownview/CountdownView$1;
.super Lcn/iwgang/countdownview/CustomCountDownTimer;
.source "CountdownView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/iwgang/countdownview/CountdownView;->start(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/iwgang/countdownview/CountdownView;


# direct methods
.method constructor <init>(Lcn/iwgang/countdownview/CountdownView;JJ)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcn/iwgang/countdownview/CountdownView$1;->this$0:Lcn/iwgang/countdownview/CountdownView;

    invoke-direct {p0, p2, p3, p4, p5}, Lcn/iwgang/countdownview/CustomCountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcn/iwgang/countdownview/CountdownView$1;->this$0:Lcn/iwgang/countdownview/CountdownView;

    invoke-virtual {v0}, Lcn/iwgang/countdownview/CountdownView;->allShowZero()V

    .line 138
    iget-object v0, p0, Lcn/iwgang/countdownview/CountdownView$1;->this$0:Lcn/iwgang/countdownview/CountdownView;

    invoke-static {v0}, Lcn/iwgang/countdownview/CountdownView;->access$000(Lcn/iwgang/countdownview/CountdownView;)Lcn/iwgang/countdownview/CountdownView$OnCountdownEndListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcn/iwgang/countdownview/CountdownView$1;->this$0:Lcn/iwgang/countdownview/CountdownView;

    invoke-static {v0}, Lcn/iwgang/countdownview/CountdownView;->access$000(Lcn/iwgang/countdownview/CountdownView;)Lcn/iwgang/countdownview/CountdownView$OnCountdownEndListener;

    move-result-object v0

    iget-object v1, p0, Lcn/iwgang/countdownview/CountdownView$1;->this$0:Lcn/iwgang/countdownview/CountdownView;

    invoke-interface {v0, v1}, Lcn/iwgang/countdownview/CountdownView$OnCountdownEndListener;->onEnd(Lcn/iwgang/countdownview/CountdownView;)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcn/iwgang/countdownview/CountdownView$1;->this$0:Lcn/iwgang/countdownview/CountdownView;

    invoke-virtual {v0, p1, p2}, Lcn/iwgang/countdownview/CountdownView;->updateShow(J)V

    return-void
.end method
