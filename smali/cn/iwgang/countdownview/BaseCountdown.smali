.class Lcn/iwgang/countdownview/BaseCountdown;
.super Ljava/lang/Object;
.source "BaseCountdown.java"


# static fields
.field private static final DEFAULT_SUFFIX:Ljava/lang/String; = ":"

.field private static final DEFAULT_SUFFIX_LR_MARGIN:F = 3.0f


# instance fields
.field private hasCustomSomeSuffix:Z

.field private hasSetSuffixDay:Z

.field private hasSetSuffixHour:Z

.field private hasSetSuffixMillisecond:Z

.field private hasSetSuffixMinute:Z

.field private hasSetSuffixSecond:Z

.field public isConvertDaysToHours:Z

.field protected isDayLargeNinetyNine:Z

.field public isShowDay:Z

.field public isShowHour:Z

.field public isShowMillisecond:Z

.field public isShowMinute:Z

.field public isShowSecond:Z

.field private isSuffixTextBold:Z

.field private isTimeTextBold:Z

.field protected mContext:Landroid/content/Context;

.field public mDay:I

.field private mDayTimeTextWidth:F

.field public mHasSetIsShowDay:Z

.field public mHasSetIsShowHour:Z

.field public mHour:I

.field private mHourTimeTextWidth:F

.field protected mLeftPaddingSize:F

.field protected mMeasureHourWidthPaint:Landroid/graphics/Paint;

.field public mMillisecond:I

.field public mMinute:I

.field public mSecond:I

.field protected mSuffix:Ljava/lang/String;

.field protected mSuffixDay:Ljava/lang/String;

.field protected mSuffixDayLeftMargin:F

.field protected mSuffixDayRightMargin:F

.field protected mSuffixDayTextBaseline:F

.field protected mSuffixDayTextWidth:F

.field protected mSuffixGravity:I

.field protected mSuffixHour:Ljava/lang/String;

.field protected mSuffixHourLeftMargin:F

.field protected mSuffixHourRightMargin:F

.field protected mSuffixHourTextBaseline:F

.field protected mSuffixHourTextWidth:F

.field private mSuffixLRMargin:F

.field protected mSuffixMillisecond:Ljava/lang/String;

.field protected mSuffixMillisecondLeftMargin:F

.field protected mSuffixMillisecondTextBaseline:F

.field protected mSuffixMillisecondTextWidth:F

.field protected mSuffixMinute:Ljava/lang/String;

.field protected mSuffixMinuteLeftMargin:F

.field protected mSuffixMinuteRightMargin:F

.field protected mSuffixMinuteTextBaseline:F

.field protected mSuffixMinuteTextWidth:F

.field protected mSuffixSecond:Ljava/lang/String;

.field protected mSuffixSecondLeftMargin:F

.field protected mSuffixSecondRightMargin:F

.field protected mSuffixSecondTextBaseline:F

.field protected mSuffixSecondTextWidth:F

.field private mSuffixTextColor:I

.field protected mSuffixTextPaint:Landroid/graphics/Paint;

.field private mSuffixTextSize:F

.field private mTempSuffixDayLeftMargin:F

.field private mTempSuffixDayRightMargin:F

.field private mTempSuffixHourLeftMargin:F

.field private mTempSuffixHourRightMargin:F

.field private mTempSuffixMillisecondLeftMargin:F

.field private mTempSuffixMinute:Ljava/lang/String;

.field private mTempSuffixMinuteLeftMargin:F

.field private mTempSuffixMinuteRightMargin:F

.field private mTempSuffixSecond:Ljava/lang/String;

.field private mTempSuffixSecondLeftMargin:F

.field private mTempSuffixSecondRightMargin:F

.field private mTimeTextBaseline:F

.field protected mTimeTextBottom:F

.field private mTimeTextColor:I

.field protected mTimeTextHeight:F

.field protected mTimeTextPaint:Landroid/graphics/Paint;

.field private mTimeTextSize:F

.field protected mTimeTextWidth:F


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDayAndHourContentWidth()F
    .locals 6

    .line 479
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 481
    iget-boolean v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowDay:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 482
    iget v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mDay:I

    invoke-static {v1}, Lcn/iwgang/countdownview/Utils;->formatNum(I)Ljava/lang/String;

    move-result-object v1

    .line 483
    iget-object v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v1, v2, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 484
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mDayTimeTextWidth:F

    .line 486
    iget v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mDayTimeTextWidth:F

    add-float/2addr v3, v1

    .line 489
    :cond_0
    iget-boolean v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowHour:Z

    if-eqz v1, :cond_1

    .line 490
    iget v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mHour:I

    invoke-static {v1}, Lcn/iwgang/countdownview/Utils;->formatNum(I)Ljava/lang/String;

    move-result-object v1

    .line 491
    iget-object v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mMeasureHourWidthPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v1, v2, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 492
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mHourTimeTextWidth:F

    .line 494
    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mHourTimeTextWidth:F

    add-float/2addr v3, v0

    :cond_1
    return v3
.end method

.method private getSuffixTextBaseLine(Ljava/lang/String;)F
    .locals 4

    .line 428
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 429
    iget-object v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 432
    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixGravity:I

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 440
    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextBaseline:F

    iget v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr p1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    goto :goto_0

    .line 444
    :cond_0
    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextBaseline:F

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    goto :goto_0

    .line 435
    :cond_1
    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextBaseline:F

    iget v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextHeight:F

    sub-float/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    :goto_0
    return p1
.end method

.method private initSuffix()V
    .locals 6

    .line 182
    iget-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixTextPaint:Landroid/graphics/Paint;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 184
    iget-object v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 186
    iget-object v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixTextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    move v3, v2

    .line 189
    :goto_0
    iget-boolean v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowDay:Z

    if-eqz v4, :cond_3

    .line 190
    iget-boolean v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->hasSetSuffixDay:Z

    if-eqz v4, :cond_1

    .line 191
    iget-object v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixTextPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDay:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayTextWidth:F

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    .line 194
    iget-object v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffix:Ljava/lang/String;

    iput-object v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDay:Ljava/lang/String;

    .line 195
    iput v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayTextWidth:F

    goto :goto_1

    .line 196
    :cond_2
    iget-boolean v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->hasCustomSomeSuffix:Z

    if-nez v4, :cond_4

    const-string v4, ":"

    .line 197
    iput-object v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDay:Ljava/lang/String;

    .line 198
    iput v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayTextWidth:F

    goto :goto_1

    .line 202
    :cond_3
    iput v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayTextWidth:F

    .line 205
    :cond_4
    :goto_1
    iget-boolean v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowHour:Z

    if-eqz v4, :cond_7

    .line 206
    iget-boolean v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->hasSetSuffixHour:Z

    if-eqz v4, :cond_5

    .line 207
    iget-object v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixTextPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHour:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourTextWidth:F

    goto :goto_2

    :cond_5
    if-nez v1, :cond_6

    .line 210
    iget-object v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffix:Ljava/lang/String;

    iput-object v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHour:Ljava/lang/String;

    .line 211
    iput v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourTextWidth:F

    goto :goto_2

    .line 212
    :cond_6
    iget-boolean v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->hasCustomSomeSuffix:Z

    if-nez v4, :cond_8

    const-string v4, ":"

    .line 213
    iput-object v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHour:Ljava/lang/String;

    .line 214
    iput v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourTextWidth:F

    goto :goto_2

    .line 218
    :cond_7
    iput v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourTextWidth:F

    .line 221
    :cond_8
    :goto_2
    iget-boolean v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMinute:Z

    if-eqz v4, :cond_c

    .line 222
    iget-boolean v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->hasSetSuffixMinute:Z

    if-eqz v4, :cond_9

    .line 223
    iget-object v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixTextPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinute:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteTextWidth:F

    goto :goto_3

    .line 224
    :cond_9
    iget-boolean v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowSecond:Z

    if-eqz v4, :cond_b

    if-nez v1, :cond_a

    .line 226
    iget-object v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffix:Ljava/lang/String;

    iput-object v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinute:Ljava/lang/String;

    .line 227
    iput v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteTextWidth:F

    goto :goto_3

    .line 228
    :cond_a
    iget-boolean v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->hasCustomSomeSuffix:Z

    if-nez v4, :cond_d

    const-string v4, ":"

    .line 229
    iput-object v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinute:Ljava/lang/String;

    .line 230
    iput v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteTextWidth:F

    goto :goto_3

    .line 233
    :cond_b
    iput v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteTextWidth:F

    goto :goto_3

    .line 236
    :cond_c
    iput v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteTextWidth:F

    .line 239
    :cond_d
    :goto_3
    iget-boolean v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowSecond:Z

    if-eqz v4, :cond_11

    .line 240
    iget-boolean v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->hasSetSuffixSecond:Z

    if-eqz v4, :cond_e

    .line 241
    iget-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecond:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondTextWidth:F

    goto :goto_4

    .line 242
    :cond_e
    iget-boolean v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMillisecond:Z

    if-eqz v4, :cond_10

    if-nez v1, :cond_f

    .line 244
    iget-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffix:Ljava/lang/String;

    iput-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecond:Ljava/lang/String;

    .line 245
    iput v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondTextWidth:F

    goto :goto_4

    .line 246
    :cond_f
    iget-boolean v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->hasCustomSomeSuffix:Z

    if-nez v1, :cond_12

    const-string v1, ":"

    .line 247
    iput-object v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecond:Ljava/lang/String;

    .line 248
    iput v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondTextWidth:F

    goto :goto_4

    .line 251
    :cond_10
    iput v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondTextWidth:F

    goto :goto_4

    .line 254
    :cond_11
    iput v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondTextWidth:F

    .line 257
    :cond_12
    :goto_4
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMillisecond:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->hasCustomSomeSuffix:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->hasSetSuffixMillisecond:Z

    if-eqz v0, :cond_13

    .line 258
    iget-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMillisecond:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMillisecondTextWidth:F

    goto :goto_5

    .line 260
    :cond_13
    iput v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMillisecondTextWidth:F

    .line 263
    :goto_5
    invoke-direct {p0}, Lcn/iwgang/countdownview/BaseCountdown;->initSuffixMargin()V

    return-void
.end method

.method private initSuffixBase()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDay:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->hasSetSuffixDay:Z

    .line 121
    iget-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHour:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->hasSetSuffixHour:Z

    .line 122
    iget-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinute:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->hasSetSuffixMinute:Z

    .line 123
    iget-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecond:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->hasSetSuffixSecond:Z

    .line 124
    iget-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMillisecond:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->hasSetSuffixMillisecond:Z

    .line 126
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowDay:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->hasSetSuffixDay:Z

    if-nez v0, :cond_4

    :cond_0
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowHour:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->hasSetSuffixHour:Z

    if-nez v0, :cond_4

    :cond_1
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMinute:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->hasSetSuffixMinute:Z

    if-nez v0, :cond_4

    :cond_2
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowSecond:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->hasSetSuffixSecond:Z

    if-nez v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMillisecond:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->hasSetSuffixMillisecond:Z

    if-eqz v0, :cond_5

    .line 131
    :cond_4
    iput-boolean v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->hasCustomSomeSuffix:Z

    .line 134
    :cond_5
    iget-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinute:Ljava/lang/String;

    iput-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTempSuffixMinute:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecond:Ljava/lang/String;

    iput-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTempSuffixSecond:Ljava/lang/String;

    return-void
.end method

.method private initSuffixMargin()V
    .locals 4

    .line 270
    iget-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mContext:Landroid/content/Context;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lcn/iwgang/countdownview/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 273
    iget v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixLRMargin:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 277
    :goto_0
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowDay:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayTextWidth:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_4

    .line 278
    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayLeftMargin:F

    cmpg-float v3, v3, v2

    if-gez v3, :cond_2

    if-nez v1, :cond_1

    .line 280
    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixLRMargin:F

    iput v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayLeftMargin:F

    goto :goto_1

    :cond_1
    int-to-float v3, v0

    .line 282
    iput v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayLeftMargin:F

    .line 286
    :cond_2
    :goto_1
    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayRightMargin:F

    cmpg-float v3, v3, v2

    if-gez v3, :cond_5

    if-nez v1, :cond_3

    .line 288
    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixLRMargin:F

    iput v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayRightMargin:F

    goto :goto_2

    :cond_3
    int-to-float v3, v0

    .line 290
    iput v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayRightMargin:F

    goto :goto_2

    .line 294
    :cond_4
    iput v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayLeftMargin:F

    .line 295
    iput v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayRightMargin:F

    .line 298
    :cond_5
    :goto_2
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowHour:Z

    if-eqz v3, :cond_9

    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourTextWidth:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_9

    .line 299
    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourLeftMargin:F

    cmpg-float v3, v3, v2

    if-gez v3, :cond_7

    if-nez v1, :cond_6

    .line 301
    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixLRMargin:F

    iput v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourLeftMargin:F

    goto :goto_3

    :cond_6
    int-to-float v3, v0

    .line 303
    iput v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourLeftMargin:F

    .line 307
    :cond_7
    :goto_3
    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourRightMargin:F

    cmpg-float v3, v3, v2

    if-gez v3, :cond_a

    if-nez v1, :cond_8

    .line 309
    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixLRMargin:F

    iput v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourRightMargin:F

    goto :goto_4

    :cond_8
    int-to-float v3, v0

    .line 311
    iput v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourRightMargin:F

    goto :goto_4

    .line 315
    :cond_9
    iput v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourLeftMargin:F

    .line 316
    iput v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourRightMargin:F

    .line 319
    :cond_a
    :goto_4
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMinute:Z

    if-eqz v3, :cond_f

    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteTextWidth:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_f

    .line 320
    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteLeftMargin:F

    cmpg-float v3, v3, v2

    if-gez v3, :cond_c

    if-nez v1, :cond_b

    .line 322
    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixLRMargin:F

    iput v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteLeftMargin:F

    goto :goto_5

    :cond_b
    int-to-float v3, v0

    .line 324
    iput v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteLeftMargin:F

    .line 328
    :cond_c
    :goto_5
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowSecond:Z

    if-eqz v3, :cond_e

    .line 329
    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteRightMargin:F

    cmpg-float v3, v3, v2

    if-gez v3, :cond_10

    if-nez v1, :cond_d

    .line 331
    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixLRMargin:F

    iput v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteRightMargin:F

    goto :goto_6

    :cond_d
    int-to-float v3, v0

    .line 333
    iput v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteRightMargin:F

    goto :goto_6

    .line 337
    :cond_e
    iput v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteRightMargin:F

    goto :goto_6

    .line 340
    :cond_f
    iput v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteLeftMargin:F

    .line 341
    iput v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteRightMargin:F

    .line 344
    :cond_10
    :goto_6
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowSecond:Z

    if-eqz v3, :cond_19

    .line 345
    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondTextWidth:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_15

    .line 346
    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondLeftMargin:F

    cmpg-float v3, v3, v2

    if-gez v3, :cond_12

    if-nez v1, :cond_11

    .line 348
    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixLRMargin:F

    iput v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondLeftMargin:F

    goto :goto_7

    :cond_11
    int-to-float v3, v0

    .line 350
    iput v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondLeftMargin:F

    .line 354
    :cond_12
    :goto_7
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMillisecond:Z

    if-eqz v3, :cond_14

    .line 355
    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondRightMargin:F

    cmpg-float v3, v3, v2

    if-gez v3, :cond_16

    if-nez v1, :cond_13

    .line 357
    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixLRMargin:F

    iput v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondRightMargin:F

    goto :goto_8

    :cond_13
    int-to-float v3, v0

    .line 359
    iput v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondRightMargin:F

    goto :goto_8

    .line 363
    :cond_14
    iput v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondRightMargin:F

    goto :goto_8

    .line 366
    :cond_15
    iput v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondLeftMargin:F

    .line 367
    iput v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondRightMargin:F

    .line 370
    :cond_16
    :goto_8
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMillisecond:Z

    if-eqz v3, :cond_18

    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMillisecondTextWidth:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_18

    .line 371
    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMillisecondLeftMargin:F

    cmpg-float v2, v3, v2

    if-gez v2, :cond_1a

    if-nez v1, :cond_17

    .line 373
    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixLRMargin:F

    iput v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMillisecondLeftMargin:F

    goto :goto_9

    :cond_17
    int-to-float v0, v0

    .line 375
    iput v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMillisecondLeftMargin:F

    goto :goto_9

    .line 379
    :cond_18
    iput v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMillisecondLeftMargin:F

    goto :goto_9

    .line 382
    :cond_19
    iput v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondLeftMargin:F

    .line 383
    iput v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondRightMargin:F

    .line 384
    iput v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMillisecondLeftMargin:F

    :cond_1a
    :goto_9
    return-void
.end method

.method private initTempSuffixMargin()V
    .locals 1

    .line 140
    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayLeftMargin:F

    iput v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTempSuffixDayLeftMargin:F

    .line 141
    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayRightMargin:F

    iput v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTempSuffixDayRightMargin:F

    .line 142
    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourLeftMargin:F

    iput v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTempSuffixHourLeftMargin:F

    .line 143
    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourRightMargin:F

    iput v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTempSuffixHourRightMargin:F

    .line 144
    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteLeftMargin:F

    iput v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTempSuffixMinuteLeftMargin:F

    .line 145
    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteRightMargin:F

    iput v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTempSuffixMinuteRightMargin:F

    .line 146
    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondLeftMargin:F

    iput v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTempSuffixSecondLeftMargin:F

    .line 147
    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondRightMargin:F

    iput v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTempSuffixSecondRightMargin:F

    .line 148
    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMillisecondLeftMargin:F

    iput v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTempSuffixMillisecondLeftMargin:F

    return-void
.end method

.method private initTimeTextBaseline(III)V
    .locals 0

    if-ne p2, p3, :cond_0

    .line 400
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iget p2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextHeight:F

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    add-float/2addr p1, p2

    iget p2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextBottom:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextBaseline:F

    goto :goto_0

    :cond_0
    sub-int p2, p1, p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    .line 403
    iget p2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextHeight:F

    add-float/2addr p1, p2

    iget p2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextBottom:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextBaseline:F

    .line 406
    :goto_0
    iget-boolean p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowDay:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayTextWidth:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 407
    iget-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDay:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/iwgang/countdownview/BaseCountdown;->getSuffixTextBaseLine(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayTextBaseline:F

    .line 410
    :cond_1
    iget-boolean p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowHour:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourTextWidth:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    .line 411
    iget-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHour:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/iwgang/countdownview/BaseCountdown;->getSuffixTextBaseLine(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourTextBaseline:F

    .line 414
    :cond_2
    iget-boolean p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMinute:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteTextWidth:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    .line 415
    iget-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinute:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/iwgang/countdownview/BaseCountdown;->getSuffixTextBaseLine(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteTextBaseline:F

    .line 418
    :cond_3
    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondTextWidth:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4

    .line 419
    iget-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecond:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/iwgang/countdownview/BaseCountdown;->getSuffixTextBaseLine(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondTextBaseline:F

    .line 422
    :cond_4
    iget-boolean p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMillisecond:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMillisecondTextWidth:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    .line 423
    iget-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMillisecond:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/iwgang/countdownview/BaseCountdown;->getSuffixTextBaseLine(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMillisecondTextBaseline:F

    :cond_5
    return-void
.end method


# virtual methods
.method public getAllContentHeight()I
    .locals 1

    .line 524
    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextHeight:F

    float-to-int v0, v0

    return v0
.end method

.method public getAllContentWidth()I
    .locals 6

    .line 505
    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextWidth:F

    invoke-virtual {p0, v0}, Lcn/iwgang/countdownview/BaseCountdown;->getAllContentWidthBase(F)F

    move-result v0

    .line 507
    iget-boolean v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isConvertDaysToHours:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowDay:Z

    if-eqz v1, :cond_1

    .line 508
    iget-boolean v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isDayLargeNinetyNine:Z

    if-eqz v1, :cond_0

    .line 509
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 510
    iget v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mDay:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 511
    iget-object v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v2, v4, v5, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 512
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mDayTimeTextWidth:F

    .line 513
    iget v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mDayTimeTextWidth:F

    add-float/2addr v0, v1

    goto :goto_0

    .line 515
    :cond_0
    iget v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextWidth:F

    iput v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mDayTimeTextWidth:F

    .line 516
    iget v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextWidth:F

    add-float/2addr v0, v1

    :cond_1
    :goto_0
    float-to-double v0, v0

    .line 520
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected final getAllContentWidthBase(F)F
    .locals 3

    .line 452
    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayTextWidth:F

    iget v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourTextWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteTextWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondTextWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMillisecondTextWidth:F

    add-float/2addr v0, v1

    .line 453
    iget v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayLeftMargin:F

    iget v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayRightMargin:F

    add-float/2addr v1, v2

    iget v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourLeftMargin:F

    add-float/2addr v1, v2

    iget v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourRightMargin:F

    add-float/2addr v1, v2

    iget v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteLeftMargin:F

    add-float/2addr v1, v2

    iget v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteRightMargin:F

    add-float/2addr v1, v2

    iget v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondLeftMargin:F

    add-float/2addr v1, v2

    iget v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondRightMargin:F

    add-float/2addr v1, v2

    iget v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMillisecondLeftMargin:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 456
    iget-boolean v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isConvertDaysToHours:Z

    if-eqz v1, :cond_0

    .line 457
    invoke-direct {p0}, Lcn/iwgang/countdownview/BaseCountdown;->getDayAndHourContentWidth()F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_0

    .line 458
    :cond_0
    iget-boolean v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowHour:Z

    if-eqz v1, :cond_1

    add-float/2addr v0, p1

    .line 462
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMinute:Z

    if-eqz v1, :cond_2

    add-float/2addr v0, p1

    .line 466
    :cond_2
    iget-boolean v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowSecond:Z

    if-eqz v1, :cond_3

    add-float/2addr v0, p1

    .line 470
    :cond_3
    iget-boolean v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMillisecond:Z

    if-eqz v1, :cond_4

    add-float/2addr v0, p1

    :cond_4
    return v0
.end method

.method public handlerAutoShowTime()Z
    .locals 14

    .line 674
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mHasSetIsShowDay:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 675
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowDay:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mDay:I

    if-lez v0, :cond_1

    .line 678
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mHasSetIsShowHour:Z

    if-nez v0, :cond_0

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 679
    iget-boolean v5, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMinute:Z

    iget-boolean v6, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowSecond:Z

    iget-boolean v7, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMillisecond:Z

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcn/iwgang/countdownview/BaseCountdown;->refTimeShow(ZZZZZ)Z

    goto/16 :goto_0

    :cond_0
    const/4 v9, 0x1

    .line 681
    iget-boolean v10, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowHour:Z

    iget-boolean v11, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMinute:Z

    iget-boolean v12, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowSecond:Z

    iget-boolean v13, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMillisecond:Z

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcn/iwgang/countdownview/BaseCountdown;->refTimeShow(ZZZZZ)Z

    goto/16 :goto_0

    .line 684
    :cond_1
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowDay:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mDay:I

    if-nez v0, :cond_2

    const/4 v3, 0x0

    .line 686
    iget-boolean v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowHour:Z

    iget-boolean v5, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMinute:Z

    iget-boolean v6, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowSecond:Z

    iget-boolean v7, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMillisecond:Z

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcn/iwgang/countdownview/BaseCountdown;->refTimeShow(ZZZZZ)Z

    goto/16 :goto_0

    .line 689
    :cond_2
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mHasSetIsShowHour:Z

    if-nez v0, :cond_8

    .line 690
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowHour:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mDay:I

    if-gtz v0, :cond_3

    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mHour:I

    if-lez v0, :cond_4

    .line 692
    :cond_3
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowDay:Z

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMinute:Z

    iget-boolean v6, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowSecond:Z

    iget-boolean v7, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMillisecond:Z

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcn/iwgang/countdownview/BaseCountdown;->refTimeShow(ZZZZZ)Z

    goto :goto_0

    .line 694
    :cond_4
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowHour:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mDay:I

    if-nez v0, :cond_8

    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mHour:I

    if-nez v0, :cond_8

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 696
    iget-boolean v5, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMinute:Z

    iget-boolean v6, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowSecond:Z

    iget-boolean v7, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMillisecond:Z

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcn/iwgang/countdownview/BaseCountdown;->refTimeShow(ZZZZZ)Z

    goto :goto_0

    .line 702
    :cond_5
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mHasSetIsShowHour:Z

    if-nez v0, :cond_8

    .line 703
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowHour:Z

    if-nez v0, :cond_7

    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mDay:I

    if-gtz v0, :cond_6

    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mHour:I

    if-lez v0, :cond_7

    .line 705
    :cond_6
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowDay:Z

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMinute:Z

    iget-boolean v6, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowSecond:Z

    iget-boolean v7, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMillisecond:Z

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcn/iwgang/countdownview/BaseCountdown;->refTimeShow(ZZZZZ)Z

    goto :goto_0

    .line 707
    :cond_7
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowHour:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mDay:I

    if-nez v0, :cond_8

    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mHour:I

    if-nez v0, :cond_8

    .line 709
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowDay:Z

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMinute:Z

    iget-boolean v6, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowSecond:Z

    iget-boolean v7, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMillisecond:Z

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcn/iwgang/countdownview/BaseCountdown;->refTimeShow(ZZZZZ)Z

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public handlerDayLargeNinetyNine()Z
    .locals 4

    .line 720
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowDay:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 722
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->isDayLargeNinetyNine:Z

    const/16 v3, 0x63

    if-nez v0, :cond_0

    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mDay:I

    if-le v0, v3, :cond_0

    .line 723
    iput-boolean v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->isDayLargeNinetyNine:Z

    goto :goto_0

    .line 725
    :cond_0
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->isDayLargeNinetyNine:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mDay:I

    if-gt v0, v3, :cond_1

    .line 726
    iput-boolean v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isDayLargeNinetyNine:Z

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    return v2
.end method

.method protected initPaint()V
    .locals 3

    .line 156
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextPaint:Landroid/graphics/Paint;

    .line 157
    iget-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    iget-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 159
    iget-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 160
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->isTimeTextBold:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 165
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixTextPaint:Landroid/graphics/Paint;

    .line 166
    iget-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    iget-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixTextSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 168
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->isSuffixTextBold:Z

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 172
    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mMeasureHourWidthPaint:Landroid/graphics/Paint;

    .line 173
    iget-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mMeasureHourWidthPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 174
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->isTimeTextBold:Z

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mMeasureHourWidthPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_2
    return-void
.end method

.method public initStyleAttr(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 5

    .line 61
    iput-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mContext:Landroid/content/Context;

    .line 62
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_isTimeTextBold:I

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isTimeTextBold:Z

    .line 63
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_timeTextSize:I

    iget-object v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lcn/iwgang/countdownview/Utils;->sp2px(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextSize:F

    .line 64
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_timeTextColor:I

    const/high16 v1, -0x1000000

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextColor:I

    .line 65
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_isShowDay:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowDay:Z

    .line 66
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_isShowHour:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowHour:Z

    .line 67
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_isShowMinute:I

    const/4 v3, 0x1

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMinute:Z

    .line 68
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_isShowSecond:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowSecond:Z

    .line 69
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_isShowMillisecond:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMillisecond:Z

    .line 70
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_isHideTimeBackground:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_isConvertDaysToHours:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isConvertDaysToHours:Z

    .line 73
    :cond_0
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_isSuffixTextBold:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isSuffixTextBold:Z

    .line 74
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_suffixTextSize:I

    iget-object v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcn/iwgang/countdownview/Utils;->sp2px(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixTextSize:F

    .line 75
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_suffixTextColor:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixTextColor:I

    .line 76
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_suffix:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffix:Ljava/lang/String;

    .line 77
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_suffixDay:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDay:Ljava/lang/String;

    .line 78
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_suffixHour:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHour:Ljava/lang/String;

    .line 79
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_suffixMinute:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinute:Ljava/lang/String;

    .line 80
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_suffixSecond:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecond:Ljava/lang/String;

    .line 81
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_suffixMillisecond:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMillisecond:Ljava/lang/String;

    .line 82
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_suffixGravity:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixGravity:I

    .line 83
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_suffixLRMargin:I

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixLRMargin:F

    .line 84
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_suffixDayLeftMargin:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayLeftMargin:F

    .line 85
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_suffixDayRightMargin:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayRightMargin:F

    .line 86
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_suffixHourLeftMargin:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourLeftMargin:F

    .line 87
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_suffixHourRightMargin:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourRightMargin:F

    .line 88
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_suffixMinuteLeftMargin:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteLeftMargin:F

    .line 89
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_suffixMinuteRightMargin:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteRightMargin:F

    .line 90
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_suffixSecondLeftMargin:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondLeftMargin:F

    .line 91
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_suffixSecondRightMargin:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondRightMargin:F

    .line 92
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_suffixMillisecondLeftMargin:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMillisecondLeftMargin:F

    .line 94
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_isShowDay:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    iput-boolean p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mHasSetIsShowDay:Z

    .line 95
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_isShowHour:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    iput-boolean p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mHasSetIsShowHour:Z

    .line 97
    invoke-direct {p0}, Lcn/iwgang/countdownview/BaseCountdown;->initTempSuffixMargin()V

    .line 100
    iget-boolean p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowDay:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowHour:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMinute:Z

    if-nez p1, :cond_1

    iput-boolean v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowSecond:Z

    .line 101
    :cond_1
    iget-boolean p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowSecond:Z

    if-nez p1, :cond_2

    iput-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMillisecond:Z

    :cond_2
    return-void
.end method

.method protected initTimeTextBaseInfo()V
    .locals 5

    .line 390
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 391
    iget-object v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextPaint:Landroid/graphics/Paint;

    const-string v2, "00"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 392
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextWidth:F

    .line 393
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextHeight:F

    .line 394
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextBottom:F

    return-void
.end method

.method public initialize()V
    .locals 1

    .line 105
    invoke-direct {p0}, Lcn/iwgang/countdownview/BaseCountdown;->initSuffixBase()V

    .line 108
    invoke-virtual {p0}, Lcn/iwgang/countdownview/BaseCountdown;->initPaint()V

    .line 109
    invoke-direct {p0}, Lcn/iwgang/countdownview/BaseCountdown;->initSuffix()V

    .line 114
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowSecond:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMillisecond:Z

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcn/iwgang/countdownview/BaseCountdown;->initTimeTextBaseInfo()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 538
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowDay:Z

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 540
    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mDay:I

    invoke-static {v0}, Lcn/iwgang/countdownview/Utils;->formatNum(I)Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mLeftPaddingSize:F

    iget v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mDayTimeTextWidth:F

    div-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextBaseline:F

    iget-object v5, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 541
    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayTextWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 543
    iget-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDay:Ljava/lang/String;

    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mLeftPaddingSize:F

    iget v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mDayTimeTextWidth:F

    add-float/2addr v3, v4

    iget v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayLeftMargin:F

    add-float/2addr v3, v4

    iget v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayTextBaseline:F

    iget-object v5, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 547
    :cond_0
    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mLeftPaddingSize:F

    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mDayTimeTextWidth:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayTextWidth:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayLeftMargin:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayRightMargin:F

    add-float/2addr v0, v3

    goto :goto_0

    .line 550
    :cond_1
    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mLeftPaddingSize:F

    .line 553
    :goto_0
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowHour:Z

    if-eqz v3, :cond_4

    .line 555
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->isConvertDaysToHours:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mHourTimeTextWidth:F

    goto :goto_1

    :cond_2
    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextWidth:F

    .line 556
    :goto_1
    iget v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mHour:I

    invoke-static {v4}, Lcn/iwgang/countdownview/Utils;->formatNum(I)Ljava/lang/String;

    move-result-object v4

    div-float v5, v3, v2

    add-float/2addr v5, v0

    iget v6, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextBaseline:F

    iget-object v7, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 557
    iget v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourTextWidth:F

    cmpl-float v4, v4, v1

    if-lez v4, :cond_3

    .line 559
    iget-object v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHour:Ljava/lang/String;

    add-float v5, v0, v3

    iget v6, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourLeftMargin:F

    add-float/2addr v5, v6

    iget v6, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourTextBaseline:F

    iget-object v7, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    add-float/2addr v0, v3

    .line 563
    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourTextWidth:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourLeftMargin:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourRightMargin:F

    add-float/2addr v0, v3

    .line 569
    :cond_4
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMinute:Z

    if-eqz v3, :cond_6

    .line 571
    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mMinute:I

    invoke-static {v3}, Lcn/iwgang/countdownview/Utils;->formatNum(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextWidth:F

    div-float/2addr v4, v2

    add-float/2addr v4, v0

    iget v5, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextBaseline:F

    iget-object v6, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 572
    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteTextWidth:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_5

    .line 574
    iget-object v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinute:Ljava/lang/String;

    iget v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextWidth:F

    add-float/2addr v4, v0

    iget v5, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteLeftMargin:F

    add-float/2addr v4, v5

    iget v5, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteTextBaseline:F

    iget-object v6, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 578
    :cond_5
    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextWidth:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteTextWidth:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteLeftMargin:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteRightMargin:F

    add-float/2addr v0, v3

    .line 584
    :cond_6
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowSecond:Z

    if-eqz v3, :cond_8

    .line 586
    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSecond:I

    invoke-static {v3}, Lcn/iwgang/countdownview/Utils;->formatNum(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextWidth:F

    div-float/2addr v4, v2

    add-float/2addr v4, v0

    iget v5, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextBaseline:F

    iget-object v6, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 587
    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondTextWidth:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_7

    .line 589
    iget-object v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecond:Ljava/lang/String;

    iget v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextWidth:F

    add-float/2addr v4, v0

    iget v5, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondLeftMargin:F

    add-float/2addr v4, v5

    iget v5, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondTextBaseline:F

    iget-object v6, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 592
    :cond_7
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMillisecond:Z

    if-eqz v3, :cond_8

    .line 594
    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextWidth:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondTextWidth:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondLeftMargin:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondRightMargin:F

    add-float/2addr v0, v3

    .line 596
    iget v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mMillisecond:I

    invoke-static {v3}, Lcn/iwgang/countdownview/Utils;->formatMillisecond(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextWidth:F

    div-float/2addr v4, v2

    add-float/2addr v4, v0

    iget v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextBaseline:F

    iget-object v5, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 597
    iget v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMillisecondTextWidth:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_8

    .line 599
    iget-object v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMillisecond:Ljava/lang/String;

    iget v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextWidth:F

    add-float/2addr v0, v2

    iget v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMillisecondLeftMargin:F

    add-float/2addr v0, v2

    iget v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMillisecondTextBaseline:F

    iget-object v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_8
    return-void
.end method

.method public onMeasure(Landroid/view/View;IIII)V
    .locals 1

    .line 528
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-direct {p0, p3, p5, v0}, Lcn/iwgang/countdownview/BaseCountdown;->initTimeTextBaseline(III)V

    .line 529
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p5

    if-ne p3, p5, :cond_0

    sub-int/2addr p2, p4

    div-int/lit8 p2, p2, 0x2

    int-to-float p1, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    :goto_0
    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mLeftPaddingSize:F

    return-void
.end method

.method public reLayout()V
    .locals 0

    .line 742
    invoke-direct {p0}, Lcn/iwgang/countdownview/BaseCountdown;->initSuffix()V

    .line 743
    invoke-virtual {p0}, Lcn/iwgang/countdownview/BaseCountdown;->initTimeTextBaseInfo()V

    return-void
.end method

.method public refTimeShow(ZZZZZ)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p4, :cond_0

    move p5, v0

    .line 609
    :cond_0
    iget-boolean v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowDay:Z

    if-eq v1, p1, :cond_1

    .line 610
    iput-boolean p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowDay:Z

    if-eqz p1, :cond_1

    .line 613
    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTempSuffixDayLeftMargin:F

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayLeftMargin:F

    .line 614
    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTempSuffixDayRightMargin:F

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayRightMargin:F

    .line 618
    :cond_1
    iget-boolean p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowHour:Z

    if-eq p1, p2, :cond_2

    .line 619
    iput-boolean p2, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowHour:Z

    if-eqz p2, :cond_2

    .line 622
    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTempSuffixHourLeftMargin:F

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourLeftMargin:F

    .line 623
    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTempSuffixHourRightMargin:F

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourRightMargin:F

    .line 627
    :cond_2
    iget-boolean p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMinute:Z

    if-eq p1, p3, :cond_3

    .line 628
    iput-boolean p3, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMinute:Z

    if-eqz p3, :cond_3

    .line 631
    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTempSuffixMinuteLeftMargin:F

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteLeftMargin:F

    .line 632
    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTempSuffixMinuteRightMargin:F

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteRightMargin:F

    .line 633
    iget-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTempSuffixMinute:Ljava/lang/String;

    iput-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinute:Ljava/lang/String;

    .line 637
    :cond_3
    iget-boolean p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowSecond:Z

    const/4 p2, 0x1

    if-eq p1, p4, :cond_5

    .line 638
    iput-boolean p4, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowSecond:Z

    if-eqz p4, :cond_4

    .line 643
    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTempSuffixSecondLeftMargin:F

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondLeftMargin:F

    .line 644
    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTempSuffixSecondRightMargin:F

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondRightMargin:F

    .line 645
    iget-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTempSuffixSecond:Ljava/lang/String;

    iput-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecond:Ljava/lang/String;

    goto :goto_0

    .line 647
    :cond_4
    iget-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTempSuffixMinute:Ljava/lang/String;

    iput-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinute:Ljava/lang/String;

    .line 650
    :goto_0
    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTempSuffixMinuteLeftMargin:F

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteLeftMargin:F

    .line 651
    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTempSuffixMinuteRightMargin:F

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteRightMargin:F

    move v0, p2

    .line 654
    :cond_5
    iget-boolean p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMillisecond:Z

    if-eq p1, p5, :cond_7

    .line 655
    iput-boolean p5, p0, Lcn/iwgang/countdownview/BaseCountdown;->isShowMillisecond:Z

    if-eqz p5, :cond_6

    .line 660
    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTempSuffixMillisecondLeftMargin:F

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMillisecondLeftMargin:F

    goto :goto_1

    .line 662
    :cond_6
    iget-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTempSuffixSecond:Ljava/lang/String;

    iput-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecond:Ljava/lang/String;

    .line 665
    :goto_1
    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTempSuffixSecondLeftMargin:F

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondLeftMargin:F

    .line 666
    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTempSuffixSecondRightMargin:F

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondRightMargin:F

    goto :goto_2

    :cond_7
    move p2, v0

    :goto_2
    return p2
.end method

.method public setConvertDaysToHours(Z)Z
    .locals 1

    .line 786
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->isConvertDaysToHours:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 787
    :cond_0
    iput-boolean p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isConvertDaysToHours:Z

    const/4 p1, 0x1

    return p1
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 6

    .line 781
    iput-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffix:Ljava/lang/String;

    .line 782
    iget-object v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffix:Ljava/lang/String;

    iget-object v2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffix:Ljava/lang/String;

    iget-object v3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffix:Ljava/lang/String;

    iget-object v4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffix:Ljava/lang/String;

    iget-object v5, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffix:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/iwgang/countdownview/BaseCountdown;->setSuffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setSuffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 795
    iput-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDay:Ljava/lang/String;

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 800
    iput-object p2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHour:Ljava/lang/String;

    move p1, v0

    :cond_1
    if-eqz p3, :cond_2

    .line 805
    iput-object p3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinute:Ljava/lang/String;

    move p1, v0

    :cond_2
    if-eqz p4, :cond_3

    .line 810
    iput-object p4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecond:Ljava/lang/String;

    move p1, v0

    :cond_3
    if-eqz p5, :cond_4

    .line 815
    iput-object p5, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMillisecond:Ljava/lang/String;

    move p1, v0

    :cond_4
    if-eqz p1, :cond_5

    .line 819
    invoke-direct {p0}, Lcn/iwgang/countdownview/BaseCountdown;->initSuffixBase()V

    :cond_5
    return p1
.end method

.method public setSuffixGravity(I)V
    .locals 0

    .line 888
    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixGravity:I

    return-void
.end method

.method public setSuffixLRMargin(F)V
    .locals 10

    .line 825
    iget-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/iwgang/countdownview/Utils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixLRMargin:F

    .line 826
    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayLeftMargin:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayLeftMargin:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayLeftMargin:F

    .line 827
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayLeftMargin:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayLeftMargin:F

    .line 828
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayLeftMargin:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayLeftMargin:F

    .line 829
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayLeftMargin:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iget p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayLeftMargin:F

    .line 830
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    move-object v0, p0

    .line 826
    invoke-virtual/range {v0 .. v9}, Lcn/iwgang/countdownview/BaseCountdown;->setSuffixMargin(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)Z

    return-void
.end method

.method public setSuffixMargin(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 841
    iget-object v1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v1, p1}, Lcn/iwgang/countdownview/Utils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayLeftMargin:F

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 845
    iget-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p1, p2}, Lcn/iwgang/countdownview/Utils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixDayRightMargin:F

    move p1, v0

    :cond_1
    if-eqz p3, :cond_2

    .line 850
    iget-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p1, p2}, Lcn/iwgang/countdownview/Utils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourLeftMargin:F

    move p1, v0

    :cond_2
    if-eqz p4, :cond_3

    .line 854
    iget-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p1, p2}, Lcn/iwgang/countdownview/Utils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixHourRightMargin:F

    move p1, v0

    :cond_3
    if-eqz p5, :cond_4

    .line 859
    iget-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mContext:Landroid/content/Context;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p1, p2}, Lcn/iwgang/countdownview/Utils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteLeftMargin:F

    move p1, v0

    :cond_4
    if-eqz p6, :cond_5

    .line 863
    iget-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mContext:Landroid/content/Context;

    invoke-virtual {p6}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p1, p2}, Lcn/iwgang/countdownview/Utils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMinuteRightMargin:F

    move p1, v0

    :cond_5
    if-eqz p7, :cond_6

    .line 868
    iget-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mContext:Landroid/content/Context;

    invoke-virtual {p7}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p1, p2}, Lcn/iwgang/countdownview/Utils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondLeftMargin:F

    move p1, v0

    :cond_6
    if-eqz p8, :cond_7

    .line 872
    iget-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mContext:Landroid/content/Context;

    invoke-virtual {p8}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p1, p2}, Lcn/iwgang/countdownview/Utils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixSecondRightMargin:F

    move p1, v0

    :cond_7
    if-eqz p9, :cond_8

    .line 877
    iget-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mContext:Landroid/content/Context;

    invoke-virtual {p9}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p1, p2}, Lcn/iwgang/countdownview/Utils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixMillisecondLeftMargin:F

    move p1, v0

    :cond_8
    if-eqz p1, :cond_9

    .line 882
    invoke-direct {p0}, Lcn/iwgang/countdownview/BaseCountdown;->initTempSuffixMargin()V

    :cond_9
    return p1
.end method

.method public setSuffixTextBold(Z)V
    .locals 1

    .line 776
    iput-boolean p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isSuffixTextBold:Z

    .line 777
    iget-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixTextPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->isSuffixTextBold:Z

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method

.method public setSuffixTextColor(I)V
    .locals 1

    .line 771
    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixTextColor:I

    .line 772
    iget-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixTextPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixTextColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setSuffixTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 765
    iget-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/iwgang/countdownview/Utils;->sp2px(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixTextSize:F

    .line 766
    iget-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixTextPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSuffixTextSize:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method public setTimeTextBold(Z)V
    .locals 1

    .line 759
    iput-boolean p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->isTimeTextBold:Z

    .line 760
    iget-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->isTimeTextBold:Z

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method

.method public setTimeTextColor(I)V
    .locals 1

    .line 754
    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextColor:I

    .line 755
    iget-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setTimeTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 748
    iget-object v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/iwgang/countdownview/Utils;->sp2px(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextSize:F

    .line 749
    iget-object p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcn/iwgang/countdownview/BaseCountdown;->mTimeTextSize:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method public setTimes(IIIII)V
    .locals 0

    .line 734
    iput p1, p0, Lcn/iwgang/countdownview/BaseCountdown;->mDay:I

    .line 735
    iput p2, p0, Lcn/iwgang/countdownview/BaseCountdown;->mHour:I

    .line 736
    iput p3, p0, Lcn/iwgang/countdownview/BaseCountdown;->mMinute:I

    .line 737
    iput p4, p0, Lcn/iwgang/countdownview/BaseCountdown;->mSecond:I

    .line 738
    iput p5, p0, Lcn/iwgang/countdownview/BaseCountdown;->mMillisecond:I

    return-void
.end method
