.class public Lcom/eltechs/axs/configuration/startup/actions/CheckInstallLocation;
.super Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;
.source "CheckInstallLocation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction<",
        "Lcom/eltechs/axs/applicationState/ApplicationStateBase<",
        "*>;>;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ubt-helpers"

    .line 18
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;-><init>()V

    return-void
.end method

.method private native isExecutablePermissionSet(Ljava/lang/String;)Z
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 24
    new-instance v0, Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;

    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/CheckInstallLocation;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;->getLibubtPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/eltechs/axs/configuration/startup/actions/CheckInstallLocation;->isExecutablePermissionSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;->getLibubt2GPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/eltechs/axs/configuration/startup/actions/CheckInstallLocation;->isExecutablePermissionSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;->getKillswitchPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/eltechs/axs/configuration/startup/actions/CheckInstallLocation;->isExecutablePermissionSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;->getSysVIPCEmulatorPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/eltechs/axs/configuration/startup/actions/CheckInstallLocation;->isExecutablePermissionSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;->getIsMemSplit3g1gPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/eltechs/axs/configuration/startup/actions/CheckInstallLocation;->isExecutablePermissionSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/CheckInstallLocation;->sendDone()V

    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/CheckInstallLocation;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/eltechs/axs/R$string;->cil_installed_to_sdcard:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/configuration/startup/actions/CheckInstallLocation;->sendError(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
