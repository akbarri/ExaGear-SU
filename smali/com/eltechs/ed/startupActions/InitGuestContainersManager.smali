.class public Lcom/eltechs/ed/startupActions/InitGuestContainersManager;
.super Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;
.source "InitGuestContainersManager.java"

# interfaces
.implements Lcom/eltechs/axs/configuration/startup/AsyncStartupAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction<",
        "TStateClass;>;",
        "Lcom/eltechs/axs/configuration/startup/AsyncStartupAction<",
        "TStateClass;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/ed/startupActions/InitGuestContainersManager;)V
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/eltechs/ed/startupActions/InitGuestContainersManager;->sendDone()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/eltechs/ed/startupActions/InitGuestContainersManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getInstance(Landroid/content/Context;)Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    .line 28
    new-instance v0, Lcom/eltechs/ed/startupActions/InitGuestContainersManager$1;

    invoke-direct {v0, p0}, Lcom/eltechs/ed/startupActions/InitGuestContainersManager$1;-><init>(Lcom/eltechs/ed/startupActions/InitGuestContainersManager;)V

    invoke-static {v0}, Lcom/eltechs/axs/helpers/UiThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getInfo()Lcom/eltechs/axs/configuration/startup/StartupActionInfo;
    .locals 3

    .line 19
    new-instance v0, Lcom/eltechs/axs/configuration/startup/StartupActionInfo;

    const-string v1, "Preparing containers..."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/configuration/startup/StartupActionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
