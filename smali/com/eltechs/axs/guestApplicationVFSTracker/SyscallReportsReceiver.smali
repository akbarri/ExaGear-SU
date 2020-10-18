.class public Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;
.super Ljava/lang/Object;
.source "SyscallReportsReceiver.java"

# interfaces
.implements Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportHandler;


# instance fields
.field private final file:Ljava/lang/String;

.field private isOn:Z

.field private final listeners:Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiverListenersList;

.field private numCloseCalled:I

.field private numOpenRDCalled:I

.field private numOpenWRCalled:I

.field private final vfsTracker:Lcom/eltechs/axs/environmentService/components/VFSTrackerComponent;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/environmentService/components/VFSTrackerComponent;Ljava/lang/String;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiverListenersList;

    invoke-direct {v0}, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiverListenersList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;->listeners:Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiverListenersList;

    .line 37
    iput-object p1, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;->vfsTracker:Lcom/eltechs/axs/environmentService/components/VFSTrackerComponent;

    .line 38
    iput-object p2, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;->file:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiverListener;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;->listeners:Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiverListenersList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiverListenersList;->addListener(Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiverListener;)V

    return-void
.end method

.method public getNumCloseCalled()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;->numCloseCalled:I

    return v0
.end method

.method public getNumOpenRDCalled()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;->numOpenRDCalled:I

    return v0
.end method

.method public getNumOpenWRCalled()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;->numOpenWRCalled:I

    return v0
.end method

.method public handleSyscall(Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;Lcom/eltechs/axs/xconnectors/XOutputStream;)Z
    .locals 8

    const-string v0, "SYSCALL"

    const-string v1, "handle some syscall! file_index: %d, syscall: %d flags: %08x"

    const/4 v2, 0x3

    .line 64
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;->getFileIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1}, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;->getSyscallNr()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {p1}, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;->vfsTracker:Lcom/eltechs/axs/environmentService/components/VFSTrackerComponent;

    invoke-virtual {p1}, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;->getFileIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/environmentService/components/VFSTrackerComponent;->getTrackedFileByIndex(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SYSCALL"

    const-string v1, "handle %s!"

    .line 67
    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;->file:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-boolean v0, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;->isOn:Z

    if-eqz v0, :cond_1

    const-string v0, "SYSCALL"

    const-string v1, "FSM: on %s!\n"

    .line 70
    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;->file:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p1}, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;->getSyscallNr()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string p1, "Only open() and close() are supported in ubt"

    .line 86
    invoke-static {p1}, Lcom/eltechs/axs/helpers/Assert;->unreachable(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :pswitch_0
    iget p1, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;->numCloseCalled:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;->numCloseCalled:I

    goto :goto_0

    .line 74
    :pswitch_1
    invoke-virtual {p1}, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;->getFlags()I

    move-result p1

    and-int/2addr p1, v2

    if-eqz p1, :cond_0

    .line 76
    iget p1, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;->numOpenWRCalled:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;->numOpenWRCalled:I

    goto :goto_0

    .line 79
    :cond_0
    iget p1, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;->numOpenRDCalled:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;->numOpenRDCalled:I

    .line 91
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;->listeners:Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiverListenersList;

    invoke-virtual {p1, p0}, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiverListenersList;->notifySyscallReported(Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;)V

    .line 93
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XOutputStream;->lock()Lcom/eltechs/axs/xconnectors/XStreamLock;

    const p1, 0x4b4f4f48    # 1.3586248E7f

    .line 96
    :try_start_0
    invoke-interface {p2, p1}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeInt(I)V

    const/16 p1, 0xa

    .line 97
    invoke-interface {p2, p1}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeShort(S)V

    .line 98
    invoke-interface {p2, v5}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeInt(I)V

    .line 99
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 102
    :catch_0
    :try_start_1
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->unreachable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    return v6

    .line 105
    :goto_2
    throw p1

    :cond_2
    return v5

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isReceiving()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;->isOn:Z

    return v0
.end method

.method public removeListener(Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiverListener;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;->listeners:Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiverListenersList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiverListenersList;->removeListener(Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiverListener;)V

    return-void
.end method

.method public startReceiving()V
    .locals 1

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;->isOn:Z

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;->numOpenRDCalled:I

    .line 46
    iput v0, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;->numOpenWRCalled:I

    .line 47
    iput v0, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;->numCloseCalled:I

    return-void
.end method

.method public stopReceiving()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportsReceiver;->isOn:Z

    return-void
.end method
