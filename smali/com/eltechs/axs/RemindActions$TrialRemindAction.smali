.class Lcom/eltechs/axs/RemindActions$TrialRemindAction;
.super Lcom/eltechs/axs/RemindActions$Action;
.source "RemindActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/RemindActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrialRemindAction"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v0}, Lcom/eltechs/axs/RemindActions$Action;-><init>(Lcom/eltechs/axs/RemindActions$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eltechs/axs/RemindActions$1;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/eltechs/axs/RemindActions$TrialRemindAction;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Context;)V
    .locals 4

    .line 68
    invoke-static {p1}, Lcom/eltechs/axs/AppConfig;->getInstance(Landroid/content/Context;)Lcom/eltechs/axs/AppConfig;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/eltechs/axs/RemindActions$TrialRemindAction;->effectivePeriodBegin:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/AppConfig;->setTrialNextRemindTime(Ljava/util/Date;)V

    .line 72
    iget-object v0, p0, Lcom/eltechs/axs/RemindActions$TrialRemindAction;->notifTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/eltechs/axs/RemindActions$TrialRemindAction;->notifText:Ljava/lang/String;

    iget-object v2, p0, Lcom/eltechs/axs/RemindActions$TrialRemindAction;->notifName:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/eltechs/axs/helpers/NotificationHelper;->displaySimpleNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/RemindActions$TrialRemindAction;->addToCompleted(Landroid/content/Context;)V

    return-void
.end method
