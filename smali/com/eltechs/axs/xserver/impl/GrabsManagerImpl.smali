.class public Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;
.super Ljava/lang/Object;
.source "GrabsManagerImpl.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/GrabsManager;
.implements Lcom/eltechs/axs/xserver/WindowLifecycleListener;


# instance fields
.field private grabCursor:Lcom/eltechs/axs/xserver/Cursor;

.field private lastPointerGrabTime:I

.field private pointerGrabListener:Lcom/eltechs/axs/xserver/client/XClientWindowListener;

.field private pointerGrabOwnerEvents:Z

.field private pointerGrabReleaseWithButtons:Z

.field private pointerGrabWindow:Lcom/eltechs/axs/xserver/Window;

.field private final xServer:Lcom/eltechs/axs/xserver/XServer;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->lastPointerGrabTime:I

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->pointerGrabListener:Lcom/eltechs/axs/xserver/client/XClientWindowListener;

    .line 41
    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->pointerGrabWindow:Lcom/eltechs/axs/xserver/Window;

    .line 42
    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->grabCursor:Lcom/eltechs/axs/xserver/Cursor;

    .line 48
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->xServer:Lcom/eltechs/axs/xserver/XServer;

    .line 49
    iget-object p1, p0, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/eltechs/axs/xserver/WindowsManager;->addWindowLifecycleListener(Lcom/eltechs/axs/xserver/WindowLifecycleListener;)V

    return-void
.end method

.method private initiateActivePointerGrab(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/client/XClientWindowListener;ZLcom/eltechs/axs/xserver/Cursor;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/DeviceGrabMode;Lcom/eltechs/axs/xserver/DeviceGrabMode;IZ)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    .line 76
    :goto_0
    invoke-static {p5}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    if-nez p8, :cond_1

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int p5, v0

    iput p5, p0, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->lastPointerGrabTime:I

    .line 83
    :cond_1
    sget-object p5, Lcom/eltechs/axs/xserver/DeviceGrabMode;->ASYNCHRONOUS:Lcom/eltechs/axs/xserver/DeviceGrabMode;

    if-ne p6, p5, :cond_2

    sget-object p5, Lcom/eltechs/axs/xserver/DeviceGrabMode;->ASYNCHRONOUS:Lcom/eltechs/axs/xserver/DeviceGrabMode;

    if-eq p7, p5, :cond_3

    .line 85
    :cond_2
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet()V

    .line 88
    :cond_3
    iget-object p5, p0, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->pointerGrabWindow:Lcom/eltechs/axs/xserver/Window;

    if-nez p5, :cond_4

    .line 93
    iget-object p5, p0, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p5}, Lcom/eltechs/axs/xserver/XServer;->getPointerEventSender()Lcom/eltechs/axs/xserver/PointerEventSender;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/eltechs/axs/xserver/PointerEventSender;->sendGrabActivationEvents(Lcom/eltechs/axs/xserver/Window;)V

    .line 100
    :cond_4
    iput-object p4, p0, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->grabCursor:Lcom/eltechs/axs/xserver/Cursor;

    .line 101
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->pointerGrabWindow:Lcom/eltechs/axs/xserver/Window;

    .line 102
    iput-boolean p9, p0, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->pointerGrabReleaseWithButtons:Z

    .line 103
    iput-boolean p3, p0, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->pointerGrabOwnerEvents:Z

    .line 104
    iput-object p2, p0, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->pointerGrabListener:Lcom/eltechs/axs/xserver/client/XClientWindowListener;

    return-void
.end method


# virtual methods
.method public disableAutomaticOrPassiveGrab()V
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->pointerGrabReleaseWithButtons:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->disablePointerGrab()V

    :cond_0
    return-void
.end method

.method public disablePointerGrab()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->pointerGrabWindow:Lcom/eltechs/axs/xserver/Window;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->pointerGrabWindow:Lcom/eltechs/axs/xserver/Window;

    const/4 v1, 0x0

    .line 113
    iput-object v1, p0, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->pointerGrabWindow:Lcom/eltechs/axs/xserver/Window;

    .line 114
    iput-object v1, p0, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->grabCursor:Lcom/eltechs/axs/xserver/Cursor;

    .line 115
    iput-object v1, p0, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->pointerGrabListener:Lcom/eltechs/axs/xserver/client/XClientWindowListener;

    .line 116
    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/XServer;->getPointerEventSender()Lcom/eltechs/axs/xserver/PointerEventSender;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/eltechs/axs/xserver/PointerEventSender;->sendGrabDeactivationEvents(Lcom/eltechs/axs/xserver/Window;)V

    :cond_0
    return-void
.end method

.method public getPointerGrabListener()Lcom/eltechs/axs/xserver/client/XClientWindowListener;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->pointerGrabListener:Lcom/eltechs/axs/xserver/client/XClientWindowListener;

    return-object v0
.end method

.method public getPointerGrabOwnerEvents()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->pointerGrabOwnerEvents:Z

    return v0
.end method

.method public getPointerGrabTime()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->lastPointerGrabTime:I

    return v0
.end method

.method public getPointerGrabWindow()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->pointerGrabWindow:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public initiateActivePointerGrab(Lcom/eltechs/axs/xserver/Window;ZLcom/eltechs/axs/xserver/impl/masks/Mask;Lcom/eltechs/axs/xserver/Cursor;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/DeviceGrabMode;Lcom/eltechs/axs/xserver/DeviceGrabMode;ILcom/eltechs/axs/xserver/client/XClient;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/Window;",
            "Z",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/EventName;",
            ">;",
            "Lcom/eltechs/axs/xserver/Cursor;",
            "Lcom/eltechs/axs/xserver/Window;",
            "Lcom/eltechs/axs/xserver/DeviceGrabMode;",
            "Lcom/eltechs/axs/xserver/DeviceGrabMode;",
            "I",
            "Lcom/eltechs/axs/xserver/client/XClient;",
            ")V"
        }
    .end annotation

    .line 140
    new-instance v2, Lcom/eltechs/axs/xserver/client/XClientWindowListener;

    move-object v0, p3

    move-object/from16 v1, p9

    invoke-direct {v2, v1, v0}, Lcom/eltechs/axs/xserver/client/XClientWindowListener;-><init>(Lcom/eltechs/axs/xserver/client/XClient;Lcom/eltechs/axs/xserver/impl/masks/Mask;)V

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->initiateActivePointerGrab(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/client/XClientWindowListener;ZLcom/eltechs/axs/xserver/Cursor;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/DeviceGrabMode;Lcom/eltechs/axs/xserver/DeviceGrabMode;IZ)V

    return-void
.end method

.method public initiateAutomaticPointerGrab(Lcom/eltechs/axs/xserver/Window;)V
    .locals 11

    .line 154
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/WindowListenersList;->getButtonPressListener()Lcom/eltechs/axs/xserver/client/XClientWindowListener;

    move-result-object v3

    .line 157
    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/client/XClientWindowListener;->getMask()Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v0

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->OWNER_GRAB_BUTTON:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v4

    sget-object v7, Lcom/eltechs/axs/xserver/DeviceGrabMode;->ASYNCHRONOUS:Lcom/eltechs/axs/xserver/DeviceGrabMode;

    sget-object v8, Lcom/eltechs/axs/xserver/DeviceGrabMode;->ASYNCHRONOUS:Lcom/eltechs/axs/xserver/DeviceGrabMode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v1, p0

    move-object v2, p1

    .line 155
    invoke-direct/range {v1 .. v10}, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->initiateActivePointerGrab(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/client/XClientWindowListener;ZLcom/eltechs/axs/xserver/Cursor;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/DeviceGrabMode;Lcom/eltechs/axs/xserver/DeviceGrabMode;IZ)V

    return-void
.end method

.method public windowCreated(Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    return-void
.end method

.method public windowDestroyed(Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    return-void
.end method

.method public windowMapped(Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    return-void
.end method

.method public windowReparented(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    .line 203
    iget-object p1, p0, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->pointerGrabWindow:Lcom/eltechs/axs/xserver/Window;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->pointerGrabWindow:Lcom/eltechs/axs/xserver/Window;

    .line 204
    invoke-static {p1}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getWindowMapState(Lcom/eltechs/axs/xserver/Window;)Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;

    move-result-object p1

    sget-object p2, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;->VIEWABLE:Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;

    if-eq p1, p2, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->disablePointerGrab()V

    :cond_0
    return-void
.end method

.method public windowUnmapped(Lcom/eltechs/axs/xserver/Window;)V
    .locals 1

    .line 193
    iget-object p1, p0, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->pointerGrabWindow:Lcom/eltechs/axs/xserver/Window;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->pointerGrabWindow:Lcom/eltechs/axs/xserver/Window;

    .line 194
    invoke-static {p1}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getWindowMapState(Lcom/eltechs/axs/xserver/Window;)Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;

    move-result-object p1

    sget-object v0, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;->VIEWABLE:Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;

    if-eq p1, v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;->disablePointerGrab()V

    :cond_0
    return-void
.end method

.method public windowZOrderChange(Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    return-void
.end method
