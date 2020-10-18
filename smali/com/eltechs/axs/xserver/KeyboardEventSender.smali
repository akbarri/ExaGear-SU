.class public Lcom/eltechs/axs/xserver/KeyboardEventSender;
.super Ljava/lang/Object;
.source "KeyboardEventSender.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/KeyboardListener;


# instance fields
.field private final xServer:Lcom/eltechs/axs/xserver/XServer;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/eltechs/axs/xserver/KeyboardEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    .line 23
    iget-object p1, p0, Lcom/eltechs/axs/xserver/KeyboardEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getKeyboard()Lcom/eltechs/axs/xserver/Keyboard;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/eltechs/axs/xserver/Keyboard;->addKeyListener(Lcom/eltechs/axs/xserver/KeyboardListener;)V

    return-void
.end method

.method private sendKeyEvent(Lcom/eltechs/axs/xserver/EventName;BILcom/eltechs/axs/xserver/impl/masks/Mask;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/EventName;",
            "BI",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/KeyButNames;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v13, p2

    move/from16 v14, p3

    .line 35
    iget-object v2, v0, Lcom/eltechs/axs/xserver/KeyboardEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getFocusManager()Lcom/eltechs/axs/xserver/FocusManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/eltechs/axs/xserver/FocusManager;->getFocusedWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object v3, v0, Lcom/eltechs/axs/xserver/KeyboardEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-static {v3}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->calculatePointWindow(Lcom/eltechs/axs/xserver/XServer;)Lcom/eltechs/axs/xserver/Window;

    move-result-object v3

    .line 51
    invoke-static {v3, v2}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->isAncestorOf(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 53
    invoke-static {v3, v1, v2}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getAncestorWithDeviceEventNameInSubtree(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/EventName;Lcom/eltechs/axs/xserver/Window;)Lcom/eltechs/axs/xserver/Window;

    move-result-object v4

    .line 54
    invoke-static {v3, v4}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getDirectChild(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)Lcom/eltechs/axs/xserver/Window;

    move-result-object v3

    move-object v7, v3

    goto :goto_0

    :cond_1
    move-object v4, v5

    move-object v7, v4

    :goto_0
    if-nez v4, :cond_3

    .line 61
    invoke-interface {v2}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/eltechs/axs/xserver/WindowListenersList;->isListenerInstalledForEvent(Lcom/eltechs/axs/xserver/EventName;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v15, v2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    move-object v15, v4

    .line 72
    :goto_1
    iget-object v2, v0, Lcom/eltechs/axs/xserver/KeyboardEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/Pointer;->getX()I

    move-result v3

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/Pointer;->getY()I

    move-result v4

    invoke-static {v15, v3, v4}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->convertRootCoordsToWindow(Lcom/eltechs/axs/xserver/Window;II)Lcom/eltechs/axs/geom/Point;

    move-result-object v3

    .line 74
    iget-object v4, v0, Lcom/eltechs/axs/xserver/KeyboardEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    move-object/from16 v6, p4

    invoke-static {v4, v6}, Lcom/eltechs/axs/xserver/helpers/EventHelpers;->getKeyButMask(Lcom/eltechs/axs/xserver/XServer;Lcom/eltechs/axs/xserver/impl/masks/Mask;)Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v12

    .line 81
    sget-object v4, Lcom/eltechs/axs/xserver/KeyboardEventSender$1;->$SwitchMap$com$eltechs$axs$xserver$EventName:[I

    invoke-virtual/range {p1 .. p1}, Lcom/eltechs/axs/xserver/EventName;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    .line 108
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->unreachable()V

    goto :goto_3

    .line 96
    :pswitch_0
    new-instance v16, Lcom/eltechs/axs/xserver/events/KeyRelease;

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v4, v4

    .line 98
    invoke-static {v15}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getRootWindowOf(Lcom/eltechs/axs/xserver/Window;)Lcom/eltechs/axs/xserver/Window;

    move-result-object v5

    .line 101
    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/Pointer;->getX()I

    move-result v6

    int-to-short v8, v6

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/Pointer;->getY()I

    move-result v2

    int-to-short v9, v2

    iget v2, v3, Lcom/eltechs/axs/geom/Point;->x:I

    int-to-short v10, v2

    iget v2, v3, Lcom/eltechs/axs/geom/Point;->y:I

    int-to-short v11, v2

    move-object/from16 v2, v16

    move v3, v13

    move-object v6, v15

    invoke-direct/range {v2 .. v12}, Lcom/eltechs/axs/xserver/events/KeyRelease;-><init>(BILcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;SSSSLcom/eltechs/axs/xserver/impl/masks/Mask;)V

    goto :goto_2

    .line 84
    :pswitch_1
    new-instance v16, Lcom/eltechs/axs/xserver/events/KeyPress;

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v4, v4

    .line 86
    invoke-static {v15}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getRootWindowOf(Lcom/eltechs/axs/xserver/Window;)Lcom/eltechs/axs/xserver/Window;

    move-result-object v5

    .line 89
    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/Pointer;->getX()I

    move-result v6

    int-to-short v8, v6

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/Pointer;->getY()I

    move-result v2

    int-to-short v9, v2

    iget v2, v3, Lcom/eltechs/axs/geom/Point;->x:I

    int-to-short v10, v2

    iget v2, v3, Lcom/eltechs/axs/geom/Point;->y:I

    int-to-short v11, v2

    move-object/from16 v2, v16

    move v3, v13

    move-object v6, v15

    invoke-direct/range {v2 .. v12}, Lcom/eltechs/axs/xserver/events/KeyPress;-><init>(BILcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;SSSSLcom/eltechs/axs/xserver/impl/masks/Mask;)V

    :goto_2
    move-object/from16 v5, v16

    :goto_3
    if-eqz v14, :cond_5

    .line 112
    sget-object v2, Lcom/eltechs/axs/xserver/EventName;->KEY_PRESS:Lcom/eltechs/axs/xserver/EventName;

    if-ne v1, v2, :cond_5

    .line 115
    iget-object v2, v0, Lcom/eltechs/axs/xserver/KeyboardEventSender;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getKeyboardModelManager()Lcom/eltechs/axs/xserver/KeyboardModelManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/eltechs/axs/xserver/KeyboardModelManager;->getKeyboardModel()Lcom/eltechs/axs/xserver/KeyboardModel;

    move-result-object v2

    const/4 v3, 0x2

    .line 116
    new-array v3, v3, [I

    .line 117
    invoke-virtual {v2, v13, v3}, Lcom/eltechs/axs/xserver/KeyboardModel;->getKeysymsForKeycodeGroup1(I[I)V

    const/4 v4, 0x0

    .line 118
    aget v4, v3, v4

    const/4 v6, 0x1

    if-ne v4, v14, :cond_4

    aget v3, v3, v6

    if-eq v3, v14, :cond_5

    .line 120
    :cond_4
    invoke-virtual {v2, v13, v14, v14}, Lcom/eltechs/axs/xserver/KeyboardModel;->setKeysymsForKeycodeGroup1(III)V

    .line 122
    new-instance v2, Lcom/eltechs/axs/xserver/events/MappingNotify;

    sget-object v3, Lcom/eltechs/axs/xserver/events/MappingNotify$Request;->KEYBOARD:Lcom/eltechs/axs/xserver/events/MappingNotify$Request;

    invoke-direct {v2, v3, v13, v6}, Lcom/eltechs/axs/xserver/events/MappingNotify;-><init>(Lcom/eltechs/axs/xserver/events/MappingNotify$Request;II)V

    .line 123
    invoke-interface {v15}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/eltechs/axs/xserver/WindowListenersList;->sendEvent(Lcom/eltechs/axs/xserver/events/Event;)V

    .line 127
    :cond_5
    invoke-interface {v15}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Lcom/eltechs/axs/xserver/WindowListenersList;->sendEventForEventName(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/EventName;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public keyPressed(BILcom/eltechs/axs/xserver/impl/masks/Mask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BI",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/KeyButNames;",
            ">;)V"
        }
    .end annotation

    .line 133
    sget-object v0, Lcom/eltechs/axs/xserver/EventName;->KEY_PRESS:Lcom/eltechs/axs/xserver/EventName;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/eltechs/axs/xserver/KeyboardEventSender;->sendKeyEvent(Lcom/eltechs/axs/xserver/EventName;BILcom/eltechs/axs/xserver/impl/masks/Mask;)V

    return-void
.end method

.method public keyReleased(BILcom/eltechs/axs/xserver/impl/masks/Mask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BI",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/KeyButNames;",
            ">;)V"
        }
    .end annotation

    .line 139
    sget-object v0, Lcom/eltechs/axs/xserver/EventName;->KEY_RELEASE:Lcom/eltechs/axs/xserver/EventName;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/eltechs/axs/xserver/KeyboardEventSender;->sendKeyEvent(Lcom/eltechs/axs/xserver/EventName;BILcom/eltechs/axs/xserver/impl/masks/Mask;)V

    return-void
.end method
