.class public Lcom/eltechs/axs/RateAppDialog;
.super Ljava/lang/Object;
.source "RateAppDialog.java"


# static fields
.field private static final MIN_GUEST_LAUNCHES:I = 0xa

.field private static final SHOW_INTERVAL_DAYS:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCondAndShow(Landroid/content/Context;)V
    .locals 4

    .line 77
    invoke-static {p0}, Lcom/eltechs/axs/AppConfig;->getInstance(Landroid/content/Context;)Lcom/eltechs/axs/AppConfig;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/eltechs/axs/AppConfig;->getRateAppDontShowAgain()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-virtual {v0}, Lcom/eltechs/axs/AppConfig;->getGuestLaunchesCount()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    return-void

    .line 89
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 90
    invoke-virtual {v0}, Lcom/eltechs/axs/AppConfig;->getRateAppLastShowTime()Ljava/util/Date;

    move-result-object v0

    .line 91
    invoke-static {v1, v0}, Lcom/eltechs/axs/helpers/DateHelper;->getDiffDays(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    return-void

    .line 96
    :cond_2
    invoke-static {p0}, Lcom/eltechs/axs/RateAppDialog;->show(Landroid/content/Context;)V

    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 4

    .line 29
    invoke-static {p0}, Lcom/eltechs/axs/AppConfig;->getInstance(Landroid/content/Context;)Lcom/eltechs/axs/AppConfig;

    move-result-object v0

    .line 31
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Rate this app"

    .line 33
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const-string v2, "If you enjoy this app, please take a moment to rate it. It won\'t take more than a minute. Thank you for your support!"

    .line 34
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const-string v2, "Rate now"

    .line 35
    new-instance v3, Lcom/eltechs/axs/RateAppDialog$1;

    invoke-direct {v3, p0, v0}, Lcom/eltechs/axs/RateAppDialog$1;-><init>(Landroid/content/Context;Lcom/eltechs/axs/AppConfig;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const-string p0, "No, thanks"

    .line 52
    new-instance v2, Lcom/eltechs/axs/RateAppDialog$2;

    invoke-direct {v2, v0}, Lcom/eltechs/axs/RateAppDialog$2;-><init>(Lcom/eltechs/axs/AppConfig;)V

    invoke-virtual {v1, p0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const-string p0, "Remind later"

    .line 60
    new-instance v2, Lcom/eltechs/axs/RateAppDialog$3;

    invoke-direct {v2}, Lcom/eltechs/axs/RateAppDialog$3;-><init>()V

    invoke-virtual {v1, p0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 68
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/AppConfig;->setRateAppLastShowTime(Ljava/util/Date;)V

    .line 69
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method
