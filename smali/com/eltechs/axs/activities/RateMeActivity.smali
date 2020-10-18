.class public Lcom/eltechs/axs/activities/RateMeActivity;
.super Lcom/eltechs/axs/activities/FrameworkActivity;
.source "RateMeActivity.java"


# static fields
.field private static final DAYS_FOR_DIALOG:I = 0x7

.field private static final LAUNCHES_FOR_DIALOG:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 30
    invoke-super {p0, p1}, Lcom/eltechs/axs/activities/FrameworkActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 31
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/RateMeActivity;->requestWindowFeature(I)Z

    const/4 p1, 0x2

    .line 33
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/RateMeActivity;->setResult(I)V

    const-string p1, "exadroid_rate"

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/eltechs/axs/activities/RateMeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 36
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "rate_clicked"

    .line 38
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/RateMeActivity;->finish()V

    return-void

    :cond_0
    const-string v2, "next_dialog_date"

    const-wide/16 v3, 0x0

    .line 45
    invoke-interface {p1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-nez v2, :cond_1

    const-string v2, "next_dialog_date"

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_1
    const-string v2, "launch_count"

    .line 52
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "launch_count"

    add-int/lit8 v2, p1, 0x1

    .line 53
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x5

    if-lt p1, v0, :cond_3

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long p1, v5, v0

    if-lez p1, :cond_2

    goto :goto_0

    .line 63
    :cond_2
    sget p1, Lcom/eltechs/axs/R$layout;->rate_me_activity:I

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/RateMeActivity;->setContentView(I)V

    .line 64
    sget p1, Lcom/eltechs/axs/R$id;->rate_custom_title:I

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/RateMeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eltechs/axs/activities/RateMeActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/RateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 59
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/RateMeActivity;->finish()V

    return-void
.end method

.method public onRateLaterClicked(Landroid/view/View;)V
    .locals 5

    const-string p1, "exadroid_rate"

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, p1, v0}, Lcom/eltechs/axs/activities/RateMeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 87
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "next_dialog_date"

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x240c8400

    add-long/2addr v1, v3

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 89
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 91
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/RateMeActivity;->finish()V

    return-void
.end method

.method public onRateNowClicked(Landroid/view/View;)V
    .locals 3

    const-string p1, "exadroid_rate"

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/eltechs/axs/activities/RateMeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 73
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "rate_clicked"

    const/4 v1, 0x1

    .line 74
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/eltechs/axs/activities/RateMeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/RateMeActivity;->startActivity(Landroid/content/Intent;)V

    .line 78
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/RateMeActivity;->finish()V

    return-void
.end method
