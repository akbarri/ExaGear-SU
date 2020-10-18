.class public Lcom/eltechs/ed/controls/FalloutControls;
.super Lcom/eltechs/ed/controls/Controls;
.source "FalloutControls.java"


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

    .line 49
    new-instance v0, Lcom/eltechs/axs/gamesControls/FalloutInterfaceOverlay;

    invoke-direct {v0}, Lcom/eltechs/axs/gamesControls/FalloutInterfaceOverlay;-><init>()V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "fallout"

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

    const/16 v0, 0xa

    .line 30
    new-array v0, v0, [Lcom/eltechs/ed/controls/ControlsInfoElem;

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v2, "Fallout"

    const-string v3, "These controls are optimized for Fallout 1/2. But you can also try them with other similar games."

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

    const-string v2, "Right Click"

    const-string v3, "Two fingers short tap"

    const v5, 0x7f08008e

    invoke-direct {v1, v5, v2, v3}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v2, "Drag\'n\'Drop (Left Button)"

    const-string v3, "Slow finger move"

    const v5, 0x7f080083

    invoke-direct {v1, v5, v2, v3}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v2, "Drag\'n\'Drop (Right Button)"

    const-string v3, "Two fingers long tap & move"

    const v5, 0x7f080084

    invoke-direct {v1, v5, v2, v3}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v2, "Scroll (Mouse)"

    const-string v3, "Fast finger move"

    const v5, 0x7f080092

    invoke-direct {v1, v5, v2, v3}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v2, "Zoom"

    const-string v3, "Three fingers long tap & move"

    const v5, 0x7f080097

    invoke-direct {v1, v5, v2, v3}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v2, "App Menu"

    const-string v3, "Four fingers tap"

    const v5, 0x7f08008b

    invoke-direct {v1, v5, v2, v3}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v2, "Left Toolbar Buttons"

    const-string v3, "Left toolbar contains:\n- Some useful keys buttons"

    invoke-direct {v1, v4, v2, v3}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v2, "Right Toolbar Buttons"

    const-string v3, "Right toolbar contains:\n- \'Sync Cursor\' button (syncs cursor position with finger position)\n- Some useful keys buttons"

    invoke-direct {v1, v4, v2, v3}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Fallout"

    return-object v0
.end method
