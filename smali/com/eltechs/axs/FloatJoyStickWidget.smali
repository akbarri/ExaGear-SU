.class public Lcom/eltechs/axs/FloatJoyStickWidget;
.super Landroid/support/v7/widget/AppCompatButton;
.source "FloatJoyStickWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;
    }
.end annotation


# static fields
.field private static final measureTime:J = 0x3e8L

.field private static final mouseActionSleepMs:I = 0x32

.field private static final offsetY:I = 0x14

.field private static final radius:F = 120.0f

.field private static final radius2:F = 240.0f

.field private static final timer2Interval:I = 0xf


# instance fields
.field private buttonMain:I

.field private buttonSub:I

.field private gestureJoyStickMode:Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;

.field private mode:Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;

.field private mouseCenterX:I

.field private mouseCenterY:I

.field private moveStarted:Z

.field private originX:F

.field private originY:F

.field private pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

.field private startRawX:F

.field private startRawY:F

.field private timer:Lcom/eltechs/axs/helpers/OneShotTimer;

.field private timer2:Lcom/eltechs/axs/helpers/OneShotTimer;

.field private timer2Started:Z

.field private viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/PointerEventReporter;Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    .line 35
    sget-object p1, Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;->JOYSTICK_MODE_MAIN:Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;

    iput-object p1, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->mode:Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;

    const/4 p1, 0x1

    .line 36
    iput p1, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->buttonMain:I

    const/4 p1, 0x3

    .line 37
    iput p1, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->buttonSub:I

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->timer2Started:Z

    const p1, 0x7f0800d4

    .line 42
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/FloatJoyStickWidget;->setBackgroundResource(I)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 43
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/FloatJoyStickWidget;->setAlpha(F)V

    .line 44
    iput-object p2, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    .line 45
    iput-object p3, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

    .line 46
    iput-object p4, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->gestureJoyStickMode:Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;

    .line 47
    invoke-virtual {p0, p0}, Lcom/eltechs/axs/FloatJoyStickWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 48
    new-instance p1, Lcom/eltechs/axs/FloatJoyStickWidget$1;

    const-wide/16 p2, 0x3e8

    invoke-direct {p1, p0, p2, p3}, Lcom/eltechs/axs/FloatJoyStickWidget$1;-><init>(Lcom/eltechs/axs/FloatJoyStickWidget;J)V

    iput-object p1, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->timer:Lcom/eltechs/axs/helpers/OneShotTimer;

    .line 53
    new-instance p1, Lcom/eltechs/axs/FloatJoyStickWidget$2;

    const-wide/16 p2, 0xf

    invoke-direct {p1, p0, p2, p3}, Lcom/eltechs/axs/FloatJoyStickWidget$2;-><init>(Lcom/eltechs/axs/FloatJoyStickWidget;J)V

    iput-object p1, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->timer2:Lcom/eltechs/axs/helpers/OneShotTimer;

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/FloatJoyStickWidget;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/eltechs/axs/FloatJoyStickWidget;->pressed()V

    return-void
.end method

.method private active()Z
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->gestureJoyStickMode:Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;->getState()Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;

    move-result-object v0

    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;->JOYSTICK_MODE_ON:Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->mode:Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;

    sget-object v1, Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;->JOYSTICK_MODE_SUB:Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private pressed()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->mode:Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;

    sget-object v1, Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;->JOYSTICK_MODE_MAIN:Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;

    if-ne v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

    iget v1, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->buttonMain:I

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/PointerEventReporter;->buttonPressed(I)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->mode:Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;

    sget-object v1, Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;->JOYSTICK_MODE_SUB:Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;

    if-ne v0, v1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

    iget v1, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->buttonSub:I

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/PointerEventReporter;->buttonPressed(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private released()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->timer2:Lcom/eltechs/axs/helpers/OneShotTimer;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/OneShotTimer;->cancel()V

    .line 81
    iget-object v0, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->mode:Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;

    sget-object v1, Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;->JOYSTICK_MODE_MAIN:Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;

    if-ne v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

    iget v1, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->buttonMain:I

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/PointerEventReporter;->buttonReleased(I)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->mode:Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;

    sget-object v1, Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;->JOYSTICK_MODE_SUB:Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;

    if-ne v0, v1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

    iget v1, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->buttonSub:I

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/PointerEventReporter;->buttonReleased(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public mouseModeChanged(Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;)V
    .locals 2

    .line 103
    invoke-direct {p0}, Lcom/eltechs/axs/FloatJoyStickWidget;->released()V

    .line 104
    sget-object p1, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;->MOUSE_MODE_LEFT:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p2, p1, :cond_0

    .line 105
    iput v0, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->buttonMain:I

    .line 106
    iput v1, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->buttonSub:I

    goto :goto_0

    .line 108
    :cond_0
    iput v1, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->buttonMain:I

    .line 109
    iput v0, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->buttonSub:I

    .line 111
    :goto_0
    invoke-direct {p0}, Lcom/eltechs/axs/FloatJoyStickWidget;->active()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 112
    invoke-direct {p0}, Lcom/eltechs/axs/FloatJoyStickWidget;->pressed()V

    :cond_1
    return-void
.end method

.method public notifyTimeout()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatButton;->setPressed(Z)V

    .line 62
    iget-object v0, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->timer2:Lcom/eltechs/axs/helpers/OneShotTimer;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/OneShotTimer;->cancel()V

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->moveStarted:Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 119
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v1, :cond_0

    .line 121
    invoke-super {p0, v4}, Landroid/support/v7/widget/AppCompatButton;->setPressed(Z)V

    .line 122
    iget-object v0, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->gestureJoyStickMode:Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;

    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;->JOYSTICK_MODE_ON:Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;->setState(Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;)V

    .line 123
    iget-object v0, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getWidth()I

    move-result v0

    div-int/2addr v0, v3

    iput v0, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->mouseCenterX:I

    .line 124
    iget-object v0, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getHeight()I

    move-result v0

    div-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x14

    iput v0, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->mouseCenterY:I

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    iput v0, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->originX:F

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iput p1, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->originY:F

    .line 127
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->startRawX:F

    .line 128
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->startRawY:F

    .line 129
    iput-boolean v2, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->moveStarted:Z

    .line 130
    iget-object p1, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->timer:Lcom/eltechs/axs/helpers/OneShotTimer;

    invoke-virtual {p1}, Lcom/eltechs/axs/helpers/OneShotTimer;->start()Landroid/os/CountDownTimer;

    return v4

    :cond_0
    const-wide/16 v5, 0x0

    if-ne v1, v3, :cond_5

    .line 133
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->startRawX:F

    sub-float/2addr v1, v2

    .line 134
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->startRawY:F

    sub-float/2addr v2, v3

    .line 136
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v7, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->startRawX:F

    iget v8, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->startRawY:F

    invoke-static {v3, p2, v7, v8}, Lcom/eltechs/axs/GeometryHelpers;->distance(FFFF)F

    move-result p2

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v3, p2, v3

    if-lez v3, :cond_4

    .line 141
    iget-boolean v3, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->moveStarted:Z

    const/high16 v7, 0x42f00000    # 120.0f

    if-eqz v3, :cond_1

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 146
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 147
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 149
    iget v10, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->originX:F

    add-float/2addr v10, v1

    .line 150
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v1, v1

    add-float/2addr v1, v7

    invoke-static {v1, v10}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-int/2addr v9, p2

    .line 151
    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v9, p2

    int-to-float p2, v9

    sub-float/2addr p2, v7

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 153
    iget v1, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->originY:F

    add-float/2addr v1, v2

    .line 154
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v2, v2

    add-float/2addr v2, v7

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-int/2addr v8, v3

    .line 155
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v8, v0

    int-to-float v0, v8

    sub-float/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->timer:Lcom/eltechs/axs/helpers/OneShotTimer;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/OneShotTimer;->cancel()V

    .line 158
    iget-object v0, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

    iget v3, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->mouseCenterX:I

    int-to-float v3, v3

    const/high16 v8, 0x43700000    # 240.0f

    mul-float v9, v1, v8

    div-float/2addr v9, p2

    add-float/2addr v3, v9

    iget v9, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->mouseCenterY:I

    int-to-float v9, v9

    mul-float v8, v8, v2

    div-float/2addr v8, p2

    add-float/2addr v9, v8

    invoke-virtual {v0, v3, v9}, Lcom/eltechs/axs/PointerEventReporter;->pointerMove(FF)V

    .line 160
    iget-boolean v0, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->timer2Started:Z

    if-nez v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->timer2:Lcom/eltechs/axs/helpers/OneShotTimer;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/OneShotTimer;->start()Landroid/os/CountDownTimer;

    .line 162
    iput-boolean v4, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->timer2Started:Z

    :cond_2
    cmpl-float v0, p2, v7

    if-lez v0, :cond_3

    mul-float v1, v1, v7

    div-float/2addr v1, p2

    mul-float v2, v2, v7

    div-float/2addr v2, p2

    .line 168
    :cond_3
    iget p2, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->originX:F

    add-float/2addr p2, v1

    .line 169
    iget v0, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->originY:F

    add-float/2addr v0, v2

    .line 172
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 173
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 174
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 175
    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 176
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_4
    return v4

    :cond_5
    if-ne v1, v4, :cond_7

    .line 180
    iget-object p2, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->timer:Lcom/eltechs/axs/helpers/OneShotTimer;

    invoke-virtual {p2}, Lcom/eltechs/axs/helpers/OneShotTimer;->cancel()V

    .line 181
    invoke-super {p0, v2}, Landroid/support/v7/widget/AppCompatButton;->setPressed(Z)V

    .line 182
    iget-object p2, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->gestureJoyStickMode:Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;

    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;->JOYSTICK_MODE_OFF:Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;

    invoke-virtual {p2, v0}, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;->setState(Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;)V

    .line 183
    iget-boolean p2, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->moveStarted:Z

    if-nez p2, :cond_6

    .line 184
    iget-object p2, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->timer2:Lcom/eltechs/axs/helpers/OneShotTimer;

    invoke-virtual {p2}, Lcom/eltechs/axs/helpers/OneShotTimer;->cancel()V

    .line 185
    iput-boolean v2, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->timer2Started:Z

    .line 186
    invoke-direct {p0}, Lcom/eltechs/axs/FloatJoyStickWidget;->released()V

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->originX:F

    .line 188
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->originY:F

    .line 189
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 190
    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 194
    :cond_6
    iget-object p1, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->pointerEventReporter:Lcom/eltechs/axs/PointerEventReporter;

    iget p2, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->mouseCenterX:I

    int-to-float p2, p2

    iget v0, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->mouseCenterY:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Lcom/eltechs/axs/PointerEventReporter;->pointerMove(FF)V

    return v4

    .line 197
    :cond_7
    invoke-super {p0, p2}, Landroid/support/v7/widget/AppCompatButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setMode(Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->mode:Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;

    if-eq v0, p1, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/eltechs/axs/FloatJoyStickWidget;->released()V

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/eltechs/axs/FloatJoyStickWidget;->mode:Lcom/eltechs/axs/FloatJoyStickWidget$JoyStickMode;

    const-wide/16 v0, 0x32

    const/4 p1, 0x0

    .line 94
    :try_start_0
    invoke-static {v0, v1, p1}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :catch_0
    invoke-direct {p0}, Lcom/eltechs/axs/FloatJoyStickWidget;->active()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/eltechs/axs/FloatJoyStickWidget;->pressed()V

    :cond_1
    return-void
.end method
