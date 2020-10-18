.class public Lcom/eltechs/axs/xserver/XServer;
.super Ljava/lang/Object;
.source "XServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/xserver/XServer$Lock;
    }
.end annotation


# instance fields
.field private final atomsManager:Lcom/eltechs/axs/xserver/AtomsManager;

.field private final colormapsManager:Lcom/eltechs/axs/xserver/ColormapsManager;

.field private final cursorsManager:Lcom/eltechs/axs/xserver/CursorsManager;

.field private desktopExperience:Lcom/eltechs/axs/xserver/DesktopExperience;

.field private final drawablesManager:Lcom/eltechs/axs/xserver/DrawablesManager;

.field private final eventsInjector:Lcom/eltechs/axs/xserver/EventsInjector;

.field private final focusManager:Lcom/eltechs/axs/xserver/FocusManager;

.field private final grabsManager:Lcom/eltechs/axs/xserver/GrabsManager;

.field private final graphicsContextsManager:Lcom/eltechs/axs/xserver/GraphicsContextsManager;

.field private final idIntervalsManager:Lcom/eltechs/axs/xserver/IdIntervalsManager;

.field private final keyboard:Lcom/eltechs/axs/xserver/Keyboard;

.field private final keyboardEventSender:Lcom/eltechs/axs/xserver/KeyboardEventSender;

.field private final keyboardModelManager:Lcom/eltechs/axs/xserver/KeyboardModelManager;

.field private final locksManager:Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;

.field private final pixmapsManager:Lcom/eltechs/axs/xserver/PixmapsManager;

.field private final pointer:Lcom/eltechs/axs/xserver/Pointer;

.field private final pointerEventSender:Lcom/eltechs/axs/xserver/PointerEventSender;

.field private final renderingEngine:Lcom/eltechs/axs/rendering/RenderingEngine;

.field private final screenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

.field private final selectionsManager:Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;

.field private final shmSegmentsManager:Lcom/eltechs/axs/xserver/impl/ShmSegmentsManagerImpl;

.field private final windowsManager:Lcom/eltechs/axs/xserver/WindowsManager;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/ScreenInfo;Lcom/eltechs/axs/xserver/KeyboardModel;Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;Lcom/eltechs/axs/sysvipc/SHMEngine;Lcom/eltechs/axs/rendering/RenderingEngine;I)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->desktopExperience:Lcom/eltechs/axs/xserver/DesktopExperience;

    .line 54
    iput-object p1, p0, Lcom/eltechs/axs/xserver/XServer;->screenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    .line 55
    iput-object p5, p0, Lcom/eltechs/axs/xserver/XServer;->renderingEngine:Lcom/eltechs/axs/rendering/RenderingEngine;

    .line 57
    new-instance p5, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;

    invoke-direct {p5}, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;-><init>()V

    iput-object p5, p0, Lcom/eltechs/axs/xserver/XServer;->locksManager:Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;

    .line 59
    new-instance p5, Lcom/eltechs/axs/xserver/impl/AtomsManagerImpl;

    invoke-direct {p5}, Lcom/eltechs/axs/xserver/impl/AtomsManagerImpl;-><init>()V

    iput-object p5, p0, Lcom/eltechs/axs/xserver/XServer;->atomsManager:Lcom/eltechs/axs/xserver/AtomsManager;

    .line 60
    iget-object p5, p0, Lcom/eltechs/axs/xserver/XServer;->atomsManager:Lcom/eltechs/axs/xserver/AtomsManager;

    invoke-static {p5}, Lcom/eltechs/axs/xserver/impl/PredefinedAtoms;->configurePredefinedAtoms(Lcom/eltechs/axs/xserver/AtomsManager;)V

    .line 62
    new-instance p5, Lcom/eltechs/axs/xserver/impl/DrawablesManagerImpl;

    invoke-direct {p5, p3}, Lcom/eltechs/axs/xserver/impl/DrawablesManagerImpl;-><init>(Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;)V

    iput-object p5, p0, Lcom/eltechs/axs/xserver/XServer;->drawablesManager:Lcom/eltechs/axs/xserver/DrawablesManager;

    .line 63
    new-instance p5, Lcom/eltechs/axs/xserver/impl/GraphicsContextsManagerImpl;

    invoke-direct {p5}, Lcom/eltechs/axs/xserver/impl/GraphicsContextsManagerImpl;-><init>()V

    iput-object p5, p0, Lcom/eltechs/axs/xserver/XServer;->graphicsContextsManager:Lcom/eltechs/axs/xserver/GraphicsContextsManager;

    .line 64
    new-instance p5, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;

    iget-object v1, p0, Lcom/eltechs/axs/xserver/XServer;->drawablesManager:Lcom/eltechs/axs/xserver/DrawablesManager;

    invoke-direct {p5, p1, v1}, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;-><init>(Lcom/eltechs/axs/xserver/ScreenInfo;Lcom/eltechs/axs/xserver/DrawablesManager;)V

    iput-object p5, p0, Lcom/eltechs/axs/xserver/XServer;->windowsManager:Lcom/eltechs/axs/xserver/WindowsManager;

    .line 65
    new-instance p1, Lcom/eltechs/axs/xserver/impl/PixmapsManagerImpl;

    iget-object p5, p0, Lcom/eltechs/axs/xserver/XServer;->drawablesManager:Lcom/eltechs/axs/xserver/DrawablesManager;

    invoke-direct {p1, p5}, Lcom/eltechs/axs/xserver/impl/PixmapsManagerImpl;-><init>(Lcom/eltechs/axs/xserver/DrawablesManager;)V

    iput-object p1, p0, Lcom/eltechs/axs/xserver/XServer;->pixmapsManager:Lcom/eltechs/axs/xserver/PixmapsManager;

    .line 66
    new-instance p1, Lcom/eltechs/axs/xserver/impl/CursorsManagerImpl;

    invoke-direct {p1, p3}, Lcom/eltechs/axs/xserver/impl/CursorsManagerImpl;-><init>(Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;)V

    iput-object p1, p0, Lcom/eltechs/axs/xserver/XServer;->cursorsManager:Lcom/eltechs/axs/xserver/CursorsManager;

    .line 67
    new-instance p1, Lcom/eltechs/axs/xserver/impl/ColormapsManagerImpl;

    invoke-direct {p1}, Lcom/eltechs/axs/xserver/impl/ColormapsManagerImpl;-><init>()V

    iput-object p1, p0, Lcom/eltechs/axs/xserver/XServer;->colormapsManager:Lcom/eltechs/axs/xserver/ColormapsManager;

    .line 68
    new-instance p1, Lcom/eltechs/axs/xserver/impl/ShmSegmentsManagerImpl;

    invoke-direct {p1, p4}, Lcom/eltechs/axs/xserver/impl/ShmSegmentsManagerImpl;-><init>(Lcom/eltechs/axs/sysvipc/SHMEngine;)V

    iput-object p1, p0, Lcom/eltechs/axs/xserver/XServer;->shmSegmentsManager:Lcom/eltechs/axs/xserver/impl/ShmSegmentsManagerImpl;

    .line 69
    new-instance p1, Lcom/eltechs/axs/xserver/impl/KeyboardModelManagerImpl;

    invoke-direct {p1, p2}, Lcom/eltechs/axs/xserver/impl/KeyboardModelManagerImpl;-><init>(Lcom/eltechs/axs/xserver/KeyboardModel;)V

    iput-object p1, p0, Lcom/eltechs/axs/xserver/XServer;->keyboardModelManager:Lcom/eltechs/axs/xserver/KeyboardModelManager;

    .line 70
    new-instance p1, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;

    invoke-direct {p1, v0, p0}, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;-><init>(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/XServer;)V

    iput-object p1, p0, Lcom/eltechs/axs/xserver/XServer;->focusManager:Lcom/eltechs/axs/xserver/FocusManager;

    .line 71
    new-instance p1, Lcom/eltechs/axs/xserver/impl/EventsInjectorImpl;

    invoke-direct {p1, p0}, Lcom/eltechs/axs/xserver/impl/EventsInjectorImpl;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    iput-object p1, p0, Lcom/eltechs/axs/xserver/XServer;->eventsInjector:Lcom/eltechs/axs/xserver/EventsInjector;

    .line 72
    new-instance p1, Lcom/eltechs/axs/xserver/Pointer;

    invoke-direct {p1, p0}, Lcom/eltechs/axs/xserver/Pointer;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    iput-object p1, p0, Lcom/eltechs/axs/xserver/XServer;->pointer:Lcom/eltechs/axs/xserver/Pointer;

    .line 73
    new-instance p1, Lcom/eltechs/axs/xserver/Keyboard;

    invoke-direct {p1, p0}, Lcom/eltechs/axs/xserver/Keyboard;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    iput-object p1, p0, Lcom/eltechs/axs/xserver/XServer;->keyboard:Lcom/eltechs/axs/xserver/Keyboard;

    .line 74
    new-instance p1, Lcom/eltechs/axs/xserver/impl/IdIntervalsManagerImpl;

    invoke-direct {p1, p6}, Lcom/eltechs/axs/xserver/impl/IdIntervalsManagerImpl;-><init>(I)V

    iput-object p1, p0, Lcom/eltechs/axs/xserver/XServer;->idIntervalsManager:Lcom/eltechs/axs/xserver/IdIntervalsManager;

    .line 76
    iget-object p1, p0, Lcom/eltechs/axs/xserver/XServer;->locksManager:Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;

    const/4 p2, 0x2

    new-array p2, p2, [Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    sget-object p3, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->WINDOWS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 p4, 0x0

    aput-object p3, p2, p4

    sget-object p3, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->INPUT_DEVICES:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 p4, 0x1

    aput-object p3, p2, p4

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->lock([Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object p1

    .line 78
    :try_start_0
    new-instance p2, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;

    invoke-direct {p2, p0}, Lcom/eltechs/axs/xserver/impl/GrabsManagerImpl;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    iput-object p2, p0, Lcom/eltechs/axs/xserver/XServer;->grabsManager:Lcom/eltechs/axs/xserver/GrabsManager;

    .line 79
    new-instance p2, Lcom/eltechs/axs/xserver/PointerEventSender;

    invoke-direct {p2, p0}, Lcom/eltechs/axs/xserver/PointerEventSender;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    iput-object p2, p0, Lcom/eltechs/axs/xserver/XServer;->pointerEventSender:Lcom/eltechs/axs/xserver/PointerEventSender;

    .line 80
    new-instance p2, Lcom/eltechs/axs/xserver/KeyboardEventSender;

    invoke-direct {p2, p0}, Lcom/eltechs/axs/xserver/KeyboardEventSender;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    iput-object p2, p0, Lcom/eltechs/axs/xserver/XServer;->keyboardEventSender:Lcom/eltechs/axs/xserver/KeyboardEventSender;

    .line 81
    new-instance p2, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;

    invoke-direct {p2, p0}, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    iput-object p2, p0, Lcom/eltechs/axs/xserver/XServer;->selectionsManager:Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 82
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    move-object v0, p2

    .line 76
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    .line 82
    :try_start_2
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_2
    :goto_1
    throw p2
.end method


# virtual methods
.method public desktopExperienceAttached(Lcom/eltechs/axs/xserver/DesktopExperience;)V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->locksManager:Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->DESKTOP_EXPERIENCE:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->isLocked(Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Z

    move-result v0

    const-string v1, "Access to the desktop experience plugin must be protected with a lock of type DESKTOP_EXPERIENCE."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->desktopExperience:Lcom/eltechs/axs/xserver/DesktopExperience;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Can have no more that 1 desktop experience module attached."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 226
    iput-object p1, p0, Lcom/eltechs/axs/xserver/XServer;->desktopExperience:Lcom/eltechs/axs/xserver/DesktopExperience;

    return-void
.end method

.method public desktopExperienceDetached(Lcom/eltechs/axs/xserver/DesktopExperience;)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->locksManager:Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->DESKTOP_EXPERIENCE:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->isLocked(Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Z

    move-result v0

    const-string v1, "Access to the desktop experience plugin must be protected with a lock of type DESKTOP_EXPERIENCE."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    if-ne p1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 238
    :goto_0
    invoke-static {p1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    const/4 p1, 0x0

    .line 239
    iput-object p1, p0, Lcom/eltechs/axs/xserver/XServer;->desktopExperience:Lcom/eltechs/axs/xserver/DesktopExperience;

    return-void
.end method

.method public getAtomsManager()Lcom/eltechs/axs/xserver/AtomsManager;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->locksManager:Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->ATOMS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->isLocked(Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Z

    move-result v0

    const-string v1, "Access to the atoms manager must be protected with a lock of type ATOMS_MANAGER."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->atomsManager:Lcom/eltechs/axs/xserver/AtomsManager;

    return-object v0
.end method

.method public getColormapsManager()Lcom/eltechs/axs/xserver/ColormapsManager;
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->locksManager:Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->COLORMAPS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->isLocked(Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Z

    move-result v0

    const-string v1, "Access to the colormaps manager must be protected with a lock of type COLORMAPS_MANAGER."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->colormapsManager:Lcom/eltechs/axs/xserver/ColormapsManager;

    return-object v0
.end method

.method public getCursorsManager()Lcom/eltechs/axs/xserver/CursorsManager;
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->locksManager:Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->CURSORS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->isLocked(Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Z

    move-result v0

    const-string v1, "Access to the cursors manager must be protected with a lock of type CURSORS_MANAGER."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->cursorsManager:Lcom/eltechs/axs/xserver/CursorsManager;

    return-object v0
.end method

.method public getDrawablesManager()Lcom/eltechs/axs/xserver/DrawablesManager;
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->locksManager:Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->DRAWABLES_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->isLocked(Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Z

    move-result v0

    const-string v1, "Access to the drawables manager must be protected with a lock of type DRAWABLES_MANAGER."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->drawablesManager:Lcom/eltechs/axs/xserver/DrawablesManager;

    return-object v0
.end method

.method public getEventsInjector()Lcom/eltechs/axs/xserver/EventsInjector;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->eventsInjector:Lcom/eltechs/axs/xserver/EventsInjector;

    return-object v0
.end method

.method public getFocusManager()Lcom/eltechs/axs/xserver/FocusManager;
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->locksManager:Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->FOCUS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->isLocked(Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Z

    move-result v0

    const-string v1, "Access to the focus manager must be protected with a lock of type FOCUS_MANAGER."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->focusManager:Lcom/eltechs/axs/xserver/FocusManager;

    return-object v0
.end method

.method public getGrabsManager()Lcom/eltechs/axs/xserver/GrabsManager;
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->locksManager:Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->INPUT_DEVICES:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->isLocked(Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Z

    move-result v0

    const-string v1, "Access to the grabs must be protected with a lock of type INPUT_DEVICES"

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->grabsManager:Lcom/eltechs/axs/xserver/GrabsManager;

    return-object v0
.end method

.method public getGraphicsContextsManager()Lcom/eltechs/axs/xserver/GraphicsContextsManager;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->locksManager:Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->GRAPHICS_CONTEXTS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->isLocked(Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Z

    move-result v0

    const-string v1, "Access to the graphics contexts manager must be protected with a lock of type GRAPHICS_CONTEXTS_MANAGER."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->graphicsContextsManager:Lcom/eltechs/axs/xserver/GraphicsContextsManager;

    return-object v0
.end method

.method public getIdIntervalsManager()Lcom/eltechs/axs/xserver/IdIntervalsManager;
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->locksManager:Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->ID_INTERVALS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->isLocked(Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Z

    move-result v0

    const-string v1, "Access to the id intervals manager must be protected with a lock of type ID_INTERVALS_MANAGER."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->idIntervalsManager:Lcom/eltechs/axs/xserver/IdIntervalsManager;

    return-object v0
.end method

.method public getKeyboard()Lcom/eltechs/axs/xserver/Keyboard;
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->locksManager:Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->INPUT_DEVICES:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->isLocked(Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Z

    move-result v0

    const-string v1, "Access to the keyboard must be protected with a lock of type INPUT_DEVICES"

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->keyboard:Lcom/eltechs/axs/xserver/Keyboard;

    return-object v0
.end method

.method public getKeyboardEventSender()Lcom/eltechs/axs/xserver/KeyboardEventSender;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->keyboardEventSender:Lcom/eltechs/axs/xserver/KeyboardEventSender;

    return-object v0
.end method

.method public getKeyboardModelManager()Lcom/eltechs/axs/xserver/KeyboardModelManager;
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->locksManager:Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->KEYBOARD_MODEL_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->isLocked(Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Z

    move-result v0

    const-string v1, "Access to the keyboard model manager must be protected with a lock of type KEYBOARD_MODEL_MANAGER."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->keyboardModelManager:Lcom/eltechs/axs/xserver/KeyboardModelManager;

    return-object v0
.end method

.method public getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->locksManager:Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;

    return-object v0
.end method

.method public getPixmapsManager()Lcom/eltechs/axs/xserver/PixmapsManager;
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->locksManager:Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->PIXMAPS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->isLocked(Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Z

    move-result v0

    const-string v1, "Access to the pixmaps manager must be protected with a lock of type PIXMAPS_MANAGER."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->pixmapsManager:Lcom/eltechs/axs/xserver/PixmapsManager;

    return-object v0
.end method

.method public getPointer()Lcom/eltechs/axs/xserver/Pointer;
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->locksManager:Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->INPUT_DEVICES:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->isLocked(Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Z

    move-result v0

    const-string v1, "Access to the pointer must be protected with a lock of type INPUT_DEVICES"

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->pointer:Lcom/eltechs/axs/xserver/Pointer;

    return-object v0
.end method

.method public getPointerEventSender()Lcom/eltechs/axs/xserver/PointerEventSender;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->pointerEventSender:Lcom/eltechs/axs/xserver/PointerEventSender;

    return-object v0
.end method

.method public getRenderingEngine()Lcom/eltechs/axs/rendering/RenderingEngine;
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->locksManager:Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->RENDERING_ENGINE:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->isLocked(Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Z

    move-result v0

    const-string v1, "Access to the rendering engine must be protected with a lock of type RENDERING_ENGINE."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->renderingEngine:Lcom/eltechs/axs/rendering/RenderingEngine;

    return-object v0
.end method

.method public getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->screenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    return-object v0
.end method

.method public getSelectionsManager()Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->locksManager:Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->SELECTIONS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->isLocked(Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Z

    move-result v0

    const-string v1, "Access to the selections manager must be protected with a lock of type SELECTIONS_MANAGER."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->selectionsManager:Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;

    return-object v0
.end method

.method public getShmSegmentsManager()Lcom/eltechs/axs/xserver/ShmSegmentsManager;
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->locksManager:Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->SHM_SEGMENTS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->isLocked(Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Z

    move-result v0

    const-string v1, "Access to the shared memory segments manager must be protected with a lock of type SHM_SEGMENTS_MANAGER."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->shmSegmentsManager:Lcom/eltechs/axs/xserver/impl/ShmSegmentsManagerImpl;

    return-object v0
.end method

.method public getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->locksManager:Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->WINDOWS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->isLocked(Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Z

    move-result v0

    const-string v1, "Access to the windows manager must be protected with a lock of type WINDOWS_MANAGER."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->windowsManager:Lcom/eltechs/axs/xserver/WindowsManager;

    return-object v0
.end method

.method public isHWRenderingAvailable()Z
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->renderingEngine:Lcom/eltechs/axs/rendering/RenderingEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->renderingEngine:Lcom/eltechs/axs/rendering/RenderingEngine;

    invoke-interface {v0}, Lcom/eltechs/axs/rendering/RenderingEngine;->isRenderingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShmAvailable()Z
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/eltechs/axs/xserver/XServer;->shmSegmentsManager:Lcom/eltechs/axs/xserver/impl/ShmSegmentsManagerImpl;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/ShmSegmentsManagerImpl;->getShmEngine()Lcom/eltechs/axs/sysvipc/SHMEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
