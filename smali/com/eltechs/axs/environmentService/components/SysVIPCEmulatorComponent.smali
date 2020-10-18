.class public Lcom/eltechs/axs/environmentService/components/SysVIPCEmulatorComponent;
.super Lcom/eltechs/axs/environmentService/EnvironmentComponent;
.source "SysVIPCEmulatorComponent.java"


# instance fields
.field private final domainName:Ljava/lang/String;

.field private emulator:Lcom/eltechs/axs/sysvipc/Emulator;

.field private shmEngine:Lcom/eltechs/axs/sysvipc/SHMEngineImpl;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/eltechs/axs/environmentService/EnvironmentComponent;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/eltechs/axs/environmentService/components/SysVIPCEmulatorComponent;->domainName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDomainName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/SysVIPCEmulatorComponent;->domainName:Ljava/lang/String;

    return-object v0
.end method

.method public getShmEngine()Lcom/eltechs/axs/sysvipc/SHMEngine;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/SysVIPCEmulatorComponent;->shmEngine:Lcom/eltechs/axs/sysvipc/SHMEngineImpl;

    return-object v0
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/SysVIPCEmulatorComponent;->emulator:Lcom/eltechs/axs/sysvipc/Emulator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Sys V IPC emulator component is already started."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/eltechs/axs/environmentService/components/SysVIPCEmulatorComponent;->getEnvironment()Lcom/eltechs/axs/environmentService/AXSEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->getNativeLibsConfiguration()Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/eltechs/axs/sysvipc/Emulator;

    iget-object v2, p0, Lcom/eltechs/axs/environmentService/components/SysVIPCEmulatorComponent;->domainName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;->getElfLoaderPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;->getSysVIPCEmulatorPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/eltechs/axs/sysvipc/Emulator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/eltechs/axs/environmentService/components/SysVIPCEmulatorComponent;->emulator:Lcom/eltechs/axs/sysvipc/Emulator;

    .line 38
    new-instance v0, Lcom/eltechs/axs/sysvipc/SHMEngineImpl;

    iget-object v1, p0, Lcom/eltechs/axs/environmentService/components/SysVIPCEmulatorComponent;->domainName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/eltechs/axs/sysvipc/SHMEngineImpl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eltechs/axs/environmentService/components/SysVIPCEmulatorComponent;->shmEngine:Lcom/eltechs/axs/sysvipc/SHMEngineImpl;

    return-void
.end method

.method public stop()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/SysVIPCEmulatorComponent;->emulator:Lcom/eltechs/axs/sysvipc/Emulator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Sys V IPC emulator is not yet started."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/SysVIPCEmulatorComponent;->shmEngine:Lcom/eltechs/axs/sysvipc/SHMEngineImpl;

    invoke-virtual {v0}, Lcom/eltechs/axs/sysvipc/SHMEngineImpl;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/SysVIPCEmulatorComponent;->emulator:Lcom/eltechs/axs/sysvipc/Emulator;

    invoke-virtual {v0}, Lcom/eltechs/axs/sysvipc/Emulator;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/eltechs/axs/environmentService/components/SysVIPCEmulatorComponent;->emulator:Lcom/eltechs/axs/sysvipc/Emulator;

    .line 50
    iput-object v0, p0, Lcom/eltechs/axs/environmentService/components/SysVIPCEmulatorComponent;->shmEngine:Lcom/eltechs/axs/sysvipc/SHMEngineImpl;

    return-void
.end method
