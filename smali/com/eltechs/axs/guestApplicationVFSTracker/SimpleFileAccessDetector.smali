.class public abstract Lcom/eltechs/axs/guestApplicationVFSTracker/SimpleFileAccessDetector;
.super Ljava/lang/Object;
.source "SimpleFileAccessDetector.java"

# interfaces
.implements Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportHandler;
.implements Ljava/io/Serializable;


# instance fields
.field private final fileList:[Ljava/lang/String;

.field private final ownerComponent:Lcom/eltechs/axs/environmentService/components/VFSTrackerComponent;


# direct methods
.method protected constructor <init>([Ljava/lang/String;Lcom/eltechs/axs/environmentService/components/VFSTrackerComponent;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SimpleFileAccessDetector;->fileList:[Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SimpleFileAccessDetector;->ownerComponent:Lcom/eltechs/axs/environmentService/components/VFSTrackerComponent;

    return-void
.end method

.method private sendReply(Lcom/eltechs/axs/xconnectors/XOutputStream;Z)V
    .locals 1

    .line 65
    invoke-interface {p1}, Lcom/eltechs/axs/xconnectors/XOutputStream;->lock()Lcom/eltechs/axs/xconnectors/XStreamLock;

    const v0, 0x4b4f4f48    # 1.3586248E7f

    .line 68
    :try_start_0
    invoke-interface {p1, v0}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeInt(I)V

    const/16 v0, 0xa

    .line 69
    invoke-interface {p1, v0}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeShort(S)V

    xor-int/lit8 p2, p2, 0x1

    .line 72
    invoke-interface {p1, p2}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeInt(I)V

    .line 73
    invoke-interface {p1}, Lcom/eltechs/axs/xconnectors/XOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 76
    :catch_0
    :try_start_1
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->unreachable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    .line 79
    :goto_1
    throw p1
.end method


# virtual methods
.method public abstract fileAccessed(Ljava/lang/String;)Z
.end method

.method public handleSyscall(Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;Lcom/eltechs/axs/xconnectors/XOutputStream;)Z
    .locals 6

    .line 36
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SimpleFileAccessDetector;->ownerComponent:Lcom/eltechs/axs/environmentService/components/VFSTrackerComponent;

    invoke-virtual {p1}, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;->getFileIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/environmentService/components/VFSTrackerComponent;->getTrackedFileByIndex(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SimpleFileAccessDetector;->fileList:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 40
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 43
    invoke-virtual {p1}, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;->getSyscallNr()I

    move-result p1

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    .line 45
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/guestApplicationVFSTracker/SimpleFileAccessDetector;->fileAccessed(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/eltechs/axs/guestApplicationVFSTracker/SimpleFileAccessDetector;->sendReply(Lcom/eltechs/axs/xconnectors/XOutputStream;Z)V

    goto :goto_1

    .line 48
    :cond_0
    invoke-direct {p0, p2, v2}, Lcom/eltechs/axs/guestApplicationVFSTracker/SimpleFileAccessDetector;->sendReply(Lcom/eltechs/axs/xconnectors/XOutputStream;Z)V

    :goto_1
    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method
