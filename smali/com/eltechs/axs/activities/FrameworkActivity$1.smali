.class Lcom/eltechs/axs/activities/FrameworkActivity$1;
.super Landroid/os/CountDownTimer;
.source "FrameworkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/activities/FrameworkActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/activities/FrameworkActivity;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/activities/FrameworkActivity;JJ)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/eltechs/axs/activities/FrameworkActivity$1;->this$0:Lcom/eltechs/axs/activities/FrameworkActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/eltechs/axs/activities/FrameworkActivity$1;->this$0:Lcom/eltechs/axs/activities/FrameworkActivity;

    invoke-static {v0}, Lcom/eltechs/axs/activities/FrameworkActivity;->access$000(Lcom/eltechs/axs/activities/FrameworkActivity;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public onTick(J)V
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/eltechs/axs/activities/FrameworkActivity$1;->this$0:Lcom/eltechs/axs/activities/FrameworkActivity;

    invoke-virtual {p1}, Lcom/eltechs/axs/activities/FrameworkActivity;->isActivityResumed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/eltechs/axs/activities/FrameworkActivity$1;->this$0:Lcom/eltechs/axs/activities/FrameworkActivity;

    invoke-static {p1}, Lcom/eltechs/axs/helpers/GAHelpers;->GASendKeepalive(Landroid/app/Activity;)V

    .line 60
    iget-object p1, p0, Lcom/eltechs/axs/activities/FrameworkActivity$1;->this$0:Lcom/eltechs/axs/activities/FrameworkActivity;

    invoke-virtual {p1}, Lcom/eltechs/axs/activities/FrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/eltechs/axs/AppConfig;->getInstance(Landroid/content/Context;)Lcom/eltechs/axs/AppConfig;

    move-result-object p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/AppConfig;->setLastSessionTime(Ljava/util/Date;)V

    :cond_0
    return-void
.end method
