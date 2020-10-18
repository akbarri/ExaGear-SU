.class public Lcn/iwgang/countdownview/DynamicConfig$Builder;
.super Ljava/lang/Object;
.source "DynamicConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/iwgang/countdownview/DynamicConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private backgroundInfo:Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;

.field private isConvertDaysToHours:Z

.field private isShowDay:Ljava/lang/Boolean;

.field private isShowHour:Ljava/lang/Boolean;

.field private isShowMillisecond:Ljava/lang/Boolean;

.field private isShowMinute:Ljava/lang/Boolean;

.field private isShowSecond:Ljava/lang/Boolean;

.field private isSuffixTextBold:Ljava/lang/Boolean;

.field private isTimeTextBold:Ljava/lang/Boolean;

.field private suffix:Ljava/lang/String;

.field private suffixDay:Ljava/lang/String;

.field private suffixDayLeftMargin:Ljava/lang/Float;

.field private suffixDayRightMargin:Ljava/lang/Float;

.field private suffixGravity:Ljava/lang/Integer;

.field private suffixHour:Ljava/lang/String;

.field private suffixHourLeftMargin:Ljava/lang/Float;

.field private suffixHourRightMargin:Ljava/lang/Float;

.field private suffixLRMargin:Ljava/lang/Float;

.field private suffixMillisecond:Ljava/lang/String;

.field private suffixMillisecondLeftMargin:Ljava/lang/Float;

.field private suffixMinute:Ljava/lang/String;

.field private suffixMinuteLeftMargin:Ljava/lang/Float;

.field private suffixMinuteRightMargin:Ljava/lang/Float;

.field private suffixSecond:Ljava/lang/String;

.field private suffixSecondLeftMargin:Ljava/lang/Float;

.field private suffixSecondRightMargin:Ljava/lang/Float;

.field private suffixTextColor:Ljava/lang/Integer;

.field private suffixTextSize:Ljava/lang/Float;

.field private timeTextColor:Ljava/lang/Integer;

.field private timeTextSize:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Float;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->timeTextSize:Ljava/lang/Float;

    return-object p0
.end method

.method static synthetic access$100(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->timeTextColor:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixSecond:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixMillisecond:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixGravity:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Float;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixLRMargin:Ljava/lang/Float;

    return-object p0
.end method

.method static synthetic access$1400(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Float;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixDayLeftMargin:Ljava/lang/Float;

    return-object p0
.end method

.method static synthetic access$1500(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Float;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixDayRightMargin:Ljava/lang/Float;

    return-object p0
.end method

.method static synthetic access$1600(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Float;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixHourLeftMargin:Ljava/lang/Float;

    return-object p0
.end method

.method static synthetic access$1700(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Float;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixHourRightMargin:Ljava/lang/Float;

    return-object p0
.end method

.method static synthetic access$1800(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Float;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixMinuteLeftMargin:Ljava/lang/Float;

    return-object p0
.end method

.method static synthetic access$1900(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Float;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixMinuteRightMargin:Ljava/lang/Float;

    return-object p0
.end method

.method static synthetic access$200(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->isTimeTextBold:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$2000(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Float;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixSecondLeftMargin:Ljava/lang/Float;

    return-object p0
.end method

.method static synthetic access$2100(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Float;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixSecondRightMargin:Ljava/lang/Float;

    return-object p0
.end method

.method static synthetic access$2200(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Float;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixMillisecondLeftMargin:Ljava/lang/Float;

    return-object p0
.end method

.method static synthetic access$2300(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->isConvertDaysToHours:Z

    return p0
.end method

.method static synthetic access$2400(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->isShowDay:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$2500(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->isShowHour:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$2600(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->isShowMinute:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$2700(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->isShowSecond:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$2800(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->isShowMillisecond:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$2900(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->backgroundInfo:Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;

    return-object p0
.end method

.method static synthetic access$300(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Float;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixTextSize:Ljava/lang/Float;

    return-object p0
.end method

.method static synthetic access$400(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixTextColor:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$500(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->isSuffixTextBold:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$600(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffix:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixDay:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixHour:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcn/iwgang/countdownview/DynamicConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixMinute:Ljava/lang/String;

    return-object p0
.end method

.method private checkData()V
    .locals 3

    .line 394
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->timeTextSize:Ljava/lang/Float;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->timeTextSize:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iput-object v2, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->timeTextSize:Ljava/lang/Float;

    .line 396
    :cond_0
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixTextSize:Ljava/lang/Float;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixTextSize:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iput-object v2, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixTextSize:Ljava/lang/Float;

    .line 398
    :cond_1
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->backgroundInfo:Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->backgroundInfo:Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;

    invoke-static {v0}, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->access$3000(Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 399
    iput-object v2, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->backgroundInfo:Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;

    .line 401
    :cond_2
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->backgroundInfo:Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;

    if-eqz v0, :cond_7

    .line 402
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->backgroundInfo:Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;

    invoke-virtual {v0}, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->isShowTimeBgDivisionLine()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 403
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 404
    :cond_3
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->backgroundInfo:Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;

    invoke-virtual {v0, v2}, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->setDivisionLineColor(Ljava/lang/Integer;)Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;

    .line 405
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->backgroundInfo:Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;

    invoke-virtual {v0, v2}, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->setDivisionLineSize(Ljava/lang/Float;)Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;

    .line 408
    :cond_4
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->backgroundInfo:Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;

    invoke-virtual {v0}, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->isShowTimeBgBorder()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 409
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 410
    :cond_5
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->backgroundInfo:Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;

    invoke-virtual {v0, v2}, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->setBorderColor(Ljava/lang/Integer;)Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;

    .line 411
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->backgroundInfo:Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;

    invoke-virtual {v0, v2}, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->setBorderRadius(Ljava/lang/Float;)Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;

    .line 412
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->backgroundInfo:Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;

    invoke-virtual {v0, v2}, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->setBorderSize(Ljava/lang/Float;)Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;

    .line 415
    :cond_6
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->backgroundInfo:Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;

    invoke-virtual {v0}, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->getSize()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->backgroundInfo:Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;

    invoke-virtual {v0}, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->getSize()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_7

    .line 416
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->backgroundInfo:Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;

    invoke-virtual {v0, v2}, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->setSize(Ljava/lang/Float;)Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;

    .line 420
    :cond_7
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixGravity:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixGravity:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_8

    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixGravity:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_9

    :cond_8
    iput-object v2, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixGravity:Ljava/lang/Integer;

    :cond_9
    return-void
.end method


# virtual methods
.method public build()Lcn/iwgang/countdownview/DynamicConfig;
    .locals 2

    .line 424
    invoke-direct {p0}, Lcn/iwgang/countdownview/DynamicConfig$Builder;->checkData()V

    .line 425
    new-instance v0, Lcn/iwgang/countdownview/DynamicConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/iwgang/countdownview/DynamicConfig;-><init>(Lcn/iwgang/countdownview/DynamicConfig$Builder;Lcn/iwgang/countdownview/DynamicConfig$1;)V

    return-object v0
.end method

.method public setBackgroundInfo(Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 389
    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->backgroundInfo:Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;

    return-object p0
.end method

.method public setConvertDaysToHours(Ljava/lang/Boolean;)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 335
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->isConvertDaysToHours:Z

    return-object p0
.end method

.method public setShowDay(Ljava/lang/Boolean;)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 344
    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->isShowDay:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setShowHour(Ljava/lang/Boolean;)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 353
    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->isShowHour:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setShowMillisecond(Ljava/lang/Boolean;)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 380
    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->isShowMillisecond:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setShowMinute(Ljava/lang/Boolean;)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 362
    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->isShowMinute:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setShowSecond(Ljava/lang/Boolean;)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 371
    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->isShowSecond:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setSuffix(Ljava/lang/String;)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 218
    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffix:Ljava/lang/String;

    return-object p0
.end method

.method public setSuffixDay(Ljava/lang/String;)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 227
    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixDay:Ljava/lang/String;

    return-object p0
.end method

.method public setSuffixDayLeftMargin(F)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 277
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixDayLeftMargin:Ljava/lang/Float;

    return-object p0
.end method

.method public setSuffixDayRightMargin(F)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 282
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixDayRightMargin:Ljava/lang/Float;

    return-object p0
.end method

.method public setSuffixGravity(I)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 326
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixGravity:Ljava/lang/Integer;

    return-object p0
.end method

.method public setSuffixHour(Ljava/lang/String;)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 236
    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixHour:Ljava/lang/String;

    return-object p0
.end method

.method public setSuffixHourLeftMargin(F)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 287
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixHourLeftMargin:Ljava/lang/Float;

    return-object p0
.end method

.method public setSuffixHourRightMargin(F)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 292
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixHourRightMargin:Ljava/lang/Float;

    return-object p0
.end method

.method public setSuffixLRMargin(F)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 272
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixLRMargin:Ljava/lang/Float;

    return-object p0
.end method

.method public setSuffixMillisecond(Ljava/lang/String;)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 263
    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixMillisecond:Ljava/lang/String;

    return-object p0
.end method

.method public setSuffixMillisecondLeftMargin(F)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 317
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixMillisecondLeftMargin:Ljava/lang/Float;

    return-object p0
.end method

.method public setSuffixMinute(Ljava/lang/String;)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 245
    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixMinute:Ljava/lang/String;

    return-object p0
.end method

.method public setSuffixMinuteLeftMargin(F)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 297
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixMinuteLeftMargin:Ljava/lang/Float;

    return-object p0
.end method

.method public setSuffixMinuteRightMargin(F)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 302
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixMinuteRightMargin:Ljava/lang/Float;

    return-object p0
.end method

.method public setSuffixSecond(Ljava/lang/String;)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 254
    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixSecond:Ljava/lang/String;

    return-object p0
.end method

.method public setSuffixSecondLeftMargin(F)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 307
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixSecondLeftMargin:Ljava/lang/Float;

    return-object p0
.end method

.method public setSuffixSecondRightMargin(F)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 312
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixSecondRightMargin:Ljava/lang/Float;

    return-object p0
.end method

.method public setSuffixTextBold(Z)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 209
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->isSuffixTextBold:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setSuffixTextColor(I)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 200
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixTextColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setSuffixTextSize(F)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 191
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->suffixTextSize:Ljava/lang/Float;

    return-object p0
.end method

.method public setTimeTextBold(Z)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 182
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->isTimeTextBold:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setTimeTextColor(I)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 173
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->timeTextColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTimeTextSize(F)Lcn/iwgang/countdownview/DynamicConfig$Builder;
    .locals 0

    .line 164
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$Builder;->timeTextSize:Ljava/lang/Float;

    return-object p0
.end method
