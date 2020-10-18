.class Lcom/eltechs/axs/RemindActions$RunPromoAction;
.super Lcom/eltechs/axs/RemindActions$Action;
.source "RemindActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/RemindActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RunPromoAction"
.end annotation


# instance fields
.field private discount:Ljava/lang/Long;

.field private duration:Ljava/lang/Long;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, v0}, Lcom/eltechs/axs/RemindActions$Action;-><init>(Lcom/eltechs/axs/RemindActions$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eltechs/axs/RemindActions$1;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/eltechs/axs/RemindActions$RunPromoAction;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Context;)V
    .locals 7

    .line 93
    invoke-static {p1}, Lcom/eltechs/axs/AppConfig;->getInstance(Landroid/content/Context;)Lcom/eltechs/axs/AppConfig;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/eltechs/axs/RemindActions$RunPromoAction;->effectivePeriodBegin:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/AppConfig;->setPromoStartTime(Ljava/util/Date;)V

    .line 96
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/eltechs/axs/RemindActions$RunPromoAction;->effectivePeriodBegin:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lcom/eltechs/axs/RemindActions$RunPromoAction;->duration:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/AppConfig;->setPromoEndTime(Ljava/util/Date;)V

    .line 97
    iget-object v1, p0, Lcom/eltechs/axs/RemindActions$RunPromoAction;->discount:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/AppConfig;->setPromoDiscount(I)V

    .line 98
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/eltechs/axs/RemindActions$RunPromoAction;->effectivePeriodBegin:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/AppConfig;->setPromoNextRemindTime(Ljava/util/Date;)V

    .line 100
    iget-object v0, p0, Lcom/eltechs/axs/RemindActions$RunPromoAction;->notifTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/eltechs/axs/RemindActions$RunPromoAction;->notifText:Ljava/lang/String;

    iget-object v2, p0, Lcom/eltechs/axs/RemindActions$RunPromoAction;->notifName:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/eltechs/axs/helpers/NotificationHelper;->displaySimpleNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/RemindActions$RunPromoAction;->addToCompleted(Landroid/content/Context;)V

    return-void
.end method

.method public parseParams(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "discount"

    .line 86
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/RemindActions$RunPromoAction;->discount:Ljava/lang/Long;

    const-string v0, "duration"

    .line 87
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/RemindActions$RunPromoAction;->duration:Ljava/lang/Long;

    return-void
.end method
