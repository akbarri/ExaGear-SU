.class public Lcom/eltechs/axs/firebase/FAHelper;
.super Ljava/lang/Object;
.source "FAHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logCompleteBuyEvent(Landroid/content/Context;)V
    .locals 1

    const-string v0, "COMPLETE_BUY"

    .line 152
    invoke-static {p0, v0}, Lcom/eltechs/axs/firebase/FAHelper;->logIabEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static logCompleteBuyPromoEvent(Landroid/content/Context;)V
    .locals 1

    const-string v0, "COMPLETE_BUY_PROMO"

    .line 136
    invoke-static {p0, v0}, Lcom/eltechs/axs/firebase/FAHelper;->logIabEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static logCompleteSubscribeEvent(Landroid/content/Context;)V
    .locals 1

    const-string v0, "COMLPETE_SUBSCRIBE"

    .line 168
    invoke-static {p0, v0}, Lcom/eltechs/axs/firebase/FAHelper;->logIabEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static logEvent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static logExeFoundEvent(Landroid/content/Context;)V
    .locals 6

    .line 54
    invoke-static {p0}, Lcom/eltechs/axs/AppConfig;->getInstance(Landroid/content/Context;)Lcom/eltechs/axs/AppConfig;

    move-result-object v0

    .line 55
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 56
    invoke-virtual {v0}, Lcom/eltechs/axs/AppConfig;->getFirstRunTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eltechs/axs/helpers/DateHelper;->getDiffDays(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v1

    .line 57
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 58
    invoke-virtual {v0}, Lcom/eltechs/axs/AppConfig;->isRunAfterNotification()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const-string v1, "NOTIF_NAME"

    .line 60
    invoke-virtual {v0}, Lcom/eltechs/axs/AppConfig;->getNotificationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "EXE_FOUND_NOTIF"

    .line 61
    invoke-static {p0, v1, v3}, Lcom/eltechs/axs/firebase/FAHelper;->logEvent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "EXE_FOUND_NOTIF"

    .line 63
    invoke-virtual {v0}, Lcom/eltechs/axs/AppConfig;->getNotificationName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v5, v0, v5}, Lcom/eltechs/axs/helpers/GAHelpers;->GASendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_0
    const-string v0, "TIME_DAYS"

    .line 66
    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "EXE_FOUND"

    .line 67
    invoke-static {p0, v0, v3}, Lcom/eltechs/axs/firebase/FAHelper;->logEvent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "EXE_FOUND"

    .line 69
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v5, v1, v5}, Lcom/eltechs/axs/helpers/GAHelpers;->GASendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    :goto_0
    return-void
.end method

.method public static logGotTrialEvent(Landroid/content/Context;)V
    .locals 6

    .line 78
    invoke-static {p0}, Lcom/eltechs/axs/AppConfig;->getInstance(Landroid/content/Context;)Lcom/eltechs/axs/AppConfig;

    move-result-object v0

    .line 79
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 80
    invoke-virtual {v0}, Lcom/eltechs/axs/AppConfig;->getExeFoundTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eltechs/axs/helpers/DateHelper;->getDiffDays(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v1

    .line 81
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 82
    invoke-virtual {v0}, Lcom/eltechs/axs/AppConfig;->isRunAfterNotification()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const-string v1, "NOTIF_NAME"

    .line 84
    invoke-virtual {v0}, Lcom/eltechs/axs/AppConfig;->getNotificationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "GOT_TRIAL_NOTIF"

    .line 85
    invoke-static {p0, v1, v3}, Lcom/eltechs/axs/firebase/FAHelper;->logEvent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "GOT_TRIAL_NOTIF"

    .line 87
    invoke-virtual {v0}, Lcom/eltechs/axs/AppConfig;->getNotificationName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v5, v0, v5}, Lcom/eltechs/axs/helpers/GAHelpers;->GASendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_0
    const-string v0, "TIME_DAYS"

    .line 90
    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "GOT_TRIAL"

    .line 91
    invoke-static {p0, v0, v3}, Lcom/eltechs/axs/firebase/FAHelper;->logEvent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "GOT_TRIAL"

    .line 93
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v5, v1, v5}, Lcom/eltechs/axs/helpers/GAHelpers;->GASendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    :goto_0
    return-void
.end method

.method private static logIabEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 104
    invoke-static {p0}, Lcom/eltechs/axs/AppConfig;->getInstance(Landroid/content/Context;)Lcom/eltechs/axs/AppConfig;

    move-result-object v0

    .line 105
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 106
    invoke-virtual {v0}, Lcom/eltechs/axs/AppConfig;->getExeFoundTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eltechs/axs/helpers/DateHelper;->getDiffDays(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v1

    .line 107
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 108
    invoke-virtual {v0}, Lcom/eltechs/axs/AppConfig;->isRunAfterNotification()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const-string v1, "NOTIF_NAME"

    .line 110
    invoke-virtual {v0}, Lcom/eltechs/axs/AppConfig;->getNotificationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_NOTIF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/eltechs/axs/firebase/FAHelper;->logEvent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_NOTIF"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/eltechs/axs/AppConfig;->getNotificationName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v5, v0, v5}, Lcom/eltechs/axs/helpers/GAHelpers;->GASendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_0
    const-string v0, "TIME_DAYS"

    .line 116
    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 117
    invoke-static {p0, p1, v3}, Lcom/eltechs/axs/firebase/FAHelper;->logEvent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 119
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v5, v0, v5}, Lcom/eltechs/axs/helpers/GAHelpers;->GASendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    :goto_0
    return-void
.end method

.method public static logNotificationClickEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "NAME"

    .line 43
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "NOTIFICATION_CLICK"

    .line 44
    invoke-static {p0, v1, v0}, Lcom/eltechs/axs/firebase/FAHelper;->logEvent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "NOTIFICATION_CLICK"

    const/4 v1, 0x0

    .line 46
    invoke-static {p0, v0, v1, p1, v1}, Lcom/eltechs/axs/helpers/GAHelpers;->GASendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static logRemindActionsCrashEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 186
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DESCR"

    .line 187
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "STACKELEM"

    .line 188
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "REMIND_ACTIONS_CRASH"

    .line 189
    invoke-static {p0, v1, v0}, Lcom/eltechs/axs/firebase/FAHelper;->logEvent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "REMIND_ACTIONS_CRASH"

    const/4 v1, 0x0

    .line 191
    invoke-static {p0, v0, p1, p2, v1}, Lcom/eltechs/axs/helpers/GAHelpers;->GASendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static logTapBuyEvent(Landroid/content/Context;)V
    .locals 1

    const-string v0, "TAP_BUY"

    .line 144
    invoke-static {p0, v0}, Lcom/eltechs/axs/firebase/FAHelper;->logIabEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static logTapBuyPromoEvent(Landroid/content/Context;)V
    .locals 1

    const-string v0, "TAP_BUY_PROMO"

    .line 128
    invoke-static {p0, v0}, Lcom/eltechs/axs/firebase/FAHelper;->logIabEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static logTapSubscribeEvent(Landroid/content/Context;)V
    .locals 1

    const-string v0, "TAP_SUBSCRIBE"

    .line 160
    invoke-static {p0, v0}, Lcom/eltechs/axs/firebase/FAHelper;->logIabEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static logXServerFirstConnectEvent(Landroid/content/Context;)V
    .locals 2

    const-string v0, "XSERVER_FIRST_CONNECT"

    const/4 v1, 0x0

    .line 176
    invoke-static {p0, v0, v1}, Lcom/eltechs/axs/firebase/FAHelper;->logEvent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "XSERVER_FIRST_CONNECT"

    .line 178
    invoke-static {p0, v0, v1, v1, v1}, Lcom/eltechs/axs/helpers/GAHelpers;->GASendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method
