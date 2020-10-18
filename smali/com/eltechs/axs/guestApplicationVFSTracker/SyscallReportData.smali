.class public Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;
.super Ljava/lang/Object;
.source "SyscallReportData.java"


# instance fields
.field private fileIndex:I

.field private flags:I

.field private syscallNr:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;->syscallNr:I

    .line 18
    iput p2, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;->flags:I

    .line 19
    iput p3, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;->fileIndex:I

    return-void
.end method


# virtual methods
.method public getFileIndex()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;->fileIndex:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;->flags:I

    return v0
.end method

.method public getSyscallNr()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/eltechs/axs/guestApplicationVFSTracker/SyscallReportData;->syscallNr:I

    return v0
.end method
