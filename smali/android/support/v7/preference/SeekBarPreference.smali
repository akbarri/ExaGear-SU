.class public Landroid/support/v7/preference/SeekBarPreference;
.super Landroid/support/v7/preference/Preference;
.source "SeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/SeekBarPreference$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeekBarPreference"


# instance fields
.field private mAdjustable:Z

.field private mMax:I

.field private mMin:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekBarIncrement:I

.field private mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

.field private mSeekBarValue:I

.field private mSeekBarValueTextView:Landroid/widget/TextView;

.field private mShowSeekBarValue:Z

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 140
    sget v0, Landroid/support/v7/preference/R$attr;->seekBarPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    new-instance v0, Landroid/support/v7/preference/SeekBarPreference$1;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/SeekBarPreference$1;-><init>(Landroid/support/v7/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 88
    new-instance v0, Landroid/support/v7/preference/SeekBarPreference$2;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/SeekBarPreference$2;-><init>(Landroid/support/v7/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

    .line 119
    sget-object v0, Landroid/support/v7/preference/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 127
    sget p2, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_min:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    .line 128
    sget p2, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_android_max:I

    const/16 p4, 0x64

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/SeekBarPreference;->setMax(I)V

    .line 129
    sget p2, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_seekBarIncrement:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/SeekBarPreference;->setSeekBarIncrement(I)V

    .line 130
    sget p2, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_adjustable:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/preference/SeekBarPreference;->mAdjustable:Z

    .line 131
    sget p2, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_showSeekBarValue:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/preference/SeekBarPreference;->mShowSeekBarValue:Z

    .line 132
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/preference/SeekBarPreference;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Landroid/support/v7/preference/SeekBarPreference;->mTrackingTouch:Z

    return p0
.end method

.method static synthetic access$002(Landroid/support/v7/preference/SeekBarPreference;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mTrackingTouch:Z

    return p1
.end method

.method static synthetic access$100(Landroid/support/v7/preference/SeekBarPreference;Landroid/widget/SeekBar;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroid/support/v7/preference/SeekBarPreference;->syncValueInternal(Landroid/widget/SeekBar;)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v7/preference/SeekBarPreference;)I
    .locals 0

    .line 44
    iget p0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    return p0
.end method

.method static synthetic access$300(Landroid/support/v7/preference/SeekBarPreference;)I
    .locals 0

    .line 44
    iget p0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    return p0
.end method

.method static synthetic access$400(Landroid/support/v7/preference/SeekBarPreference;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Landroid/support/v7/preference/SeekBarPreference;->mAdjustable:Z

    return p0
.end method

.method static synthetic access$500(Landroid/support/v7/preference/SeekBarPreference;)Landroid/widget/SeekBar;
    .locals 0

    .line 44
    iget-object p0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method private setValueInternal(IZ)V
    .locals 2

    .line 257
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    if-ge p1, v0, :cond_0

    .line 258
    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    .line 260
    :cond_0
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_1

    .line 261
    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    .line 264
    :cond_1
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    if-eq p1, v0, :cond_3

    .line 265
    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    .line 266
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SeekBarPreference;->persistInt(I)Z

    if-eqz p2, :cond_3

    .line 271
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    :cond_3
    return-void
.end method

.method private syncValueInternal(Landroid/widget/SeekBar;)V
    .locals 2

    .line 285
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/2addr v0, v1

    .line 286
    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    if-eq v0, v1, :cond_1

    .line 287
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 288
    invoke-direct {p0, v0, p1}, Landroid/support/v7/preference/SeekBarPreference;->setValueInternal(IZ)V

    goto :goto_0

    .line 290
    :cond_0
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .line 241
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .line 205
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    return v0
.end method

.method public final getSeekBarIncrement()I
    .locals 1

    .line 225
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 277
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    return v0
.end method

.method public isAdjustable()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mAdjustable:Z

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    .line 149
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 150
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 151
    sget v0, Landroid/support/v7/preference/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 152
    sget v0, Landroid/support/v7/preference/R$id;->seekbar_value:I

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    .line 153
    iget-boolean p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mShowSeekBarValue:Z

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 157
    iput-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    .line 160
    :goto_0
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez p1, :cond_1

    const-string p1, "SeekBarPreference"

    const-string v0, "SeekBar view is null in onBindViewHolder."

    .line 161
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 164
    :cond_1
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 165
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 170
    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    if-eqz p1, :cond_2

    .line 171
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setKeyProgressIncrement(I)V

    goto :goto_1

    .line 173
    :cond_2
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getKeyProgressIncrement()I

    move-result p1

    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    .line 176
    :goto_1
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 177
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 178
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_3
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 313
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/support/v7/preference/SeekBarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 320
    :cond_0
    check-cast p1, Landroid/support/v7/preference/SeekBarPreference$SavedState;

    .line 321
    invoke-virtual {p1}, Landroid/support/v7/preference/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 322
    iget v0, p1, Landroid/support/v7/preference/SeekBarPreference$SavedState;->seekBarValue:I

    iput v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    .line 323
    iget v0, p1, Landroid/support/v7/preference/SeekBarPreference$SavedState;->min:I

    iput v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    .line 324
    iget p1, p1, Landroid/support/v7/preference/SeekBarPreference$SavedState;->max:I

    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    .line 325
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 297
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 298
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 304
    :cond_0
    new-instance v1, Landroid/support/v7/preference/SeekBarPreference$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v7/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 305
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    iput v0, v1, Landroid/support/v7/preference/SeekBarPreference$SavedState;->seekBarValue:I

    .line 306
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    iput v0, v1, Landroid/support/v7/preference/SeekBarPreference$SavedState;->min:I

    .line 307
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    iput v0, v1, Landroid/support/v7/preference/SeekBarPreference$SavedState;->max:I

    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 185
    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SeekBarPreference;->getPersistedInt(I)I

    move-result p1

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .line 186
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 185
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SeekBarPreference;->setValue(I)V

    return-void
.end method

.method public setAdjustable(Z)V
    .locals 0

    .line 245
    iput-boolean p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mAdjustable:Z

    return-void
.end method

.method public final setMax(I)V
    .locals 1

    .line 209
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    if-ge p1, v0, :cond_0

    .line 210
    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    .line 212
    :cond_0
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_1

    .line 213
    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    .line 214
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    :cond_1
    return-void
.end method

.method public setMin(I)V
    .locals 1

    .line 195
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    .line 196
    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    .line 198
    :cond_0
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    if-eq p1, v0, :cond_1

    .line 199
    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    .line 200
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    :cond_1
    return-void
.end method

.method public final setSeekBarIncrement(I)V
    .locals 2

    .line 234
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    if-eq p1, v0, :cond_0

    .line 235
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    .line 236
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x1

    .line 253
    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/SeekBarPreference;->setValueInternal(IZ)V

    return-void
.end method
