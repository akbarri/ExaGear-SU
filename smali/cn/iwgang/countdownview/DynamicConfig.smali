.class public Lcn/iwgang/countdownview/DynamicConfig;
.super Ljava/lang/Object;
.source "DynamicConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/iwgang/countdownview/DynamicConfig$SuffixGravity;,
        Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;,
        Lcn/iwgang/countdownview/DynamicConfig$Builder;
    }
.end annotation


# instance fields
.field private mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;


# direct methods
.method private constructor <init>(Lcn/iwgang/countdownview/DynamicConfig$Builder;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    return-void
.end method

.method synthetic constructor <init>(Lcn/iwgang/countdownview/DynamicConfig$Builder;Lcn/iwgang/countdownview/DynamicConfig$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcn/iwgang/countdownview/DynamicConfig;-><init>(Lcn/iwgang/countdownview/DynamicConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public getBackgroundInfo()Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;
    .locals 1

    .line 132
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$2900(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$600(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuffixDay()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$700(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuffixDayLeftMargin()Ljava/lang/Float;
    .locals 1

    .line 72
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$1400(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getSuffixDayRightMargin()Ljava/lang/Float;
    .locals 1

    .line 76
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$1500(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getSuffixGravity()Ljava/lang/Integer;
    .locals 1

    .line 64
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$1200(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSuffixHour()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$800(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuffixHourLeftMargin()Ljava/lang/Float;
    .locals 1

    .line 80
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$1600(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getSuffixHourRightMargin()Ljava/lang/Float;
    .locals 1

    .line 84
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$1700(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getSuffixLRMargin()Ljava/lang/Float;
    .locals 1

    .line 68
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$1300(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getSuffixMillisecond()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$1100(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuffixMillisecondLeftMargin()Ljava/lang/Float;
    .locals 1

    .line 104
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$2200(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getSuffixMinute()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$900(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuffixMinuteLeftMargin()Ljava/lang/Float;
    .locals 1

    .line 88
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$1800(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getSuffixMinuteRightMargin()Ljava/lang/Float;
    .locals 1

    .line 92
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$1900(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getSuffixSecond()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$1000(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuffixSecondLeftMargin()Ljava/lang/Float;
    .locals 1

    .line 96
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$2000(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getSuffixSecondRightMargin()Ljava/lang/Float;
    .locals 1

    .line 100
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$2100(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getSuffixTextColor()Ljava/lang/Integer;
    .locals 1

    .line 32
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$400(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSuffixTextSize()Ljava/lang/Float;
    .locals 1

    .line 28
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$300(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getTimeTextColor()Ljava/lang/Integer;
    .locals 1

    .line 20
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$100(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTimeTextSize()Ljava/lang/Float;
    .locals 1

    .line 16
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$000(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public isConvertDaysToHours()Ljava/lang/Boolean;
    .locals 1

    .line 108
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$2300(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isShowDay()Ljava/lang/Boolean;
    .locals 1

    .line 112
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$2400(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isShowHour()Ljava/lang/Boolean;
    .locals 1

    .line 116
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$2500(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isShowMillisecond()Ljava/lang/Boolean;
    .locals 1

    .line 128
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$2800(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isShowMinute()Ljava/lang/Boolean;
    .locals 1

    .line 120
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$2600(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isShowSecond()Ljava/lang/Boolean;
    .locals 1

    .line 124
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$2700(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isSuffixTimeTextBold()Ljava/lang/Boolean;
    .locals 1

    .line 36
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$500(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isTimeTextBold()Ljava/lang/Boolean;
    .locals 1

    .line 24
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig;->mBuilder:Lcn/iwgang/countdownview/DynamicConfig$Builder;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->access$200(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
