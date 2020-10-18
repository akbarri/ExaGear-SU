.class Lcom/eltechs/axs/ProcessRemindActionsJobService$ProcessRemindActionsAsyncTask;
.super Landroid/os/AsyncTask;
.source "ProcessRemindActionsJobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/ProcessRemindActionsJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessRemindActionsAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mJobParams:Landroid/app/job/JobParameters;

.field final synthetic this$0:Lcom/eltechs/axs/ProcessRemindActionsJobService;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/ProcessRemindActionsJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/eltechs/axs/ProcessRemindActionsJobService$ProcessRemindActionsAsyncTask;->this$0:Lcom/eltechs/axs/ProcessRemindActionsJobService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/eltechs/axs/ProcessRemindActionsJobService$ProcessRemindActionsAsyncTask;->mJobParams:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/ProcessRemindActionsJobService$ProcessRemindActionsAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 47
    :try_start_0
    invoke-static {}, Lcom/eltechs/axs/firebase/FRCHelper;->fetch()V

    .line 49
    iget-object p1, p0, Lcom/eltechs/axs/ProcessRemindActionsJobService$ProcessRemindActionsAsyncTask;->this$0:Lcom/eltechs/axs/ProcessRemindActionsJobService;

    invoke-static {p1}, Lcom/eltechs/axs/RemindActions;->parseConfigAndExecuteActions(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 55
    :try_start_1
    iget-object v0, p0, Lcom/eltechs/axs/ProcessRemindActionsJobService$ProcessRemindActionsAsyncTask;->this$0:Lcom/eltechs/axs/ProcessRemindActionsJobService;

    .line 56
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-static {v0, v1, p1}, Lcom/eltechs/axs/firebase/FAHelper;->logRemindActionsCrashEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/ProcessRemindActionsJobService$ProcessRemindActionsAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 68
    iget-object p1, p0, Lcom/eltechs/axs/ProcessRemindActionsJobService$ProcessRemindActionsAsyncTask;->this$0:Lcom/eltechs/axs/ProcessRemindActionsJobService;

    iget-object v0, p0, Lcom/eltechs/axs/ProcessRemindActionsJobService$ProcessRemindActionsAsyncTask;->mJobParams:Landroid/app/job/JobParameters;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/eltechs/axs/ProcessRemindActionsJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
