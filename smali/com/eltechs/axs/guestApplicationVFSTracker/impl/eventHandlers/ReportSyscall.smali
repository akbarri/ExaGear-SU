.class public Lcom/eltechs/axs/guestApplicationVFSTracker/impl/eventHandlers/ReportSyscall;
.super Ljava/lang/Object;
.source "ReportSyscall.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/RequestHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/eltechs/axs/xconnectors/RequestHandler<",
        "Lcom/eltechs/axs/guestApplicationVFSTracker/impl/VFSTrackerConnection;",
        ">;"
    }
.end annotation


# instance fields
.field private final MAX_SYSCALL_NR:I

.field private final MAX_TRACKED_FILES_COUNT:I

.field private final handler:Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportHandler;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportHandler;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 18
    iput v0, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/impl/eventHandlers/ReportSyscall;->MAX_TRACKED_FILES_COUNT:I

    const/16 v0, 0x15e

    .line 21
    iput v0, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/impl/eventHandlers/ReportSyscall;->MAX_SYSCALL_NR:I

    .line 25
    iput-object p1, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/impl/eventHandlers/ReportSyscall;->handler:Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportHandler;

    return-void
.end method


# virtual methods
.method public handleRequest(Lcom/eltechs/axs/guestApplicationVFSTracker/impl/VFSTrackerConnection;Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getInt()I

    move-result p1

    .line 34
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getInt()I

    move-result v0

    .line 35
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getInt()I

    move-result p2

    if-ltz p1, :cond_3

    const/16 v1, 0x15e

    if-le p1, v1, :cond_0

    goto :goto_1

    :cond_0
    if-ltz p2, :cond_2

    const/16 v1, 0x10

    if-lt p2, v1, :cond_1

    goto :goto_0

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/impl/eventHandlers/ReportSyscall;->handler:Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportHandler;

    new-instance v2, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;

    invoke-direct {v2, p1, v0, p2}, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;-><init>(III)V

    invoke-interface {v1, v2, p3}, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportHandler;->handleSyscall(Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;Lcom/eltechs/axs/xconnectors/XOutputStream;)Z

    .line 48
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    .line 44
    :cond_2
    :goto_0
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED_KILL_CONNECTION:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    .line 40
    :cond_3
    :goto_1
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED_KILL_CONNECTION:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1
.end method

.method public bridge synthetic handleRequest(Ljava/lang/Object;Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    check-cast p1, Lcom/eltechs/axs/guestApplicationVFSTracker/impl/VFSTrackerConnection;

    invoke-virtual {p0, p1, p2, p3}, Lcom/eltechs/axs/guestApplicationVFSTracker/impl/eventHandlers/ReportSyscall;->handleRequest(Lcom/eltechs/axs/guestApplicationVFSTracker/impl/VFSTrackerConnection;Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;

    move-result-object p1

    return-object p1
.end method
