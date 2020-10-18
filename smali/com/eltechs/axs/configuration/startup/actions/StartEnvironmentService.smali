.class public Lcom/eltechs/axs/configuration/startup/actions/StartEnvironmentService;
.super Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;
.source "StartEnvironmentService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass::",
        "Lcom/eltechs/axs/applicationState/EnvironmentAware;",
        ">",
        "Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction<",
        "TStateClass;>;"
    }
.end annotation


# instance fields
.field private final trayConfiguration:Lcom/eltechs/axs/environmentService/TrayConfiguration;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/environmentService/TrayConfiguration;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/StartEnvironmentService;->trayConfiguration:Lcom/eltechs/axs/environmentService/TrayConfiguration;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 27
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/StartEnvironmentService;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/EnvironmentAware;

    .line 29
    new-instance v1, Lcom/eltechs/axs/configuration/startup/actions/StartEnvironmentService$1;

    invoke-direct {v1, p0}, Lcom/eltechs/axs/configuration/startup/actions/StartEnvironmentService$1;-><init>(Lcom/eltechs/axs/configuration/startup/actions/StartEnvironmentService;)V

    .line 44
    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/EnvironmentAware;->getEnvironment()Lcom/eltechs/axs/environmentService/AXSEnvironment;

    move-result-object v0

    iget-object v2, p0, Lcom/eltechs/axs/configuration/startup/actions/StartEnvironmentService;->trayConfiguration:Lcom/eltechs/axs/environmentService/TrayConfiguration;

    invoke-virtual {v0, v1, v2}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->startEnvironmentService(Lcom/eltechs/axs/environmentService/AXSEnvironment$StartupCallback;Lcom/eltechs/axs/environmentService/TrayConfiguration;)V

    return-void
.end method
