.class public Lcom/eltechs/axs/xserver/PointerEventSender;
.super Ljava/lang/Object;
.source "PointerEventSender.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/PointerListener;
.implements Lcom/eltechs/axs/xserver/WindowLifecycleListener;
.implements Lcom/eltechs/axs/xserver/WindowChangeListener;


# instance fields
.field private pointWindow:Lcom/eltechs/axs/xserver/Window;

.field private final xServer:Lcom/eltechs/axs/xserver/XServer;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/WindowsManager;->getRootWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/xserver/PointerEventSender;->pointWindow:Lcom/eltechs/axs/xserver/Window;

    .line 85
    iput-object p1, p0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    .line 86
    iget-object p1, p0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/eltechs/axs/xserver/Pointer;->addListener(Lcom/eltechs/axs/xserver/PointerListener;)V

    .line 87
    iget-object p1, p0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/eltechs/axs/xserver/WindowsManager;->addWindowLifecycleListener(Lcom/eltechs/axs/xserver/WindowLifecycleListener;)V

    .line 88
    iget-object p1, p0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/eltechs/axs/xserver/WindowsManager;->addWindowChangeListener(Lcom/eltechs/axs/xserver/WindowChangeListener;)V

    return-void
.end method

.method private createCurrentEventMask()Lcom/eltechs/axs/xserver/impl/masks/Mask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/EventName;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/Pointer;->getButtonMask()Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v0

    .line 330
    const-class v1, Lcom/eltechs/axs/xserver/EventName;

    invoke-static {v1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->emptyMask(Ljava/lang/Class;)Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v1

    .line 332
    sget-object v2, Lcom/eltechs/axs/xserver/EventName;->POINTER_MOTION:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {v1, v2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->set(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)V

    .line 333
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 335
    sget-object v2, Lcom/eltechs/axs/xserver/EventName;->BUTTON_MOTION:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {v1, v2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->set(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)V

    .line 336
    sget-object v2, Lcom/eltechs/axs/xserver/KeyButNames;->BUTTON1:Lcom/eltechs/axs/xserver/KeyButNames;

    invoke-virtual {v0, v2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    sget-object v2, Lcom/eltechs/axs/xserver/EventName;->BUTTON_1_MOTION:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {v1, v2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->set(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)V

    .line 340
    :cond_0
    sget-object v2, Lcom/eltechs/axs/xserver/KeyButNames;->BUTTON2:Lcom/eltechs/axs/xserver/KeyButNames;

    invoke-virtual {v0, v2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    sget-object v2, Lcom/eltechs/axs/xserver/EventName;->BUTTON_2_MOTION:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {v1, v2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->set(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)V

    .line 344
    :cond_1
    sget-object v2, Lcom/eltechs/axs/xserver/KeyButNames;->BUTTON3:Lcom/eltechs/axs/xserver/KeyButNames;

    invoke-virtual {v0, v2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 346
    sget-object v2, Lcom/eltechs/axs/xserver/EventName;->BUTTON_3_MOTION:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {v1, v2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->set(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)V

    .line 348
    :cond_2
    sget-object v2, Lcom/eltechs/axs/xserver/KeyButNames;->BUTTON4:Lcom/eltechs/axs/xserver/KeyButNames;

    invoke-virtual {v0, v2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 350
    sget-object v2, Lcom/eltechs/axs/xserver/EventName;->BUTTON_4_MOTION:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {v1, v2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->set(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)V

    .line 352
    :cond_3
    sget-object v2, Lcom/eltechs/axs/xserver/KeyButNames;->BUTTON5:Lcom/eltechs/axs/xserver/KeyButNames;

    invoke-virtual {v0, v2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 354
    sget-object v0, Lcom/eltechs/axs/xserver/EventName;->BUTTON_5_MOTION:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {v1, v0}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->set(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)V

    :cond_4
    return-object v1
.end method

.method private sendEnterLeaveNotify(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;)V
    .locals 27

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    if-eq v5, v1, :cond_2

    .line 218
    iget-object v0, v6, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-static {v0}, Lcom/eltechs/axs/xserver/helpers/EventHelpers;->getKeyButMask(Lcom/eltechs/axs/xserver/XServer;)Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v20

    .line 219
    iget-object v0, v6, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/Pointer;->getX()I

    move-result v0

    .line 220
    iget-object v2, v6, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/Pointer;->getY()I

    move-result v2

    .line 221
    invoke-static {v1, v0, v2}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->convertRootCoordsToWindow(Lcom/eltechs/axs/xserver/Window;II)Lcom/eltechs/axs/geom/Point;

    move-result-object v3

    .line 222
    invoke-static {v5, v0, v2}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->convertRootCoordsToWindow(Lcom/eltechs/axs/xserver/Window;II)Lcom/eltechs/axs/geom/Point;

    move-result-object v4

    .line 223
    iget-object v7, v6, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v7}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/eltechs/axs/xserver/WindowsManager;->getRootWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v21

    .line 224
    iget-object v7, v6, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v7}, Lcom/eltechs/axs/xserver/XServer;->getFocusManager()Lcom/eltechs/axs/xserver/FocusManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/eltechs/axs/xserver/FocusManager;->getFocusedWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v7

    .line 225
    invoke-static {v5, v7}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->isAncestorOf(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)Z

    move-result v22

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    long-to-int v15, v7

    .line 231
    invoke-static/range {p1 .. p2}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->isAncestorOf(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 236
    sget-object v7, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;->ANCESTOR:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    .line 237
    sget-object v8, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;->INFERIOR:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    :goto_0
    move-object v14, v7

    move-object/from16 v23, v8

    goto :goto_1

    .line 238
    :cond_0
    invoke-static {v5, v1}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->isAncestorOf(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 243
    sget-object v7, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;->INFERIOR:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    .line 244
    sget-object v8, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;->ANCESTOR:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    goto :goto_0

    .line 250
    :cond_1
    sget-object v7, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;->NONLINEAR:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    .line 251
    sget-object v8, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;->NONLINEAR:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    goto :goto_0

    .line 254
    :goto_1
    new-instance v13, Lcom/eltechs/axs/xserver/events/LeaveNotify;

    const/16 v16, 0x0

    int-to-short v0, v0

    int-to-short v2, v2

    iget v7, v3, Lcom/eltechs/axs/geom/Point;->x:I

    int-to-short v12, v7

    iget v3, v3, Lcom/eltechs/axs/geom/Point;->y:I

    int-to-short v3, v3

    move-object v7, v13

    move-object v8, v14

    move-object/from16 v9, p3

    move v10, v15

    move-object/from16 v11, v21

    move/from16 v17, v12

    move-object v12, v1

    move-object/from16 v24, v4

    move-object v4, v13

    move-object/from16 v13, v16

    move-object/from16 v25, v14

    move v14, v0

    move/from16 v26, v15

    move v15, v2

    move/from16 v16, v17

    move/from16 v17, v3

    move-object/from16 v18, v20

    move/from16 v19, v22

    invoke-direct/range {v7 .. v19}, Lcom/eltechs/axs/xserver/events/LeaveNotify;-><init>(Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;ILcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;SSSSLcom/eltechs/axs/xserver/impl/masks/Mask;Z)V

    .line 259
    sget-object v3, Lcom/eltechs/axs/xserver/EventName;->LEAVE_WINDOW:Lcom/eltechs/axs/xserver/EventName;

    invoke-direct {v6, v4, v3, v1}, Lcom/eltechs/axs/xserver/PointerEventSender;->sendEventForEventMask(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/EventName;Lcom/eltechs/axs/xserver/Window;)V

    .line 261
    sget-object v3, Lcom/eltechs/axs/xserver/PointerEventSender$1;->$SwitchMap$com$eltechs$axs$xserver$events$PointerWindowEvent$Detail:[I

    move-object/from16 v7, v25

    invoke-virtual {v7}, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v14, v0

    move v15, v2

    move-object v13, v5

    move-object/from16 v8, v24

    goto :goto_2

    .line 270
    :pswitch_0
    invoke-static/range {p1 .. p2}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getLeastCommonAncestor(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)Lcom/eltechs/axs/xserver/Window;

    move-result-object v7

    .line 271
    sget-object v3, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;->NONLINEAR_VIRTUAL:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    move v14, v0

    move-object v0, v6

    move v15, v2

    move-object v2, v7

    move-object/from16 v8, v24

    move-object/from16 v4, p3

    move-object v13, v5

    move/from16 v5, v26

    invoke-direct/range {v0 .. v5}, Lcom/eltechs/axs/xserver/PointerEventSender;->sendVirtualLeaveNotify(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;I)V

    .line 273
    sget-object v3, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;->NONLINEAR_VIRTUAL:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    move-object v1, v7

    move-object v2, v13

    invoke-direct/range {v0 .. v5}, Lcom/eltechs/axs/xserver/PointerEventSender;->sendVirtualEnterNotify(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;I)V

    goto :goto_2

    :pswitch_1
    move v14, v0

    move v15, v2

    move-object v13, v5

    move-object/from16 v8, v24

    .line 267
    sget-object v3, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;->VIRTUAL:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    move-object v0, v6

    move-object v2, v13

    move-object/from16 v4, p3

    move/from16 v5, v26

    invoke-direct/range {v0 .. v5}, Lcom/eltechs/axs/xserver/PointerEventSender;->sendVirtualEnterNotify(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;I)V

    goto :goto_2

    :pswitch_2
    move v14, v0

    move v15, v2

    move-object v13, v5

    move-object/from16 v8, v24

    .line 264
    sget-object v3, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;->VIRTUAL:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    move-object v0, v6

    move-object v2, v13

    move-object/from16 v4, p3

    move/from16 v5, v26

    invoke-direct/range {v0 .. v5}, Lcom/eltechs/axs/xserver/PointerEventSender;->sendVirtualLeaveNotify(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;I)V

    .line 278
    :goto_2
    new-instance v0, Lcom/eltechs/axs/xserver/events/EnterNotify;

    const/4 v1, 0x0

    iget v2, v8, Lcom/eltechs/axs/geom/Point;->x:I

    int-to-short v2, v2

    iget v3, v8, Lcom/eltechs/axs/geom/Point;->y:I

    int-to-short v3, v3

    move-object v7, v0

    move-object/from16 v8, v23

    move-object/from16 v9, p3

    move/from16 v10, v26

    move-object/from16 v11, v21

    move-object v12, v13

    move-object v4, v13

    move-object v13, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v20

    move/from16 v19, v22

    invoke-direct/range {v7 .. v19}, Lcom/eltechs/axs/xserver/events/EnterNotify;-><init>(Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;ILcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;SSSSLcom/eltechs/axs/xserver/impl/masks/Mask;Z)V

    .line 283
    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->ENTER_WINDOW:Lcom/eltechs/axs/xserver/EventName;

    invoke-direct {v6, v0, v1, v4}, Lcom/eltechs/axs/xserver/PointerEventSender;->sendEventForEventMask(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/EventName;Lcom/eltechs/axs/xserver/Window;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendEventForEventMask(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/EventName;Lcom/eltechs/axs/xserver/Window;)V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getGrabsManager()Lcom/eltechs/axs/xserver/GrabsManager;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/GrabsManager;->getPointerGrabWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 107
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/GrabsManager;->getPointerGrabListener()Lcom/eltechs/axs/xserver/client/XClientWindowListener;

    move-result-object v2

    .line 108
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/GrabsManager;->getPointerGrabOwnerEvents()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 110
    invoke-interface {p3}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object p3

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/client/XClientWindowListener;->getClient()Lcom/eltechs/axs/xserver/client/XClient;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, Lcom/eltechs/axs/xserver/WindowListenersList;->sendEventForEventNameToClient(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/EventName;Lcom/eltechs/axs/xserver/client/XClient;)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {v2, p2}, Lcom/eltechs/axs/xserver/client/XClientWindowListener;->isInterestedIn(Lcom/eltechs/axs/xserver/EventName;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 115
    invoke-virtual {v2, v1, p1}, Lcom/eltechs/axs/xserver/client/XClientWindowListener;->onEvent(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/events/Event;)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-interface {p3}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/eltechs/axs/xserver/WindowListenersList;->sendEventForEventName(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/EventName;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private sendVirtualEnterNotify(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;I)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v15, p3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    .line 181
    :goto_0
    invoke-static {v5}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 182
    invoke-static {v2, v1}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->isAncestorOf(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)Z

    move-result v5

    invoke-static {v5}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 183
    sget-object v5, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;->VIRTUAL:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    if-eq v15, v5, :cond_1

    sget-object v5, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;->NONLINEAR_VIRTUAL:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    if-ne v15, v5, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    invoke-static {v3}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 185
    iget-object v3, v0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-static {v3}, Lcom/eltechs/axs/xserver/helpers/EventHelpers;->getKeyButMask(Lcom/eltechs/axs/xserver/XServer;)Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v16

    .line 186
    iget-object v3, v0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/Pointer;->getX()I

    move-result v14

    .line 187
    iget-object v3, v0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/Pointer;->getY()I

    move-result v13

    .line 188
    iget-object v3, v0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/XServer;->getFocusManager()Lcom/eltechs/axs/xserver/FocusManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/eltechs/axs/xserver/FocusManager;->getFocusedWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v12

    .line 189
    iget-object v3, v0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/eltechs/axs/xserver/WindowsManager;->getRootWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v17

    .line 190
    invoke-static {v2, v1}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getDirectChild(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)Lcom/eltechs/axs/xserver/Window;

    move-result-object v1

    :goto_1
    if-eq v1, v2, :cond_3

    .line 193
    invoke-static {v1, v12}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->isAncestorOf(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)Z

    move-result v18

    .line 194
    invoke-static {v1, v14, v13}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->convertRootCoordsToWindow(Lcom/eltechs/axs/xserver/Window;II)Lcom/eltechs/axs/geom/Point;

    move-result-object v3

    .line 195
    invoke-static {v2, v1}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getDirectChild(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)Lcom/eltechs/axs/xserver/Window;

    move-result-object v19

    .line 196
    new-instance v11, Lcom/eltechs/axs/xserver/events/EnterNotify;

    int-to-short v10, v14

    int-to-short v9, v13

    iget v4, v3, Lcom/eltechs/axs/geom/Point;->x:I

    int-to-short v8, v4

    iget v3, v3, Lcom/eltechs/axs/geom/Point;->y:I

    int-to-short v7, v3

    move-object v3, v11

    move-object v4, v15

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v20, v7

    move-object/from16 v7, v17

    move/from16 v21, v8

    move-object v8, v1

    move/from16 v22, v9

    move-object/from16 v9, v19

    move-object v2, v11

    move/from16 v11, v22

    move-object/from16 v22, v12

    move/from16 v12, v21

    move/from16 v21, v13

    move/from16 v13, v20

    move/from16 v20, v14

    move-object/from16 v14, v16

    move/from16 v15, v18

    invoke-direct/range {v3 .. v15}, Lcom/eltechs/axs/xserver/events/EnterNotify;-><init>(Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;ILcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;SSSSLcom/eltechs/axs/xserver/impl/masks/Mask;Z)V

    .line 200
    sget-object v3, Lcom/eltechs/axs/xserver/EventName;->ENTER_WINDOW:Lcom/eltechs/axs/xserver/EventName;

    invoke-direct {v0, v2, v3, v1}, Lcom/eltechs/axs/xserver/PointerEventSender;->sendEventForEventMask(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/EventName;Lcom/eltechs/axs/xserver/Window;)V

    move-object/from16 v15, p3

    move-object/from16 v1, v19

    move/from16 v14, v20

    move/from16 v13, v21

    move-object/from16 v12, v22

    move-object/from16 v2, p2

    goto :goto_1

    :cond_3
    return-void
.end method

.method private sendVirtualLeaveNotify(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;I)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v15, p3

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v4, p1

    if-eq v4, v1, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    .line 140
    :goto_0
    invoke-static {v5}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 141
    invoke-static/range {p1 .. p2}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->isAncestorOf(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)Z

    move-result v5

    invoke-static {v5}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 142
    sget-object v5, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;->VIRTUAL:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    if-eq v15, v5, :cond_1

    sget-object v5, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;->NONLINEAR_VIRTUAL:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    if-ne v15, v5, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    invoke-static {v2}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 144
    iget-object v2, v0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-static {v2}, Lcom/eltechs/axs/xserver/helpers/EventHelpers;->getKeyButMask(Lcom/eltechs/axs/xserver/XServer;)Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v16

    .line 145
    iget-object v2, v0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/Pointer;->getX()I

    move-result v14

    .line 146
    iget-object v2, v0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/Pointer;->getY()I

    move-result v13

    .line 147
    iget-object v2, v0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getFocusManager()Lcom/eltechs/axs/xserver/FocusManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/eltechs/axs/xserver/FocusManager;->getFocusedWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v12

    .line 148
    iget-object v2, v0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/eltechs/axs/xserver/WindowsManager;->getRootWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v17

    .line 150
    invoke-interface/range {p1 .. p1}, Lcom/eltechs/axs/xserver/Window;->getParent()Lcom/eltechs/axs/xserver/Window;

    move-result-object v2

    move-object v11, v2

    move-object v8, v4

    :goto_1
    if-eq v11, v1, :cond_3

    .line 153
    invoke-static {v11, v12}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->isAncestorOf(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)Z

    move-result v18

    .line 154
    invoke-static {v11, v14, v13}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->convertRootCoordsToWindow(Lcom/eltechs/axs/xserver/Window;II)Lcom/eltechs/axs/geom/Point;

    move-result-object v2

    .line 155
    new-instance v10, Lcom/eltechs/axs/xserver/events/LeaveNotify;

    int-to-short v9, v14

    int-to-short v7, v13

    iget v3, v2, Lcom/eltechs/axs/geom/Point;->x:I

    int-to-short v6, v3

    iget v2, v2, Lcom/eltechs/axs/geom/Point;->y:I

    int-to-short v5, v2

    move-object v2, v10

    move-object v3, v15

    move-object/from16 v4, p4

    move/from16 v19, v5

    move/from16 v5, p5

    move/from16 v20, v6

    move-object/from16 v6, v17

    move/from16 v21, v7

    move-object v7, v11

    move-object v1, v10

    move/from16 v10, v21

    move-object v15, v11

    move/from16 v11, v20

    move-object/from16 v20, v12

    move/from16 v12, v19

    move/from16 v19, v13

    move-object/from16 v13, v16

    move/from16 v21, v14

    move/from16 v14, v18

    invoke-direct/range {v2 .. v14}, Lcom/eltechs/axs/xserver/events/LeaveNotify;-><init>(Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;ILcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;SSSSLcom/eltechs/axs/xserver/impl/masks/Mask;Z)V

    .line 159
    sget-object v2, Lcom/eltechs/axs/xserver/EventName;->LEAVE_WINDOW:Lcom/eltechs/axs/xserver/EventName;

    invoke-direct {v0, v1, v2, v15}, Lcom/eltechs/axs/xserver/PointerEventSender;->sendEventForEventMask(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/EventName;Lcom/eltechs/axs/xserver/Window;)V

    .line 161
    invoke-interface {v15}, Lcom/eltechs/axs/xserver/Window;->getParent()Lcom/eltechs/axs/xserver/Window;

    move-result-object v11

    move-object v8, v15

    move/from16 v13, v19

    move-object/from16 v12, v20

    move/from16 v14, v21

    move-object/from16 v1, p2

    move-object/from16 v15, p3

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updatePointWindow()V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-static {v0}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->calculatePointWindow(Lcom/eltechs/axs/xserver/XServer;)Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/eltechs/axs/xserver/PointerEventSender;->pointWindow:Lcom/eltechs/axs/xserver/Window;

    sget-object v2, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;->NORMAL:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;

    invoke-direct {p0, v1, v0, v2}, Lcom/eltechs/axs/xserver/PointerEventSender;->sendEnterLeaveNotify(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;)V

    .line 295
    iput-object v0, p0, Lcom/eltechs/axs/xserver/PointerEventSender;->pointWindow:Lcom/eltechs/axs/xserver/Window;

    return-void
.end method


# virtual methods
.method public attributesChanged(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/impl/masks/Mask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/Window;",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/WindowAttributeNames;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public geometryChanged(Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    .line 583
    invoke-direct {p0}, Lcom/eltechs/axs/xserver/PointerEventSender;->updatePointWindow()V

    return-void
.end method

.method public pointerButtonPressed(I)V
    .locals 14

    .line 432
    iget-object v0, p0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getGrabsManager()Lcom/eltechs/axs/xserver/GrabsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/GrabsManager;->getPointerGrabWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/eltechs/axs/xserver/PointerEventSender;->pointWindow:Lcom/eltechs/axs/xserver/Window;

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->BUTTON_PRESS:Lcom/eltechs/axs/xserver/EventName;

    invoke-static {v0, v1}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getAncestorWithDeviceEventName(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/EventName;)Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v1, p0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/XServer;->getGrabsManager()Lcom/eltechs/axs/xserver/GrabsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/eltechs/axs/xserver/GrabsManager;->initiateAutomaticPointerGrab(Lcom/eltechs/axs/xserver/Window;)V

    :cond_0
    if-eqz v0, :cond_2

    .line 445
    iget-object v1, p0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-static {v1}, Lcom/eltechs/axs/xserver/helpers/EventHelpers;->getKeyButMask(Lcom/eltechs/axs/xserver/XServer;)Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v12

    .line 446
    invoke-static {p1}, Lcom/eltechs/axs/xserver/KeyButNames;->getFlagForButtonNumber(I)Lcom/eltechs/axs/xserver/KeyButNames;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->clear(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)V

    .line 447
    iget-object v1, p0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/Pointer;->getX()I

    move-result v1

    .line 448
    iget-object v2, p0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/Pointer;->getY()I

    move-result v2

    .line 449
    invoke-static {v0, v1, v2}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->convertRootCoordsToWindow(Lcom/eltechs/axs/xserver/Window;II)Lcom/eltechs/axs/geom/Point;

    move-result-object v3

    .line 450
    iget-object v4, p0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v4}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/eltechs/axs/xserver/WindowsManager;->getRootWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v5

    const/4 v4, 0x0

    .line 453
    iget-object v6, p0, Lcom/eltechs/axs/xserver/PointerEventSender;->pointWindow:Lcom/eltechs/axs/xserver/Window;

    if-eq v6, v0, :cond_1

    iget-object v6, p0, Lcom/eltechs/axs/xserver/PointerEventSender;->pointWindow:Lcom/eltechs/axs/xserver/Window;

    invoke-static {v6, v0}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->isAncestorOf(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 455
    iget-object v4, p0, Lcom/eltechs/axs/xserver/PointerEventSender;->pointWindow:Lcom/eltechs/axs/xserver/Window;

    invoke-static {v4, v0}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getDirectChild(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)Lcom/eltechs/axs/xserver/Window;

    move-result-object v4

    :cond_1
    move-object v7, v4

    .line 458
    new-instance v13, Lcom/eltechs/axs/xserver/events/ButtonPress;

    int-to-byte p1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-int v4, v8

    int-to-short v8, v1

    int-to-short v9, v2

    iget v1, v3, Lcom/eltechs/axs/geom/Point;->x:I

    int-to-short v10, v1

    iget v1, v3, Lcom/eltechs/axs/geom/Point;->y:I

    int-to-short v11, v1

    move-object v2, v13

    move v3, p1

    move-object v6, v0

    invoke-direct/range {v2 .. v12}, Lcom/eltechs/axs/xserver/events/ButtonPress;-><init>(BILcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;SSSSLcom/eltechs/axs/xserver/impl/masks/Mask;)V

    .line 468
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object p1

    sget-object v0, Lcom/eltechs/axs/xserver/EventName;->BUTTON_PRESS:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {p1, v13, v0}, Lcom/eltechs/axs/xserver/WindowListenersList;->sendEventForEventName(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/EventName;)V

    :cond_2
    return-void
.end method

.method public pointerButtonReleased(I)V
    .locals 16

    move-object/from16 v0, p0

    .line 475
    iget-object v1, v0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/XServer;->getGrabsManager()Lcom/eltechs/axs/xserver/GrabsManager;

    move-result-object v1

    .line 476
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/GrabsManager;->getPointerGrabWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v2

    .line 477
    invoke-static/range {p1 .. p1}, Lcom/eltechs/axs/xserver/KeyButNames;->getFlagForButtonNumber(I)Lcom/eltechs/axs/xserver/KeyButNames;

    move-result-object v3

    .line 478
    iget-object v4, v0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-static {v4}, Lcom/eltechs/axs/xserver/helpers/EventHelpers;->getKeyButMask(Lcom/eltechs/axs/xserver/XServer;)Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v15

    .line 479
    invoke-static {v3}, Lcom/eltechs/axs/xserver/KeyButNames;->isModifierReal(Lcom/eltechs/axs/xserver/KeyButNames;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 484
    invoke-virtual {v15, v3}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->set(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)V

    :cond_0
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 488
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/GrabsManager;->getPointerGrabOwnerEvents()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v3

    goto :goto_1

    .line 490
    :cond_2
    :goto_0
    iget-object v4, v0, Lcom/eltechs/axs/xserver/PointerEventSender;->pointWindow:Lcom/eltechs/axs/xserver/Window;

    sget-object v5, Lcom/eltechs/axs/xserver/EventName;->BUTTON_RELEASE:Lcom/eltechs/axs/xserver/EventName;

    invoke-static {v4, v5}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getAncestorWithDeviceEventName(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/EventName;)Lcom/eltechs/axs/xserver/Window;

    move-result-object v4

    :goto_1
    if-nez v2, :cond_3

    if-eqz v4, :cond_6

    :cond_3
    if-eqz v4, :cond_4

    move-object v9, v4

    goto :goto_2

    :cond_4
    move-object v9, v2

    .line 507
    :goto_2
    iget-object v2, v0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/Pointer;->getX()I

    move-result v2

    .line 508
    iget-object v5, v0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v5}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/eltechs/axs/xserver/Pointer;->getY()I

    move-result v5

    .line 509
    invoke-static {v9, v2, v5}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->convertRootCoordsToWindow(Lcom/eltechs/axs/xserver/Window;II)Lcom/eltechs/axs/geom/Point;

    move-result-object v6

    .line 510
    iget-object v7, v0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v7}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/eltechs/axs/xserver/WindowsManager;->getRootWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v8

    .line 513
    iget-object v7, v0, Lcom/eltechs/axs/xserver/PointerEventSender;->pointWindow:Lcom/eltechs/axs/xserver/Window;

    if-eq v7, v9, :cond_5

    iget-object v7, v0, Lcom/eltechs/axs/xserver/PointerEventSender;->pointWindow:Lcom/eltechs/axs/xserver/Window;

    invoke-static {v7, v9}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->isAncestorOf(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 515
    iget-object v3, v0, Lcom/eltechs/axs/xserver/PointerEventSender;->pointWindow:Lcom/eltechs/axs/xserver/Window;

    invoke-static {v3, v9}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getDirectChild(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)Lcom/eltechs/axs/xserver/Window;

    move-result-object v3

    :cond_5
    move-object v10, v3

    .line 518
    new-instance v3, Lcom/eltechs/axs/xserver/events/ButtonRelease;

    move/from16 v7, p1

    int-to-byte v7, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    long-to-int v11, v11

    int-to-short v2, v2

    int-to-short v12, v5

    iget v5, v6, Lcom/eltechs/axs/geom/Point;->x:I

    int-to-short v13, v5

    iget v5, v6, Lcom/eltechs/axs/geom/Point;->y:I

    int-to-short v14, v5

    move-object v5, v3

    move v6, v7

    move v7, v11

    move v11, v2

    invoke-direct/range {v5 .. v15}, Lcom/eltechs/axs/xserver/events/ButtonRelease;-><init>(BILcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;SSSSLcom/eltechs/axs/xserver/impl/masks/Mask;)V

    .line 524
    sget-object v2, Lcom/eltechs/axs/xserver/EventName;->BUTTON_RELEASE:Lcom/eltechs/axs/xserver/EventName;

    invoke-direct {v0, v3, v2, v4}, Lcom/eltechs/axs/xserver/PointerEventSender;->sendEventForEventMask(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/EventName;Lcom/eltechs/axs/xserver/Window;)V

    .line 527
    :cond_6
    iget-object v2, v0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/Pointer;->getButtonMask()Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 529
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/GrabsManager;->disableAutomaticOrPassiveGrab()V

    :cond_7
    return-void
.end method

.method public pointerMoved(II)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 364
    invoke-direct/range {p0 .. p0}, Lcom/eltechs/axs/xserver/PointerEventSender;->updatePointWindow()V

    .line 366
    invoke-direct/range {p0 .. p0}, Lcom/eltechs/axs/xserver/PointerEventSender;->createCurrentEventMask()Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v3

    .line 367
    iget-object v4, v0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v4}, Lcom/eltechs/axs/xserver/XServer;->getGrabsManager()Lcom/eltechs/axs/xserver/GrabsManager;

    move-result-object v4

    .line 368
    invoke-interface {v4}, Lcom/eltechs/axs/xserver/GrabsManager;->getPointerGrabListener()Lcom/eltechs/axs/xserver/client/XClientWindowListener;

    move-result-object v5

    .line 369
    invoke-interface {v4}, Lcom/eltechs/axs/xserver/GrabsManager;->getPointerGrabWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 372
    invoke-interface {v4}, Lcom/eltechs/axs/xserver/GrabsManager;->getPointerGrabOwnerEvents()Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    move-object v8, v7

    goto :goto_1

    .line 374
    :cond_1
    :goto_0
    iget-object v8, v0, Lcom/eltechs/axs/xserver/PointerEventSender;->pointWindow:Lcom/eltechs/axs/xserver/Window;

    invoke-static {v8, v3}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getAncestorWithDeviceEventMask(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/impl/masks/Mask;)Lcom/eltechs/axs/xserver/Window;

    move-result-object v8

    :goto_1
    if-nez v6, :cond_2

    if-eqz v8, :cond_7

    :cond_2
    if-eqz v8, :cond_3

    move-object v13, v8

    goto :goto_2

    :cond_3
    move-object v13, v6

    .line 390
    :goto_2
    iget-object v9, v0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-static {v9}, Lcom/eltechs/axs/xserver/helpers/EventHelpers;->getKeyButMask(Lcom/eltechs/axs/xserver/XServer;)Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v19

    .line 391
    invoke-static {v13, v1, v2}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->convertRootCoordsToWindow(Lcom/eltechs/axs/xserver/Window;II)Lcom/eltechs/axs/geom/Point;

    move-result-object v9

    .line 392
    iget-object v10, v0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v10}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v10

    invoke-interface {v10}, Lcom/eltechs/axs/xserver/WindowsManager;->getRootWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v12

    .line 395
    iget-object v10, v0, Lcom/eltechs/axs/xserver/PointerEventSender;->pointWindow:Lcom/eltechs/axs/xserver/Window;

    if-eq v10, v13, :cond_4

    iget-object v10, v0, Lcom/eltechs/axs/xserver/PointerEventSender;->pointWindow:Lcom/eltechs/axs/xserver/Window;

    invoke-static {v10, v13}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->isAncestorOf(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 397
    iget-object v7, v0, Lcom/eltechs/axs/xserver/PointerEventSender;->pointWindow:Lcom/eltechs/axs/xserver/Window;

    invoke-static {v7, v13}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getDirectChild(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)Lcom/eltechs/axs/xserver/Window;

    move-result-object v7

    :cond_4
    move-object v14, v7

    .line 401
    new-instance v7, Lcom/eltechs/axs/xserver/events/MotionNotify;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v11, v10

    int-to-short v15, v1

    int-to-short v1, v2

    iget v2, v9, Lcom/eltechs/axs/geom/Point;->x:I

    int-to-short v2, v2

    iget v9, v9, Lcom/eltechs/axs/geom/Point;->y:I

    int-to-short v10, v9

    move-object v9, v7

    move/from16 v18, v10

    const/4 v10, 0x0

    move/from16 v16, v1

    move/from16 v17, v2

    invoke-direct/range {v9 .. v19}, Lcom/eltechs/axs/xserver/events/MotionNotify;-><init>(ZILcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;SSSSLcom/eltechs/axs/xserver/impl/masks/Mask;)V

    if-eqz v6, :cond_6

    .line 410
    invoke-interface {v4}, Lcom/eltechs/axs/xserver/GrabsManager;->getPointerGrabOwnerEvents()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v8, :cond_5

    .line 412
    invoke-interface {v8}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object v1

    .line 414
    invoke-virtual {v5}, Lcom/eltechs/axs/xserver/client/XClientWindowListener;->getClient()Lcom/eltechs/axs/xserver/client/XClient;

    move-result-object v2

    .line 412
    invoke-virtual {v1, v7, v3, v2}, Lcom/eltechs/axs/xserver/WindowListenersList;->sendEventForEventMaskToClient(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/impl/masks/Mask;Lcom/eltechs/axs/xserver/client/XClient;)V

    goto :goto_3

    .line 417
    :cond_5
    invoke-virtual {v5, v3}, Lcom/eltechs/axs/xserver/client/XClientWindowListener;->isInterestedIn(Lcom/eltechs/axs/xserver/impl/masks/Mask;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 419
    invoke-virtual {v5, v6, v7}, Lcom/eltechs/axs/xserver/client/XClientWindowListener;->onEvent(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/events/Event;)V

    goto :goto_3

    .line 424
    :cond_6
    invoke-interface {v8}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object v1

    invoke-virtual {v1, v7, v3}, Lcom/eltechs/axs/xserver/WindowListenersList;->sendEventForEventMask(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/impl/masks/Mask;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public pointerWarped(II)V
    .locals 0

    .line 540
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/axs/xserver/PointerEventSender;->pointerMoved(II)V

    return-void
.end method

.method public sendGrabActivationEvents(Lcom/eltechs/axs/xserver/Window;)V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getGrabsManager()Lcom/eltechs/axs/xserver/GrabsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/GrabsManager;->getPointerGrabWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 307
    iget-object v0, p0, Lcom/eltechs/axs/xserver/PointerEventSender;->pointWindow:Lcom/eltechs/axs/xserver/Window;

    sget-object v1, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;->GRAB:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;

    invoke-direct {p0, v0, p1, v1}, Lcom/eltechs/axs/xserver/PointerEventSender;->sendEnterLeaveNotify(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;)V

    return-void
.end method

.method public sendGrabDeactivationEvents(Lcom/eltechs/axs/xserver/Window;)V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/eltechs/axs/xserver/PointerEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getGrabsManager()Lcom/eltechs/axs/xserver/GrabsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/GrabsManager;->getPointerGrabWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 319
    iget-object v0, p0, Lcom/eltechs/axs/xserver/PointerEventSender;->pointWindow:Lcom/eltechs/axs/xserver/Window;

    sget-object v1, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;->UNGRAB:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;

    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/xserver/PointerEventSender;->sendEnterLeaveNotify(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;)V

    return-void
.end method

.method public windowCreated(Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    .line 547
    invoke-direct {p0}, Lcom/eltechs/axs/xserver/PointerEventSender;->updatePointWindow()V

    return-void
.end method

.method public windowDestroyed(Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    .line 577
    invoke-direct {p0}, Lcom/eltechs/axs/xserver/PointerEventSender;->updatePointWindow()V

    return-void
.end method

.method public windowMapped(Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    .line 553
    invoke-direct {p0}, Lcom/eltechs/axs/xserver/PointerEventSender;->updatePointWindow()V

    return-void
.end method

.method public windowReparented(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    .line 565
    invoke-direct {p0}, Lcom/eltechs/axs/xserver/PointerEventSender;->updatePointWindow()V

    return-void
.end method

.method public windowUnmapped(Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    .line 559
    invoke-direct {p0}, Lcom/eltechs/axs/xserver/PointerEventSender;->updatePointWindow()V

    return-void
.end method

.method public windowZOrderChange(Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    .line 571
    invoke-direct {p0}, Lcom/eltechs/axs/xserver/PointerEventSender;->updatePointWindow()V

    return-void
.end method
