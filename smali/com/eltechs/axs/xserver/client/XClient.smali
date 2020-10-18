.class public Lcom/eltechs/axs/xserver/client/XClient;
.super Ljava/lang/Object;
.source "XClient.java"


# instance fields
.field private authenticated:Z

.field private final clientColormaps:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/xserver/Colormap;",
            ">;"
        }
    .end annotation
.end field

.field private final clientCursors:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/xserver/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final clientGraphicsContexts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/xserver/GraphicsContext;",
            ">;"
        }
    .end annotation
.end field

.field private final clientPixmaps:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/xserver/Pixmap;",
            ">;"
        }
    .end annotation
.end field

.field private final clientShmSegments:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/xserver/ShmSegment;",
            ">;"
        }
    .end annotation
.end field

.field private final clientWindows:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/xserver/Window;",
            ">;"
        }
    .end annotation
.end field

.field private final colormapLifecycleListener:Lcom/eltechs/axs/xserver/ColormapLifecycleListener;

.field private final cursorLifecycleListener:Lcom/eltechs/axs/xserver/CursorLifecycleListener;

.field private final graphicsContextLifecycleListener:Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListener;

.field private final idInterval:Lcom/eltechs/axs/xserver/IdInterval;

.field private final outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

.field private final pixmapLifecycleListener:Lcom/eltechs/axs/xserver/PixmapLifecycleListener;

.field private sequenceNumber:I

.field private final shmSegmentLifecycleListener:Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListener;

.field private final windowLifecycleListener:Lcom/eltechs/axs/xserver/WindowLifecycleListener;

.field private final windowListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/eltechs/axs/xserver/Window;",
            "Lcom/eltechs/axs/xserver/client/XClientWindowListener;",
            ">;"
        }
    .end annotation
.end field

.field private final xServer:Lcom/eltechs/axs/xserver/XServer;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;Lcom/eltechs/axs/xconnectors/XOutputStream;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->sequenceNumber:I

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->windowListeners:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->clientWindows:Ljava/util/Collection;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->clientPixmaps:Ljava/util/Collection;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->clientGraphicsContexts:Ljava/util/Collection;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->clientCursors:Ljava/util/Collection;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->clientColormaps:Ljava/util/Collection;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->clientShmSegments:Ljava/util/Collection;

    .line 46
    iput-object p2, p0, Lcom/eltechs/axs/xserver/client/XClient;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    .line 47
    iput-object p1, p0, Lcom/eltechs/axs/xserver/client/XClient;->xServer:Lcom/eltechs/axs/xserver/XServer;

    .line 49
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/LocksManager;->lockAll()Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object p1

    const/4 p2, 0x0

    .line 51
    :try_start_0
    new-instance v0, Lcom/eltechs/axs/xserver/client/XClient$1;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/xserver/client/XClient$1;-><init>(Lcom/eltechs/axs/xserver/client/XClient;)V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->windowLifecycleListener:Lcom/eltechs/axs/xserver/WindowLifecycleListener;

    .line 59
    iget-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/xserver/client/XClient;->windowLifecycleListener:Lcom/eltechs/axs/xserver/WindowLifecycleListener;

    invoke-interface {v0, v1}, Lcom/eltechs/axs/xserver/WindowsManager;->addWindowLifecycleListener(Lcom/eltechs/axs/xserver/WindowLifecycleListener;)V

    .line 61
    new-instance v0, Lcom/eltechs/axs/xserver/client/XClient$2;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/xserver/client/XClient$2;-><init>(Lcom/eltechs/axs/xserver/client/XClient;)V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->pixmapLifecycleListener:Lcom/eltechs/axs/xserver/PixmapLifecycleListener;

    .line 73
    iget-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getPixmapsManager()Lcom/eltechs/axs/xserver/PixmapsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/xserver/client/XClient;->pixmapLifecycleListener:Lcom/eltechs/axs/xserver/PixmapLifecycleListener;

    invoke-interface {v0, v1}, Lcom/eltechs/axs/xserver/PixmapsManager;->addPixmapLifecycleListener(Lcom/eltechs/axs/xserver/PixmapLifecycleListener;)V

    .line 75
    new-instance v0, Lcom/eltechs/axs/xserver/client/XClient$3;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/xserver/client/XClient$3;-><init>(Lcom/eltechs/axs/xserver/client/XClient;)V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->cursorLifecycleListener:Lcom/eltechs/axs/xserver/CursorLifecycleListener;

    .line 87
    iget-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getCursorsManager()Lcom/eltechs/axs/xserver/CursorsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/xserver/client/XClient;->cursorLifecycleListener:Lcom/eltechs/axs/xserver/CursorLifecycleListener;

    invoke-interface {v0, v1}, Lcom/eltechs/axs/xserver/CursorsManager;->addCursorLifecycleListener(Lcom/eltechs/axs/xserver/CursorLifecycleListener;)V

    .line 89
    new-instance v0, Lcom/eltechs/axs/xserver/client/XClient$4;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/xserver/client/XClient$4;-><init>(Lcom/eltechs/axs/xserver/client/XClient;)V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->graphicsContextLifecycleListener:Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListener;

    .line 101
    iget-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getGraphicsContextsManager()Lcom/eltechs/axs/xserver/GraphicsContextsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/xserver/client/XClient;->graphicsContextLifecycleListener:Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListener;

    invoke-interface {v0, v1}, Lcom/eltechs/axs/xserver/GraphicsContextsManager;->addGraphicsContextsLifecycleListener(Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListener;)V

    .line 103
    new-instance v0, Lcom/eltechs/axs/xserver/client/XClient$5;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/xserver/client/XClient$5;-><init>(Lcom/eltechs/axs/xserver/client/XClient;)V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->colormapLifecycleListener:Lcom/eltechs/axs/xserver/ColormapLifecycleListener;

    .line 115
    iget-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getColormapsManager()Lcom/eltechs/axs/xserver/ColormapsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/xserver/client/XClient;->colormapLifecycleListener:Lcom/eltechs/axs/xserver/ColormapLifecycleListener;

    invoke-interface {v0, v1}, Lcom/eltechs/axs/xserver/ColormapsManager;->addColormapLifecycleListener(Lcom/eltechs/axs/xserver/ColormapLifecycleListener;)V

    .line 117
    new-instance v0, Lcom/eltechs/axs/xserver/client/XClient$6;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/xserver/client/XClient$6;-><init>(Lcom/eltechs/axs/xserver/client/XClient;)V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->shmSegmentLifecycleListener:Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListener;

    .line 129
    iget-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getShmSegmentsManager()Lcom/eltechs/axs/xserver/ShmSegmentsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/xserver/client/XClient;->shmSegmentLifecycleListener:Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListener;

    invoke-interface {v0, v1}, Lcom/eltechs/axs/xserver/ShmSegmentsManager;->addShmSegmentLifecycleListener(Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListener;)V

    .line 131
    iget-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getIdIntervalsManager()Lcom/eltechs/axs/xserver/IdIntervalsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/IdIntervalsManager;->getInterval()Lcom/eltechs/axs/xserver/IdInterval;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->idInterval:Lcom/eltechs/axs/xserver/IdInterval;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 132
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 49
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 132
    :try_start_2
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_2
    :goto_1
    throw v0
.end method

.method static synthetic access$000(Lcom/eltechs/axs/xserver/client/XClient;)Ljava/util/Map;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/eltechs/axs/xserver/client/XClient;->windowListeners:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/eltechs/axs/xserver/client/XClient;)Ljava/util/Collection;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/eltechs/axs/xserver/client/XClient;->clientWindows:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic access$200(Lcom/eltechs/axs/xserver/client/XClient;)Ljava/util/Collection;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/eltechs/axs/xserver/client/XClient;->clientPixmaps:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic access$300(Lcom/eltechs/axs/xserver/client/XClient;)Ljava/util/Collection;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/eltechs/axs/xserver/client/XClient;->clientCursors:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic access$400(Lcom/eltechs/axs/xserver/client/XClient;)Ljava/util/Collection;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/eltechs/axs/xserver/client/XClient;->clientGraphicsContexts:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic access$500(Lcom/eltechs/axs/xserver/client/XClient;)Ljava/util/Collection;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/eltechs/axs/xserver/client/XClient;->clientColormaps:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic access$600(Lcom/eltechs/axs/xserver/client/XClient;)Ljava/util/Collection;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/eltechs/axs/xserver/client/XClient;->clientShmSegments:Ljava/util/Collection;

    return-object p0
.end method


# virtual methods
.method public createEventSender()Lcom/eltechs/axs/proto/output/XEventSender;
    .locals 4

    .line 212
    new-instance v0, Lcom/eltechs/axs/proto/output/XEventSender;

    new-instance v1, Lcom/eltechs/axs/xconnectors/XResponse;

    iget v2, p0, Lcom/eltechs/axs/xserver/client/XClient;->sequenceNumber:I

    iget-object v3, p0, Lcom/eltechs/axs/xserver/client/XClient;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    invoke-direct {v1, v2, v3}, Lcom/eltechs/axs/xconnectors/XResponse;-><init>(ILcom/eltechs/axs/xconnectors/XOutputStream;)V

    invoke-direct {v0, v1}, Lcom/eltechs/axs/proto/output/XEventSender;-><init>(Lcom/eltechs/axs/xconnectors/XResponse;)V

    return-object v0
.end method

.method public freeAssociatedResources()V
    .locals 5

    .line 270
    iget-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager;->lockAll()Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 272
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xserver/client/XClient;->clientWindows:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/eltechs/axs/xserver/client/XClient;->clientWindows:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eltechs/axs/xserver/Window;

    .line 275
    iget-object v3, p0, Lcom/eltechs/axs/xserver/client/XClient;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/eltechs/axs/xserver/WindowsManager;->destroyWindow(Lcom/eltechs/axs/xserver/Window;)V

    goto :goto_0

    .line 278
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/eltechs/axs/xserver/client/XClient;->clientPixmaps:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 280
    iget-object v2, p0, Lcom/eltechs/axs/xserver/client/XClient;->clientPixmaps:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eltechs/axs/xserver/Pixmap;

    .line 281
    iget-object v3, p0, Lcom/eltechs/axs/xserver/client/XClient;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/XServer;->getPixmapsManager()Lcom/eltechs/axs/xserver/PixmapsManager;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/eltechs/axs/xserver/PixmapsManager;->freePixmap(Lcom/eltechs/axs/xserver/Pixmap;)V

    goto :goto_1

    .line 284
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/eltechs/axs/xserver/client/XClient;->clientGraphicsContexts:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 286
    iget-object v2, p0, Lcom/eltechs/axs/xserver/client/XClient;->clientGraphicsContexts:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eltechs/axs/xserver/GraphicsContext;

    .line 287
    iget-object v3, p0, Lcom/eltechs/axs/xserver/client/XClient;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/XServer;->getGraphicsContextsManager()Lcom/eltechs/axs/xserver/GraphicsContextsManager;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/eltechs/axs/xserver/GraphicsContextsManager;->removeGraphicsContext(Lcom/eltechs/axs/xserver/GraphicsContext;)V

    goto :goto_2

    .line 290
    :cond_2
    :goto_3
    iget-object v2, p0, Lcom/eltechs/axs/xserver/client/XClient;->clientCursors:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 292
    iget-object v2, p0, Lcom/eltechs/axs/xserver/client/XClient;->clientCursors:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eltechs/axs/xserver/Cursor;

    .line 293
    iget-object v3, p0, Lcom/eltechs/axs/xserver/client/XClient;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/XServer;->getCursorsManager()Lcom/eltechs/axs/xserver/CursorsManager;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/eltechs/axs/xserver/CursorsManager;->freeCursor(Lcom/eltechs/axs/xserver/Cursor;)V

    goto :goto_3

    .line 296
    :cond_3
    :goto_4
    iget-object v2, p0, Lcom/eltechs/axs/xserver/client/XClient;->clientColormaps:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 298
    iget-object v2, p0, Lcom/eltechs/axs/xserver/client/XClient;->clientColormaps:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eltechs/axs/xserver/Colormap;

    .line 299
    iget-object v3, p0, Lcom/eltechs/axs/xserver/client/XClient;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/XServer;->getColormapsManager()Lcom/eltechs/axs/xserver/ColormapsManager;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/eltechs/axs/xserver/ColormapsManager;->freeColormap(Lcom/eltechs/axs/xserver/Colormap;)V

    goto :goto_4

    .line 302
    :cond_4
    :goto_5
    iget-object v2, p0, Lcom/eltechs/axs/xserver/client/XClient;->clientShmSegments:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 304
    iget-object v2, p0, Lcom/eltechs/axs/xserver/client/XClient;->clientShmSegments:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eltechs/axs/xserver/ShmSegment;

    .line 305
    iget-object v3, p0, Lcom/eltechs/axs/xserver/client/XClient;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/XServer;->getShmSegmentsManager()Lcom/eltechs/axs/xserver/ShmSegmentsManager;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/eltechs/axs/xserver/ShmSegmentsManager;->detachSegment(Lcom/eltechs/axs/xserver/ShmSegment;)V

    goto :goto_5

    .line 308
    :cond_5
    iget-object v2, p0, Lcom/eltechs/axs/xserver/client/XClient;->windowListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 310
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/eltechs/axs/xserver/Window;

    invoke-interface {v4}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/eltechs/axs/xserver/WindowListener;

    invoke-virtual {v4, v3}, Lcom/eltechs/axs/xserver/WindowListenersList;->removeListener(Lcom/eltechs/axs/xserver/WindowListener;)V

    goto :goto_6

    .line 313
    :cond_6
    iget-object v2, p0, Lcom/eltechs/axs/xserver/client/XClient;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/eltechs/axs/xserver/client/XClient;->windowLifecycleListener:Lcom/eltechs/axs/xserver/WindowLifecycleListener;

    invoke-interface {v2, v3}, Lcom/eltechs/axs/xserver/WindowsManager;->removeWindowLifecycleListener(Lcom/eltechs/axs/xserver/WindowLifecycleListener;)V

    .line 314
    iget-object v2, p0, Lcom/eltechs/axs/xserver/client/XClient;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getPixmapsManager()Lcom/eltechs/axs/xserver/PixmapsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/eltechs/axs/xserver/client/XClient;->pixmapLifecycleListener:Lcom/eltechs/axs/xserver/PixmapLifecycleListener;

    invoke-interface {v2, v3}, Lcom/eltechs/axs/xserver/PixmapsManager;->removePixmapLifecycleListener(Lcom/eltechs/axs/xserver/PixmapLifecycleListener;)V

    .line 315
    iget-object v2, p0, Lcom/eltechs/axs/xserver/client/XClient;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getGraphicsContextsManager()Lcom/eltechs/axs/xserver/GraphicsContextsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/eltechs/axs/xserver/client/XClient;->graphicsContextLifecycleListener:Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListener;

    invoke-interface {v2, v3}, Lcom/eltechs/axs/xserver/GraphicsContextsManager;->removeGraphicsContextLifecycleListener(Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListener;)V

    .line 316
    iget-object v2, p0, Lcom/eltechs/axs/xserver/client/XClient;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getCursorsManager()Lcom/eltechs/axs/xserver/CursorsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/eltechs/axs/xserver/client/XClient;->cursorLifecycleListener:Lcom/eltechs/axs/xserver/CursorLifecycleListener;

    invoke-interface {v2, v3}, Lcom/eltechs/axs/xserver/CursorsManager;->removeCursorLifecycleListener(Lcom/eltechs/axs/xserver/CursorLifecycleListener;)V

    .line 317
    iget-object v2, p0, Lcom/eltechs/axs/xserver/client/XClient;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getColormapsManager()Lcom/eltechs/axs/xserver/ColormapsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/eltechs/axs/xserver/client/XClient;->colormapLifecycleListener:Lcom/eltechs/axs/xserver/ColormapLifecycleListener;

    invoke-interface {v2, v3}, Lcom/eltechs/axs/xserver/ColormapsManager;->removeColormapLifecycleListener(Lcom/eltechs/axs/xserver/ColormapLifecycleListener;)V

    .line 318
    iget-object v2, p0, Lcom/eltechs/axs/xserver/client/XClient;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getShmSegmentsManager()Lcom/eltechs/axs/xserver/ShmSegmentsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/eltechs/axs/xserver/client/XClient;->shmSegmentLifecycleListener:Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListener;

    invoke-interface {v2, v3}, Lcom/eltechs/axs/xserver/ShmSegmentsManager;->removeShmSegmentLifecycleListener(Lcom/eltechs/axs/xserver/ShmSegmentLifecycleListener;)V

    .line 320
    iget-object v2, p0, Lcom/eltechs/axs/xserver/client/XClient;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getIdIntervalsManager()Lcom/eltechs/axs/xserver/IdIntervalsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/eltechs/axs/xserver/client/XClient;->idInterval:Lcom/eltechs/axs/xserver/IdInterval;

    invoke-interface {v2, v3}, Lcom/eltechs/axs/xserver/IdIntervalsManager;->freeInterval(Lcom/eltechs/axs/xserver/IdInterval;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_7

    .line 321
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_7
    return-void

    :catchall_0
    move-exception v2

    goto :goto_7

    :catch_0
    move-exception v1

    .line 270
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    if-eqz v0, :cond_9

    if-eqz v1, :cond_8

    .line 321
    :try_start_2
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_8
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_9
    :goto_8
    throw v2
.end method

.method public generateSequenceNumber()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->sequenceNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->sequenceNumber:I

    return v0
.end method

.method public getEventMask(Lcom/eltechs/axs/xserver/Window;)Lcom/eltechs/axs/xserver/impl/masks/Mask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/Window;",
            ")",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/EventName;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->windowListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/xserver/client/XClientWindowListener;

    if-eqz p1, :cond_0

    .line 205
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/client/XClientWindowListener;->getMask()Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object p1

    return-object p1

    .line 207
    :cond_0
    const-class p1, Lcom/eltechs/axs/xserver/EventName;

    invoke-static {p1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->emptyMask(Ljava/lang/Class;)Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object p1

    return-object p1
.end method

.method public getIdInterval()Lcom/eltechs/axs/xserver/IdInterval;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->idInterval:Lcom/eltechs/axs/xserver/IdInterval;

    return-object v0
.end method

.method public getLastSequenceNumber()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->sequenceNumber:I

    return v0
.end method

.method public installEventListener(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/impl/masks/Mask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/Window;",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/EventName;",
            ">;)V"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->windowListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/xserver/client/XClientWindowListener;

    if-eqz v0, :cond_0

    .line 165
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/eltechs/axs/xserver/WindowListenersList;->removeListener(Lcom/eltechs/axs/xserver/WindowListener;)V

    .line 168
    :cond_0
    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    new-instance v0, Lcom/eltechs/axs/xserver/client/XClientWindowListener;

    invoke-direct {v0, p0, p2}, Lcom/eltechs/axs/xserver/client/XClientWindowListener;-><init>(Lcom/eltechs/axs/xserver/client/XClient;Lcom/eltechs/axs/xserver/impl/masks/Mask;)V

    .line 171
    iget-object p2, p0, Lcom/eltechs/axs/xserver/client/XClient;->windowListeners:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/xserver/WindowListenersList;->addListener(Lcom/eltechs/axs/xserver/WindowListener;)V

    :cond_1
    return-void
.end method

.method public isAuthenticated()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->authenticated:Z

    return v0
.end method

.method public isInterestedIn(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/EventName;)Z
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->windowListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/xserver/client/XClientWindowListener;

    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/client/XClientWindowListener;->isInterestedIn(Lcom/eltechs/axs/xserver/EventName;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public registerAsOwnerOfColormap(Lcom/eltechs/axs/xserver/Colormap;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->clientColormaps:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerAsOwnerOfCursor(Lcom/eltechs/axs/xserver/Cursor;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->clientCursors:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerAsOwnerOfGraphicsContext(Lcom/eltechs/axs/xserver/GraphicsContext;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->clientGraphicsContexts:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerAsOwnerOfPixmap(Lcom/eltechs/axs/xserver/Pixmap;)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->clientPixmaps:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerAsOwnerOfWindow(Lcom/eltechs/axs/xserver/Window;)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient;->clientWindows:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAuthenticated(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/eltechs/axs/xserver/client/XClient;->authenticated:Z

    return-void
.end method
