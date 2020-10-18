.class public Lcom/eltechs/axs/ProcessRemindActionsJobService;
.super Landroid/app/job/JobService;
.source "ProcessRemindActionsJobService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/ProcessRemindActionsJobService$ProcessRemindActionsAsyncTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 18
    new-instance v0, Lcom/eltechs/axs/ProcessRemindActionsJobService$ProcessRemindActionsAsyncTask;

    invoke-direct {v0, p0, p1}, Lcom/eltechs/axs/ProcessRemindActionsJobService$ProcessRemindActionsAsyncTask;-><init>(Lcom/eltechs/axs/ProcessRemindActionsJobService;Landroid/app/job/JobParameters;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/ProcessRemindActionsJobService$ProcessRemindActionsAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
