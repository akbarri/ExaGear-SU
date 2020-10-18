.class public Lcom/eltechs/axs/guestApplicationVFSTracker/StupidSyscallReportHandler;
.super Ljava/lang/Object;
.source "StupidSyscallReportHandler.java"

# interfaces
.implements Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportHandler;
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSyscall(Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;Lcom/eltechs/axs/xconnectors/XOutputStream;)Z
    .locals 6

    .line 19
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Tracker: syscall = %d, flags: %08x, index = %d\n"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;->getSyscallNr()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;->getFlags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p1}, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;->getFileIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 20
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XOutputStream;->lock()Lcom/eltechs/axs/xconnectors/XStreamLock;

    const p1, 0x4b4f4f48    # 1.3586248E7f

    .line 23
    :try_start_0
    invoke-interface {p2, p1}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeInt(I)V

    const/16 p1, 0xa

    .line 24
    invoke-interface {p2, p1}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeShort(S)V

    .line 25
    invoke-interface {p2, v4}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeInt(I)V

    .line 26
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 29
    :catch_0
    :try_start_1
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->unreachable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return v5

    .line 32
    :goto_1
    throw p1
.end method
