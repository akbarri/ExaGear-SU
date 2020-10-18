.class public Lcom/eltechs/axs/FloatButton;
.super Landroid/support/v7/widget/AppCompatButton;
.source "FloatButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private eventListener:Lcom/eltechs/axs/ButtonEventListener;

.field private oX:F

.field private oY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/eltechs/axs/ButtonEventListener;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0800d4

    .line 17
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/FloatButton;->setBackgroundResource(I)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 18
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/FloatButton;->setAlpha(F)V

    .line 19
    iput-object p2, p0, Lcom/eltechs/axs/FloatButton;->eventListener:Lcom/eltechs/axs/ButtonEventListener;

    .line 20
    invoke-virtual {p0, p0}, Lcom/eltechs/axs/FloatButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 26
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 28
    invoke-super {p0, v2}, Landroid/support/v7/widget/AppCompatButton;->setPressed(Z)V

    .line 29
    iget-object v0, p0, Lcom/eltechs/axs/FloatButton;->eventListener:Lcom/eltechs/axs/ButtonEventListener;

    invoke-interface {v0}, Lcom/eltechs/axs/ButtonEventListener;->pressed()V

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/eltechs/axs/FloatButton;->oX:F

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/eltechs/axs/FloatButton;->oY:F

    return v2

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 40
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 41
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 43
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget v7, p0, Lcom/eltechs/axs/FloatButton;->oX:F

    add-float/2addr v6, v7

    .line 44
    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v7, v7

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    sub-int/2addr v5, v1

    .line 45
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v5, v1

    int-to-float v1, v5

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 47
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v5, p0, Lcom/eltechs/axs/FloatButton;->oY:F

    add-float/2addr p2, v5

    .line 48
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v5, v5

    invoke-static {v5, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    sub-int/2addr v4, v3

    .line 49
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v4, v0

    int-to-float v0, v4

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 52
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return v2

    :cond_1
    if-ne v1, v2, :cond_2

    const/4 p1, 0x0

    .line 59
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setPressed(Z)V

    .line 60
    iget-object p1, p0, Lcom/eltechs/axs/FloatButton;->eventListener:Lcom/eltechs/axs/ButtonEventListener;

    invoke-interface {p1}, Lcom/eltechs/axs/ButtonEventListener;->released()V

    return v2

    .line 64
    :cond_2
    invoke-super {p0, p2}, Landroid/support/v7/widget/AppCompatButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
