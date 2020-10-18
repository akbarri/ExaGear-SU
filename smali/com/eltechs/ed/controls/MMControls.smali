.class public Lcom/eltechs/ed/controls/MMControls;
.super Lcom/eltechs/ed/controls/Controls;
.source "MMControls.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/eltechs/ed/controls/Controls;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;
    .locals 1

    .line 52
    new-instance v0, Lcom/eltechs/axs/gamesControls/MM6InterfaceOverlay;

    invoke-direct {v0}, Lcom/eltechs/axs/gamesControls/MM6InterfaceOverlay;-><init>()V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "mm"

    return-object v0
.end method

.method public getInfoElems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/eltechs/ed/controls/ControlsInfoElem;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xd

    .line 30
    new-array v0, v0, [Lcom/eltechs/ed/controls/ControlsInfoElem;

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v2, "Might and Magic"

    const-string v3, "These controls are optimized for Might and Magic 6/7/8. But you can also try them with other similar games."

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v2, "Left Click"

    const-string v3, "Short tap"

    const v5, 0x7f080087

    invoke-direct {v1, v5, v2, v3}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v2, "Long Left Click"

    const-string v3, "Long tap when [Mouse mode] is \'Left\'"

    const v5, 0x7f080089

    invoke-direct {v1, v5, v2, v3}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v2, "Long Right Click"

    const-string v3, "Long tap when [Mouse mode] is \'Right\'"

    const v5, 0x7f08008f

    invoke-direct {v1, v5, v2, v3}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v2, "Move And Strafe"

    const-string v3, "Move finger in left part of screen"

    const v5, 0x7f08008c

    invoke-direct {v1, v5, v2, v3}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v2, "Turn Left/Right"

    const-string v3, "Move finger in right part of screen"

    const v5, 0x7f080095

    invoke-direct {v1, v5, v2, v3}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v2, "Zoom"

    const-string v3, "Two fingers long tap & move"

    const v5, 0x7f080097

    invoke-direct {v1, v5, v2, v3}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v2, "Press Enter"

    const-string v3, "Two fingers tap"

    const v5, 0x7f080085

    invoke-direct {v1, v5, v2, v3}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v2, "Press Space"

    const-string v3, "Three fingers tap"

    const v5, 0x7f080093

    invoke-direct {v1, v5, v2, v3}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v2, "App Menu"

    const-string v3, "Four fingers tap"

    const v5, 0x7f08008b

    invoke-direct {v1, v5, v2, v3}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v2, "Left Toolbar Buttons"

    const-string v3, "Left toolbar contains:\n- \'Run On/Off\' button (toggles Shift key state to switch between run/walk)\n- Some useful keys buttons"

    invoke-direct {v1, v4, v2, v3}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v2, "Right Toolbar Buttons"

    const-string v3, "Right toolbar contains:\n- \'Switch Mouse Mode\' button (see below)\n- Some useful keys buttons"

    invoke-direct {v1, v4, v2, v3}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v2, "Switch Mouse Mode"

    const-string v3, "Switches [Mouse Mode] between \'Left\' and \'Right\'"

    const v4, 0x7f0800b2

    invoke-direct {v1, v4, v2, v3}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Might and Magic"

    return-object v0
.end method
