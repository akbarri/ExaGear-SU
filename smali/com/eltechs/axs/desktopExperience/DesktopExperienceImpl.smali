.class public Lcom/eltechs/axs/desktopExperience/DesktopExperienceImpl;
.super Ljava/lang/Object;
.source "DesktopExperienceImpl.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/DesktopExperience;
.implements Lcom/eltechs/axs/xserver/PointerListener;
.implements Lcom/eltechs/axs/xserver/WindowLifecycleListener;


# instance fields
.field private xServer:Lcom/eltechs/axs/xserver/XServer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initXResources()V
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/eltechs/axs/desktopExperience/DesktopExperienceImpl;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/WindowsManager;->getRootWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    new-instance v1, Lcom/eltechs/axs/desktopExperience/XResourceCursor;

    const-string v2, "dmz"

    const/16 v3, 0x18

    const/4 v4, 0x1

    invoke-direct {v1, v3, v2, v4}, Lcom/eltechs/axs/desktopExperience/XResourceCursor;-><init>(ILjava/lang/String;Z)V

    invoke-direct {p0, v0, v1}, Lcom/eltechs/axs/desktopExperience/DesktopExperienceImpl;->setXResourceToWindow(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/desktopExperience/XResource;)V

    return-void
.end method

.method private setXResourceToWindow(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/desktopExperience/XResource;)V
    .locals 8

    .line 117
    iget-object v0, p0, Lcom/eltechs/axs/desktopExperience/DesktopExperienceImpl;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getAtomsManager()Lcom/eltechs/axs/xserver/AtomsManager;

    move-result-object v0

    const-string v1, "RESOURCE_MANAGER"

    .line 119
    invoke-interface {v0, v1}, Lcom/eltechs/axs/xserver/AtomsManager;->getAtom(Ljava/lang/String;)Lcom/eltechs/axs/xserver/Atom;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    const-string v5, "Atom RESOURCE_MANAGER must be predefined"

    .line 120
    invoke-static {v4, v5}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    const-string v4, "STRING"

    .line 122
    invoke-interface {v0, v4}, Lcom/eltechs/axs/xserver/AtomsManager;->getAtom(Ljava/lang/String;)Lcom/eltechs/axs/xserver/Atom;

    move-result-object v4

    if-eqz v4, :cond_1

    move v1, v2

    :cond_1
    const-string v0, "Atom STRING must be predefined"

    .line 123
    invoke-static {v1, v0}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    invoke-interface {p2}, Lcom/eltechs/axs/desktopExperience/XResource;->getKeyValPairs()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 129
    invoke-interface {p2}, Lcom/eltechs/axs/desktopExperience/XResource;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    .line 130
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3a

    .line 132
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0x9

    .line 133
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 138
    :cond_2
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getPropertiesManager()Lcom/eltechs/axs/xserver/WindowPropertiesManager;

    move-result-object v2

    sget-object v5, Lcom/eltechs/axs/xserver/WindowProperty;->ARRAY_OF_BYTES:Lcom/eltechs/axs/xserver/WindowProperty$Format;

    sget-object v6, Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;->APPEND:Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "latin1"

    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    .line 138
    invoke-interface/range {v2 .. v7}, Lcom/eltechs/axs/xserver/WindowPropertiesManager;->modifyProperty(Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/WindowProperty$Format;Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public attachToXServer(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 4

    .line 27
    iput-object p1, p0, Lcom/eltechs/axs/desktopExperience/DesktopExperienceImpl;->xServer:Lcom/eltechs/axs/xserver/XServer;

    .line 29
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    sget-object v2, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->DESKTOP_EXPERIENCE:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->INPUT_DEVICES:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->WINDOWS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->ATOMS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/eltechs/axs/xserver/LocksManager;->lock([Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 31
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/eltechs/axs/xserver/XServer;->desktopExperienceAttached(Lcom/eltechs/axs/xserver/DesktopExperience;)V

    .line 32
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/eltechs/axs/xserver/Pointer;->addListener(Lcom/eltechs/axs/xserver/PointerListener;)V

    .line 33
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/eltechs/axs/xserver/WindowsManager;->addWindowLifecycleListener(Lcom/eltechs/axs/xserver/WindowLifecycleListener;)V

    .line 34
    invoke-direct {p0}, Lcom/eltechs/axs/desktopExperience/DesktopExperienceImpl;->initXResources()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 29
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 35
    :try_start_2
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_2
    :goto_1
    throw p1
.end method

.method public detachFromXServer()V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/eltechs/axs/desktopExperience/DesktopExperienceImpl;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    sget-object v2, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->DESKTOP_EXPERIENCE:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->INPUT_DEVICES:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->WINDOWS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/eltechs/axs/xserver/LocksManager;->lock([Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 43
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/desktopExperience/DesktopExperienceImpl;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/eltechs/axs/xserver/Pointer;->removeListener(Lcom/eltechs/axs/xserver/PointerListener;)V

    .line 44
    iget-object v2, p0, Lcom/eltechs/axs/desktopExperience/DesktopExperienceImpl;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/eltechs/axs/xserver/WindowsManager;->removeWindowLifecycleListener(Lcom/eltechs/axs/xserver/WindowLifecycleListener;)V

    .line 45
    iget-object v2, p0, Lcom/eltechs/axs/desktopExperience/DesktopExperienceImpl;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2, p0}, Lcom/eltechs/axs/xserver/XServer;->desktopExperienceDetached(Lcom/eltechs/axs/xserver/DesktopExperience;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 41
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 46
    :try_start_2
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_2
    :goto_1
    throw v2
.end method

.method public pointerButtonPressed(I)V
    .locals 6

    .line 52
    iget-object p1, p0, Lcom/eltechs/axs/desktopExperience/DesktopExperienceImpl;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->WINDOWS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->FOCUS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->INPUT_DEVICES:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/eltechs/axs/xserver/LocksManager;->lock([Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object p1

    const/4 v0, 0x0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/eltechs/axs/desktopExperience/DesktopExperienceImpl;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/XServer;->getFocusManager()Lcom/eltechs/axs/xserver/FocusManager;

    move-result-object v1

    .line 59
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/FocusManager;->getFocusedWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v2

    .line 60
    iget-object v3, p0, Lcom/eltechs/axs/desktopExperience/DesktopExperienceImpl;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v3

    .line 61
    iget-object v4, p0, Lcom/eltechs/axs/desktopExperience/DesktopExperienceImpl;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v4}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/eltechs/axs/xserver/WindowsManager;->getRootWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v4

    .line 64
    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/Pointer;->getX()I

    move-result v5

    .line 65
    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/Pointer;->getY()I

    move-result v3

    .line 63
    invoke-static {v4, v5, v3}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getDirectMappedSubWindowByCoords(Lcom/eltechs/axs/xserver/Window;II)Lcom/eltechs/axs/xserver/Window;

    move-result-object v3

    if-nez v3, :cond_0

    .line 67
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/FocusManager;->getFocusedWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v5

    if-eq v5, v4, :cond_0

    .line 70
    sget-object v2, Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;->NONE:Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

    invoke-interface {v1, v4, v2}, Lcom/eltechs/axs/xserver/FocusManager;->setFocus(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;)V

    goto :goto_0

    :cond_0
    if-eq v3, v2, :cond_1

    .line 73
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/FocusManager;->getFocusReversionPolicy()Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/eltechs/axs/xserver/FocusManager;->setFocus(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 75
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 52
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    .line 75
    :try_start_2
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_4
    :goto_2
    throw v1
.end method

.method public pointerButtonReleased(I)V
    .locals 0

    return-void
.end method

.method public pointerMoved(II)V
    .locals 0

    return-void
.end method

.method public pointerWarped(II)V
    .locals 0

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
    .locals 3

    .line 84
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getParent()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/desktopExperience/DesktopExperienceImpl;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/eltechs/axs/xserver/WindowsManager;->getRootWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/eltechs/axs/desktopExperience/DesktopExperienceImpl;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getFocusManager()Lcom/eltechs/axs/xserver/FocusManager;

    move-result-object v0

    sget-object v1, Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;->POINTER_ROOT:Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

    invoke-interface {v0, p1, v1}, Lcom/eltechs/axs/xserver/FocusManager;->setFocus(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;)V

    .line 94
    new-instance v0, Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateProperty;

    sget-object v1, Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;->NORMAL:Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateProperty;-><init>(Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;Lcom/eltechs/axs/xserver/Window;)V

    .line 95
    iget-object v1, p0, Lcom/eltechs/axs/desktopExperience/DesktopExperienceImpl;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-static {v1, p1, v0}, Lcom/eltechs/axs/desktopExperience/ICCCMHelpers;->setWMState(Lcom/eltechs/axs/xserver/XServer;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateProperty;)V

    :cond_0
    return-void
.end method

.method public windowReparented(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    return-void
.end method

.method public windowUnmapped(Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    return-void
.end method

.method public windowZOrderChange(Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    return-void
.end method
