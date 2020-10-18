.class public Lcom/eltechs/axs/RemindActions;
.super Ljava/lang/Object;
.source "RemindActions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/RemindActions$OpenUrlAction;,
        Lcom/eltechs/axs/RemindActions$RunPromoAction;,
        Lcom/eltechs/axs/RemindActions$TrialRemindAction;,
        Lcom/eltechs/axs/RemindActions$Action;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveAction(Landroid/content/Context;Ljava/util/List;)Lcom/eltechs/axs/RemindActions$Action;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/RemindActions$Action;",
            ">;)",
            "Lcom/eltechs/axs/RemindActions$Action;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 131
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 136
    :cond_0
    invoke-static {p0}, Lcom/eltechs/axs/AppConfig;->getInstance(Landroid/content/Context;)Lcom/eltechs/axs/AppConfig;

    move-result-object p0

    .line 138
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/RemindActions$Action;

    .line 140
    invoke-virtual {p0}, Lcom/eltechs/axs/AppConfig;->getComlpetedRemindActions()Ljava/util/Set;

    move-result-object v2

    iget-object v3, v1, Lcom/eltechs/axs/RemindActions$Action;->id:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 150
    :cond_2
    iget-object v2, v1, Lcom/eltechs/axs/RemindActions$Action;->startDate:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "TRIAL_EXPIRE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_1
    const-string v4, "LAST_SESSION"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_2
    const-string v4, "TRIAL_BEGIN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "FIRST_RUN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_4
    const-string v4, "EXE_FOUND"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_5
    const-string v4, "BUY_OR_SUBSCRIBE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    :cond_3
    :goto_1
    const-wide/16 v4, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    .line 183
    :pswitch_0
    invoke-virtual {p0}, Lcom/eltechs/axs/AppConfig;->getBuyOrSubscribeTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 185
    invoke-virtual {p0}, Lcom/eltechs/axs/AppConfig;->getLastSessionTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto/16 :goto_3

    .line 180
    :pswitch_1
    invoke-virtual {p0}, Lcom/eltechs/axs/AppConfig;->getBuyOrSubscribeTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto/16 :goto_3

    .line 174
    :pswitch_2
    invoke-virtual {p0}, Lcom/eltechs/axs/AppConfig;->getBuyOrSubscribeTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 176
    invoke-virtual {p0}, Lcom/eltechs/axs/AppConfig;->getTrialExpireTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_3

    .line 168
    :pswitch_3
    invoke-virtual {p0}, Lcom/eltechs/axs/AppConfig;->getBuyOrSubscribeTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 170
    invoke-virtual {p0}, Lcom/eltechs/axs/AppConfig;->getTrialBeginTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_3

    .line 161
    :pswitch_4
    invoke-virtual {p0}, Lcom/eltechs/axs/AppConfig;->getTrialBeginTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 162
    invoke-virtual {p0}, Lcom/eltechs/axs/AppConfig;->getBuyOrSubscribeTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 164
    invoke-virtual {p0}, Lcom/eltechs/axs/AppConfig;->getExeFoundTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_3

    .line 153
    :pswitch_5
    invoke-virtual {p0}, Lcom/eltechs/axs/AppConfig;->getExeFoundTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 154
    invoke-virtual {p0}, Lcom/eltechs/axs/AppConfig;->getTrialBeginTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 155
    invoke-virtual {p0}, Lcom/eltechs/axs/AppConfig;->getBuyOrSubscribeTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 157
    invoke-virtual {p0}, Lcom/eltechs/axs/AppConfig;->getFirstRunTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_3

    :cond_4
    :goto_2
    move-wide v2, v4

    :goto_3
    cmp-long v4, v2, v4

    if-nez v4, :cond_5

    goto/16 :goto_0

    .line 196
    :cond_5
    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, v1, Lcom/eltechs/axs/RemindActions$Action;->periodBegin:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 197
    sget-object v6, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, v1, Lcom/eltechs/axs/RemindActions$Action;->periodEnd:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 198
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gtz v8, :cond_1

    cmp-long v6, v6, v2

    if-gez v6, :cond_1

    .line 201
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, v1, Lcom/eltechs/axs/RemindActions$Action;->effectivePeriodBegin:Ljava/lang/Long;

    .line 202
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, v1, Lcom/eltechs/axs/RemindActions$Action;->effectivePeriodEnd:Ljava/lang/Long;

    return-object v1

    :cond_6
    return-object v0

    :cond_7
    :goto_4
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7cb3d0f9 -> :sswitch_5
        -0x6bfcad2b -> :sswitch_4
        -0x51e67fc4 -> :sswitch_3
        0x1c796a00 -> :sswitch_2
        0x1ebe49cd -> :sswitch_1
        0x78e23688 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseConfigAndExecuteActions(Landroid/content/Context;)V
    .locals 1

    .line 277
    invoke-static {}, Lcom/eltechs/axs/firebase/FRCHelper;->getRemindActionsConfigJson()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 283
    :cond_0
    invoke-static {v0}, Lcom/eltechs/axs/RemindActions;->parseConfigJson(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 285
    invoke-static {p0, v0}, Lcom/eltechs/axs/RemindActions;->getActiveAction(Landroid/content/Context;Ljava/util/List;)Lcom/eltechs/axs/RemindActions$Action;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {v0, p0}, Lcom/eltechs/axs/RemindActions$Action;->execute(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private static parseConfigJson(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/RemindActions$Action;",
            ">;"
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "actions"

    .line 224
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    .line 225
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 227
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "action"

    .line 230
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x71fbe592

    if-eq v7, v8, :cond_2

    const v8, -0x3f8049e5

    if-eq v7, v8, :cond_1

    const v8, 0x10a561da

    if-eq v7, v8, :cond_0

    goto :goto_1

    :cond_0
    const-string v7, "OPEN_URL"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x2

    goto :goto_2

    :cond_1
    const-string v7, "RUN_PROMO"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const-string v7, "TRIAL_REMIND"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v6

    :goto_2
    packed-switch v5, :pswitch_data_0

    goto :goto_4

    .line 239
    :pswitch_0
    new-instance v5, Lcom/eltechs/axs/RemindActions$OpenUrlAction;

    invoke-direct {v5, v1}, Lcom/eltechs/axs/RemindActions$OpenUrlAction;-><init>(Lcom/eltechs/axs/RemindActions$1;)V

    goto :goto_3

    .line 236
    :pswitch_1
    new-instance v5, Lcom/eltechs/axs/RemindActions$RunPromoAction;

    invoke-direct {v5, v1}, Lcom/eltechs/axs/RemindActions$RunPromoAction;-><init>(Lcom/eltechs/axs/RemindActions$1;)V

    goto :goto_3

    .line 233
    :pswitch_2
    new-instance v5, Lcom/eltechs/axs/RemindActions$TrialRemindAction;

    invoke-direct {v5, v1}, Lcom/eltechs/axs/RemindActions$TrialRemindAction;-><init>(Lcom/eltechs/axs/RemindActions$1;)V

    :goto_3
    const-string v6, "id"

    .line 246
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/eltechs/axs/RemindActions$Action;->id:Ljava/lang/String;

    const-string v6, "start_date"

    .line 247
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/eltechs/axs/RemindActions$Action;->startDate:Ljava/lang/String;

    const-string v6, "begin"

    .line 248
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/eltechs/axs/RemindActions$Action;->periodBegin:Ljava/lang/Long;

    const-string v6, "end"

    .line 249
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/eltechs/axs/RemindActions$Action;->periodEnd:Ljava/lang/Long;

    const-string v6, "notif_name"

    .line 250
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/eltechs/axs/RemindActions$Action;->notifName:Ljava/lang/String;

    const-string v6, "notif_title"

    .line 251
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/eltechs/axs/RemindActions$Action;->notifTitle:Ljava/lang/String;

    const-string v6, "notif_text"

    .line 252
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/eltechs/axs/RemindActions$Action;->notifText:Ljava/lang/String;

    const-string v6, "params"

    .line 255
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "params"

    .line 257
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/eltechs/axs/RemindActions$Action;->parseParams(Lorg/json/JSONObject;)V

    .line 260
    :cond_4
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v0

    :catch_0
    const-string p0, "RemindActions"

    const-string v0, "JSON parse error!"

    .line 264
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
