.class public Lcom/eltechs/axs/configuration/startup/actions/CheckCPUFeatures;
.super Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;
.source "CheckCPUFeatures.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/configuration/startup/actions/CheckCPUFeatures$RequiredCPUFeatures;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction<",
        "Lcom/eltechs/axs/applicationState/ApplicationStateBase<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final requiredCPUFeatures:Lcom/eltechs/axs/configuration/startup/actions/CheckCPUFeatures$RequiredCPUFeatures;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/configuration/startup/actions/CheckCPUFeatures$RequiredCPUFeatures;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/CheckCPUFeatures;->requiredCPUFeatures:Lcom/eltechs/axs/configuration/startup/actions/CheckCPUFeatures$RequiredCPUFeatures;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-static {v0}, Lcom/eltechs/axs/helpers/EnvironmentInfoHelpers;->canRunUbtOnCpu(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Sorry, your CPU is not supported."

    .line 40
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/configuration/startup/actions/CheckCPUFeatures;->sendError(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/eltechs/axs/Globals;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/helpers/GAHelpers;->GASendCpuNotSupported(Landroid/content/Context;)V

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/CheckCPUFeatures;->requiredCPUFeatures:Lcom/eltechs/axs/configuration/startup/actions/CheckCPUFeatures$RequiredCPUFeatures;

    iget-boolean v0, v0, Lcom/eltechs/axs/configuration/startup/actions/CheckCPUFeatures$RequiredCPUFeatures;->isNeonRequired:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/eltechs/axs/helpers/EnvironmentInfoHelpers;->canRunUbtOnCpu(Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "No NEON support."

    .line 47
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/configuration/startup/actions/CheckCPUFeatures;->sendError(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/eltechs/axs/Globals;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/helpers/GAHelpers;->GASendCpuNotSupported(Landroid/content/Context;)V

    return-void

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/CheckCPUFeatures;->sendDone()V

    return-void
.end method
