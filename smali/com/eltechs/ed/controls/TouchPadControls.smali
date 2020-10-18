.class public Lcom/eltechs/ed/controls/TouchPadControls;
.super Lcom/eltechs/ed/controls/Controls;
.source "TouchPadControls.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/eltechs/ed/controls/Controls;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;
    .locals 1

    .line 32
    new-instance v0, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;

    invoke-direct {v0}, Lcom/eltechs/axs/gamesControls/TouchPadInterfaceOverlay;-><init>()V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "touchpad"

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

    const/16 v0, 0x9

    .line 19
    new-array v0, v0, [Lcom/eltechs/ed/controls/ControlsInfoElem;

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const/4 v2, 0x0

    const-string v3, "Touch Pad"

    const-string v4, "These controls use touch pad mode."

    invoke-direct {v1, v2, v3, v4}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const v3, 0x7f080087

    const-string v4, "Left Click"

    const-string v5, "Short tap"

    invoke-direct {v1, v3, v4, v5}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const v3, 0x7f080083

    const-string v4, "Drag\'n\'Drop (Left Button)"

    const-string v5, "Two fingers tap and move one finger"

    invoke-direct {v1, v3, v4, v5}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const v3, 0x7f080096

    const-string v4, "Scroll (Mouse)"

    const-string v5, "Two fingers tap & move"

    invoke-direct {v1, v3, v4, v5}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const v3, 0x7f080097

    const-string v4, "Zoom"

    const-string v5, "Three fingers long tap & move"

    invoke-direct {v1, v3, v4, v5}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const v3, 0x7f080093

    const-string v4, "Press Space"

    const-string v5, "Three fingers tap"

    invoke-direct {v1, v3, v4, v5}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const v3, 0x7f08008b

    const-string v4, "App Menu"

    const-string v5, "Four fingers tap"

    invoke-direct {v1, v3, v4, v5}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v3, "Left Toolbar Buttons"

    const-string v4, "Left toolbar contains:\n- Some useful keys buttons"

    invoke-direct {v1, v2, v3, v4}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v3, "Right Toolbar Buttons"

    const-string v4, "Right toolbar contains:\n- Some useful keys buttons"

    invoke-direct {v1, v2, v3, v4}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Touch Pad"

    return-object v0
.end method
