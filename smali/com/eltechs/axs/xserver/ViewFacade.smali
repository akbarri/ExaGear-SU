.class public Lcom/eltechs/axs/xserver/ViewFacade;
.super Ljava/lang/Object;
.source "ViewFacade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/xserver/ViewFacade$DrawableHandler;
    }
.end annotation


# instance fields
.field final xServer:Lcom/eltechs/axs/xserver/XServer;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    return-void
.end method

.method private walkCursor(Lcom/eltechs/axs/xserver/ViewFacade$DrawableHandler;)V
    .locals 7

    .line 559
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/WindowsManager;->getRootWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    .line 560
    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/Pointer;->getX()I

    move-result v1

    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    .line 561
    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/Pointer;->getY()I

    move-result v2

    .line 559
    invoke-static {v0, v1, v2}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getLeafMappedSubWindowByCoords(Lcom/eltechs/axs/xserver/Window;II)Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 567
    :cond_0
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getWindowAttributes()Lcom/eltechs/axs/xserver/WindowAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/WindowAttributes;->getCursor()Lcom/eltechs/axs/xserver/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 574
    :cond_1
    new-instance v1, Lcom/eltechs/axs/xserver/PlacedDrawable;

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Cursor;->getCursorImage()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v2

    new-instance v3, Lcom/eltechs/axs/geom/Rectangle;

    iget-object v4, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    .line 575
    invoke-virtual {v4}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eltechs/axs/xserver/Pointer;->getX()I

    move-result v4

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Cursor;->getHotSpotX()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    .line 576
    invoke-virtual {v5}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/eltechs/axs/xserver/Pointer;->getY()I

    move-result v5

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Cursor;->getHotSpotY()I

    move-result v6

    sub-int/2addr v5, v6

    .line 577
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Cursor;->getCursorImage()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v6

    invoke-interface {v6}, Lcom/eltechs/axs/xserver/Drawable;->getWidth()I

    move-result v6

    .line 578
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Cursor;->getCursorImage()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Drawable;->getHeight()I

    move-result v0

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/eltechs/axs/geom/Rectangle;-><init>(IIII)V

    invoke-direct {v1, v2, v3}, Lcom/eltechs/axs/xserver/PlacedDrawable;-><init>(Lcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/geom/Rectangle;)V

    .line 579
    invoke-interface {p1, v1}, Lcom/eltechs/axs/xserver/ViewFacade$DrawableHandler;->handle(Lcom/eltechs/axs/xserver/PlacedDrawable;)V

    return-void
.end method

.method private walkWindow(Lcom/eltechs/axs/xserver/Window;IILcom/eltechs/axs/xserver/ViewFacade$DrawableHandler;)V
    .locals 4

    .line 528
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getWindowAttributes()Lcom/eltechs/axs/xserver/WindowAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/WindowAttributes;->isMapped()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 533
    :cond_0
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getActiveBackingStore()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v0

    .line 534
    new-instance v1, Lcom/eltechs/axs/geom/Rectangle;

    .line 536
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Drawable;->getWidth()I

    move-result v2

    .line 537
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Drawable;->getHeight()I

    move-result v3

    invoke-direct {v1, p2, p3, v2, v3}, Lcom/eltechs/axs/geom/Rectangle;-><init>(IIII)V

    .line 539
    new-instance v2, Lcom/eltechs/axs/xserver/PlacedDrawable;

    invoke-direct {v2, v0, v1}, Lcom/eltechs/axs/xserver/PlacedDrawable;-><init>(Lcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/geom/Rectangle;)V

    invoke-interface {p4, v2}, Lcom/eltechs/axs/xserver/ViewFacade$DrawableHandler;->handle(Lcom/eltechs/axs/xserver/PlacedDrawable;)V

    .line 541
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getChildrenBottomToTop()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/xserver/Window;

    .line 544
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getBoundingRectangle()Lcom/eltechs/axs/geom/Rectangle;

    move-result-object v1

    iget v1, v1, Lcom/eltechs/axs/geom/Rectangle;->x:I

    add-int/2addr v1, p2

    .line 545
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getBoundingRectangle()Lcom/eltechs/axs/geom/Rectangle;

    move-result-object v2

    iget v2, v2, Lcom/eltechs/axs/geom/Rectangle;->y:I

    add-int/2addr v2, p3

    .line 543
    invoke-direct {p0, v0, v1, v2, p4}, Lcom/eltechs/axs/xserver/ViewFacade;->walkWindow(Lcom/eltechs/axs/xserver/Window;IILcom/eltechs/axs/xserver/ViewFacade$DrawableHandler;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addCursorLifecycleListener(Lcom/eltechs/axs/xserver/CursorLifecycleListener;)V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getCursorsManager()Lcom/eltechs/axs/xserver/CursorsManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/eltechs/axs/xserver/CursorsManager;->addCursorLifecycleListener(Lcom/eltechs/axs/xserver/CursorLifecycleListener;)V

    return-void
.end method

.method public addKeyboardListener(Lcom/eltechs/axs/xserver/KeyboardListener;)V
    .locals 3

    .line 610
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager;->lockForInputDevicesManipulation()Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 612
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getKeyboard()Lcom/eltechs/axs/xserver/Keyboard;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/eltechs/axs/xserver/Keyboard;->addKeyListener(Lcom/eltechs/axs/xserver/KeyboardListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 613
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 610
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 613
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

.method public addKeyboardModifiersChangeListener(Lcom/eltechs/axs/xserver/KeyboardModifiersListener;)V
    .locals 3

    .line 634
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager;->lockForInputDevicesManipulation()Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 636
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getKeyboard()Lcom/eltechs/axs/xserver/Keyboard;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/eltechs/axs/xserver/Keyboard;->addModifierListener(Lcom/eltechs/axs/xserver/KeyboardModifiersListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 637
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 634
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 637
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

.method public addPointerListener(Lcom/eltechs/axs/xserver/PointerListener;)V
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->INPUT_DEVICES:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-interface {v0, v1}, Lcom/eltechs/axs/xserver/LocksManager;->lock(Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 335
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/eltechs/axs/xserver/Pointer;->addListener(Lcom/eltechs/axs/xserver/PointerListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 336
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 333
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 336
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

.method public addWindowChangeListener(Lcom/eltechs/axs/xserver/WindowChangeListener;)V
    .locals 4

    .line 411
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    sget-object v2, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->WINDOWS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/eltechs/axs/xserver/LocksManager;->lock([Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 413
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/eltechs/axs/xserver/WindowsManager;->addWindowChangeListener(Lcom/eltechs/axs/xserver/WindowChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 414
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 411
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 414
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

.method public addWindowContentModificationListner(Lcom/eltechs/axs/xserver/WindowContentModificationListener;)V
    .locals 4

    .line 385
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    sget-object v2, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->WINDOWS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->DRAWABLES_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/eltechs/axs/xserver/LocksManager;->lock([Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 387
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/eltechs/axs/xserver/WindowsManager;->addWindowContentModificationListner(Lcom/eltechs/axs/xserver/WindowContentModificationListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 388
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 385
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 388
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

.method public addWindowLifecycleListener(Lcom/eltechs/axs/xserver/WindowLifecycleListener;)V
    .locals 3

    .line 359
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->WINDOWS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-interface {v0, v1}, Lcom/eltechs/axs/xserver/LocksManager;->lock(Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 361
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/eltechs/axs/xserver/WindowsManager;->addWindowLifecycleListener(Lcom/eltechs/axs/xserver/WindowLifecycleListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 362
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 359
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 362
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

.method public getCursorDrawable()Lcom/eltechs/axs/xserver/PlacedDrawable;
    .locals 6

    .line 496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 497
    iget-object v1, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    sget-object v3, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->WINDOWS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->DRAWABLES_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->INPUT_DEVICES:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    sget-object v3, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->CURSORS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v5, 0x3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/eltechs/axs/xserver/LocksManager;->lock([Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v1

    const/4 v2, 0x0

    .line 499
    :try_start_0
    new-instance v3, Lcom/eltechs/axs/xserver/ViewFacade$2;

    invoke-direct {v3, p0, v0}, Lcom/eltechs/axs/xserver/ViewFacade$2;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;Ljava/util/ArrayList;)V

    invoke-direct {p0, v3}, Lcom/eltechs/axs/xserver/ViewFacade;->walkCursor(Lcom/eltechs/axs/xserver/ViewFacade$DrawableHandler;)V

    .line 507
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 508
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/xserver/PlacedDrawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 510
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 497
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v1, :cond_3

    if-eqz v2, :cond_2

    .line 510
    :try_start_2
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_3
    :goto_2
    throw v0
.end method

.method public getPointerLocation()Lcom/eltechs/axs/geom/Point;
    .locals 5

    .line 597
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager;->lockForInputDevicesManipulation()Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 599
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v2

    .line 600
    new-instance v3, Lcom/eltechs/axs/geom/Point;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/Pointer;->getX()I

    move-result v4

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/Pointer;->getY()I

    move-result v2

    invoke-direct {v3, v4, v2}, Lcom/eltechs/axs/geom/Point;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 601
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-object v3

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 597
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 601
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

.method public getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v0

    return-object v0
.end method

.method public getXServer()Lcom/eltechs/axs/xserver/XServer;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    return-object v0
.end method

.method public injectKeyPress(B)V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager;->lockForInputDevicesManipulation()Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 51
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getEventsInjector()Lcom/eltechs/axs/xserver/EventsInjector;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lcom/eltechs/axs/xserver/EventsInjector;->injectKeyPress(BI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 49
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 52
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

.method public injectKeyPressWithSym(BI)V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager;->lockForInputDevicesManipulation()Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 59
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getEventsInjector()Lcom/eltechs/axs/xserver/EventsInjector;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/eltechs/axs/xserver/EventsInjector;->injectKeyPress(BI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 57
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 60
    :try_start_2
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_2
    :goto_1
    throw p1
.end method

.method public injectKeyRelease(B)V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager;->lockForInputDevicesManipulation()Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 72
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getEventsInjector()Lcom/eltechs/axs/xserver/EventsInjector;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lcom/eltechs/axs/xserver/EventsInjector;->injectKeyRelease(BI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 70
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 73
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

.method public injectKeyReleaseWithSym(BI)V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager;->lockForInputDevicesManipulation()Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 80
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getEventsInjector()Lcom/eltechs/axs/xserver/EventsInjector;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/eltechs/axs/xserver/EventsInjector;->injectKeyRelease(BI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 78
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 81
    :try_start_2
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_2
    :goto_1
    throw p1
.end method

.method public injectKeyType(B)V
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager;->lockForInputDevicesManipulation()Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getEventsInjector()Lcom/eltechs/axs/xserver/EventsInjector;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lcom/eltechs/axs/xserver/EventsInjector;->injectKeyPress(BI)V

    .line 94
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getEventsInjector()Lcom/eltechs/axs/xserver/EventsInjector;

    move-result-object v2

    invoke-interface {v2, p1, v3}, Lcom/eltechs/axs/xserver/EventsInjector;->injectKeyRelease(BI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 91
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 95
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

.method public injectKeyTypeWithSym(BI)V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager;->lockForInputDevicesManipulation()Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 102
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getEventsInjector()Lcom/eltechs/axs/xserver/EventsInjector;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/eltechs/axs/xserver/EventsInjector;->injectKeyPress(BI)V

    .line 103
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getEventsInjector()Lcom/eltechs/axs/xserver/EventsInjector;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/eltechs/axs/xserver/EventsInjector;->injectKeyRelease(BI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 104
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 100
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 104
    :try_start_2
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_2
    :goto_1
    throw p1
.end method

.method public injectMultiKeyPress([B)V
    .locals 7

    .line 114
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager;->lockForInputDevicesManipulation()Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 116
    :try_start_0
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-byte v5, p1, v4

    .line 118
    iget-object v6, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v6}, Lcom/eltechs/axs/xserver/XServer;->getEventsInjector()Lcom/eltechs/axs/xserver/EventsInjector;

    move-result-object v6

    invoke-interface {v6, v5, v3}, Lcom/eltechs/axs/xserver/EventsInjector;->injectKeyPress(BI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 120
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 114
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    .line 120
    :try_start_2
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_3
    :goto_2
    throw p1
.end method

.method public injectMultiKeyPressWithSym([B[B)V
    .locals 6

    const/4 v0, 0x0

    .line 125
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 126
    iget-object v1, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/eltechs/axs/xserver/LocksManager;->lockForInputDevicesManipulation()Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v1

    const/4 v2, 0x0

    .line 128
    :goto_1
    :try_start_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 130
    iget-object v3, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/XServer;->getEventsInjector()Lcom/eltechs/axs/xserver/EventsInjector;

    move-result-object v3

    aget-byte v4, p1, v0

    aget-byte v5, p2, v0

    invoke-interface {v3, v4, v5}, Lcom/eltechs/axs/xserver/EventsInjector;->injectKeyPress(BI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 132
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v2, p1

    .line 126
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v1, :cond_4

    if-eqz v2, :cond_3

    .line 132
    :try_start_2
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p2

    invoke-virtual {v2, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_4
    :goto_3
    throw p1
.end method

.method public injectMultiKeyRelease([B)V
    .locals 7

    const-wide/16 v0, 0x32

    .line 143
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :catch_0
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager;->lockForInputDevicesManipulation()Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 147
    :try_start_1
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-byte v5, p1, v4

    .line 149
    iget-object v6, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v6}, Lcom/eltechs/axs/xserver/XServer;->getEventsInjector()Lcom/eltechs/axs/xserver/EventsInjector;

    move-result-object v6

    invoke-interface {v6, v5, v3}, Lcom/eltechs/axs/xserver/EventsInjector;->injectKeyRelease(BI)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 151
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v1, p1

    .line 145
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    .line 151
    :try_start_3
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_3
    :goto_2
    throw p1
.end method

.method public injectMultiKeyReleaseWithSym([B[I)V
    .locals 6

    const/4 v0, 0x0

    .line 156
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    const-wide/16 v1, 0x32

    .line 158
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :catch_0
    iget-object v1, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/eltechs/axs/xserver/LocksManager;->lockForInputDevicesManipulation()Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v1

    const/4 v2, 0x0

    .line 162
    :goto_1
    :try_start_1
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 164
    iget-object v3, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/XServer;->getEventsInjector()Lcom/eltechs/axs/xserver/EventsInjector;

    move-result-object v3

    aget-byte v4, p1, v0

    aget v5, p2, v0

    invoke-interface {v3, v4, v5}, Lcom/eltechs/axs/xserver/EventsInjector;->injectKeyRelease(BI)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 166
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v2, p1

    .line 160
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz v1, :cond_4

    if-eqz v2, :cond_3

    .line 166
    :try_start_3
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    invoke-virtual {v2, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_4
    :goto_3
    throw p1
.end method

.method public injectMultiKeyType([B)V
    .locals 7

    .line 176
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager;->lockForInputDevicesManipulation()Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 178
    :try_start_0
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-byte v5, p1, v4

    .line 180
    iget-object v6, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v6}, Lcom/eltechs/axs/xserver/XServer;->getEventsInjector()Lcom/eltechs/axs/xserver/EventsInjector;

    move-result-object v6

    invoke-interface {v6, v5, v3}, Lcom/eltechs/axs/xserver/EventsInjector;->injectKeyPress(BI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x32

    .line 184
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :catch_0
    :try_start_2
    array-length v2, p1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    aget-byte v5, p1, v4

    .line 188
    iget-object v6, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v6}, Lcom/eltechs/axs/xserver/XServer;->getEventsInjector()Lcom/eltechs/axs/xserver/EventsInjector;

    move-result-object v6

    invoke-interface {v6, v5, v3}, Lcom/eltechs/axs/xserver/EventsInjector;->injectKeyRelease(BI)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 190
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v1, p1

    .line 176
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    .line 190
    :try_start_4
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_4
    :goto_3
    throw p1
.end method

.method public injectMultiKeyTypeWithSym([B[I)V
    .locals 7

    const/4 v0, 0x0

    .line 195
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 196
    iget-object v1, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/eltechs/axs/xserver/LocksManager;->lockForInputDevicesManipulation()Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v0

    .line 198
    :goto_1
    :try_start_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 200
    iget-object v4, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v4}, Lcom/eltechs/axs/xserver/XServer;->getEventsInjector()Lcom/eltechs/axs/xserver/EventsInjector;

    move-result-object v4

    aget-byte v5, p1, v3

    aget v6, p2, v3

    invoke-interface {v4, v5, v6}, Lcom/eltechs/axs/xserver/EventsInjector;->injectKeyPress(BI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x32

    .line 204
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    :catch_0
    :goto_2
    :try_start_2
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 208
    iget-object v3, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/XServer;->getEventsInjector()Lcom/eltechs/axs/xserver/EventsInjector;

    move-result-object v3

    aget-byte v4, p1, v0

    aget v5, p2, v0

    invoke-interface {v3, v4, v5}, Lcom/eltechs/axs/xserver/EventsInjector;->injectKeyRelease(BI)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 210
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v2, p1

    .line 196
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    if-eqz v1, :cond_5

    if-eqz v2, :cond_4

    .line 210
    :try_start_4
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception p2

    invoke-virtual {v2, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_5
    :goto_4
    throw p1
.end method

.method public injectPointerButtonPress(I)V
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager;->lockForInputDevicesManipulation()Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 267
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getEventsInjector()Lcom/eltechs/axs/xserver/EventsInjector;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/eltechs/axs/xserver/EventsInjector;->injectPointerButtonPress(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 268
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 265
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 268
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

.method public injectPointerButtonRelease(I)V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager;->lockForInputDevicesManipulation()Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 322
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getEventsInjector()Lcom/eltechs/axs/xserver/EventsInjector;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/eltechs/axs/xserver/EventsInjector;->injectPointerButtonRelease(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 323
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 320
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 323
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

.method public injectPointerDelta(II)V
    .locals 1

    const/4 v0, 0x1

    .line 255
    invoke-virtual {p0, p1, p2, v0}, Lcom/eltechs/axs/xserver/ViewFacade;->injectPointerDelta(III)V

    return-void
.end method

.method public injectPointerDelta(III)V
    .locals 6

    .line 236
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager;->lockForInputDevicesManipulation()Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 238
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getEventsInjector()Lcom/eltechs/axs/xserver/EventsInjector;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_0

    .line 241
    iget-object v4, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v4}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eltechs/axs/xserver/Pointer;->getX()I

    move-result v4

    add-int/2addr v4, p1

    iget-object v5, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    .line 242
    invoke-virtual {v5}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/eltechs/axs/xserver/Pointer;->getY()I

    move-result v5

    add-int/2addr v5, p2

    .line 241
    invoke-interface {v2, v4, v5}, Lcom/eltechs/axs/xserver/EventsInjector;->injectPointerMove(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 244
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 236
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    .line 244
    :try_start_2
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_3
    :goto_2
    throw p1
.end method

.method public injectPointerMove(II)V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager;->lockForInputDevicesManipulation()Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 223
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getEventsInjector()Lcom/eltechs/axs/xserver/EventsInjector;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/eltechs/axs/xserver/EventsInjector;->injectPointerMove(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 221
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 224
    :try_start_2
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_2
    :goto_1
    throw p1
.end method

.method public injectPointerWheelDown(I)V
    .locals 4

    .line 303
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager;->lockForInputDevicesManipulation()Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-lez p1, :cond_2

    const/4 p1, 0x0

    .line 307
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getEventsInjector()Lcom/eltechs/axs/xserver/EventsInjector;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Lcom/eltechs/axs/xserver/EventsInjector;->injectPointerButtonPress(I)V

    .line 308
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getEventsInjector()Lcom/eltechs/axs/xserver/EventsInjector;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/eltechs/axs/xserver/EventsInjector;->injectPointerButtonRelease(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p1, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 303
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 310
    :try_start_2
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_1
    :goto_2
    throw v1

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_3
    return-void
.end method

.method public injectPointerWheelUp(I)V
    .locals 4

    .line 282
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager;->lockForInputDevicesManipulation()Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-lez p1, :cond_2

    const/4 p1, 0x0

    .line 286
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getEventsInjector()Lcom/eltechs/axs/xserver/EventsInjector;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Lcom/eltechs/axs/xserver/EventsInjector;->injectPointerButtonPress(I)V

    .line 287
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getEventsInjector()Lcom/eltechs/axs/xserver/EventsInjector;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/eltechs/axs/xserver/EventsInjector;->injectPointerButtonRelease(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p1, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 282
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 289
    :try_start_2
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_1
    :goto_2
    throw v1

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_3
    return-void
.end method

.method public listNonRootWindowDrawables()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/eltechs/axs/xserver/PlacedDrawable;",
            ">;"
        }
    .end annotation

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 472
    iget-object v1, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    sget-object v3, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->WINDOWS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->DRAWABLES_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/eltechs/axs/xserver/LocksManager;->lock([Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v1

    const/4 v2, 0x0

    .line 474
    :try_start_0
    iget-object v3, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/eltechs/axs/xserver/WindowsManager;->getRootWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v3

    .line 475
    iget-object v5, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v5}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/eltechs/axs/xserver/WindowsManager;->getRootWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v5

    new-instance v6, Lcom/eltechs/axs/xserver/ViewFacade$1;

    invoke-direct {v6, p0, v3, v0}, Lcom/eltechs/axs/xserver/ViewFacade$1;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/xserver/Window;Ljava/util/ArrayList;)V

    invoke-direct {p0, v5, v4, v4, v6}, Lcom/eltechs/axs/xserver/ViewFacade;->walkWindow(Lcom/eltechs/axs/xserver/Window;IILcom/eltechs/axs/xserver/ViewFacade$DrawableHandler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 485
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 472
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz v2, :cond_1

    .line 485
    :try_start_2
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_2
    :goto_1
    throw v0
.end method

.method public removeCursorLifecycleListener(Lcom/eltechs/axs/xserver/CursorLifecycleListener;)V
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getCursorsManager()Lcom/eltechs/axs/xserver/CursorsManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/eltechs/axs/xserver/CursorsManager;->removeCursorLifecycleListener(Lcom/eltechs/axs/xserver/CursorLifecycleListener;)V

    return-void
.end method

.method public removeKeyboardListener(Lcom/eltechs/axs/xserver/KeyboardListener;)V
    .locals 3

    .line 622
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager;->lockForInputDevicesManipulation()Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 624
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getKeyboard()Lcom/eltechs/axs/xserver/Keyboard;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/eltechs/axs/xserver/Keyboard;->removeKeyListener(Lcom/eltechs/axs/xserver/KeyboardListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 625
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 622
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 625
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

.method public removeKeyboardModifiersChangeListener(Lcom/eltechs/axs/xserver/KeyboardModifiersListener;)V
    .locals 3

    .line 646
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager;->lockForInputDevicesManipulation()Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 648
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getKeyboard()Lcom/eltechs/axs/xserver/Keyboard;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/eltechs/axs/xserver/Keyboard;->removeModifierListener(Lcom/eltechs/axs/xserver/KeyboardModifiersListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 649
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 646
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 649
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

.method public removePointerListener(Lcom/eltechs/axs/xserver/PointerListener;)V
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->INPUT_DEVICES:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-interface {v0, v1}, Lcom/eltechs/axs/xserver/LocksManager;->lock(Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 348
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/eltechs/axs/xserver/Pointer;->removeListener(Lcom/eltechs/axs/xserver/PointerListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 349
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 346
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 349
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

.method public removeWindowChangeListener(Lcom/eltechs/axs/xserver/WindowChangeListener;)V
    .locals 4

    .line 424
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    sget-object v2, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->WINDOWS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/eltechs/axs/xserver/LocksManager;->lock([Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 426
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/eltechs/axs/xserver/WindowsManager;->removeWindowChangeListener(Lcom/eltechs/axs/xserver/WindowChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 427
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 424
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 427
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

.method public removeWindowContentModificationListner(Lcom/eltechs/axs/xserver/WindowContentModificationListener;)V
    .locals 4

    .line 398
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    sget-object v2, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->WINDOWS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->DRAWABLES_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/eltechs/axs/xserver/LocksManager;->lock([Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 400
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/eltechs/axs/xserver/WindowsManager;->removeWindowContentModificationListner(Lcom/eltechs/axs/xserver/WindowContentModificationListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 401
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 398
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 401
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

.method public removeWindowLifecycleListener(Lcom/eltechs/axs/xserver/WindowLifecycleListener;)V
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->WINDOWS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-interface {v0, v1}, Lcom/eltechs/axs/xserver/LocksManager;->lock(Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 374
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/eltechs/axs/xserver/WindowsManager;->removeWindowLifecycleListener(Lcom/eltechs/axs/xserver/WindowLifecycleListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 375
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 372
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 375
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

.method public setModifierState(Lcom/eltechs/axs/xserver/KeyButNames;ZBZ)V
    .locals 3

    .line 663
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager;->lockForInputDevicesManipulation()Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 665
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getKeyboard()Lcom/eltechs/axs/xserver/Keyboard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/Keyboard;->getModifiersMask()Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p2, :cond_1

    if-eqz v0, :cond_0

    .line 691
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-void

    .line 670
    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/XServer;->getKeyboard()Lcom/eltechs/axs/xserver/Keyboard;

    move-result-object p2

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/Keyboard;->getModifiersMask()Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    if-eqz p4, :cond_2

    .line 674
    iget-object p1, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getKeyboard()Lcom/eltechs/axs/xserver/Keyboard;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Lcom/eltechs/axs/xserver/Keyboard;->keyReleased(BI)V

    goto :goto_0

    .line 677
    :cond_2
    iget-object p1, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getKeyboard()Lcom/eltechs/axs/xserver/Keyboard;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Lcom/eltechs/axs/xserver/Keyboard;->keyPressed(BI)V

    .line 678
    iget-object p1, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getKeyboard()Lcom/eltechs/axs/xserver/Keyboard;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Lcom/eltechs/axs/xserver/Keyboard;->keyReleased(BI)V

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    .line 684
    iget-object p1, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getKeyboard()Lcom/eltechs/axs/xserver/Keyboard;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Lcom/eltechs/axs/xserver/Keyboard;->keyPressed(BI)V

    goto :goto_0

    .line 687
    :cond_4
    iget-object p1, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getKeyboard()Lcom/eltechs/axs/xserver/Keyboard;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Lcom/eltechs/axs/xserver/Keyboard;->keyPressed(BI)V

    .line 688
    iget-object p1, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getKeyboard()Lcom/eltechs/axs/xserver/Keyboard;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Lcom/eltechs/axs/xserver/Keyboard;->keyReleased(BI)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_5

    .line 691
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 663
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz v0, :cond_7

    if-eqz v1, :cond_6

    .line 691
    :try_start_3
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_7
    :goto_2
    throw p1
.end method

.method public switchModifierState(Lcom/eltechs/axs/xserver/KeyButNames;BZ)V
    .locals 3

    .line 704
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager;->lockForInputDevicesManipulation()Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 706
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getKeyboard()Lcom/eltechs/axs/xserver/Keyboard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/Keyboard;->getModifiersMask()Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, p1, v2, p2, p3}, Lcom/eltechs/axs/xserver/ViewFacade;->setModifierState(Lcom/eltechs/axs/xserver/KeyButNames;ZBZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 707
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 704
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 707
    :try_start_2
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_2
    :goto_1
    throw p1
.end method

.method public walkDrawables(Lcom/eltechs/axs/xserver/ViewFacade$DrawableHandler;)V
    .locals 5

    .line 461
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    sget-object v2, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->WINDOWS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->DRAWABLES_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->CURSORS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->INPUT_DEVICES:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/eltechs/axs/xserver/LocksManager;->lock([Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 463
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xserver/ViewFacade;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/eltechs/axs/xserver/WindowsManager;->getRootWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v2

    invoke-direct {p0, v2, v3, v3, p1}, Lcom/eltechs/axs/xserver/ViewFacade;->walkWindow(Lcom/eltechs/axs/xserver/Window;IILcom/eltechs/axs/xserver/ViewFacade$DrawableHandler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 465
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 461
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 465
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
