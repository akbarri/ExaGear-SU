.class public Lcom/eltechs/axs/desktopExperience/ICCCMHelpers;
.super Ljava/lang/Object;
.source "ICCCMHelpers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setWMState(Lcom/eltechs/axs/xserver/XServer;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateProperty;)V
    .locals 7

    .line 25
    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/XServer;->getAtomsManager()Lcom/eltechs/axs/xserver/AtomsManager;

    move-result-object p0

    const-string v0, "WM_STATE"

    invoke-interface {p0, v0}, Lcom/eltechs/axs/xserver/AtomsManager;->getAtom(Ljava/lang/String;)Lcom/eltechs/axs/xserver/Atom;

    move-result-object v3

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    move v1, p0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Atom WM_STATE must be predefined"

    .line 26
    invoke-static {v1, v2}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    const/4 v1, 0x2

    .line 27
    new-array v6, v1, [I

    iget-object v1, p2, Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateProperty;->state:Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;

    invoke-virtual {v1}, Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;->value()I

    move-result v1

    aput v1, v6, v0

    iget-object v1, p2, Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateProperty;->iconWindow:Lcom/eltechs/axs/xserver/Window;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p2, Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateProperty;->iconWindow:Lcom/eltechs/axs/xserver/Window;

    .line 30
    invoke-interface {p2}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v0

    :goto_1
    aput v0, v6, p0

    .line 32
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getPropertiesManager()Lcom/eltechs/axs/xserver/WindowPropertiesManager;

    move-result-object v1

    sget-object v4, Lcom/eltechs/axs/xserver/WindowProperty;->ARRAY_OF_INTS:Lcom/eltechs/axs/xserver/WindowProperty$Format;

    sget-object v5, Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;->REPLACE:Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;

    move-object v2, v3

    invoke-interface/range {v1 .. v6}, Lcom/eltechs/axs/xserver/WindowPropertiesManager;->modifyProperty(Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/WindowProperty$Format;Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;Ljava/lang/Object;)Z

    return-void
.end method
