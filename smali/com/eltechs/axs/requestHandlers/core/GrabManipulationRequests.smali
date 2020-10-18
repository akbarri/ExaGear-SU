.class public Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests;
.super Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;
.source "GrabManipulationRequests.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    return-void
.end method


# virtual methods
.method public GrabKeyboard(Lcom/eltechs/axs/xconnectors/XResponse;ZLcom/eltechs/axs/xserver/Window;IZZS)V
    .locals 0
    .param p2    # Z
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/OOBParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # Lcom/eltechs/axs/xserver/Window;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p5    # Z
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p6    # Z
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p7    # S
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "WINDOWS_MANAGER",
            "CURSORS_MANAGER",
            "FOCUS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x1f
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    .line 87
    new-array p3, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSimpleSuccessReply(B[Ljava/lang/Object;)V

    return-void
.end method

.method public GrabPointer(Lcom/eltechs/axs/xserver/client/XClient;Lcom/eltechs/axs/xconnectors/XResponse;ZLcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/impl/masks/Mask;Lcom/eltechs/axs/xserver/DeviceGrabMode;Lcom/eltechs/axs/xserver/DeviceGrabMode;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Cursor;I)V
    .locals 13
    .param p3    # Z
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/OOBParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p4    # Lcom/eltechs/axs/xserver/Window;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p5    # Lcom/eltechs/axs/xserver/impl/masks/Mask;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Width;
            value = 0x2
        .end annotation
    .end param
    .param p6    # Lcom/eltechs/axs/xserver/DeviceGrabMode;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p7    # Lcom/eltechs/axs/xserver/DeviceGrabMode;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p8    # Lcom/eltechs/axs/xserver/Window;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/SpecialNullValue;
            value = 0x0
        .end annotation
    .end param
    .param p9    # Lcom/eltechs/axs/xserver/Cursor;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/SpecialNullValue;
            value = 0x0
        .end annotation
    .end param
    .param p10    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "WINDOWS_MANAGER",
            "CURSORS_MANAGER",
            "INPUT_DEVICES",
            "FOCUS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/client/XClient;",
            "Lcom/eltechs/axs/xconnectors/XResponse;",
            "Z",
            "Lcom/eltechs/axs/xserver/Window;",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/EventName;",
            ">;",
            "Lcom/eltechs/axs/xserver/DeviceGrabMode;",
            "Lcom/eltechs/axs/xserver/DeviceGrabMode;",
            "Lcom/eltechs/axs/xserver/Window;",
            "Lcom/eltechs/axs/xserver/Cursor;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    .line 40
    iget-object v1, v0, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/XServer;->getGrabsManager()Lcom/eltechs/axs/xserver/GrabsManager;

    move-result-object v2

    if-eqz p10, :cond_0

    .line 44
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet()V

    .line 47
    :cond_0
    invoke-interface {v2}, Lcom/eltechs/axs/xserver/GrabsManager;->getPointerGrabWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 48
    invoke-interface {v2}, Lcom/eltechs/axs/xserver/GrabsManager;->getPointerGrabListener()Lcom/eltechs/axs/xserver/client/XClientWindowListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/client/XClientWindowListener;->getClient()Lcom/eltechs/axs/xserver/client/XClient;

    move-result-object v3

    move-object v11, p1

    if-eq v3, v11, :cond_2

    .line 50
    sget-object v1, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;->ALREADY_GRABBED:Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;

    goto :goto_0

    :cond_1
    move-object v11, p1

    .line 51
    :cond_2
    invoke-static/range {p4 .. p4}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getWindowMapState(Lcom/eltechs/axs/xserver/Window;)Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;

    move-result-object v3

    sget-object v4, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;->VIEWABLE:Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;

    if-eq v3, v4, :cond_3

    .line 53
    sget-object v1, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;->NOT_VIEWABLE:Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;

    goto :goto_0

    .line 56
    :cond_3
    sget-object v12, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;->SUCCESS:Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;

    move-object/from16 v3, p4

    move/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p9

    move-object/from16 v7, p8

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p10

    .line 57
    invoke-interface/range {v2 .. v11}, Lcom/eltechs/axs/xserver/GrabsManager;->initiateActivePointerGrab(Lcom/eltechs/axs/xserver/Window;ZLcom/eltechs/axs/xserver/impl/masks/Mask;Lcom/eltechs/axs/xserver/Cursor;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/DeviceGrabMode;Lcom/eltechs/axs/xserver/DeviceGrabMode;ILcom/eltechs/axs/xserver/client/XClient;)V

    move-object v1, v12

    .line 61
    :goto_0
    invoke-virtual {v1}, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object v3, p2

    invoke-virtual {v3, v1, v2}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSimpleSuccessReply(B[Ljava/lang/Object;)V

    return-void
.end method

.method public UngrabKeyboard(I)V
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "WINDOWS_MANAGER",
            "CURSORS_MANAGER",
            "FOCUS_MANAGER"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x20
    .end annotation

    return-void
.end method

.method public UngrabPointer(I)V
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/Locks;
        value = {
            "WINDOWS_MANAGER",
            "FOCUS_MANAGER",
            "INPUT_DEVICES"
        }
    .end annotation

    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x1b
    .end annotation

    if-eqz p1, :cond_0

    .line 70
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet()V

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getGrabsManager()Lcom/eltechs/axs/xserver/GrabsManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/GrabsManager;->disablePointerGrab()V

    return-void
.end method
