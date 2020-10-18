.class public Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;
.super Landroid/view/View;
.source "TouchScreenControlsInputWidget.java"


# instance fields
.field private final MAX_FINGERS:I

.field private final configuration:Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;

.field private final keyboard:Lcom/eltechs/axs/Keyboard;

.field private final mouse:Lcom/eltechs/axs/Mouse;

.field private touchScreenControls:Lcom/eltechs/axs/TouchScreenControls;

.field private final userFingers:[Lcom/eltechs/axs/Finger;

.field private final xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/activities/XServerDisplayActivity;Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xa

    .line 27
    iput p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->MAX_FINGERS:I

    .line 29
    new-array p1, p1, [Lcom/eltechs/axs/Finger;

    iput-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->userFingers:[Lcom/eltechs/axs/Finger;

    .line 47
    invoke-virtual {p2}, Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;->getXServerFacade()Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    .line 48
    new-instance p1, Lcom/eltechs/axs/Mouse;

    new-instance v0, Lcom/eltechs/axs/PointerEventReporter;

    invoke-direct {v0, p2}, Lcom/eltechs/axs/PointerEventReporter;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V

    invoke-direct {p1, v0}, Lcom/eltechs/axs/Mouse;-><init>(Lcom/eltechs/axs/PointerEventReporter;)V

    iput-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->mouse:Lcom/eltechs/axs/Mouse;

    .line 49
    new-instance p1, Lcom/eltechs/axs/Keyboard;

    new-instance p2, Lcom/eltechs/axs/KeyEventReporter;

    iget-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-direct {p2, v0}, Lcom/eltechs/axs/KeyEventReporter;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;)V

    invoke-direct {p1, p2}, Lcom/eltechs/axs/Keyboard;-><init>(Lcom/eltechs/axs/KeyEventReporter;)V

    iput-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->keyboard:Lcom/eltechs/axs/Keyboard;

    .line 50
    iput-object p3, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->configuration:Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;

    const/4 p1, 0x1

    .line 51
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->setFocusable(Z)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->setFocusableInTouchMode(Z)V

    .line 54
    invoke-direct {p0}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->installKeyListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;)Lcom/eltechs/axs/xserver/ViewFacade;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->xServerFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    return-object p0
.end method

.method static synthetic access$100(Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;)Lcom/eltechs/axs/activities/XServerDisplayActivity;
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->getHost()Lcom/eltechs/axs/activities/XServerDisplayActivity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;)Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->configuration:Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;

    return-object p0
.end method

.method static synthetic access$300(Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;)Lcom/eltechs/axs/Keyboard;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->keyboard:Lcom/eltechs/axs/Keyboard;

    return-object p0
.end method

.method private getHost()Lcom/eltechs/axs/activities/XServerDisplayActivity;
    .locals 1

    .line 298
    invoke-virtual {p0}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/activities/XServerDisplayActivity;

    return-object v0
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 226
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-lt v1, v3, :cond_0

    return v4

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :goto_0
    :pswitch_1
    if-ge v5, v3, :cond_4

    .line 281
    iget-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->userFingers:[Lcom/eltechs/axs/Finger;

    aget-object p1, p1, v5

    if-eqz p1, :cond_1

    .line 283
    iget-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->touchScreenControls:Lcom/eltechs/axs/TouchScreenControls;

    iget-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->userFingers:[Lcom/eltechs/axs/Finger;

    aget-object v0, v0, v5

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/TouchScreenControls;->handleFingerUp(Lcom/eltechs/axs/Finger;)V

    .line 284
    iget-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->userFingers:[Lcom/eltechs/axs/Finger;

    aput-object v6, p1, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :goto_1
    :pswitch_2
    if-ge v5, v3, :cond_4

    .line 247
    iget-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->userFingers:[Lcom/eltechs/axs/Finger;

    aget-object v0, v0, v5

    if-eqz v0, :cond_3

    .line 249
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 252
    iget-object v1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->userFingers:[Lcom/eltechs/axs/Finger;

    aget-object v1, v1, v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/eltechs/axs/Finger;->update(FF)V

    .line 253
    iget-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->touchScreenControls:Lcom/eltechs/axs/TouchScreenControls;

    iget-object v1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->userFingers:[Lcom/eltechs/axs/Finger;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/TouchScreenControls;->handleFingerMove(Lcom/eltechs/axs/Finger;)V

    goto :goto_2

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->touchScreenControls:Lcom/eltechs/axs/TouchScreenControls;

    iget-object v1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->userFingers:[Lcom/eltechs/axs/Finger;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/TouchScreenControls;->handleFingerUp(Lcom/eltechs/axs/Finger;)V

    .line 261
    iget-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->userFingers:[Lcom/eltechs/axs/Finger;

    aput-object v6, v0, v5

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 270
    :pswitch_3
    iget-object v2, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->userFingers:[Lcom/eltechs/axs/Finger;

    aget-object v2, v2, v1

    if-eqz v2, :cond_4

    .line 272
    iget-object v2, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->userFingers:[Lcom/eltechs/axs/Finger;

    aget-object v2, v2, v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {v2, v3, p1}, Lcom/eltechs/axs/Finger;->release(FF)V

    .line 273
    iget-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->touchScreenControls:Lcom/eltechs/axs/TouchScreenControls;

    iget-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->userFingers:[Lcom/eltechs/axs/Finger;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/TouchScreenControls;->handleFingerUp(Lcom/eltechs/axs/Finger;)V

    .line 274
    iget-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->userFingers:[Lcom/eltechs/axs/Finger;

    aput-object v6, p1, v1

    goto :goto_3

    .line 239
    :pswitch_4
    iget-object v2, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->userFingers:[Lcom/eltechs/axs/Finger;

    new-instance v3, Lcom/eltechs/axs/Finger;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {v3, v5, p1}, Lcom/eltechs/axs/Finger;-><init>(FF)V

    aput-object v3, v2, v1

    .line 240
    iget-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->touchScreenControls:Lcom/eltechs/axs/TouchScreenControls;

    iget-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->userFingers:[Lcom/eltechs/axs/Finger;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/TouchScreenControls;->handleFingerDown(Lcom/eltechs/axs/Finger;)V

    :cond_4
    :goto_3
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private installKeyListener()V
    .locals 1

    .line 64
    new-instance v0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget$1;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget$1;-><init>(Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;)V

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method


# virtual methods
.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x1002

    and-int/2addr v0, v1

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x4002

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 181
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const/16 v4, 0x2002

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    move v2, v3

    :cond_1
    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    goto :goto_1

    .line 189
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 185
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->mouse:Lcom/eltechs/axs/Mouse;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/Mouse;->handleMouseEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x1002

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 208
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const/16 v4, 0x4002

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 209
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    const/16 v5, 0x2002

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_2

    move v2, v3

    :cond_2
    if-nez v0, :cond_5

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    .line 216
    iget-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->mouse:Lcom/eltechs/axs/Mouse;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/Mouse;->handleMouseEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 219
    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 213
    :cond_5
    :goto_2
    invoke-direct {p0, p1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setTouchScreenControls(Lcom/eltechs/axs/TouchScreenControls;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsInputWidget;->touchScreenControls:Lcom/eltechs/axs/TouchScreenControls;

    return-void
.end method
