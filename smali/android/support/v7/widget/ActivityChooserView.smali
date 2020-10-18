.class public Landroid/support/v7/widget/ActivityChooserView;
.super Landroid/view/ViewGroup;
.source "ActivityChooserView.java"

# interfaces
.implements Landroid/support/v7/widget/ActivityChooserModel$ActivityChooserModelClient;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActivityChooserView$InnerLayout;,
        Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;,
        Landroid/support/v7/widget/ActivityChooserView$Callbacks;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActivityChooserView"


# instance fields
.field private final mActivityChooserContent:Landroid/view/View;

.field private final mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

.field final mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

.field private final mCallbacks:Landroid/support/v7/widget/ActivityChooserView$Callbacks;

.field private mDefaultActionButtonContentDescription:I

.field final mDefaultActivityButton:Landroid/widget/FrameLayout;

.field private final mDefaultActivityButtonImage:Landroid/widget/ImageView;

.field final mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

.field private final mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

.field mInitialActivityCount:I

.field private mIsAttachedToWindow:Z

.field mIsSelectingDefaultActivity:Z

.field private final mListPopupMaxWidth:I

.field private mListPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

.field final mModelDataSetObserver:Landroid/database/DataSetObserver;

.field mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field mProvider:Landroid/support/v4/view/ActionProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 199
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 209
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 220
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 133
    new-instance v0, Landroid/support/v7/widget/ActivityChooserView$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ActivityChooserView$1;-><init>(Landroid/support/v7/widget/ActivityChooserView;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mModelDataSetObserver:Landroid/database/DataSetObserver;

    .line 147
    new-instance v0, Landroid/support/v7/widget/ActivityChooserView$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ActivityChooserView$2;-><init>(Landroid/support/v7/widget/ActivityChooserView;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    const/4 v0, 0x4

    .line 181
    iput v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mInitialActivityCount:I

    .line 222
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ActivityChooserView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 225
    sget p3, Landroid/support/v7/appcompat/R$styleable;->ActivityChooserView_initialActivityCount:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/widget/ActivityChooserView;->mInitialActivityCount:I

    .line 229
    sget p3, Landroid/support/v7/appcompat/R$styleable;->ActivityChooserView_expandActivityOverflowButtonDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 232
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 234
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 235
    sget v0, Landroid/support/v7/appcompat/R$layout;->abc_activity_chooser_view:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 237
    new-instance p2, Landroid/support/v7/widget/ActivityChooserView$Callbacks;

    invoke-direct {p2, p0}, Landroid/support/v7/widget/ActivityChooserView$Callbacks;-><init>(Landroid/support/v7/widget/ActivityChooserView;)V

    iput-object p2, p0, Landroid/support/v7/widget/ActivityChooserView;->mCallbacks:Landroid/support/v7/widget/ActivityChooserView$Callbacks;

    .line 239
    sget p2, Landroid/support/v7/appcompat/R$id;->activity_chooser_view_content:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/ActivityChooserView;->mActivityChooserContent:Landroid/view/View;

    .line 240
    iget-object p2, p0, Landroid/support/v7/widget/ActivityChooserView;->mActivityChooserContent:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/ActivityChooserView;->mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

    .line 242
    sget p2, Landroid/support/v7/appcompat/R$id;->default_activity_button:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    .line 243
    iget-object p2, p0, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mCallbacks:Landroid/support/v7/widget/ActivityChooserView$Callbacks;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object p2, p0, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mCallbacks:Landroid/support/v7/widget/ActivityChooserView$Callbacks;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 245
    iget-object p2, p0, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    sget v0, Landroid/support/v7/appcompat/R$id;->image:I

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButtonImage:Landroid/widget/ImageView;

    .line 247
    sget p2, Landroid/support/v7/appcompat/R$id;->expand_activities_button:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 248
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mCallbacks:Landroid/support/v7/widget/ActivityChooserView$Callbacks;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    new-instance v0, Landroid/support/v7/widget/ActivityChooserView$3;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ActivityChooserView$3;-><init>(Landroid/support/v7/widget/ActivityChooserView;)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 256
    new-instance v0, Landroid/support/v7/widget/ActivityChooserView$4;

    invoke-direct {v0, p0, p2}, Landroid/support/v7/widget/ActivityChooserView$4;-><init>(Landroid/support/v7/widget/ActivityChooserView;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 274
    iput-object p2, p0, Landroid/support/v7/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    .line 275
    sget v0, Landroid/support/v7/appcompat/R$id;->image:I

    .line 276
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Landroid/support/v7/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    .line 277
    iget-object p2, p0, Landroid/support/v7/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    new-instance p2, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-direct {p2, p0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;-><init>(Landroid/support/v7/widget/ActivityChooserView;)V

    iput-object p2, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    .line 280
    iget-object p2, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    new-instance p3, Landroid/support/v7/widget/ActivityChooserView$5;

    invoke-direct {p3, p0}, Landroid/support/v7/widget/ActivityChooserView$5;-><init>(Landroid/support/v7/widget/ActivityChooserView;)V

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 288
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 289
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x2

    sget p3, Landroid/support/v7/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    .line 290
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 289
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/ActivityChooserView;->mListPopupMaxWidth:I

    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 2

    .line 409
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V

    .line 411
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getDataModel()Landroid/support/v7/widget/ActivityChooserModel;
    .locals 1

    .line 478
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v0

    return-object v0
.end method

.method getListPopupWindow()Landroid/support/v7/widget/ListPopupWindow;
    .locals 2

    .line 522
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    if-nez v0, :cond_0

    .line 523
    new-instance v0, Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    .line 524
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 525
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 526
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->setModal(Z)V

    .line 527
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->mCallbacks:Landroid/support/v7/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 528
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->mCallbacks:Landroid/support/v7/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 530
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    return-object v0
.end method

.method public isShowingPopup()Z
    .locals 1

    .line 425
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 430
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 431
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->mModelDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActivityChooserModel;->registerObserver(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    .line 435
    iput-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 440
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 441
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->mModelDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActivityChooserModel;->unregisterObserver(Ljava/lang/Object;)V

    .line 445
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 447
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 449
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 450
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->dismissPopup()Z

    :cond_2
    const/4 v0, 0x0

    .line 452
    iput-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 471
    iget-object p1, p0, Landroid/support/v7/widget/ActivityChooserView;->mActivityChooserContent:Landroid/view/View;

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 472
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->isShowingPopup()Z

    move-result p1

    if-nez p1, :cond_0

    .line 473
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->dismissPopup()Z

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 457
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mActivityChooserContent:Landroid/view/View;

    .line 461
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 465
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/widget/ActivityChooserView;->measureChild(Landroid/view/View;II)V

    .line 466
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/ActivityChooserView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setActivityChooserModel(Landroid/support/v7/widget/ActivityChooserModel;)V
    .locals 1

    .line 298
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->setDataModel(Landroid/support/v7/widget/ActivityChooserModel;)V

    .line 299
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->isShowingPopup()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 300
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->dismissPopup()Z

    .line 301
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->showPopup()Z

    :cond_0
    return-void
.end method

.method public setDefaultActionButtonContentDescription(I)V
    .locals 0

    .line 513
    iput p1, p0, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    return-void
.end method

.method public setExpandActivityOverflowButtonContentDescription(I)V
    .locals 1

    .line 331
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 332
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 317
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setInitialActivityCount(I)V
    .locals 0

    .line 499
    iput p1, p0, Landroid/support/v7/widget/ActivityChooserView;->mInitialActivityCount:I

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 487
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setProvider(Landroid/support/v4/view/ActionProvider;)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 341
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserView;->mProvider:Landroid/support/v4/view/ActionProvider;

    return-void
.end method

.method public showPopup()Z
    .locals 2

    .line 350
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    .line 354
    iget v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mInitialActivityCount:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActivityChooserView;->showPopupUnchecked(I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method showPopupUnchecked(I)V
    .locals 5

    .line 364
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 365
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No data model. Did you call #setDataModel?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 368
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 370
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    .line 371
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 373
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v3}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getActivityCount()I

    move-result v3

    const v4, 0x7fffffff

    if-eq p1, v4, :cond_2

    add-int v4, p1, v0

    if-le v3, v4, :cond_2

    .line 377
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowFooterView(Z)V

    .line 378
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    sub-int/2addr p1, v2

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->setMaxActivityCount(I)V

    goto :goto_1

    .line 380
    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowFooterView(Z)V

    .line 381
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->setMaxActivityCount(I)V

    .line 384
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object p1

    .line 385
    invoke-virtual {p1}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_6

    .line 386
    iget-boolean v3, p0, Landroid/support/v7/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    if-nez v3, :cond_4

    if-nez v0, :cond_3

    goto :goto_2

    .line 389
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0, v1, v1}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowDefaultActivity(ZZ)V

    goto :goto_3

    .line 387
    :cond_4
    :goto_2
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v3, v2, v0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowDefaultActivity(ZZ)V

    .line 391
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->measureContentWidth()I

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/ActivityChooserView;->mListPopupMaxWidth:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 392
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ListPopupWindow;->setContentWidth(I)V

    .line 393
    invoke-virtual {p1}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 394
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_5

    .line 395
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ActionProvider;->subUiVisibilityChanged(Z)V

    .line 397
    :cond_5
    invoke-virtual {p1}, Landroid/support/v7/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Landroid/support/v7/appcompat/R$string;->abc_activitychooserview_choose_application:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 399
    invoke-virtual {p1}, Landroid/support/v7/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    return-void
.end method

.method updateAppearance()V
    .locals 6

    .line 538
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    .line 539
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_0

    .line 541
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 544
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getActivityCount()I

    move-result v0

    .line 545
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v3}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getHistorySize()I

    move-result v3

    if-eq v0, v2, :cond_2

    if-le v0, v2, :cond_1

    if-lez v3, :cond_1

    goto :goto_1

    .line 558
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 547
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 549
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 550
    iget-object v4, p0, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 551
    iget v4, p0, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    if-eqz v4, :cond_3

    .line 552
    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 553
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 555
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 561
    :cond_3
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 562
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mActivityChooserContent:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 564
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mActivityChooserContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    return-void
.end method
