.class public Lcom/eltechs/axs/environmentService/components/VFSTrackerComponent;
.super Lcom/eltechs/axs/environmentService/EnvironmentComponent;
.source "VFSTrackerComponent.java"


# instance fields
.field private final address:Ljava/lang/String;

.field private final rootHandler:Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportMultiplexor;

.field private final trackedFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tracker:Lcom/eltechs/axs/guestApplicationVFSTracker/VFSTracker;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportMultiplexor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportMultiplexor;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lcom/eltechs/axs/environmentService/EnvironmentComponent;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/eltechs/axs/environmentService/components/VFSTrackerComponent;->address:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/eltechs/axs/environmentService/components/VFSTrackerComponent;->trackedFiles:Ljava/util/List;

    .line 26
    iput-object p3, p0, Lcom/eltechs/axs/environmentService/components/VFSTrackerComponent;->rootHandler:Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportMultiplexor;

    return-void
.end method


# virtual methods
.method public getRootHandler()Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportMultiplexor;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/VFSTrackerComponent;->rootHandler:Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportMultiplexor;

    return-object v0
.end method

.method public getSocket()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/VFSTrackerComponent;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackedFileByIndex(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/VFSTrackerComponent;->trackedFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 63
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/VFSTrackerComponent;->trackedFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getTrackedFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/VFSTrackerComponent;->trackedFiles:Ljava/util/List;

    return-object v0
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/VFSTrackerComponent;->tracker:Lcom/eltechs/axs/guestApplicationVFSTracker/VFSTracker;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "VFS tracker is already started."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 34
    new-instance v0, Lcom/eltechs/axs/guestApplicationVFSTracker/VFSTracker;

    iget-object v1, p0, Lcom/eltechs/axs/environmentService/components/VFSTrackerComponent;->address:Ljava/lang/String;

    invoke-static {v1}, Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;->createAbstractSocket(Ljava/lang/String;)Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/eltechs/axs/environmentService/components/VFSTrackerComponent;->rootHandler:Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportMultiplexor;

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/guestApplicationVFSTracker/VFSTracker;-><init>(Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportHandler;)V

    iput-object v0, p0, Lcom/eltechs/axs/environmentService/components/VFSTrackerComponent;->tracker:Lcom/eltechs/axs/guestApplicationVFSTracker/VFSTracker;

    return-void
.end method

.method public stop()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/VFSTrackerComponent;->tracker:Lcom/eltechs/axs/guestApplicationVFSTracker/VFSTracker;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "VFS tracker is not yet started."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/VFSTrackerComponent;->tracker:Lcom/eltechs/axs/guestApplicationVFSTracker/VFSTracker;

    invoke-virtual {v0}, Lcom/eltechs/axs/guestApplicationVFSTracker/VFSTracker;->stop()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/eltechs/axs/environmentService/components/VFSTrackerComponent;->tracker:Lcom/eltechs/axs/guestApplicationVFSTracker/VFSTracker;

    return-void
.end method
