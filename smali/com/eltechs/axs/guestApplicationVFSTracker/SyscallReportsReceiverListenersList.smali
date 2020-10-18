.class public Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiverListenersList;
.super Ljava/lang/Object;
.source "SyscallReportsReceiverListenersList.java"


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiverListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiverListenersList;->listeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiverListener;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiverListenersList;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public notifySyscallReported(Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiverListenersList;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiverListener;

    .line 29
    invoke-interface {v1, p1}, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiverListener;->syscallReported(Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiverListener;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiverListenersList;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
