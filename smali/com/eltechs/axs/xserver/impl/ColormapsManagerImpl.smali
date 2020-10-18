.class public Lcom/eltechs/axs/xserver/impl/ColormapsManagerImpl;
.super Ljava/lang/Object;
.source "ColormapsManagerImpl.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/ColormapsManager;


# instance fields
.field private final colormapLifecycleListenerList:Lcom/eltechs/axs/xserver/ColormapLifecycleListenerList;

.field private final colormaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/eltechs/axs/xserver/Colormap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/ColormapsManagerImpl;->colormaps:Ljava/util/Map;

    .line 28
    new-instance v0, Lcom/eltechs/axs/xserver/ColormapLifecycleListenerList;

    invoke-direct {v0}, Lcom/eltechs/axs/xserver/ColormapLifecycleListenerList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/ColormapsManagerImpl;->colormapLifecycleListenerList:Lcom/eltechs/axs/xserver/ColormapLifecycleListenerList;

    return-void
.end method


# virtual methods
.method public addColormapLifecycleListener(Lcom/eltechs/axs/xserver/ColormapLifecycleListener;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/ColormapsManagerImpl;->colormapLifecycleListenerList:Lcom/eltechs/axs/xserver/ColormapLifecycleListenerList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/ColormapLifecycleListenerList;->addListener(Lcom/eltechs/axs/xserver/ColormapLifecycleListener;)V

    return-void
.end method

.method public createColormap(I)Lcom/eltechs/axs/xserver/Colormap;
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/ColormapsManagerImpl;->colormaps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 39
    :cond_0
    new-instance v0, Lcom/eltechs/axs/xserver/impl/ColormapImpl;

    invoke-direct {v0, p1}, Lcom/eltechs/axs/xserver/impl/ColormapImpl;-><init>(I)V

    .line 40
    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/ColormapsManagerImpl;->colormaps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object p1, p0, Lcom/eltechs/axs/xserver/impl/ColormapsManagerImpl;->colormapLifecycleListenerList:Lcom/eltechs/axs/xserver/ColormapLifecycleListenerList;

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/xserver/ColormapLifecycleListenerList;->sendColormapCreated(Lcom/eltechs/axs/xserver/Colormap;)V

    return-object v0
.end method

.method public freeColormap(Lcom/eltechs/axs/xserver/Colormap;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/ColormapsManagerImpl;->colormaps:Ljava/util/Map;

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Colormap;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/ColormapsManagerImpl;->colormapLifecycleListenerList:Lcom/eltechs/axs/xserver/ColormapLifecycleListenerList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/ColormapLifecycleListenerList;->sendColormapFreed(Lcom/eltechs/axs/xserver/Colormap;)V

    return-void
.end method

.method public getColormap(I)Lcom/eltechs/axs/xserver/Colormap;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/ColormapsManagerImpl;->colormaps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/xserver/Colormap;

    return-object p1
.end method

.method public removeColormapLifecycleListener(Lcom/eltechs/axs/xserver/ColormapLifecycleListener;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/ColormapsManagerImpl;->colormapLifecycleListenerList:Lcom/eltechs/axs/xserver/ColormapLifecycleListenerList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/ColormapLifecycleListenerList;->removeListener(Lcom/eltechs/axs/xserver/ColormapLifecycleListener;)V

    return-void
.end method
