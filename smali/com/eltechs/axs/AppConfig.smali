.class public Lcom/eltechs/axs/AppConfig;
.super Ljava/lang/Object;
.source "AppConfig.java"


# static fields
.field private static final CONFIG_FILE_KEY:Ljava/lang/String; = "com.eltechs.axs.CONFIG"

.field private static volatile mInstance:Lcom/eltechs/axs/AppConfig;


# instance fields
.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/eltechs/axs/AppConfig;
    .locals 4

    const-class v0, Lcom/eltechs/axs/AppConfig;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/eltechs/axs/AppConfig;->mInstance:Lcom/eltechs/axs/AppConfig;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/eltechs/axs/AppConfig;

    invoke-direct {v1}, Lcom/eltechs/axs/AppConfig;-><init>()V

    sput-object v1, Lcom/eltechs/axs/AppConfig;->mInstance:Lcom/eltechs/axs/AppConfig;

    .line 27
    sget-object v1, Lcom/eltechs/axs/AppConfig;->mInstance:Lcom/eltechs/axs/AppConfig;

    const-string v2, "com.eltechs.axs.CONFIG"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    iput-object p0, v1, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    .line 29
    :cond_0
    sget-object p0, Lcom/eltechs/axs/AppConfig;->mInstance:Lcom/eltechs/axs/AppConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getBuyOrSubscribeTime()Ljava/util/Date;
    .locals 5

    .line 124
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    const-string v2, "BUY_OR_SUBSCRIBE_TIME"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getComlpetedRemindActions()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    const-string v1, "COMLPETED_REMIND_ACTIONS"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getControlsWithInfoShown()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    const-string v1, "CONTROLS_WITH_INFO_SHOWN"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentGuestContId()Ljava/lang/Long;
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    const-string v1, "CURRENT_GUEST_CONT_ID"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getEDMainOnStartAction()Ljava/lang/Integer;
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    const-string v1, "ED_MAIN_ON_START_ACTION"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getExeFoundTime()Ljava/util/Date;
    .locals 5

    .line 80
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    const-string v2, "EXE_FOUND_TIME"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getFirstRunTime()Ljava/util/Date;
    .locals 5

    .line 58
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    const-string v2, "FIRST_RUN_TIME"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getGuestLaunchesCount()I
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    const-string v1, "GUEST_LAUNCHES_COUNT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastSessionTime()Ljava/util/Date;
    .locals 5

    .line 69
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    const-string v2, "LAST_SESSION_TIME"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getNotificationName()Ljava/lang/String;
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    const-string v1, "NOTIFICATION_NAME"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPromoDiscount()I
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    const-string v1, "PROMO_DISCOUNT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPromoEndTime()Ljava/util/Date;
    .locals 5

    .line 147
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    const-string v2, "PROMO_END_TIME"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getPromoNextRemindTime()Ljava/util/Date;
    .locals 5

    .line 158
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    const-string v2, "PROMO_NEXT_REMIND_TIME"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getPromoStartTime()Ljava/util/Date;
    .locals 5

    .line 136
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    const-string v2, "PROMO_START_TIME"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getRateAppDontShowAgain()Z
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    const-string v1, "RATE_APP_DONT_SHOW_AGAIN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getRateAppLastShowTime()Ljava/util/Date;
    .locals 5

    .line 248
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    const-string v2, "RATE_APP_LAST_SHOW_TIME"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getTrialBeginTime()Ljava/util/Date;
    .locals 5

    .line 91
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    const-string v2, "TRIAL_BEGIN_TIME"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getTrialExpireTime()Ljava/util/Date;
    .locals 5

    .line 102
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    const-string v2, "TRIAL_EXPIRE_TIME"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getTrialNextRemindTime()Ljava/util/Date;
    .locals 5

    .line 113
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    const-string v2, "TRIAL_NEXT_REMIND_TIME"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public isRunAfterNotification()Z
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    const-string v1, "RUN_AFTER_NOTIFICATION"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isXServerFirstConnectDone()Z
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    const-string v1, "XSERVER_FIRST_CONNECT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setBuyOrSubscribeTime(Ljava/util/Date;)V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "BUY_OR_SUBSCRIBE_TIME"

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setCompletedRemindActions(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "COMLPETED_REMIND_ACTIONS"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setControlsWithInfoShown(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CONTROLS_WITH_INFO_SHOWN"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setCurrentGuestContId(Ljava/lang/Long;)V
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CURRENT_GUEST_CONT_ID"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setEDMainOnStartAction(Ljava/lang/Integer;)V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ED_MAIN_ON_START_ACTION"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setExeFoundTime(Ljava/util/Date;)V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EXE_FOUND_TIME"

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setFirstRunTime(Ljava/util/Date;)V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "FIRST_RUN_TIME"

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setGuestLaunchesCount(I)V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "GUEST_LAUNCHES_COUNT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastSessionTime(Ljava/util/Date;)V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LAST_SESSION_TIME"

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setNotificationName(Ljava/lang/String;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NOTIFICATION_NAME"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPromoDiscount(I)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PROMO_DISCOUNT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPromoEndTime(Ljava/util/Date;)V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PROMO_END_TIME"

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPromoNextRemindTime(Ljava/util/Date;)V
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PROMO_NEXT_REMIND_TIME"

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPromoStartTime(Ljava/util/Date;)V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PROMO_START_TIME"

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setRateAppDontShowAgain(Z)V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "RATE_APP_DONT_SHOW_AGAIN"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setRateAppLastShowTime(Ljava/util/Date;)V
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "RATE_APP_LAST_SHOW_TIME"

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setRunAfterNotification(Z)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "RUN_AFTER_NOTIFICATION"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setTrialBeginTime(Ljava/util/Date;)V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TRIAL_BEGIN_TIME"

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setTrialExpireTime(Ljava/util/Date;)V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TRIAL_EXPIRE_TIME"

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setTrialNextRemindTime(Ljava/util/Date;)V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TRIAL_NEXT_REMIND_TIME"

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setXServerFirstConnectDone(Z)V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/eltechs/axs/AppConfig;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "XSERVER_FIRST_CONNECT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
