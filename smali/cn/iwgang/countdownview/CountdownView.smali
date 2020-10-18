.class public Lcn/iwgang/countdownview/CountdownView;
.super Landroid/view/View;
.source "CountdownView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/iwgang/countdownview/CountdownView$OnCountdownIntervalListener;,
        Lcn/iwgang/countdownview/CountdownView$OnCountdownEndListener;
    }
.end annotation


# instance fields
.field private isHideTimeBackground:Z

.field private mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

.field private mCustomCountDownTimer:Lcn/iwgang/countdownview/CustomCountDownTimer;

.field private mInterval:J

.field private mOnCountdownEndListener:Lcn/iwgang/countdownview/CountdownView$OnCountdownEndListener;

.field private mOnCountdownIntervalListener:Lcn/iwgang/countdownview/CountdownView$OnCountdownIntervalListener;

.field private mPreviousIntervalCallbackTime:J

.field private mRemainTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcn/iwgang/countdownview/CountdownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcn/iwgang/countdownview/CountdownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    sget-object p3, Lcn/iwgang/countdownview/R$styleable;->CountdownView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 38
    sget p3, Lcn/iwgang/countdownview/R$styleable;->CountdownView_isHideTimeBackground:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcn/iwgang/countdownview/CountdownView;->isHideTimeBackground:Z

    .line 40
    iget-boolean p3, p0, Lcn/iwgang/countdownview/CountdownView;->isHideTimeBackground:Z

    if-eqz p3, :cond_0

    new-instance p3, Lcn/iwgang/countdownview/BaseCountdown;

    invoke-direct {p3}, Lcn/iwgang/countdownview/BaseCountdown;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p3, Lcn/iwgang/countdownview/BackgroundCountdown;

    invoke-direct {p3}, Lcn/iwgang/countdownview/BackgroundCountdown;-><init>()V

    :goto_0
    iput-object p3, p0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    .line 41
    iget-object p3, p0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    invoke-virtual {p3, p1, p2}, Lcn/iwgang/countdownview/BaseCountdown;->initStyleAttr(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 42
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    iget-object p1, p0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    invoke-virtual {p1}, Lcn/iwgang/countdownview/BaseCountdown;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcn/iwgang/countdownview/CountdownView;)Lcn/iwgang/countdownview/CountdownView$OnCountdownEndListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/iwgang/countdownview/CountdownView;->mOnCountdownEndListener:Lcn/iwgang/countdownview/CountdownView$OnCountdownEndListener;

    return-object p0
.end method

.method private measureSize(III)I
    .locals 2

    .line 68
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 69
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 72
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    .line 78
    invoke-virtual {p0}, Lcn/iwgang/countdownview/CountdownView;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcn/iwgang/countdownview/CountdownView;->getPaddingRight()I

    move-result p3

    add-int/2addr p1, p3

    add-int/2addr p1, p2

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcn/iwgang/countdownview/CountdownView;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Lcn/iwgang/countdownview/CountdownView;->getPaddingBottom()I

    move-result p3

    add-int/2addr p1, p3

    add-int/2addr p1, p2

    :goto_0
    return p1
.end method

.method private reLayout()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    invoke-virtual {v0}, Lcn/iwgang/countdownview/BaseCountdown;->reLayout()V

    .line 102
    invoke-virtual {p0}, Lcn/iwgang/countdownview/CountdownView;->requestLayout()V

    return-void
.end method

.method private reSetTime(J)V
    .locals 10

    .line 282
    iget-object v0, p0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    iget-boolean v0, v0, Lcn/iwgang/countdownview/BaseCountdown;->isConvertDaysToHours:Z

    const-wide/32 v1, 0x36ee80

    if-nez v0, :cond_0

    const-wide/32 v3, 0x5265c00

    .line 283
    div-long v5, p1, v3

    long-to-int v0, v5

    .line 284
    rem-long v3, p1, v3

    div-long/2addr v3, v1

    long-to-int v3, v3

    :goto_0
    move v5, v0

    move v6, v3

    goto :goto_1

    .line 286
    :cond_0
    div-long v3, p1, v1

    long-to-int v3, v3

    const/4 v0, 0x0

    goto :goto_0

    .line 289
    :goto_1
    rem-long v0, p1, v1

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    long-to-int v7, v0

    .line 290
    rem-long v0, p1, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v8, v0

    .line 291
    rem-long/2addr p1, v2

    long-to-int v9, p1

    .line 293
    iget-object v4, p0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    invoke-virtual/range {v4 .. v9}, Lcn/iwgang/countdownview/BaseCountdown;->setTimes(IIIII)V

    return-void
.end method


# virtual methods
.method public allShowZero()V
    .locals 6

    .line 194
    iget-object v0, p0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/iwgang/countdownview/BaseCountdown;->setTimes(IIIII)V

    .line 195
    invoke-virtual {p0}, Lcn/iwgang/countdownview/CountdownView;->invalidate()V

    return-void
.end method

.method public customTimeShow(ZZZZZ)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    iget-object v0, p0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/iwgang/countdownview/BaseCountdown;->mHasSetIsShowDay:Z

    .line 180
    iget-object v0, p0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    iput-boolean v1, v0, Lcn/iwgang/countdownview/BaseCountdown;->mHasSetIsShowHour:Z

    .line 182
    iget-object v2, p0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcn/iwgang/countdownview/BaseCountdown;->refTimeShow(ZZZZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 186
    iget-wide p1, p0, Lcn/iwgang/countdownview/CountdownView;->mRemainTime:J

    invoke-virtual {p0, p1, p2}, Lcn/iwgang/countdownview/CountdownView;->start(J)V

    :cond_0
    return-void
.end method

.method public dynamicShow(Lcn/iwgang/countdownview/DynamicConfig;)V
    .locals 17

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    return-void

    .line 314
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->getTimeTextSize()Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 316
    iget-object v5, v0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v5, v2}, Lcn/iwgang/countdownview/BaseCountdown;->setTimeTextSize(F)V

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    .line 320
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->getSuffixTextSize()Ljava/lang/Float;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 322
    iget-object v2, v0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v2, v5}, Lcn/iwgang/countdownview/BaseCountdown;->setSuffixTextSize(F)V

    move v2, v4

    .line 326
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->getTimeTextColor()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 328
    iget-object v6, v0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Lcn/iwgang/countdownview/BaseCountdown;->setTimeTextColor(I)V

    move v5, v4

    goto :goto_1

    :cond_3
    move v5, v3

    .line 332
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->getSuffixTextColor()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 334
    iget-object v5, v0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcn/iwgang/countdownview/BaseCountdown;->setSuffixTextColor(I)V

    move v5, v4

    .line 338
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->isTimeTextBold()Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 340
    iget-object v2, v0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v2, v6}, Lcn/iwgang/countdownview/BaseCountdown;->setTimeTextBold(Z)V

    move v2, v4

    .line 344
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->isSuffixTimeTextBold()Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 346
    iget-object v2, v0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v2, v6}, Lcn/iwgang/countdownview/BaseCountdown;->setSuffixTextBold(Z)V

    move v2, v4

    .line 351
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->getSuffix()Ljava/lang/String;

    move-result-object v6

    .line 352
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 353
    iget-object v2, v0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    invoke-virtual {v2, v6}, Lcn/iwgang/countdownview/BaseCountdown;->setSuffix(Ljava/lang/String;)V

    move v2, v4

    .line 358
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->getSuffixDay()Ljava/lang/String;

    move-result-object v7

    .line 359
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->getSuffixHour()Ljava/lang/String;

    move-result-object v8

    .line 360
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->getSuffixMinute()Ljava/lang/String;

    move-result-object v9

    .line 361
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->getSuffixSecond()Ljava/lang/String;

    move-result-object v10

    .line 362
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->getSuffixMillisecond()Ljava/lang/String;

    move-result-object v11

    .line 363
    iget-object v6, v0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    invoke-virtual/range {v6 .. v11}, Lcn/iwgang/countdownview/BaseCountdown;->setSuffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    move v2, v4

    .line 368
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->getSuffixLRMargin()Ljava/lang/Float;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 370
    iget-object v2, v0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v2, v6}, Lcn/iwgang/countdownview/BaseCountdown;->setSuffixLRMargin(F)V

    move v2, v4

    .line 375
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->getSuffixDayLeftMargin()Ljava/lang/Float;

    move-result-object v7

    .line 376
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->getSuffixDayRightMargin()Ljava/lang/Float;

    move-result-object v8

    .line 377
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->getSuffixHourLeftMargin()Ljava/lang/Float;

    move-result-object v9

    .line 378
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->getSuffixHourRightMargin()Ljava/lang/Float;

    move-result-object v10

    .line 379
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->getSuffixMinuteLeftMargin()Ljava/lang/Float;

    move-result-object v11

    .line 380
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->getSuffixMinuteRightMargin()Ljava/lang/Float;

    move-result-object v12

    .line 381
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->getSuffixSecondLeftMargin()Ljava/lang/Float;

    move-result-object v13

    .line 382
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->getSuffixSecondRightMargin()Ljava/lang/Float;

    move-result-object v14

    .line 383
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->getSuffixMillisecondLeftMargin()Ljava/lang/Float;

    move-result-object v15

    .line 384
    iget-object v6, v0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    invoke-virtual/range {v6 .. v15}, Lcn/iwgang/countdownview/BaseCountdown;->setSuffixMargin(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result v6

    if-eqz v6, :cond_a

    move v2, v4

    .line 389
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->getSuffixGravity()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 391
    iget-object v2, v0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v6}, Lcn/iwgang/countdownview/BaseCountdown;->setSuffixGravity(I)V

    move v2, v4

    .line 396
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->isShowDay()Ljava/lang/Boolean;

    move-result-object v6

    .line 397
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->isShowHour()Ljava/lang/Boolean;

    move-result-object v7

    .line 398
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->isShowMinute()Ljava/lang/Boolean;

    move-result-object v8

    .line 399
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->isShowSecond()Ljava/lang/Boolean;

    move-result-object v9

    .line 400
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->isShowMillisecond()Ljava/lang/Boolean;

    move-result-object v10

    if-nez v6, :cond_c

    if-nez v7, :cond_c

    if-nez v8, :cond_c

    if-nez v9, :cond_c

    if-eqz v10, :cond_13

    .line 402
    :cond_c
    iget-object v2, v0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    iget-boolean v2, v2, Lcn/iwgang/countdownview/BaseCountdown;->isShowDay:Z

    if-eqz v6, :cond_d

    .line 404
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 405
    iget-object v6, v0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    iput-boolean v4, v6, Lcn/iwgang/countdownview/BaseCountdown;->mHasSetIsShowDay:Z

    :goto_2
    move v12, v2

    goto :goto_3

    .line 407
    :cond_d
    iget-object v6, v0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    iput-boolean v3, v6, Lcn/iwgang/countdownview/BaseCountdown;->mHasSetIsShowDay:Z

    goto :goto_2

    .line 409
    :goto_3
    iget-object v2, v0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    iget-boolean v2, v2, Lcn/iwgang/countdownview/BaseCountdown;->isShowHour:Z

    if-eqz v7, :cond_e

    .line 411
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 412
    iget-object v3, v0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    iput-boolean v4, v3, Lcn/iwgang/countdownview/BaseCountdown;->mHasSetIsShowHour:Z

    :goto_4
    move v13, v2

    goto :goto_5

    .line 414
    :cond_e
    iget-object v6, v0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    iput-boolean v3, v6, Lcn/iwgang/countdownview/BaseCountdown;->mHasSetIsShowHour:Z

    goto :goto_4

    :goto_5
    if-eqz v8, :cond_f

    .line 416
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_6
    move v14, v2

    goto :goto_7

    :cond_f
    iget-object v2, v0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    iget-boolean v2, v2, Lcn/iwgang/countdownview/BaseCountdown;->isShowMinute:Z

    goto :goto_6

    :goto_7
    if-eqz v9, :cond_10

    .line 417
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_8
    move v15, v2

    goto :goto_9

    :cond_10
    iget-object v2, v0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    iget-boolean v2, v2, Lcn/iwgang/countdownview/BaseCountdown;->isShowSecond:Z

    goto :goto_8

    :goto_9
    if-eqz v10, :cond_11

    .line 418
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_a
    move/from16 v16, v2

    goto :goto_b

    :cond_11
    iget-object v2, v0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    iget-boolean v2, v2, Lcn/iwgang/countdownview/BaseCountdown;->isShowMillisecond:Z

    goto :goto_a

    .line 420
    :goto_b
    iget-object v11, v0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    invoke-virtual/range {v11 .. v16}, Lcn/iwgang/countdownview/BaseCountdown;->refTimeShow(ZZZZZ)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 424
    iget-wide v2, v0, Lcn/iwgang/countdownview/CountdownView;->mRemainTime:J

    invoke-virtual {v0, v2, v3}, Lcn/iwgang/countdownview/CountdownView;->start(J)V

    :cond_12
    move v2, v4

    .line 430
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->getBackgroundInfo()Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;

    move-result-object v3

    .line 431
    iget-boolean v6, v0, Lcn/iwgang/countdownview/CountdownView;->isHideTimeBackground:Z

    if-nez v6, :cond_1d

    if-eqz v3, :cond_1d

    .line 432
    iget-object v6, v0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    check-cast v6, Lcn/iwgang/countdownview/BackgroundCountdown;

    .line 434
    invoke-virtual {v3}, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->getSize()Ljava/lang/Float;

    move-result-object v7

    if-eqz v7, :cond_14

    .line 436
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v6, v2}, Lcn/iwgang/countdownview/BackgroundCountdown;->setTimeBgSize(F)V

    move v2, v4

    .line 440
    :cond_14
    invoke-virtual {v3}, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->getColor()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_15

    .line 442
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Lcn/iwgang/countdownview/BackgroundCountdown;->setTimeBgColor(I)V

    move v5, v4

    .line 446
    :cond_15
    invoke-virtual {v3}, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->getRadius()Ljava/lang/Float;

    move-result-object v7

    if-eqz v7, :cond_16

    .line 448
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v6, v5}, Lcn/iwgang/countdownview/BackgroundCountdown;->setTimeBgRadius(F)V

    move v5, v4

    .line 452
    :cond_16
    invoke-virtual {v3}, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->isShowTimeBgDivisionLine()Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v7, :cond_19

    .line 454
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v6, v5}, Lcn/iwgang/countdownview/BackgroundCountdown;->setIsShowTimeBgDivisionLine(Z)V

    .line 456
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 457
    invoke-virtual {v3}, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->getDivisionLineColor()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 459
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Lcn/iwgang/countdownview/BackgroundCountdown;->setTimeBgDivisionLineColor(I)V

    .line 462
    :cond_17
    invoke-virtual {v3}, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->getDivisionLineSize()Ljava/lang/Float;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 464
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v6, v5}, Lcn/iwgang/countdownview/BackgroundCountdown;->setTimeBgDivisionLineSize(F)V

    :cond_18
    move v5, v4

    .line 470
    :cond_19
    invoke-virtual {v3}, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->isShowTimeBgBorder()Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v7, :cond_1d

    .line 472
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v6, v2}, Lcn/iwgang/countdownview/BackgroundCountdown;->setIsShowTimeBgBorder(Z)V

    .line 474
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 475
    invoke-virtual {v3}, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->getBorderColor()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 477
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v6, v2}, Lcn/iwgang/countdownview/BackgroundCountdown;->setTimeBgBorderColor(I)V

    .line 480
    :cond_1a
    invoke-virtual {v3}, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->getBorderSize()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 482
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v6, v2}, Lcn/iwgang/countdownview/BackgroundCountdown;->setTimeBgBorderSize(F)V

    .line 485
    :cond_1b
    invoke-virtual {v3}, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->getBorderRadius()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 487
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v6, v2}, Lcn/iwgang/countdownview/BackgroundCountdown;->setTimeBgBorderRadius(F)V

    :cond_1c
    move v2, v4

    .line 494
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcn/iwgang/countdownview/DynamicConfig;->isConvertDaysToHours()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 495
    iget-object v3, v0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcn/iwgang/countdownview/BaseCountdown;->setConvertDaysToHours(Z)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 496
    invoke-virtual/range {p0 .. p0}, Lcn/iwgang/countdownview/CountdownView;->getRemainTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcn/iwgang/countdownview/CountdownView;->reSetTime(J)V

    move v2, v4

    :cond_1e
    if-eqz v2, :cond_1f

    .line 501
    invoke-direct/range {p0 .. p0}, Lcn/iwgang/countdownview/CountdownView;->reLayout()V

    goto :goto_c

    :cond_1f
    if-eqz v5, :cond_20

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcn/iwgang/countdownview/CountdownView;->invalidate()V

    :cond_20
    :goto_c
    return-void
.end method

.method public getDay()I
    .locals 1

    .line 221
    iget-object v0, p0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    iget v0, v0, Lcn/iwgang/countdownview/BaseCountdown;->mDay:I

    return v0
.end method

.method public getHour()I
    .locals 1

    .line 229
    iget-object v0, p0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    iget v0, v0, Lcn/iwgang/countdownview/BaseCountdown;->mHour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .line 237
    iget-object v0, p0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    iget v0, v0, Lcn/iwgang/countdownview/BaseCountdown;->mMinute:I

    return v0
.end method

.method public getRemainTime()J
    .locals 2

    .line 253
    iget-wide v0, p0, Lcn/iwgang/countdownview/CountdownView;->mRemainTime:J

    return-wide v0
.end method

.method public getSecond()I
    .locals 1

    .line 245
    iget-object v0, p0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    iget v0, v0, Lcn/iwgang/countdownview/BaseCountdown;->mSecond:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 96
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 97
    invoke-virtual {p0}, Lcn/iwgang/countdownview/CountdownView;->stop()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 91
    iget-object v0, p0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    invoke-virtual {v0, p1}, Lcn/iwgang/countdownview/BaseCountdown;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 49
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 50
    iget-object v0, p0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    invoke-virtual {v0}, Lcn/iwgang/countdownview/BaseCountdown;->getAllContentWidth()I

    move-result v5

    .line 51
    iget-object v0, p0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    invoke-virtual {v0}, Lcn/iwgang/countdownview/BaseCountdown;->getAllContentHeight()I

    move-result v6

    const/4 v0, 0x1

    .line 52
    invoke-direct {p0, v0, v5, p1}, Lcn/iwgang/countdownview/CountdownView;->measureSize(III)I

    move-result v3

    const/4 p1, 0x2

    .line 53
    invoke-direct {p0, p1, v6, p2}, Lcn/iwgang/countdownview/CountdownView;->measureSize(III)I

    move-result v4

    .line 54
    invoke-virtual {p0, v3, v4}, Lcn/iwgang/countdownview/CountdownView;->setMeasuredDimension(II)V

    .line 56
    iget-object v1, p0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcn/iwgang/countdownview/BaseCountdown;->onMeasure(Landroid/view/View;IIII)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcn/iwgang/countdownview/CountdownView;->mCustomCountDownTimer:Lcn/iwgang/countdownview/CustomCountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/iwgang/countdownview/CountdownView;->mCustomCountDownTimer:Lcn/iwgang/countdownview/CustomCountDownTimer;

    invoke-virtual {v0}, Lcn/iwgang/countdownview/CustomCountDownTimer;->pause()V

    :cond_0
    return-void
.end method

.method public restart()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcn/iwgang/countdownview/CountdownView;->mCustomCountDownTimer:Lcn/iwgang/countdownview/CustomCountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/iwgang/countdownview/CountdownView;->mCustomCountDownTimer:Lcn/iwgang/countdownview/CustomCountDownTimer;

    invoke-virtual {v0}, Lcn/iwgang/countdownview/CustomCountDownTimer;->restart()V

    :cond_0
    return-void
.end method

.method public setOnCountdownEndListener(Lcn/iwgang/countdownview/CountdownView$OnCountdownEndListener;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcn/iwgang/countdownview/CountdownView;->mOnCountdownEndListener:Lcn/iwgang/countdownview/CountdownView$OnCountdownEndListener;

    return-void
.end method

.method public setOnCountdownIntervalListener(JLcn/iwgang/countdownview/CountdownView$OnCountdownIntervalListener;)V
    .locals 0

    .line 212
    iput-wide p1, p0, Lcn/iwgang/countdownview/CountdownView;->mInterval:J

    .line 213
    iput-object p3, p0, Lcn/iwgang/countdownview/CountdownView;->mOnCountdownIntervalListener:Lcn/iwgang/countdownview/CountdownView$OnCountdownIntervalListener;

    return-void
.end method

.method public start(J)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-void

    .line 112
    :cond_0
    iput-wide v0, p0, Lcn/iwgang/countdownview/CountdownView;->mPreviousIntervalCallbackTime:J

    .line 114
    iget-object v0, p0, Lcn/iwgang/countdownview/CountdownView;->mCustomCountDownTimer:Lcn/iwgang/countdownview/CustomCountDownTimer;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcn/iwgang/countdownview/CountdownView;->mCustomCountDownTimer:Lcn/iwgang/countdownview/CustomCountDownTimer;

    invoke-virtual {v0}, Lcn/iwgang/countdownview/CustomCountDownTimer;->stop()V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcn/iwgang/countdownview/CountdownView;->mCustomCountDownTimer:Lcn/iwgang/countdownview/CustomCountDownTimer;

    .line 120
    :cond_1
    iget-object v0, p0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    iget-boolean v0, v0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMillisecond:Z

    if-eqz v0, :cond_2

    const-wide/16 v0, 0xa

    .line 122
    invoke-virtual {p0, p1, p2}, Lcn/iwgang/countdownview/CountdownView;->updateShow(J)V

    :goto_0
    move-wide v6, v0

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x3e8

    goto :goto_0

    .line 127
    :goto_1
    new-instance v0, Lcn/iwgang/countdownview/CountdownView$1;

    move-object v2, v0

    move-object v3, p0

    move-wide v4, p1

    invoke-direct/range {v2 .. v7}, Lcn/iwgang/countdownview/CountdownView$1;-><init>(Lcn/iwgang/countdownview/CountdownView;JJ)V

    iput-object v0, p0, Lcn/iwgang/countdownview/CountdownView;->mCustomCountDownTimer:Lcn/iwgang/countdownview/CustomCountDownTimer;

    .line 143
    iget-object p1, p0, Lcn/iwgang/countdownview/CountdownView;->mCustomCountDownTimer:Lcn/iwgang/countdownview/CustomCountDownTimer;

    invoke-virtual {p1}, Lcn/iwgang/countdownview/CustomCountDownTimer;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcn/iwgang/countdownview/CountdownView;->mCustomCountDownTimer:Lcn/iwgang/countdownview/CustomCountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/iwgang/countdownview/CountdownView;->mCustomCountDownTimer:Lcn/iwgang/countdownview/CustomCountDownTimer;

    invoke-virtual {v0}, Lcn/iwgang/countdownview/CustomCountDownTimer;->stop()V

    :cond_0
    return-void
.end method

.method public updateShow(J)V
    .locals 4

    .line 257
    iput-wide p1, p0, Lcn/iwgang/countdownview/CountdownView;->mRemainTime:J

    .line 259
    invoke-direct {p0, p1, p2}, Lcn/iwgang/countdownview/CountdownView;->reSetTime(J)V

    .line 262
    iget-wide v0, p0, Lcn/iwgang/countdownview/CountdownView;->mInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcn/iwgang/countdownview/CountdownView;->mOnCountdownIntervalListener:Lcn/iwgang/countdownview/CountdownView$OnCountdownIntervalListener;

    if-eqz v0, :cond_1

    .line 263
    iget-wide v0, p0, Lcn/iwgang/countdownview/CountdownView;->mPreviousIntervalCallbackTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 264
    iput-wide p1, p0, Lcn/iwgang/countdownview/CountdownView;->mPreviousIntervalCallbackTime:J

    goto :goto_0

    .line 265
    :cond_0
    iget-wide v0, p0, Lcn/iwgang/countdownview/CountdownView;->mInterval:J

    add-long/2addr v0, p1

    iget-wide v2, p0, Lcn/iwgang/countdownview/CountdownView;->mPreviousIntervalCallbackTime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 266
    iput-wide p1, p0, Lcn/iwgang/countdownview/CountdownView;->mPreviousIntervalCallbackTime:J

    .line 267
    iget-object p1, p0, Lcn/iwgang/countdownview/CountdownView;->mOnCountdownIntervalListener:Lcn/iwgang/countdownview/CountdownView$OnCountdownIntervalListener;

    iget-wide v0, p0, Lcn/iwgang/countdownview/CountdownView;->mRemainTime:J

    invoke-interface {p1, p0, v0, v1}, Lcn/iwgang/countdownview/CountdownView$OnCountdownIntervalListener;->onInterval(Lcn/iwgang/countdownview/CountdownView;J)V

    .line 271
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    invoke-virtual {p1}, Lcn/iwgang/countdownview/BaseCountdown;->handlerAutoShowTime()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcn/iwgang/countdownview/CountdownView;->mCountdown:Lcn/iwgang/countdownview/BaseCountdown;

    invoke-virtual {p1}, Lcn/iwgang/countdownview/BaseCountdown;->handlerDayLargeNinetyNine()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 274
    :cond_2
    invoke-virtual {p0}, Lcn/iwgang/countdownview/CountdownView;->invalidate()V

    goto :goto_2

    .line 272
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcn/iwgang/countdownview/CountdownView;->reLayout()V

    :goto_2
    return-void
.end method
