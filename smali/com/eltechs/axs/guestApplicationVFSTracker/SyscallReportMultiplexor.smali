.class public Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportMultiplexor;
.super Ljava/lang/Object;
.source "SyscallReportMultiplexor.java"

# interfaces
.implements Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportHandler;
.implements Ljava/io/Serializable;


# instance fields
.field private final handlers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportMultiplexor;->handlers:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public addHandler(Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportHandler;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportMultiplexor;->handlers:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public handleSyscall(Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;Lcom/eltechs/axs/xconnectors/XOutputStream;)Z
    .locals 7

    const-string v0, "SYSCALL"

    const-string v1, "Handling syscall for %d : nr : %d fl: %d"

    const/4 v2, 0x3

    .line 35
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;->getFileIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;->getSyscallNr()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p1}, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;->getFlags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportMultiplexor;->handlers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportHandler;

    .line 38
    invoke-interface {v1, p1, p2}, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportHandler;->handleSyscall(Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;Lcom/eltechs/axs/xconnectors/XOutputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v5

    :cond_1
    const-string p2, "No handlers found for file %d; ubt hung up!"

    .line 43
    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;->getFileIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/eltechs/axs/helpers/Assert;->unreachable(Ljava/lang/String;)V

    return v4
.end method

.method public removeHandler(Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportHandler;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportMultiplexor;->handlers:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method
