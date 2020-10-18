.class public Lcom/eltechs/axs/Mouse;
.super Ljava/lang/Object;
.source "Mouse.java"


# instance fields
.field eventReporter:Lcom/eltechs/axs/PointerEventReporter;

.field mouseButton:I


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/PointerEventReporter;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/eltechs/axs/Mouse;->mouseButton:I

    .line 18
    iput-object p1, p0, Lcom/eltechs/axs/Mouse;->eventReporter:Lcom/eltechs/axs/PointerEventReporter;

    return-void
.end method

.method private getMouseButton(Landroid/view/MotionEvent;)I
    .locals 1

    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p1, 0x3

    return p1

    :pswitch_1
    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private pressMouseButton(Landroid/view/MotionEvent;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Lcom/eltechs/axs/Mouse;->releaseMouseButton()V

    .line 108
    invoke-direct {p0, p1}, Lcom/eltechs/axs/Mouse;->getMouseButton(Landroid/view/MotionEvent;)I

    move-result p1

    iput p1, p0, Lcom/eltechs/axs/Mouse;->mouseButton:I

    .line 109
    iget p1, p0, Lcom/eltechs/axs/Mouse;->mouseButton:I

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/eltechs/axs/Mouse;->eventReporter:Lcom/eltechs/axs/PointerEventReporter;

    iget v0, p0, Lcom/eltechs/axs/Mouse;->mouseButton:I

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/PointerEventReporter;->buttonPressed(I)V

    :cond_0
    return-void
.end method

.method private releaseMouseButton()V
    .locals 2

    .line 120
    iget v0, p0, Lcom/eltechs/axs/Mouse;->mouseButton:I

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/eltechs/axs/Mouse;->eventReporter:Lcom/eltechs/axs/PointerEventReporter;

    iget v1, p0, Lcom/eltechs/axs/Mouse;->mouseButton:I

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/PointerEventReporter;->buttonReleased(I)V

    const/4 v0, 0x0

    .line 123
    iput v0, p0, Lcom/eltechs/axs/Mouse;->mouseButton:I

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMouseEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 39
    :pswitch_1
    iget-object v1, p0, Lcom/eltechs/axs/Mouse;->eventReporter:Lcom/eltechs/axs/PointerEventReporter;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {v1, v2, p1}, Lcom/eltechs/axs/PointerEventReporter;->pointerMove(FF)V

    goto :goto_0

    .line 34
    :pswitch_2
    iget-object v1, p0, Lcom/eltechs/axs/Mouse;->eventReporter:Lcom/eltechs/axs/PointerEventReporter;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {v1, v2, p1}, Lcom/eltechs/axs/PointerEventReporter;->pointerMove(FF)V

    goto :goto_0

    .line 45
    :pswitch_3
    iget-object v1, p0, Lcom/eltechs/axs/Mouse;->eventReporter:Lcom/eltechs/axs/PointerEventReporter;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {v1, v2, p1}, Lcom/eltechs/axs/PointerEventReporter;->pointerMove(FF)V

    goto :goto_0

    .line 59
    :pswitch_4
    iget-object v1, p0, Lcom/eltechs/axs/Mouse;->eventReporter:Lcom/eltechs/axs/PointerEventReporter;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {v1, v2, p1}, Lcom/eltechs/axs/PointerEventReporter;->pointerMove(FF)V

    .line 60
    invoke-direct {p0}, Lcom/eltechs/axs/Mouse;->releaseMouseButton()V

    goto :goto_0

    .line 51
    :pswitch_5
    iget-object v1, p0, Lcom/eltechs/axs/Mouse;->eventReporter:Lcom/eltechs/axs/PointerEventReporter;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/eltechs/axs/PointerEventReporter;->pointerMove(FF)V

    .line 52
    invoke-direct {p0, p1}, Lcom/eltechs/axs/Mouse;->pressMouseButton(Landroid/view/MotionEvent;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
