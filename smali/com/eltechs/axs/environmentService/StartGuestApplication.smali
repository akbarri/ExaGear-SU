.class public Lcom/eltechs/axs/environmentService/StartGuestApplication;
.super Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;
.source "StartGuestApplication.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass::",
        "Lcom/eltechs/axs/applicationState/UBTLaunchConfigurationAware;",
        ":",
        "Lcom/eltechs/axs/applicationState/EnvironmentAware;",
        ">",
        "Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction<",
        "TStateClass;>;"
    }
.end annotation


# instance fields
.field private final restartAXSAfterShutdown:Z

.field private final terminateAXSOnGuestExit:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/eltechs/axs/environmentService/StartGuestApplication;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;-><init>()V

    .line 31
    iput-boolean p1, p0, Lcom/eltechs/axs/environmentService/StartGuestApplication;->terminateAXSOnGuestExit:Z

    .line 32
    iput-boolean p2, p0, Lcom/eltechs/axs/environmentService/StartGuestApplication;->restartAXSAfterShutdown:Z

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/environmentService/StartGuestApplication;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/eltechs/axs/environmentService/StartGuestApplication;->restartAXSAfterShutdown:Z

    return p0
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 38
    invoke-virtual {p0}, Lcom/eltechs/axs/environmentService/StartGuestApplication;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/UBTLaunchConfigurationAware;

    .line 39
    move-object v1, v0

    check-cast v1, Lcom/eltechs/axs/applicationState/EnvironmentAware;

    invoke-interface {v1}, Lcom/eltechs/axs/applicationState/EnvironmentAware;->getEnvironment()Lcom/eltechs/axs/environmentService/AXSEnvironment;

    move-result-object v1

    const-class v2, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;

    invoke-virtual {v1, v2}, Lcom/eltechs/axs/environmentService/AXSEnvironment;->getComponent(Ljava/lang/Class;)Lcom/eltechs/axs/environmentService/EnvironmentComponent;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;

    .line 40
    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/UBTLaunchConfigurationAware;->getUBTLaunchConfiguration()Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->startGuestApplication(Lcom/eltechs/axs/configuration/UBTLaunchConfiguration;)V

    .line 52
    iget-boolean v0, p0, Lcom/eltechs/axs/environmentService/StartGuestApplication;->terminateAXSOnGuestExit:Z

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Lcom/eltechs/axs/environmentService/StartGuestApplication$1;

    invoke-direct {v0, p0, v1}, Lcom/eltechs/axs/environmentService/StartGuestApplication$1;-><init>(Lcom/eltechs/axs/environmentService/StartGuestApplication;Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;)V

    invoke-virtual {v1, v0}, Lcom/eltechs/axs/environmentService/components/GuestApplicationsTrackerComponent;->addListener(Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleListener;)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/eltechs/axs/environmentService/StartGuestApplication;->sendDone()V

    return-void
.end method
