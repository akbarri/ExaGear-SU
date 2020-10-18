.class public Lcom/eltechs/ed/controls/DiabloControls;
.super Lcom/eltechs/ed/controls/Controls;
.source "DiabloControls.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/eltechs/ed/controls/Controls;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;
    .locals 1

    .line 34
    new-instance v0, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;

    invoke-direct {v0}, Lcom/eltechs/axs/gamesControls/DiabloInterfaceOverlay;-><init>()V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "diablo"

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

    .line 20
    new-array v0, v0, [Lcom/eltechs/ed/controls/ControlsInfoElem;

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const/4 v2, 0x0

    const-string v3, "Diablo"

    const-string v4, "These controls are optimized for Diablo 2."

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

    const v3, 0x7f08008e

    const-string v4, "Right Click"

    const-string v5, "Two fingers short tap"

    invoke-direct {v1, v3, v4, v5}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const v3, 0x7f080083

    const-string v4, "Drag\'n\'Drop (Left Button)"

    const-string v5, "Slow finger move"

    invoke-direct {v1, v3, v4, v5}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const v3, 0x7f080084

    const-string v4, "Drag\'n\'Drop (Right Button)"

    const-string v5, "Two fingers long tap & move"

    invoke-direct {v1, v3, v4, v5}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const v3, 0x7f080092

    const-string v4, "Scroll (Mouse)"

    const-string v5, "Fast finger move"

    invoke-direct {v1, v3, v4, v5}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const v3, 0x7f080097

    const-string v4, "Zoom"

    const-string v5, "Three fingers long tap & move"

    invoke-direct {v1, v3, v4, v5}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const v3, 0x7f08008b

    const-string v4, "App Menu"

    const-string v5, "Four fingers tap"

    invoke-direct {v1, v3, v4, v5}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v3, "Left Toolbar Buttons"

    const-string v4, "Left toolbar contains:\n- Some useful keys buttons"

    invoke-direct {v1, v2, v3, v4}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x8

    aput-object v1, v0, v3

    new-instance v1, Lcom/eltechs/ed/controls/ControlsInfoElem;

    const-string v3, "Right Toolbar Buttons"

    const-string v4, "Right toolbar contains:\n- Some useful keys buttons"

    invoke-direct {v1, v2, v3, v4}, Lcom/eltechs/ed/controls/ControlsInfoElem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Diablo"

    return-object v0
.end method
