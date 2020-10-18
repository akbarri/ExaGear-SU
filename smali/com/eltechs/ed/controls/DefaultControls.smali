.class public Lcom/eltechs/ed/controls/DefaultControls;
.super Lcom/eltechs/ed/controls/Controls;
.source "DefaultControls.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/eltechs/ed/controls/Controls;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;
    .locals 2

    .line 46
    new-instance v0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;

    new-instance v1, Lcom/eltechs/ed/controls/touchControls/DefaultTCF;

    invoke-direct {v1}, Lcom/eltechs/ed/controls/touchControls/DefaultTCF;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;-><init>(Lcom/eltechs/ed/controls/Controls;Lcom/eltechs/ed/controls/touchControls/AbstractTCF;)V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "default"

    return-object v0
.end method

.method public getInfoElems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/eltechs/ed/controls/ControlsInfoElem;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 31
    new-array v0, v0, [Lcom/eltechs/ed/controls/ControlsInfoElem;

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v2, "Default Controls"

    const-string v3, "These controls should be suitable for most regular (non-game) applications."

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v2, "Left Click"

    const-string v3, "Short tap"

    const v4, 0x7f080087

    invoke-direct {v1, v4, v2, v3}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v2, "Right Click"

    const-string v3, "Long tap & release"

    const v4, 0x7f08008e

    invoke-direct {v1, v4, v2, v3}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v2, "Vertical Scroll (Wheel)"

    const-string v3, "Short tap & move"

    const v4, 0x7f080096

    invoke-direct {v1, v4, v2, v3}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v2, "Drag\'n\'Drop (Left Button)"

    const-string v3, "Long tap & move"

    const v4, 0x7f080083

    invoke-direct {v1, v4, v2, v3}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v2, "Zoom"

    const-string v3, "Two fingers long tap & move"

    const v4, 0x7f080097

    invoke-direct {v1, v4, v2, v3}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v2, "Toggle Keyboard"

    const-string v3, "Two fingers tap"

    const v4, 0x7f080086

    invoke-direct {v1, v4, v2, v3}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v2, "Toggle Toolbar"

    const-string v3, "Three fingers tap"

    const v4, 0x7f080094

    invoke-direct {v1, v4, v2, v3}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Default"

    return-object v0
.end method
