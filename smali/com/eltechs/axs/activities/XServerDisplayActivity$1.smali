.class Lcom/eltechs/axs/activities/XServerDisplayActivity$1;
.super Landroid/os/CountDownTimer;
.source "XServerDisplayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/activities/XServerDisplayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/activities/XServerDisplayActivity;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/activities/XServerDisplayActivity;JJ)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity$1;->this$0:Lcom/eltechs/axs/activities/XServerDisplayActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity$1;->this$0:Lcom/eltechs/axs/activities/XServerDisplayActivity;

    invoke-static {v0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->access$200(Lcom/eltechs/axs/activities/XServerDisplayActivity;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public onTick(J)V
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity$1;->this$0:Lcom/eltechs/axs/activities/XServerDisplayActivity;

    invoke-virtual {p1}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->checkUiThread()V

    .line 73
    iget-object p1, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity$1;->this$0:Lcom/eltechs/axs/activities/XServerDisplayActivity;

    invoke-virtual {p1}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->isActivityResumed()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity$1;->this$0:Lcom/eltechs/axs/activities/XServerDisplayActivity;

    invoke-static {p1}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->access$100(Lcom/eltechs/axs/activities/XServerDisplayActivity;)V

    return-void
.end method
