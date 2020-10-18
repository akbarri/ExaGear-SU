.class public Lcom/eltechs/axs/AppRater;
.super Ljava/lang/Object;
.source "AppRater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/AppRater$RateDialog;
    }
.end annotation


# static fields
.field private static final DAYS_FOR_DIALOG:I = 0x7

.field private static final LAUNCHES_FOR_DIALOG:I = 0x5


# instance fields
.field private rateDialog:Lcom/eltechs/axs/AppRater$RateDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showRateDialog(Landroid/content/Context;)V
    .locals 1

    .line 129
    new-instance v0, Lcom/eltechs/axs/AppRater$RateDialog;

    invoke-direct {v0, p0, p1}, Lcom/eltechs/axs/AppRater$RateDialog;-><init>(Lcom/eltechs/axs/AppRater;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eltechs/axs/AppRater;->rateDialog:Lcom/eltechs/axs/AppRater$RateDialog;

    .line 130
    iget-object p1, p0, Lcom/eltechs/axs/AppRater;->rateDialog:Lcom/eltechs/axs/AppRater$RateDialog;

    invoke-virtual {p1}, Lcom/eltechs/axs/AppRater$RateDialog;->show()V

    return-void
.end method


# virtual methods
.method public delayShow(Landroid/content/Context;)V
    .locals 5

    const-string v0, "exadroid_rate"

    const/4 v1, 0x0

    .line 173
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 174
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "next_dialog_date"

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x240c8400

    add-long/2addr v1, v3

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 176
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public dismissDialog(Landroid/content/Context;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/eltechs/axs/AppRater;->rateDialog:Lcom/eltechs/axs/AppRater$RateDialog;

    if-eqz v0, :cond_0

    const-string v0, "exadroid_rate"

    const/4 v1, 0x0

    .line 142
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 143
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "launch_count"

    .line 144
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 147
    iget-object p1, p0, Lcom/eltechs/axs/AppRater;->rateDialog:Lcom/eltechs/axs/AppRater$RateDialog;

    invoke-virtual {p1}, Lcom/eltechs/axs/AppRater$RateDialog;->dismiss()V

    const/4 p1, 0x0

    .line 148
    iput-object p1, p0, Lcom/eltechs/axs/AppRater;->rateDialog:Lcom/eltechs/axs/AppRater$RateDialog;

    :cond_0
    return-void
.end method

.method public maybeShowDialog(Landroid/content/Context;)Z
    .locals 8

    const-string v0, "exadroid_rate"

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "rate_clicked"

    .line 92
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    const-string v3, "next_dialog_date"

    const-wide/16 v4, 0x0

    .line 98
    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-nez v3, :cond_1

    const-string v3, "next_dialog_date"

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_1
    const-string v3, "launch_count"

    .line 107
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "launch_count"

    add-int/lit8 v4, v0, 0x1

    .line 108
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v2, 0x5

    if-lt v0, v2, :cond_2

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-gtz v0, :cond_2

    .line 114
    invoke-direct {p0, p1}, Lcom/eltechs/axs/AppRater;->showRateDialog(Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public startRateActivity(Landroid/content/Context;)V
    .locals 4

    const-string v0, "exadroid_rate"

    const/4 v1, 0x0

    .line 159
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 160
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rate_clicked"

    const/4 v2, 0x1

    .line 161
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 162
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 163
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
