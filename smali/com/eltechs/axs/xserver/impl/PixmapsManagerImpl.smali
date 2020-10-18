.class public Lcom/eltechs/axs/xserver/impl/PixmapsManagerImpl;
.super Ljava/lang/Object;
.source "PixmapsManagerImpl.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/PixmapsManager;


# instance fields
.field private final drawablesManager:Lcom/eltechs/axs/xserver/DrawablesManager;

.field private final pixmapLifecycleListenersList:Lcom/eltechs/axs/xserver/PixmapLifecycleListenerList;

.field private final pixmaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/eltechs/axs/xserver/Pixmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/DrawablesManager;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/PixmapsManagerImpl;->pixmaps:Ljava/util/Map;

    .line 24
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/PixmapsManagerImpl;->drawablesManager:Lcom/eltechs/axs/xserver/DrawablesManager;

    .line 25
    new-instance p1, Lcom/eltechs/axs/xserver/PixmapLifecycleListenerList;

    invoke-direct {p1}, Lcom/eltechs/axs/xserver/PixmapLifecycleListenerList;-><init>()V

    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/PixmapsManagerImpl;->pixmapLifecycleListenersList:Lcom/eltechs/axs/xserver/PixmapLifecycleListenerList;

    return-void
.end method


# virtual methods
.method public addPixmapLifecycleListener(Lcom/eltechs/axs/xserver/PixmapLifecycleListener;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/PixmapsManagerImpl;->pixmapLifecycleListenersList:Lcom/eltechs/axs/xserver/PixmapLifecycleListenerList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/PixmapLifecycleListenerList;->addListener(Lcom/eltechs/axs/xserver/PixmapLifecycleListener;)V

    return-void
.end method

.method public createPixmap(Lcom/eltechs/axs/xserver/Drawable;)Lcom/eltechs/axs/xserver/Pixmap;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/PixmapsManagerImpl;->pixmaps:Ljava/util/Map;

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Drawable;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 42
    :cond_0
    new-instance v0, Lcom/eltechs/axs/xserver/impl/PixmapImpl;

    invoke-direct {v0, p1}, Lcom/eltechs/axs/xserver/impl/PixmapImpl;-><init>(Lcom/eltechs/axs/xserver/Drawable;)V

    .line 43
    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/PixmapsManagerImpl;->pixmaps:Ljava/util/Map;

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Drawable;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object p1, p0, Lcom/eltechs/axs/xserver/impl/PixmapsManagerImpl;->pixmapLifecycleListenersList:Lcom/eltechs/axs/xserver/PixmapLifecycleListenerList;

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/xserver/PixmapLifecycleListenerList;->sendPixmapCreated(Lcom/eltechs/axs/xserver/Pixmap;)V

    return-object v0
.end method

.method public freePixmap(Lcom/eltechs/axs/xserver/Pixmap;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/PixmapsManagerImpl;->pixmaps:Ljava/util/Map;

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Pixmap;->getBackingStore()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v1

    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Drawable;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/PixmapsManagerImpl;->drawablesManager:Lcom/eltechs/axs/xserver/DrawablesManager;

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Pixmap;->getBackingStore()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/eltechs/axs/xserver/DrawablesManager;->removeDrawable(Lcom/eltechs/axs/xserver/Drawable;)V

    .line 53
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/PixmapsManagerImpl;->pixmapLifecycleListenersList:Lcom/eltechs/axs/xserver/PixmapLifecycleListenerList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/PixmapLifecycleListenerList;->sendPixmapFreed(Lcom/eltechs/axs/xserver/Pixmap;)V

    return-void
.end method

.method public getPixmap(I)Lcom/eltechs/axs/xserver/Pixmap;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/PixmapsManagerImpl;->pixmaps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/xserver/Pixmap;

    return-object p1
.end method

.method public removePixmapLifecycleListener(Lcom/eltechs/axs/xserver/PixmapLifecycleListener;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/PixmapsManagerImpl;->pixmapLifecycleListenersList:Lcom/eltechs/axs/xserver/PixmapLifecycleListenerList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/PixmapLifecycleListenerList;->removeListener(Lcom/eltechs/axs/xserver/PixmapLifecycleListener;)V

    return-void
.end method
