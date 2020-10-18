.class public Lcom/eltechs/axs/helpers/PromoHelper;
.super Ljava/lang/Object;
.source "PromoHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDiscount(Landroid/content/Context;)I
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/eltechs/axs/AppConfig;->getInstance(Landroid/content/Context;)Lcom/eltechs/axs/AppConfig;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lcom/eltechs/axs/AppConfig;->getPromoDiscount()I

    move-result p0

    return p0
.end method

.method public static getDiscountImageRes(Landroid/content/Context;)I
    .locals 1

    .line 55
    invoke-static {p0}, Lcom/eltechs/axs/helpers/PromoHelper;->getDiscount(Landroid/content/Context;)I

    move-result p0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_8

    const/16 v0, 0xf

    if-eq p0, v0, :cond_7

    const/16 v0, 0x14

    if-eq p0, v0, :cond_6

    const/16 v0, 0x19

    if-eq p0, v0, :cond_5

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_4

    const/16 v0, 0x23

    if-eq p0, v0, :cond_3

    const/16 v0, 0x28

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x32

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    .line 66
    invoke-static {p0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    return p0

    .line 65
    :cond_0
    sget p0, Lcom/eltechs/axs/R$drawable;->discount50:I

    return p0

    .line 64
    :cond_1
    sget p0, Lcom/eltechs/axs/R$drawable;->discount45:I

    return p0

    .line 63
    :cond_2
    sget p0, Lcom/eltechs/axs/R$drawable;->discount40:I

    return p0

    .line 62
    :cond_3
    sget p0, Lcom/eltechs/axs/R$drawable;->discount35:I

    return p0

    .line 61
    :cond_4
    sget p0, Lcom/eltechs/axs/R$drawable;->discount30:I

    return p0

    .line 60
    :cond_5
    sget p0, Lcom/eltechs/axs/R$drawable;->discount25:I

    return p0

    .line 59
    :cond_6
    sget p0, Lcom/eltechs/axs/R$drawable;->discount20:I

    return p0

    .line 58
    :cond_7
    sget p0, Lcom/eltechs/axs/R$drawable;->discount15:I

    return p0

    .line 57
    :cond_8
    sget p0, Lcom/eltechs/axs/R$drawable;->discount10:I

    return p0
.end method

.method public static getMsecToEnd(Landroid/content/Context;)J
    .locals 4

    .line 37
    invoke-static {p0}, Lcom/eltechs/axs/AppConfig;->getInstance(Landroid/content/Context;)Lcom/eltechs/axs/AppConfig;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lcom/eltechs/axs/AppConfig;->getPromoEndTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static isActive(Landroid/content/Context;)Z
    .locals 7

    .line 21
    invoke-static {p0}, Lcom/eltechs/axs/AppConfig;->getInstance(Landroid/content/Context;)Lcom/eltechs/axs/AppConfig;

    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lcom/eltechs/axs/AppConfig;->getBuyOrSubscribeTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 26
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 27
    invoke-virtual {p0}, Lcom/eltechs/axs/AppConfig;->getPromoStartTime()Ljava/util/Date;

    move-result-object v2

    .line 28
    invoke-virtual {p0}, Lcom/eltechs/axs/AppConfig;->getPromoEndTime()Ljava/util/Date;

    move-result-object p0

    .line 29
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long p0, v3, v5

    if-gez p0, :cond_1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long p0, v3, v5

    if-ltz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
