.class final Landroid/support/v7/view/menu/CascadingMenuPopup;
.super Landroid/support/v7/view/menu/MenuPopup;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;,
        Landroid/support/v7/view/menu/CascadingMenuPopup$HorizPosition;
    }
.end annotation


# static fields
.field static final HORIZ_POSITION_LEFT:I = 0x0

.field static final HORIZ_POSITION_RIGHT:I = 0x1

.field static final SUBMENU_TIMEOUT_MS:I = 0xc8


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private final mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private mForceShowIcon:Z

.field private final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasXOffset:Z

.field private mHasYOffset:Z

.field private mLastPosition:I

.field private final mMenuItemHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

.field private final mMenuMaxWidth:I

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private final mPendingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/view/menu/MenuBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field private mRawDropDownGravity:I

.field mShouldCloseImmediately:Z

.field private mShowTitle:Z

.field final mShowingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;",
            ">;"
        }
    .end annotation
.end field

.field mShownAnchorView:Landroid/view/View;

.field final mSubMenuHoverHandler:Landroid/os/Handler;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 218
    invoke-direct {p0}, Landroid/support/v7/view/menu/MenuPopup;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    .line 95
    new-instance v0, Landroid/support/v7/view/menu/CascadingMenuPopup$1;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/CascadingMenuPopup$1;-><init>(Landroid/support/v7/view/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 116
    new-instance v0, Landroid/support/v7/view/menu/CascadingMenuPopup$2;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/CascadingMenuPopup$2;-><init>(Landroid/support/v7/view/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 134
    new-instance v0, Landroid/support/v7/view/menu/CascadingMenuPopup$3;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/CascadingMenuPopup$3;-><init>(Landroid/support/v7/view/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mMenuItemHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    const/4 v0, 0x0

    .line 194
    iput v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    .line 195
    iput v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    .line 219
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    .line 220
    iput-object p2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 221
    iput p3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    .line 222
    iput p4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPopupStyleRes:I

    .line 223
    iput-boolean p5, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mOverflowOnly:Z

    .line 225
    iput-boolean v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    .line 226
    invoke-direct {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    move-result p2

    iput p2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 229
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x2

    sget p3, Landroid/support/v7/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    .line 230
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 229
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    .line 232
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/view/menu/CascadingMenuPopup;)Landroid/view/ViewTreeObserver;
    .locals 0

    .line 63
    iget-object p0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object p0
.end method

.method static synthetic access$002(Landroid/support/v7/view/menu/CascadingMenuPopup;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;
    .locals 0

    .line 63
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object p1
.end method

.method static synthetic access$100(Landroid/support/v7/view/menu/CascadingMenuPopup;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 63
    iget-object p0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method private createPopupWindow()Landroid/support/v7/widget/MenuPopupWindow;
    .locals 5

    .line 241
    new-instance v0, Landroid/support/v7/widget/MenuPopupWindow;

    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    iget v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    iget v3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPopupStyleRes:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/support/v7/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 243
    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mMenuItemHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setHoverListener(Landroid/support/v7/widget/MenuItemHoverListener;)V

    .line 244
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 245
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 246
    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 247
    iget v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setDropDownGravity(I)V

    const/4 v1, 0x1

    .line 248
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setModal(Z)V

    const/4 v1, 0x2

    .line 249
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setInputMethodMode(I)V

    return-object v0
.end method

.method private findIndexOfAddedMenu(Landroid/support/v7/view/menu/MenuBuilder;)I
    .locals 3
    .param p1    # Landroid/support/v7/view/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 651
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 652
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 653
    iget-object v2, v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private findMenuItemForSubmenu(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuBuilder;)Landroid/view/MenuItem;
    .locals 4
    .param p1    # Landroid/support/v7/view/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/view/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 512
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 513
    invoke-virtual {p1, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 514
    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    if-ne p2, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private findParentViewForSubmenu(Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/support/v7/view/menu/MenuBuilder;)Landroid/view/View;
    .locals 7
    .param p1    # Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/view/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 533
    iget-object v0, p1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {p0, v0, p2}, Landroid/support/v7/view/menu/CascadingMenuPopup;->findMenuItemForSubmenu(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuBuilder;)Landroid/view/MenuItem;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 542
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 543
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 544
    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 545
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .line 546
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 547
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuAdapter;

    goto :goto_0

    .line 550
    :cond_1
    check-cast v1, Landroid/support/v7/view/menu/MenuAdapter;

    move v2, v3

    .line 555
    :goto_0
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuAdapter;->getCount()I

    move-result v4

    :goto_1
    const/4 v5, -0x1

    if-ge v3, v4, :cond_3

    .line 556
    invoke-virtual {v1, v3}, Landroid/support/v7/view/menu/MenuAdapter;->getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v6

    if-ne p2, v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_2
    if-ne v3, v5, :cond_4

    return-object v0

    :cond_4
    add-int/2addr v3, v2

    .line 570
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p2

    sub-int/2addr v3, p2

    if-ltz v3, :cond_6

    .line 571
    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result p2

    if-lt v3, p2, :cond_5

    goto :goto_3

    .line 576
    :cond_5
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_3
    return-object v0
.end method

.method private getInitialMenuPosition()I
    .locals 2

    .line 311
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method private getNextMenuPosition(I)I
    .locals 6

    .line 325
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    .line 327
    new-array v1, v1, [I

    .line 328
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 330
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 331
    iget-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 333
    iget v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    const/4 v5, 0x0

    if-ne v4, v2, :cond_1

    .line 334
    aget v1, v1, v5

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    .line 335
    iget p1, v3, Landroid/graphics/Rect;->right:I

    if-le v1, p1, :cond_0

    return v5

    :cond_0
    return v2

    .line 340
    :cond_1
    aget v0, v1, v5

    sub-int/2addr v0, p1

    if-gez v0, :cond_2

    return v2

    :cond_2
    return v5
.end method

.method private showMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 14
    .param p1    # Landroid/support/v7/view/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 365
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 366
    new-instance v1, Landroid/support/v7/view/menu/MenuAdapter;

    iget-boolean v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mOverflowOnly:Z

    invoke-direct {v1, p1, v0, v2}, Landroid/support/v7/view/menu/MenuAdapter;-><init>(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V

    .line 372
    invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    if-eqz v2, :cond_0

    .line 374
    invoke-virtual {v1, v3}, Landroid/support/v7/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    goto :goto_0

    .line 375
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 377
    invoke-static {p1}, Landroid/support/v7/view/menu/MenuPopup;->shouldPreserveIconSpacing(Landroid/support/v7/view/menu/MenuBuilder;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    .line 381
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    iget v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4}, Landroid/support/v7/view/menu/CascadingMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v2

    .line 382
    invoke-direct {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->createPopupWindow()Landroid/support/v7/widget/MenuPopupWindow;

    move-result-object v4

    .line 383
    invoke-virtual {v4, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 384
    invoke-virtual {v4, v2}, Landroid/support/v7/widget/MenuPopupWindow;->setContentWidth(I)V

    .line 385
    iget v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setDropDownGravity(I)V

    .line 389
    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 390
    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    iget-object v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 391
    invoke-direct {p0, v1, p1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->findParentViewForSubmenu(Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/support/v7/view/menu/MenuBuilder;)Landroid/view/View;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v1, v5

    move-object v6, v1

    :goto_1
    const/4 v7, 0x0

    if-eqz v6, :cond_9

    .line 399
    invoke-virtual {v4, v7}, Landroid/support/v7/widget/MenuPopupWindow;->setTouchModal(Z)V

    .line 400
    invoke-virtual {v4, v5}, Landroid/support/v7/widget/MenuPopupWindow;->setEnterTransition(Ljava/lang/Object;)V

    .line 402
    invoke-direct {p0, v2}, Landroid/support/v7/view/menu/CascadingMenuPopup;->getNextMenuPosition(I)I

    move-result v8

    if-ne v8, v3, :cond_3

    move v9, v3

    goto :goto_2

    :cond_3
    move v9, v7

    .line 404
    :goto_2
    iput v8, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    .line 408
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    const/4 v11, 0x5

    if-lt v8, v10, :cond_4

    .line 411
    invoke-virtual {v4, v6}, Landroid/support/v7/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    move v8, v7

    move v12, v8

    goto :goto_3

    :cond_4
    const/4 v8, 0x2

    .line 424
    new-array v10, v8, [I

    .line 425
    iget-object v12, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v12, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 427
    new-array v8, v8, [I

    .line 428
    invoke-virtual {v6, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 434
    iget v12, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    and-int/lit8 v12, v12, 0x7

    if-ne v12, v11, :cond_5

    .line 435
    aget v12, v10, v7

    iget-object v13, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    aput v12, v10, v7

    .line 436
    aget v12, v8, v7

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    aput v12, v8, v7

    .line 441
    :cond_5
    aget v12, v8, v7

    aget v13, v10, v7

    sub-int/2addr v12, v13

    .line 442
    aget v8, v8, v3

    aget v10, v10, v3

    sub-int/2addr v8, v10

    .line 450
    :goto_3
    iget v10, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    and-int/2addr v10, v11

    if-ne v10, v11, :cond_7

    if-eqz v9, :cond_6

    add-int/2addr v12, v2

    goto :goto_4

    .line 454
    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v12, v2

    goto :goto_4

    :cond_7
    if-eqz v9, :cond_8

    .line 458
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v12, v2

    goto :goto_4

    :cond_8
    sub-int/2addr v12, v2

    .line 463
    :goto_4
    invoke-virtual {v4, v12}, Landroid/support/v7/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 466
    invoke-virtual {v4, v3}, Landroid/support/v7/widget/MenuPopupWindow;->setOverlapAnchor(Z)V

    .line 467
    invoke-virtual {v4, v8}, Landroid/support/v7/widget/MenuPopupWindow;->setVerticalOffset(I)V

    goto :goto_5

    .line 469
    :cond_9
    iget-boolean v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mHasXOffset:Z

    if-eqz v2, :cond_a

    .line 470
    iget v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mXOffset:I

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 472
    :cond_a
    iget-boolean v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mHasYOffset:Z

    if-eqz v2, :cond_b

    .line 473
    iget v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mYOffset:I

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/MenuPopupWindow;->setVerticalOffset(I)V

    .line 475
    :cond_b
    invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 476
    invoke-virtual {v4, v2}, Landroid/support/v7/widget/MenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 479
    :goto_5
    new-instance v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget v3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    invoke-direct {v2, v4, p1, v3}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;-><init>(Landroid/support/v7/widget/MenuPopupWindow;Landroid/support/v7/view/menu/MenuBuilder;I)V

    .line 480
    iget-object v3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    invoke-virtual {v4}, Landroid/support/v7/widget/MenuPopupWindow;->show()V

    .line 484
    invoke-virtual {v4}, Landroid/support/v7/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 485
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v1, :cond_c

    .line 488
    iget-boolean v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowTitle:Z

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 489
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_popup_menu_header_item_layout:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x1020016

    .line 491
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 492
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 493
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    invoke-virtual {v2, v0, v5, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 497
    invoke-virtual {v4}, Landroid/support/v7/widget/MenuPopupWindow;->show()V

    :cond_c
    return-void
.end method


# virtual methods
.method public addMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 1

    .line 350
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 352
    invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->showMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    goto :goto_0

    .line 355
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method protected closeMenuOnSubMenuOpened()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 4

    .line 283
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 285
    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    new-array v2, v0, [Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 286
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 288
    aget-object v2, v1, v0

    .line 289
    iget-object v3, v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v3}, Landroid/support/v7/widget/MenuPopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    iget-object v2, v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v2}, Landroid/support/v7/widget/MenuPopupWindow;->dismiss()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 2

    .line 761
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    .line 763
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isShowing()Z
    .locals 2

    .line 584
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/MenuPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 5

    .line 663
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->findIndexOfAddedMenu(Landroid/support/v7/view/menu/MenuBuilder;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 670
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 671
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 672
    iget-object v1, v1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1, v3}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 676
    :cond_1
    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 677
    iget-object v1, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1, p0}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 678
    iget-boolean v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 680
    iget-object v1, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/MenuPopupWindow;->setExitTransition(Ljava/lang/Object;)V

    .line 681
    iget-object v1, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/MenuPopupWindow;->setAnimationStyle(I)V

    .line 683
    :cond_2
    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/MenuPopupWindow;->dismiss()V

    .line 685
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 687
    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget v1, v1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->position:I

    iput v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    goto :goto_0

    .line 689
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    move-result v1

    iput v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    :goto_0
    if-nez v0, :cond_7

    .line 694
    invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->dismiss()V

    .line 696
    iget-object p2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz p2, :cond_4

    .line 697
    iget-object p2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 700
    :cond_4
    iget-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_6

    .line 701
    iget-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 702
    iget-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object p2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 704
    :cond_5
    iput-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 706
    :cond_6
    iget-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object p2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 710
    iget-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {p1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_1

    :cond_7
    if-eqz p2, :cond_8

    .line 715
    iget-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 716
    iget-object p1, p1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p1, v3}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onDismiss()V
    .locals 5

    .line 595
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 596
    iget-object v3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 597
    iget-object v4, v3, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroid/support/v7/widget/MenuPopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 606
    iget-object v0, v3, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 298
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    .line 299
    invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .locals 4

    .line 625
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 626
    iget-object v3, v1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-ne p1, v3, :cond_0

    .line 628
    invoke-virtual {v1}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->requestFocus()Z

    return v2

    .line 633
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 634
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->addMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 636
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_2

    .line 637
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z

    :cond_2
    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 745
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 746
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 749
    iget p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 750
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 749
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    :cond_0
    return-void
.end method

.method public setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .locals 0

    .line 619
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    .line 237
    iput-boolean p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 736
    iget v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    if-eq v0, p1, :cond_0

    .line 737
    iput p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    .line 738
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 739
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 738
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    :cond_0
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1

    const/4 v0, 0x1

    .line 768
    iput-boolean v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mHasXOffset:Z

    .line 769
    iput p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mXOffset:I

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 756
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0

    .line 780
    iput-boolean p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowTitle:Z

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1

    const/4 v0, 0x1

    .line 774
    iput-boolean v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mHasYOffset:Z

    .line 775
    iput p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mYOffset:I

    return-void
.end method

.method public show()V
    .locals 2

    .line 255
    invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuBuilder;

    .line 261
    invoke-direct {p0, v1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->showMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 265
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 267
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 268
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 269
    :goto_1
    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_3

    .line 271
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 273
    :cond_3
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_4
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1

    .line 612
    iget-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 613
    invoke-virtual {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Landroid/support/v7/view/menu/MenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method
