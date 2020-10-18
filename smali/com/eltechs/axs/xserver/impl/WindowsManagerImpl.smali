.class public Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;
.super Ljava/lang/Object;
.source "WindowsManagerImpl.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/WindowsManager;


# instance fields
.field private final drawablesManager:Lcom/eltechs/axs/xserver/DrawablesManager;

.field private final rootWindow:Lcom/eltechs/axs/xserver/Window;

.field private final windowChangeListenersList:Lcom/eltechs/axs/xserver/WindowChangeListenersList;

.field private final windowContentModificationListenersList:Lcom/eltechs/axs/xserver/WindowContentModificationListenersList;

.field private final windowLifecycleListenersList:Lcom/eltechs/axs/xserver/WindowLifecycleListenersList;

.field private final windows:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/eltechs/axs/xserver/Window;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/ScreenInfo;Lcom/eltechs/axs/xserver/DrawablesManager;)V
    .locals 9

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->windows:Ljava/util/Map;

    .line 35
    iput-object p2, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->drawablesManager:Lcom/eltechs/axs/xserver/DrawablesManager;

    .line 37
    new-instance v0, Lcom/eltechs/axs/xserver/WindowContentModificationListenersList;

    invoke-direct {v0}, Lcom/eltechs/axs/xserver/WindowContentModificationListenersList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->windowContentModificationListenersList:Lcom/eltechs/axs/xserver/WindowContentModificationListenersList;

    .line 38
    new-instance v0, Lcom/eltechs/axs/xserver/WindowLifecycleListenersList;

    invoke-direct {v0}, Lcom/eltechs/axs/xserver/WindowLifecycleListenersList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->windowLifecycleListenersList:Lcom/eltechs/axs/xserver/WindowLifecycleListenersList;

    .line 39
    new-instance v0, Lcom/eltechs/axs/xserver/WindowChangeListenersList;

    invoke-direct {v0}, Lcom/eltechs/axs/xserver/WindowChangeListenersList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->windowChangeListenersList:Lcom/eltechs/axs/xserver/WindowChangeListenersList;

    .line 42
    invoke-static {}, Lcom/eltechs/axs/xserver/impl/SmallIdsGenerator;->generateId()I

    move-result v0

    .line 43
    invoke-interface {p2}, Lcom/eltechs/axs/xserver/DrawablesManager;->getPreferredVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v6

    .line 44
    iget v4, p1, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    iget v5, p1, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    const/4 v3, 0x0

    move-object v1, p2

    move v2, v0

    invoke-interface/range {v1 .. v6}, Lcom/eltechs/axs/xserver/DrawablesManager;->createDrawable(ILcom/eltechs/axs/xserver/Window;IILcom/eltechs/axs/xserver/impl/drawables/Visual;)Lcom/eltechs/axs/xserver/Drawable;

    move-result-object p2

    .line 45
    new-instance v8, Lcom/eltechs/axs/xserver/impl/WindowImpl;

    iget-object v5, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->windowContentModificationListenersList:Lcom/eltechs/axs/xserver/WindowContentModificationListenersList;

    iget-object v6, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->windowChangeListenersList:Lcom/eltechs/axs/xserver/WindowChangeListenersList;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/eltechs/axs/xserver/impl/WindowImpl;-><init>(ILcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/xserver/WindowContentModificationListenersList;Lcom/eltechs/axs/xserver/WindowChangeListenersList;Lcom/eltechs/axs/xserver/client/XClient;)V

    iput-object v8, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->rootWindow:Lcom/eltechs/axs/xserver/Window;

    .line 47
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->rootWindow:Lcom/eltechs/axs/xserver/Window;

    new-instance v1, Lcom/eltechs/axs/geom/Rectangle;

    iget v2, p1, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    iget p1, p1, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p1}, Lcom/eltechs/axs/geom/Rectangle;-><init>(IIII)V

    invoke-interface {v0, v1}, Lcom/eltechs/axs/xserver/Window;->setBoundingRectangle(Lcom/eltechs/axs/geom/Rectangle;)V

    .line 48
    iget-object p1, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->rootWindow:Lcom/eltechs/axs/xserver/Window;

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getWindowAttributes()Lcom/eltechs/axs/xserver/WindowAttributes;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/xserver/WindowAttributes;->setMapped(Z)V

    .line 50
    iget-object p1, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->windows:Ljava/util/Map;

    invoke-interface {p2}, Lcom/eltechs/axs/xserver/Drawable;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->rootWindow:Lcom/eltechs/axs/xserver/Window;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addDrawablesInWindow(Lcom/eltechs/axs/xserver/Window;IILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/Window;",
            "II",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/xserver/PlacedDrawable;",
            ">;)V"
        }
    .end annotation

    .line 366
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getWindowAttributes()Lcom/eltechs/axs/xserver/WindowAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/WindowAttributes;->isMapped()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->isInputOutput()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 371
    :cond_0
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getChildrenBottomToTop()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/Window;

    .line 373
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Window;->getBoundingRectangle()Lcom/eltechs/axs/geom/Rectangle;

    move-result-object v2

    .line 374
    iget v3, v2, Lcom/eltechs/axs/geom/Rectangle;->x:I

    add-int/2addr v3, p2

    iget v2, v2, Lcom/eltechs/axs/geom/Rectangle;->y:I

    add-int/2addr v2, p3

    invoke-direct {p0, v1, v3, v2, p4}, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->addDrawablesInWindow(Lcom/eltechs/axs/xserver/Window;IILjava/util/List;)V

    goto :goto_0

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->rootWindow:Lcom/eltechs/axs/xserver/Window;

    if-eq p1, v0, :cond_2

    .line 382
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getActiveBackingStore()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object p1

    .line 383
    new-instance v0, Lcom/eltechs/axs/geom/Rectangle;

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Drawable;->getWidth()I

    move-result v1

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Drawable;->getHeight()I

    move-result v2

    invoke-direct {v0, p2, p3, v1, v2}, Lcom/eltechs/axs/geom/Rectangle;-><init>(IIII)V

    .line 384
    new-instance p2, Lcom/eltechs/axs/xserver/PlacedDrawable;

    invoke-direct {p2, p1, v0}, Lcom/eltechs/axs/xserver/PlacedDrawable;-><init>(Lcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/geom/Rectangle;)V

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private deleteSubtreeAndWindow(Lcom/eltechs/axs/xserver/Window;)V
    .locals 5

    .line 135
    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->getRootWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v0

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Root window can\'t be destroyed."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->isFalse(ZLjava/lang/String;)V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getChildrenBottomToTop()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eltechs/axs/xserver/Window;

    .line 140
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 143
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/Window;

    .line 145
    invoke-direct {p0, v1}, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->deleteSubtreeAndWindow(Lcom/eltechs/axs/xserver/Window;)V

    goto :goto_2

    .line 148
    :cond_2
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getParent()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    .line 149
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object v1

    .line 150
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object v2

    .line 152
    new-instance v3, Lcom/eltechs/axs/xserver/events/DestroyNotify;

    invoke-direct {v3, p1, p1}, Lcom/eltechs/axs/xserver/events/DestroyNotify;-><init>(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)V

    sget-object v4, Lcom/eltechs/axs/xserver/EventName;->STRUCTURE_NOTIFY:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {v1, v3, v4}, Lcom/eltechs/axs/xserver/WindowListenersList;->sendEventForEventName(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/EventName;)V

    .line 153
    new-instance v1, Lcom/eltechs/axs/xserver/events/DestroyNotify;

    invoke-direct {v1, v0, p1}, Lcom/eltechs/axs/xserver/events/DestroyNotify;-><init>(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)V

    sget-object v3, Lcom/eltechs/axs/xserver/EventName;->SUBSTRUCTURE_NOTIFY:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {v2, v1, v3}, Lcom/eltechs/axs/xserver/WindowListenersList;->sendEventForEventName(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/EventName;)V

    .line 155
    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->windows:Ljava/util/Map;

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->isInputOutput()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->drawablesManager:Lcom/eltechs/axs/xserver/DrawablesManager;

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getFrontBuffer()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/eltechs/axs/xserver/DrawablesManager;->removeDrawable(Lcom/eltechs/axs/xserver/Drawable;)V

    .line 160
    :cond_3
    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->windowLifecycleListenersList:Lcom/eltechs/axs/xserver/WindowLifecycleListenersList;

    invoke-virtual {v1, p1}, Lcom/eltechs/axs/xserver/WindowLifecycleListenersList;->sendWindowDestroyed(Lcom/eltechs/axs/xserver/Window;)V

    .line 162
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getChildrenList()Lcom/eltechs/axs/xserver/impl/WindowChildrenList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->remove(Lcom/eltechs/axs/xserver/Window;)V

    return-void
.end method


# virtual methods
.method public addWindowChangeListener(Lcom/eltechs/axs/xserver/WindowChangeListener;)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->windowChangeListenersList:Lcom/eltechs/axs/xserver/WindowChangeListenersList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/WindowChangeListenersList;->addListener(Lcom/eltechs/axs/xserver/WindowChangeListener;)V

    return-void
.end method

.method public addWindowContentModificationListner(Lcom/eltechs/axs/xserver/WindowContentModificationListener;)V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->windowContentModificationListenersList:Lcom/eltechs/axs/xserver/WindowContentModificationListenersList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/WindowContentModificationListenersList;->addListener(Lcom/eltechs/axs/xserver/WindowContentModificationListener;)V

    return-void
.end method

.method public addWindowLifecycleListener(Lcom/eltechs/axs/xserver/WindowLifecycleListener;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->windowLifecycleListenersList:Lcom/eltechs/axs/xserver/WindowLifecycleListenersList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/WindowLifecycleListenersList;->addListener(Lcom/eltechs/axs/xserver/WindowLifecycleListener;)V

    return-void
.end method

.method public changeRelativeWindowGeometry(Lcom/eltechs/axs/xserver/Window;IIII)V
    .locals 9

    .line 264
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getParent()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 270
    :cond_0
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getBoundingRectangle()Lcom/eltechs/axs/geom/Rectangle;

    move-result-object v0

    .line 271
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getWindowAttributes()Lcom/eltechs/axs/xserver/WindowAttributes;

    move-result-object v1

    .line 274
    iget v2, v0, Lcom/eltechs/axs/geom/Rectangle;->width:I

    const/4 v3, 0x0

    if-ne v2, p4, :cond_2

    iget v2, v0, Lcom/eltechs/axs/geom/Rectangle;->height:I

    if-eq v2, p5, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 280
    :goto_1
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object v4

    sget-object v5, Lcom/eltechs/axs/xserver/EventName;->RESIZE_REDIRECT:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {v4, v5}, Lcom/eltechs/axs/xserver/WindowListenersList;->isListenerInstalledForEvent(Lcom/eltechs/axs/xserver/EventName;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    .line 283
    new-instance v2, Lcom/eltechs/axs/xserver/events/ResizeRequest;

    invoke-direct {v2, p1, p4, p5}, Lcom/eltechs/axs/xserver/events/ResizeRequest;-><init>(Lcom/eltechs/axs/xserver/Window;II)V

    .line 284
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object p4

    sget-object p5, Lcom/eltechs/axs/xserver/EventName;->SUBSTRUCTURE_REDIRECT:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {p4, v2, p5}, Lcom/eltechs/axs/xserver/WindowListenersList;->sendEventForEventName(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/EventName;)V

    .line 285
    iget p4, v0, Lcom/eltechs/axs/geom/Rectangle;->width:I

    .line 286
    iget p5, v0, Lcom/eltechs/axs/geom/Rectangle;->height:I

    move v2, v3

    :cond_3
    if-eqz v2, :cond_4

    .line 292
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->isInputOutput()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 294
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getFrontBuffer()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v3

    .line 295
    iget-object v4, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->drawablesManager:Lcom/eltechs/axs/xserver/DrawablesManager;

    invoke-interface {v4, v3}, Lcom/eltechs/axs/xserver/DrawablesManager;->removeDrawable(Lcom/eltechs/axs/xserver/Drawable;)V

    .line 296
    iget-object v4, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->drawablesManager:Lcom/eltechs/axs/xserver/DrawablesManager;

    invoke-interface {v3}, Lcom/eltechs/axs/xserver/Drawable;->getId()I

    move-result v5

    invoke-interface {v3}, Lcom/eltechs/axs/xserver/Drawable;->getRoot()Lcom/eltechs/axs/xserver/Window;

    move-result-object v6

    .line 298
    invoke-interface {v3}, Lcom/eltechs/axs/xserver/Drawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v8

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    move v6, p4

    move v7, p5

    .line 296
    invoke-interface/range {v3 .. v8}, Lcom/eltechs/axs/xserver/DrawablesManager;->createDrawable(ILcom/eltechs/axs/xserver/Window;IILcom/eltechs/axs/xserver/impl/drawables/Visual;)Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    .line 300
    invoke-interface {p1, v3, v4}, Lcom/eltechs/axs/xserver/Window;->replaceBackingStores(Lcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/xserver/Drawable;)V

    :cond_4
    if-nez v2, :cond_5

    .line 304
    iget v3, v0, Lcom/eltechs/axs/geom/Rectangle;->x:I

    if-ne p2, v3, :cond_5

    iget v0, v0, Lcom/eltechs/axs/geom/Rectangle;->y:I

    if-eq p3, v0, :cond_6

    .line 306
    :cond_5
    new-instance v0, Lcom/eltechs/axs/geom/Rectangle;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/eltechs/axs/geom/Rectangle;-><init>(IIII)V

    invoke-interface {p1, v0}, Lcom/eltechs/axs/xserver/Window;->setBoundingRectangle(Lcom/eltechs/axs/geom/Rectangle;)V

    .line 307
    iget-object p2, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->windowChangeListenersList:Lcom/eltechs/axs/xserver/WindowChangeListenersList;

    invoke-virtual {p2, p1}, Lcom/eltechs/axs/xserver/WindowChangeListenersList;->sendWindowGeometryChanged(Lcom/eltechs/axs/xserver/Window;)V

    :cond_6
    if-eqz v2, :cond_7

    .line 310
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->isInputOutput()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/WindowAttributes;->isMapped()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 312
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object p2

    new-instance p3, Lcom/eltechs/axs/xserver/events/Expose;

    invoke-direct {p3, p1}, Lcom/eltechs/axs/xserver/events/Expose;-><init>(Lcom/eltechs/axs/xserver/Window;)V

    invoke-virtual {p2, p3}, Lcom/eltechs/axs/xserver/WindowListenersList;->sendEvent(Lcom/eltechs/axs/xserver/events/Event;)V

    :cond_7
    return-void
.end method

.method public changeWindowZOrder(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/StackMode;)V
    .locals 1

    .line 243
    sget-object v0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl$1;->$SwitchMap$com$eltechs$axs$xserver$StackMode:[I

    invoke-virtual {p3}, Lcom/eltechs/axs/xserver/StackMode;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 249
    :pswitch_0
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getParent()Lcom/eltechs/axs/xserver/Window;

    move-result-object p3

    invoke-interface {p3}, Lcom/eltechs/axs/xserver/Window;->getChildrenList()Lcom/eltechs/axs/xserver/impl/WindowChildrenList;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->moveBelow(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)V

    goto :goto_0

    .line 246
    :pswitch_1
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getParent()Lcom/eltechs/axs/xserver/Window;

    move-result-object p3

    invoke-interface {p3}, Lcom/eltechs/axs/xserver/Window;->getChildrenList()Lcom/eltechs/axs/xserver/impl/WindowChildrenList;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->moveAbove(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)V

    .line 254
    :goto_0
    iget-object p2, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->windowLifecycleListenersList:Lcom/eltechs/axs/xserver/WindowLifecycleListenersList;

    invoke-virtual {p2, p1}, Lcom/eltechs/axs/xserver/WindowLifecycleListenersList;->sendWindowZOrderChange(Lcom/eltechs/axs/xserver/Window;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createWindow(ILcom/eltechs/axs/xserver/Window;IIIILcom/eltechs/axs/xserver/impl/drawables/Visual;ZLcom/eltechs/axs/xserver/client/XClient;)Lcom/eltechs/axs/xserver/Window;
    .locals 10

    move-object v0, p0

    .line 75
    iget-object v1, v0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->windows:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    if-nez p8, :cond_1

    move-object v5, v2

    goto :goto_0

    .line 87
    :cond_1
    iget-object v3, v0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->drawablesManager:Lcom/eltechs/axs/xserver/DrawablesManager;

    invoke-static {p2}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getRootWindowOf(Lcom/eltechs/axs/xserver/Window;)Lcom/eltechs/axs/xserver/Window;

    move-result-object v5

    move v4, p1

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v3 .. v8}, Lcom/eltechs/axs/xserver/DrawablesManager;->createDrawable(ILcom/eltechs/axs/xserver/Window;IILcom/eltechs/axs/xserver/impl/drawables/Visual;)Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v2

    :cond_2
    move-object v5, v1

    .line 94
    :goto_0
    new-instance v1, Lcom/eltechs/axs/xserver/impl/WindowImpl;

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->windowContentModificationListenersList:Lcom/eltechs/axs/xserver/WindowContentModificationListenersList;

    iget-object v8, v0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->windowChangeListenersList:Lcom/eltechs/axs/xserver/WindowChangeListenersList;

    move-object v3, v1

    move v4, p1

    move-object/from16 v9, p9

    invoke-direct/range {v3 .. v9}, Lcom/eltechs/axs/xserver/impl/WindowImpl;-><init>(ILcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/xserver/WindowContentModificationListenersList;Lcom/eltechs/axs/xserver/WindowChangeListenersList;Lcom/eltechs/axs/xserver/client/XClient;)V

    .line 95
    iget-object v2, v0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->windows:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-interface {p2}, Lcom/eltechs/axs/xserver/Window;->getChildrenList()Lcom/eltechs/axs/xserver/impl/WindowChildrenList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->add(Lcom/eltechs/axs/xserver/Window;)V

    .line 98
    new-instance v2, Lcom/eltechs/axs/geom/Rectangle;

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/eltechs/axs/geom/Rectangle;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/eltechs/axs/xserver/impl/WindowImpl;->setBoundingRectangle(Lcom/eltechs/axs/geom/Rectangle;)V

    .line 100
    iget-object v2, v0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->windowLifecycleListenersList:Lcom/eltechs/axs/xserver/WindowLifecycleListenersList;

    invoke-virtual {v2, v1}, Lcom/eltechs/axs/xserver/WindowLifecycleListenersList;->sendWindowCreated(Lcom/eltechs/axs/xserver/Window;)V

    return-object v1
.end method

.method public destroySubwindows(Lcom/eltechs/axs/xserver/Window;)V
    .locals 1

    .line 120
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->unmapSubwindows(Lcom/eltechs/axs/xserver/Window;)V

    .line 121
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getChildrenBottomToTop()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/xserver/Window;

    .line 123
    invoke-direct {p0, v0}, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->deleteSubtreeAndWindow(Lcom/eltechs/axs/xserver/Window;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public destroyWindow(Lcom/eltechs/axs/xserver/Window;)V
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->getRootWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v0

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->unmapWindow(Lcom/eltechs/axs/xserver/Window;)V

    .line 114
    invoke-direct {p0, p1}, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->deleteSubtreeAndWindow(Lcom/eltechs/axs/xserver/Window;)V

    return-void
.end method

.method public getDrawablesForOutput()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/xserver/PlacedDrawable;",
            ">;"
        }
    .end annotation

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 356
    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->rootWindow:Lcom/eltechs/axs/xserver/Window;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2, v0}, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->addDrawablesInWindow(Lcom/eltechs/axs/xserver/Window;IILjava/util/List;)V

    return-object v0
.end method

.method public getRootWindow()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->rootWindow:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public getWindow(I)Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->windows:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/xserver/Window;

    return-object p1
.end method

.method public mapSubwindows(Lcom/eltechs/axs/xserver/Window;)V
    .locals 1

    .line 200
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getChildrenTopToBottom()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/xserver/Window;

    .line 202
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->mapWindow(Lcom/eltechs/axs/xserver/Window;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public mapWindow(Lcom/eltechs/axs/xserver/Window;)V
    .locals 5

    .line 168
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getWindowAttributes()Lcom/eltechs/axs/xserver/WindowAttributes;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/WindowAttributes;->isMapped()Z

    move-result v1

    if-nez v1, :cond_1

    .line 172
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getParent()Lcom/eltechs/axs/xserver/Window;

    move-result-object v1

    .line 174
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object v2

    sget-object v3, Lcom/eltechs/axs/xserver/EventName;->SUBSTRUCTURE_REDIRECT:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {v2, v3}, Lcom/eltechs/axs/xserver/WindowListenersList;->isListenerInstalledForEvent(Lcom/eltechs/axs/xserver/EventName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getWindowAttributes()Lcom/eltechs/axs/xserver/WindowAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/WindowAttributes;->isOverrideRedirect()Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    new-instance v0, Lcom/eltechs/axs/xserver/events/MapRequest;

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getParent()Lcom/eltechs/axs/xserver/Window;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/eltechs/axs/xserver/events/MapRequest;-><init>(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)V

    .line 178
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object p1

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->SUBSTRUCTURE_REDIRECT:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {p1, v0, v1}, Lcom/eltechs/axs/xserver/WindowListenersList;->sendEventForEventName(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/EventName;)V

    goto :goto_0

    .line 182
    :cond_0
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object v2

    .line 183
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object v3

    const/4 v4, 0x1

    .line 185
    invoke-virtual {v0, v4}, Lcom/eltechs/axs/xserver/WindowAttributes;->setMapped(Z)V

    .line 187
    new-instance v0, Lcom/eltechs/axs/xserver/events/MapNotify;

    invoke-direct {v0, p1, p1}, Lcom/eltechs/axs/xserver/events/MapNotify;-><init>(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)V

    sget-object v4, Lcom/eltechs/axs/xserver/EventName;->STRUCTURE_NOTIFY:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {v2, v0, v4}, Lcom/eltechs/axs/xserver/WindowListenersList;->sendEventForEventName(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/EventName;)V

    .line 188
    new-instance v0, Lcom/eltechs/axs/xserver/events/MapNotify;

    invoke-direct {v0, v1, p1}, Lcom/eltechs/axs/xserver/events/MapNotify;-><init>(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)V

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->SUBSTRUCTURE_NOTIFY:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {v3, v0, v1}, Lcom/eltechs/axs/xserver/WindowListenersList;->sendEventForEventName(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/EventName;)V

    .line 190
    new-instance v0, Lcom/eltechs/axs/xserver/events/Expose;

    invoke-direct {v0, p1}, Lcom/eltechs/axs/xserver/events/Expose;-><init>(Lcom/eltechs/axs/xserver/Window;)V

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->EXPOSURE:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {v2, v0, v1}, Lcom/eltechs/axs/xserver/WindowListenersList;->sendEventForEventName(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/EventName;)V

    .line 192
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->windowLifecycleListenersList:Lcom/eltechs/axs/xserver/WindowLifecycleListenersList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/WindowLifecycleListenersList;->sendWindowMapped(Lcom/eltechs/axs/xserver/Window;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeWindowChangeListener(Lcom/eltechs/axs/xserver/WindowChangeListener;)V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->windowChangeListenersList:Lcom/eltechs/axs/xserver/WindowChangeListenersList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/WindowChangeListenersList;->removeListener(Lcom/eltechs/axs/xserver/WindowChangeListener;)V

    return-void
.end method

.method public removeWindowContentModificationListner(Lcom/eltechs/axs/xserver/WindowContentModificationListener;)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->windowContentModificationListenersList:Lcom/eltechs/axs/xserver/WindowContentModificationListenersList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/WindowContentModificationListenersList;->removeListener(Lcom/eltechs/axs/xserver/WindowContentModificationListener;)V

    return-void
.end method

.method public removeWindowLifecycleListener(Lcom/eltechs/axs/xserver/WindowLifecycleListener;)V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->windowLifecycleListenersList:Lcom/eltechs/axs/xserver/WindowLifecycleListenersList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/WindowLifecycleListenersList;->removeListener(Lcom/eltechs/axs/xserver/WindowLifecycleListener;)V

    return-void
.end method

.method public unmapSubwindows(Lcom/eltechs/axs/xserver/Window;)V
    .locals 1

    .line 234
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getChildrenBottomToTop()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/xserver/Window;

    .line 236
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->unmapWindow(Lcom/eltechs/axs/xserver/Window;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public unmapWindow(Lcom/eltechs/axs/xserver/Window;)V
    .locals 6

    .line 209
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getWindowAttributes()Lcom/eltechs/axs/xserver/WindowAttributes;

    move-result-object v0

    .line 211
    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->getRootWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v1

    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v1

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    return-void

    .line 216
    :cond_0
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/WindowAttributes;->isMapped()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 218
    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/WindowAttributes;->setMapped(Z)V

    .line 220
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getParent()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    .line 221
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object v2

    .line 222
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object v3

    .line 224
    new-instance v4, Lcom/eltechs/axs/xserver/events/UnmapNotify;

    invoke-direct {v4, p1, p1, v1}, Lcom/eltechs/axs/xserver/events/UnmapNotify;-><init>(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Z)V

    sget-object v5, Lcom/eltechs/axs/xserver/EventName;->STRUCTURE_NOTIFY:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {v2, v4, v5}, Lcom/eltechs/axs/xserver/WindowListenersList;->sendEventForEventName(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/EventName;)V

    .line 225
    new-instance v2, Lcom/eltechs/axs/xserver/events/UnmapNotify;

    invoke-direct {v2, v0, p1, v1}, Lcom/eltechs/axs/xserver/events/UnmapNotify;-><init>(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Z)V

    sget-object v0, Lcom/eltechs/axs/xserver/EventName;->SUBSTRUCTURE_NOTIFY:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {v3, v2, v0}, Lcom/eltechs/axs/xserver/WindowListenersList;->sendEventForEventName(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/EventName;)V

    .line 227
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;->windowLifecycleListenersList:Lcom/eltechs/axs/xserver/WindowLifecycleListenersList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/WindowLifecycleListenersList;->sendWindowUnmapped(Lcom/eltechs/axs/xserver/Window;)V

    :cond_1
    return-void
.end method
