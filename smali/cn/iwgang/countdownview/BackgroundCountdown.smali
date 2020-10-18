.class Lcn/iwgang/countdownview/BackgroundCountdown;
.super Lcn/iwgang/countdownview/BaseCountdown;
.source "BackgroundCountdown.java"


# static fields
.field private static final DEFAULT_TIME_BG_BORDER_SIZE:F = 1.0f

.field private static final DEFAULT_TIME_BG_DIVISION_LINE_SIZE:F = 0.5f


# instance fields
.field private isDrawBg:Z

.field private isShowTimeBgBorder:Z

.field private isShowTimeBgDivisionLine:Z

.field private mDayBgBorderRectF:Landroid/graphics/RectF;

.field private mDayBgRectF:Landroid/graphics/RectF;

.field private mDayTimeBgWidth:F

.field private mDefSetTimeBgSize:F

.field private mHourBgBorderRectF:Landroid/graphics/RectF;

.field private mHourBgRectF:Landroid/graphics/RectF;

.field private mMillisecondBgBorderRectF:Landroid/graphics/RectF;

.field private mMillisecondBgRectF:Landroid/graphics/RectF;

.field private mMinuteBgBorderRectF:Landroid/graphics/RectF;

.field private mMinuteBgRectF:Landroid/graphics/RectF;

.field private mSecondBgBorderRectF:Landroid/graphics/RectF;

.field private mSecondBgRectF:Landroid/graphics/RectF;

.field private mTimeBgBorderColor:I

.field private mTimeBgBorderPaint:Landroid/graphics/Paint;

.field private mTimeBgBorderRadius:F

.field private mTimeBgBorderSize:F

.field private mTimeBgColor:I

.field private mTimeBgDivisionLineColor:I

.field private mTimeBgDivisionLinePaint:Landroid/graphics/Paint;

.field private mTimeBgDivisionLineSize:F

.field private mTimeBgDivisionLineYPos:F

.field private mTimeBgPaint:Landroid/graphics/Paint;

.field private mTimeBgRadius:F

.field private mTimeBgSize:F

.field private mTimeTextBaseY:F


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcn/iwgang/countdownview/BaseCountdown;-><init>()V

    return-void
.end method

.method private getSuffixTextBaseLine(Ljava/lang/String;F)F
    .locals 4

    .line 204
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 205
    iget-object v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 208
    iget p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixGravity:I

    if-eqz p1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 216
    iget p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr p2, p1

    iget p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    div-float/2addr p1, v1

    sub-float/2addr p2, p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/2addr p1, v2

    int-to-float p1, p1

    add-float/2addr p2, p1

    iget p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float/2addr p2, p1

    goto :goto_0

    .line 220
    :cond_0
    iget p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr p2, p1

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iget p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    mul-float/2addr p1, v1

    add-float/2addr p2, p1

    goto :goto_0

    .line 211
    :cond_1
    iget p1, v0, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    sub-float/2addr p2, p1

    :goto_0
    return p2
.end method

.method private initHasBackgroundTextBaseY(Landroid/graphics/RectF;)V
    .locals 4

    .line 229
    iget-object v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 230
    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v0

    iget v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeTextBottom:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeTextBaseY:F

    .line 232
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    iget v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLineSize:F

    iget-object v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mContext:Landroid/content/Context;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v1, v2}, Lcn/iwgang/countdownview/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLineSize:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLineSize:F

    div-float/2addr v0, v3

    :goto_0
    add-float/2addr p1, v0

    iput p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLineYPos:F

    return-void
.end method

.method private initTimeBgBorderPaint()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    return-void

    .line 81
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderPaint:Landroid/graphics/Paint;

    .line 82
    iget-object v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isDrawBg:Z

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 85
    iget-object v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1
    return-void
.end method

.method private initTimeBgRect(F)V
    .locals 10

    .line 115
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowDay:Z

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 117
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowTimeBgBorder:Z

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Landroid/graphics/RectF;

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mLeftPaddingSize:F

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mLeftPaddingSize:F

    iget v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mDayTimeBgWidth:F

    add-float/2addr v5, v6

    iget v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    iget v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v6, p1

    iget v7, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    invoke-direct {v0, v4, p1, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mDayBgBorderRectF:Landroid/graphics/RectF;

    .line 119
    new-instance v0, Landroid/graphics/RectF;

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mLeftPaddingSize:F

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float/2addr v4, v5

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float/2addr v5, p1

    iget v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mLeftPaddingSize:F

    iget v7, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mDayTimeBgWidth:F

    add-float/2addr v6, v7

    iget v7, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float/2addr v6, v7

    iget v7, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v7, p1

    iget v8, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float/2addr v7, v8

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mDayBgRectF:Landroid/graphics/RectF;

    goto :goto_0

    .line 121
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mLeftPaddingSize:F

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mLeftPaddingSize:F

    iget v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mDayTimeBgWidth:F

    add-float/2addr v5, v6

    iget v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v6, p1

    invoke-direct {v0, v4, p1, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mDayBgRectF:Landroid/graphics/RectF;

    .line 124
    :goto_0
    iget v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mLeftPaddingSize:F

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mDayTimeBgWidth:F

    add-float/2addr v0, v4

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixDayTextWidth:F

    add-float/2addr v0, v4

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixDayLeftMargin:F

    add-float/2addr v0, v4

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixDayRightMargin:F

    add-float/2addr v0, v4

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    mul-float/2addr v4, v2

    add-float/2addr v0, v4

    .line 126
    iget-boolean v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowHour:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowMinute:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowSecond:Z

    if-nez v4, :cond_2

    .line 128
    iget-object v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mDayBgRectF:Landroid/graphics/RectF;

    invoke-direct {p0, v3}, Lcn/iwgang/countdownview/BackgroundCountdown;->initHasBackgroundTextBaseY(Landroid/graphics/RectF;)V

    move v3, v1

    goto :goto_1

    .line 132
    :cond_1
    iget v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mLeftPaddingSize:F

    .line 135
    :cond_2
    :goto_1
    iget-boolean v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowHour:Z

    if-eqz v4, :cond_4

    .line 137
    iget-boolean v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowTimeBgBorder:Z

    if-eqz v4, :cond_3

    .line 138
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v5, v0

    iget v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    iget v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v6, p1

    iget v7, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    invoke-direct {v4, v0, p1, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mHourBgBorderRectF:Landroid/graphics/RectF;

    .line 139
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float/2addr v5, v0

    iget v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float/2addr v6, p1

    iget v7, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v7, v0

    iget v8, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float/2addr v7, v8

    iget v8, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v8, p1

    iget v9, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mHourBgRectF:Landroid/graphics/RectF;

    goto :goto_2

    .line 141
    :cond_3
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v5, v0

    iget v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v6, p1

    invoke-direct {v4, v0, p1, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mHourBgRectF:Landroid/graphics/RectF;

    .line 144
    :goto_2
    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v0, v4

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixHourTextWidth:F

    add-float/2addr v0, v4

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixHourLeftMargin:F

    add-float/2addr v0, v4

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixHourRightMargin:F

    add-float/2addr v0, v4

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    mul-float/2addr v4, v2

    add-float/2addr v0, v4

    if-nez v3, :cond_4

    .line 148
    iget-object v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mHourBgRectF:Landroid/graphics/RectF;

    invoke-direct {p0, v3}, Lcn/iwgang/countdownview/BackgroundCountdown;->initHasBackgroundTextBaseY(Landroid/graphics/RectF;)V

    move v3, v1

    .line 155
    :cond_4
    iget-boolean v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowMinute:Z

    if-eqz v4, :cond_6

    .line 157
    iget-boolean v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowTimeBgBorder:Z

    if-eqz v4, :cond_5

    .line 158
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v5, v0

    iget v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    iget v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v6, p1

    iget v7, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    invoke-direct {v4, v0, p1, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mMinuteBgBorderRectF:Landroid/graphics/RectF;

    .line 159
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float/2addr v5, v0

    iget v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float/2addr v6, p1

    iget v7, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v7, v0

    iget v8, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float/2addr v7, v8

    iget v8, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v8, p1

    iget v9, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mMinuteBgRectF:Landroid/graphics/RectF;

    goto :goto_3

    .line 161
    :cond_5
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v5, v0

    iget v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v6, p1

    invoke-direct {v4, v0, p1, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mMinuteBgRectF:Landroid/graphics/RectF;

    .line 164
    :goto_3
    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v0, v4

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixMinuteTextWidth:F

    add-float/2addr v0, v4

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixMinuteLeftMargin:F

    add-float/2addr v0, v4

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixMinuteRightMargin:F

    add-float/2addr v0, v4

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    mul-float/2addr v4, v2

    add-float/2addr v0, v4

    if-nez v3, :cond_6

    .line 168
    iget-object v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mMinuteBgRectF:Landroid/graphics/RectF;

    invoke-direct {p0, v3}, Lcn/iwgang/countdownview/BackgroundCountdown;->initHasBackgroundTextBaseY(Landroid/graphics/RectF;)V

    move v3, v1

    .line 175
    :cond_6
    iget-boolean v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowSecond:Z

    if-eqz v1, :cond_a

    .line 177
    iget-boolean v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowTimeBgBorder:Z

    if-eqz v1, :cond_7

    .line 178
    new-instance v1, Landroid/graphics/RectF;

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v4, v0

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v5, p1

    iget v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    invoke-direct {v1, v0, p1, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSecondBgBorderRectF:Landroid/graphics/RectF;

    .line 179
    new-instance v1, Landroid/graphics/RectF;

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float/2addr v4, v0

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float/2addr v5, p1

    iget v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v6, v0

    iget v7, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float/2addr v6, v7

    iget v7, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v7, p1

    iget v8, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float/2addr v7, v8

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSecondBgRectF:Landroid/graphics/RectF;

    goto :goto_4

    .line 181
    :cond_7
    new-instance v1, Landroid/graphics/RectF;

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v4, v0

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v5, p1

    invoke-direct {v1, v0, p1, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSecondBgRectF:Landroid/graphics/RectF;

    .line 184
    :goto_4
    iget-boolean v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowMillisecond:Z

    if-eqz v1, :cond_9

    .line 186
    iget v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v0, v1

    iget v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixSecondTextWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixSecondLeftMargin:F

    add-float/2addr v0, v1

    iget v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixSecondRightMargin:F

    add-float/2addr v0, v1

    iget v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 189
    iget-boolean v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowTimeBgBorder:Z

    if-eqz v1, :cond_8

    .line 190
    new-instance v1, Landroid/graphics/RectF;

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v4, v0

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v5, p1

    iget v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    invoke-direct {v1, v0, p1, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mMillisecondBgBorderRectF:Landroid/graphics/RectF;

    .line 191
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float/2addr v2, v0

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float/2addr v4, p1

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v0, v5

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float/2addr v0, v5

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr p1, v5

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float/2addr p1, v5

    invoke-direct {v1, v2, v4, v0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mMillisecondBgRectF:Landroid/graphics/RectF;

    goto :goto_5

    .line 193
    :cond_8
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v2, v0

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v4, p1

    invoke-direct {v1, v0, p1, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mMillisecondBgRectF:Landroid/graphics/RectF;

    :cond_9
    :goto_5
    if-nez v3, :cond_a

    .line 198
    iget-object p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSecondBgRectF:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Lcn/iwgang/countdownview/BackgroundCountdown;->initHasBackgroundTextBaseY(Landroid/graphics/RectF;)V

    :cond_a
    return-void
.end method

.method private initTimeTextBaselineAndTimeBgTopPadding(IIII)F
    .locals 0

    if-ne p2, p3, :cond_0

    sub-int/2addr p1, p4

    .line 244
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    int-to-float p1, p2

    .line 250
    :goto_0
    iget-boolean p2, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowDay:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    iget p2, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixDayTextWidth:F

    cmpl-float p2, p2, p3

    if-lez p2, :cond_1

    .line 251
    iget-object p2, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixDay:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcn/iwgang/countdownview/BackgroundCountdown;->getSuffixTextBaseLine(Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixDayTextBaseline:F

    .line 254
    :cond_1
    iget-boolean p2, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowHour:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixHourTextWidth:F

    cmpl-float p2, p2, p3

    if-lez p2, :cond_2

    .line 255
    iget-object p2, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixHour:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcn/iwgang/countdownview/BackgroundCountdown;->getSuffixTextBaseLine(Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixHourTextBaseline:F

    .line 258
    :cond_2
    iget-boolean p2, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowMinute:Z

    if-eqz p2, :cond_3

    iget p2, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixMinuteTextWidth:F

    cmpl-float p2, p2, p3

    if-lez p2, :cond_3

    .line 259
    iget-object p2, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixMinute:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcn/iwgang/countdownview/BackgroundCountdown;->getSuffixTextBaseLine(Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixMinuteTextBaseline:F

    .line 262
    :cond_3
    iget p2, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixSecondTextWidth:F

    cmpl-float p2, p2, p3

    if-lez p2, :cond_4

    .line 263
    iget-object p2, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixSecond:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcn/iwgang/countdownview/BackgroundCountdown;->getSuffixTextBaseLine(Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixSecondTextBaseline:F

    .line 266
    :cond_4
    iget-boolean p2, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowMillisecond:Z

    if-eqz p2, :cond_5

    iget p2, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixMillisecondTextWidth:F

    cmpl-float p2, p2, p3

    if-lez p2, :cond_5

    .line 267
    iget-object p2, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixMillisecond:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcn/iwgang/countdownview/BackgroundCountdown;->getSuffixTextBaseLine(Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixMillisecondTextBaseline:F

    :cond_5
    return p1
.end method

.method private initTimeTextBgDivisionLinePaint()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLinePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    return-void

    .line 92
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLinePaint:Landroid/graphics/Paint;

    .line 93
    iget-object v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLineSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public getAllContentHeight()I
    .locals 3

    .line 297
    iget v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    iget v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getAllContentWidth()I
    .locals 7

    .line 275
    iget v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    iget v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcn/iwgang/countdownview/BackgroundCountdown;->getAllContentWidthBase(F)F

    move-result v0

    .line 277
    iget-boolean v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowDay:Z

    if-eqz v1, :cond_1

    .line 278
    iget-boolean v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isDayLargeNinetyNine:Z

    if-eqz v1, :cond_0

    .line 279
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 280
    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mDay:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 281
    iget-object v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeTextPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v3, v5, v6, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 282
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcn/iwgang/countdownview/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v1, v3

    int-to-float v1, v1

    iput v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mDayTimeBgWidth:F

    .line 283
    iget v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mDayTimeBgWidth:F

    add-float/2addr v0, v1

    goto :goto_0

    .line 285
    :cond_0
    iget v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    iput v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mDayTimeBgWidth:F

    .line 286
    iget v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v0, v1

    .line 289
    :goto_0
    iget v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    :cond_1
    float-to-double v0, v0

    .line 292
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected initPaint()V
    .locals 2

    .line 61
    invoke-super {p0}, Lcn/iwgang/countdownview/BaseCountdown;->initPaint()V

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgPaint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowTimeBgBorder:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcn/iwgang/countdownview/BackgroundCountdown;->initTimeBgBorderPaint()V

    .line 73
    :cond_0
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowTimeBgDivisionLine:Z

    if-eqz v0, :cond_1

    .line 74
    invoke-direct {p0}, Lcn/iwgang/countdownview/BackgroundCountdown;->initTimeTextBgDivisionLinePaint()V

    :cond_1
    return-void
.end method

.method public initStyleAttr(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 4

    .line 42
    invoke-super {p0, p1, p2}, Lcn/iwgang/countdownview/BaseCountdown;->initStyleAttr(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 44
    sget v0, Lcn/iwgang/countdownview/R$styleable;->CountdownView_timeBgColor:I

    const v1, -0xbbbbbc

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgColor:I

    .line 45
    sget v0, Lcn/iwgang/countdownview/R$styleable;->CountdownView_timeBgRadius:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgRadius:F

    .line 46
    sget v0, Lcn/iwgang/countdownview/R$styleable;->CountdownView_isShowTimeBgDivisionLine:I

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowTimeBgDivisionLine:Z

    .line 47
    sget v0, Lcn/iwgang/countdownview/R$styleable;->CountdownView_timeBgDivisionLineColor:I

    const-string v3, "#30FFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLineColor:I

    .line 48
    sget v0, Lcn/iwgang/countdownview/R$styleable;->CountdownView_timeBgDivisionLineSize:I

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {p1, v3}, Lcn/iwgang/countdownview/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLineSize:F

    .line 49
    sget v0, Lcn/iwgang/countdownview/R$styleable;->CountdownView_timeBgSize:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    .line 50
    iget v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    iput v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mDefSetTimeBgSize:F

    .line 51
    sget v0, Lcn/iwgang/countdownview/R$styleable;->CountdownView_timeBgBorderSize:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p1, v3}, Lcn/iwgang/countdownview/Utils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    .line 52
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_timeBgBorderRadius:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderRadius:F

    .line 53
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_timeBgBorderColor:I

    const/high16 v0, -0x1000000

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderColor:I

    .line 54
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_isShowTimeBgBorder:I

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowTimeBgBorder:Z

    .line 56
    sget p1, Lcn/iwgang/countdownview/R$styleable;->CountdownView_timeBgColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowTimeBgBorder:Z

    if-nez p1, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    iput-boolean v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isDrawBg:Z

    return-void
.end method

.method protected initTimeTextBaseInfo()V
    .locals 3

    .line 99
    invoke-super {p0}, Lcn/iwgang/countdownview/BaseCountdown;->initTimeTextBaseInfo()V

    .line 101
    iget v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mDefSetTimeBgSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    iget v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeTextWidth:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 102
    :cond_0
    iget v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeTextWidth:F

    iget-object v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mContext:Landroid/content/Context;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcn/iwgang/countdownview/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 314
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowDay:Z

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_3

    .line 316
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowTimeBgBorder:Z

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mDayBgBorderRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderRadius:F

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderRadius:F

    iget-object v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 319
    :cond_0
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isDrawBg:Z

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mDayBgRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgRadius:F

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgRadius:F

    iget-object v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 322
    iget-boolean v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowTimeBgDivisionLine:Z

    if-eqz v0, :cond_1

    .line 324
    iget v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mLeftPaddingSize:F

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float v5, v0, v3

    iget v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLineYPos:F

    iget v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mLeftPaddingSize:F

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mDayTimeBgWidth:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float v7, v0, v3

    iget v8, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLineYPos:F

    iget-object v9, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLinePaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 328
    :cond_1
    iget v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mDay:I

    invoke-static {v0}, Lcn/iwgang/countdownview/Utils;->formatNum(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mDayBgRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeTextBaseY:F

    iget-object v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 329
    iget v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixDayTextWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 331
    iget-object v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixDay:Ljava/lang/String;

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mLeftPaddingSize:F

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mDayTimeBgWidth:F

    add-float/2addr v3, v4

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixDayLeftMargin:F

    add-float/2addr v3, v4

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixDayTextBaseline:F

    iget-object v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 335
    :cond_2
    iget v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mLeftPaddingSize:F

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mDayTimeBgWidth:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixDayTextWidth:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixDayLeftMargin:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixDayRightMargin:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    mul-float/2addr v3, v2

    add-float/2addr v0, v3

    goto :goto_0

    .line 338
    :cond_3
    iget v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mLeftPaddingSize:F

    .line 341
    :goto_0
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowHour:Z

    if-eqz v3, :cond_7

    .line 343
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowTimeBgBorder:Z

    if-eqz v3, :cond_4

    .line 344
    iget-object v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mHourBgBorderRectF:Landroid/graphics/RectF;

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderRadius:F

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderRadius:F

    iget-object v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 346
    :cond_4
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isDrawBg:Z

    if-eqz v3, :cond_5

    .line 348
    iget-object v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mHourBgRectF:Landroid/graphics/RectF;

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgRadius:F

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgRadius:F

    iget-object v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 349
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowTimeBgDivisionLine:Z

    if-eqz v3, :cond_5

    .line 351
    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float v5, v0, v3

    iget v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLineYPos:F

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v3, v0

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float v7, v3, v4

    iget v8, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLineYPos:F

    iget-object v9, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLinePaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 355
    :cond_5
    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mHour:I

    invoke-static {v3}, Lcn/iwgang/countdownview/Utils;->formatNum(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mHourBgRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeTextBaseY:F

    iget-object v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 356
    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixHourTextWidth:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_6

    .line 358
    iget-object v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixHour:Ljava/lang/String;

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v4, v0

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixHourLeftMargin:F

    add-float/2addr v4, v5

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixHourTextBaseline:F

    iget-object v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 362
    :cond_6
    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixHourTextWidth:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixHourLeftMargin:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixHourRightMargin:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    mul-float/2addr v3, v2

    add-float/2addr v0, v3

    .line 368
    :cond_7
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowMinute:Z

    if-eqz v3, :cond_b

    .line 370
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowTimeBgBorder:Z

    if-eqz v3, :cond_8

    .line 371
    iget-object v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mMinuteBgBorderRectF:Landroid/graphics/RectF;

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderRadius:F

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderRadius:F

    iget-object v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 373
    :cond_8
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isDrawBg:Z

    if-eqz v3, :cond_9

    .line 375
    iget-object v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mMinuteBgRectF:Landroid/graphics/RectF;

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgRadius:F

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgRadius:F

    iget-object v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 376
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowTimeBgDivisionLine:Z

    if-eqz v3, :cond_9

    .line 378
    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float v5, v0, v3

    iget v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLineYPos:F

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v3, v0

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float v7, v3, v4

    iget v8, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLineYPos:F

    iget-object v9, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLinePaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 382
    :cond_9
    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mMinute:I

    invoke-static {v3}, Lcn/iwgang/countdownview/Utils;->formatNum(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mMinuteBgRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeTextBaseY:F

    iget-object v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 383
    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixMinuteTextWidth:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_a

    .line 385
    iget-object v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixMinute:Ljava/lang/String;

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v4, v0

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixMinuteLeftMargin:F

    add-float/2addr v4, v5

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixMinuteTextBaseline:F

    iget-object v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 389
    :cond_a
    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixMinuteTextWidth:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixMinuteLeftMargin:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixMinuteRightMargin:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    mul-float/2addr v3, v2

    add-float/2addr v0, v3

    .line 395
    :cond_b
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowSecond:Z

    if-eqz v3, :cond_11

    .line 397
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowTimeBgBorder:Z

    if-eqz v3, :cond_c

    .line 398
    iget-object v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSecondBgBorderRectF:Landroid/graphics/RectF;

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderRadius:F

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderRadius:F

    iget-object v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 400
    :cond_c
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isDrawBg:Z

    if-eqz v3, :cond_d

    .line 402
    iget-object v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSecondBgRectF:Landroid/graphics/RectF;

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgRadius:F

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgRadius:F

    iget-object v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 403
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowTimeBgDivisionLine:Z

    if-eqz v3, :cond_d

    .line 405
    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float v5, v0, v3

    iget v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLineYPos:F

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v3, v0

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float v7, v3, v4

    iget v8, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLineYPos:F

    iget-object v9, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLinePaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 409
    :cond_d
    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSecond:I

    invoke-static {v3}, Lcn/iwgang/countdownview/Utils;->formatNum(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSecondBgRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeTextBaseY:F

    iget-object v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 410
    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixSecondTextWidth:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_e

    .line 412
    iget-object v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixSecond:Ljava/lang/String;

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v4, v0

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixSecondLeftMargin:F

    add-float/2addr v4, v5

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixSecondTextBaseline:F

    iget-object v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 415
    :cond_e
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowMillisecond:Z

    if-eqz v3, :cond_11

    .line 417
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowTimeBgBorder:Z

    if-eqz v3, :cond_f

    .line 418
    iget-object v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mMillisecondBgBorderRectF:Landroid/graphics/RectF;

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderRadius:F

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderRadius:F

    iget-object v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 421
    :cond_f
    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixSecondTextWidth:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixSecondLeftMargin:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixSecondRightMargin:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    mul-float/2addr v3, v2

    add-float/2addr v0, v3

    .line 422
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isDrawBg:Z

    if-eqz v3, :cond_10

    .line 424
    iget-object v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mMillisecondBgRectF:Landroid/graphics/RectF;

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgRadius:F

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgRadius:F

    iget-object v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 425
    iget-boolean v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowTimeBgDivisionLine:Z

    if-eqz v3, :cond_10

    .line 427
    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float v5, v0, v3

    iget v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLineYPos:F

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v3, v0

    iget v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    add-float v7, v3, v4

    iget v8, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLineYPos:F

    iget-object v9, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLinePaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 431
    :cond_10
    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mMillisecond:I

    invoke-static {v3}, Lcn/iwgang/countdownview/Utils;->formatMillisecond(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mMillisecondBgRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget v5, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeTextBaseY:F

    iget-object v6, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 432
    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixMillisecondTextWidth:F

    cmpl-float v1, v3, v1

    if-lez v1, :cond_11

    .line 434
    iget-object v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixMillisecond:Ljava/lang/String;

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixMillisecondLeftMargin:F

    add-float/2addr v0, v3

    iget v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    mul-float/2addr v3, v2

    add-float/2addr v0, v3

    iget v2, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixMillisecondTextBaseline:F

    iget-object v3, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mSuffixTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_11
    return-void
.end method

.method public onMeasure(Landroid/view/View;IIII)V
    .locals 2

    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-direct {p0, p3, v0, v1, p5}, Lcn/iwgang/countdownview/BackgroundCountdown;->initTimeTextBaselineAndTimeBgTopPadding(IIII)F

    move-result p3

    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    if-ne p5, v0, :cond_0

    sub-int/2addr p2, p4

    div-int/lit8 p2, p2, 0x2

    int-to-float p1, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    :goto_0
    iput p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mLeftPaddingSize:F

    .line 304
    invoke-direct {p0, p3}, Lcn/iwgang/countdownview/BackgroundCountdown;->initTimeBgRect(F)V

    return-void
.end method

.method public setIsShowTimeBgBorder(Z)V
    .locals 0

    .line 489
    iput-boolean p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowTimeBgBorder:Z

    .line 490
    iget-boolean p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowTimeBgBorder:Z

    if-eqz p1, :cond_0

    .line 491
    invoke-direct {p0}, Lcn/iwgang/countdownview/BackgroundCountdown;->initTimeBgBorderPaint()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 493
    iput-object p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 494
    iput p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    :goto_0
    return-void
.end method

.method public setIsShowTimeBgDivisionLine(Z)V
    .locals 0

    .line 466
    iput-boolean p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowTimeBgDivisionLine:Z

    .line 467
    iget-boolean p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowTimeBgDivisionLine:Z

    if-eqz p1, :cond_0

    .line 468
    invoke-direct {p0}, Lcn/iwgang/countdownview/BackgroundCountdown;->initTimeTextBgDivisionLinePaint()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 470
    iput-object p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLinePaint:Landroid/graphics/Paint;

    :goto_0
    return-void
.end method

.method public setTimeBgBorderColor(I)V
    .locals 1

    .line 499
    iput p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderColor:I

    .line 500
    iget-object p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    .line 501
    iget-object p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setTimeBgBorderRadius(F)V
    .locals 1

    .line 514
    iget-object v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/iwgang/countdownview/Utils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderRadius:F

    return-void
.end method

.method public setTimeBgBorderSize(F)V
    .locals 1

    .line 506
    iget-object v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/iwgang/countdownview/Utils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    .line 507
    iget-object p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isDrawBg:Z

    if-nez p1, :cond_0

    .line 508
    iget-object p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 509
    iget-object p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    return-void
.end method

.method public setTimeBgColor(I)V
    .locals 2

    .line 446
    iput p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgColor:I

    .line 447
    iget-object v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-nez p1, :cond_0

    .line 448
    iget-boolean p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowTimeBgBorder:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 449
    iput-boolean p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isDrawBg:Z

    .line 450
    iget-object p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderSize:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 451
    iget-object p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 453
    iput-boolean p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isDrawBg:Z

    .line 454
    iget-boolean p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->isShowTimeBgBorder:Z

    if-eqz p1, :cond_1

    .line 455
    iget-object p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 456
    iget-object p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgBorderPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTimeBgDivisionLineColor(I)V
    .locals 1

    .line 475
    iput p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLineColor:I

    .line 476
    iget-object p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLinePaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    .line 477
    iget-object p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLinePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLineColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setTimeBgDivisionLineSize(F)V
    .locals 1

    .line 482
    iget-object v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/iwgang/countdownview/Utils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLineSize:F

    .line 483
    iget-object p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLinePaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    .line 484
    iget-object p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLinePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgDivisionLineSize:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    return-void
.end method

.method public setTimeBgRadius(F)V
    .locals 1

    .line 462
    iget-object v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/iwgang/countdownview/Utils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgRadius:F

    return-void
.end method

.method public setTimeBgSize(F)V
    .locals 1

    .line 441
    iget-object v0, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/iwgang/countdownview/Utils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/iwgang/countdownview/BackgroundCountdown;->mTimeBgSize:F

    return-void
.end method
