.class public Lcom/eltechs/axs/configuration/startup/actions/PrepareGuestImageForPackagedWineApplication;
.super Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;
.source "PrepareGuestImageForPackagedWineApplication.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass::",
        "Lcom/eltechs/axs/applicationState/ExagearImageAware;",
        ">",
        "Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction<",
        "TStateClass;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 24
    :try_start_0
    new-instance v0, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;

    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/PrepareGuestImageForPackagedWineApplication;->getApplicationState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/applicationState/ExagearImageAware;

    invoke-interface {v1}, Lcom/eltechs/axs/applicationState/ExagearImageAware;->getExagearImage()Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;-><init>(Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;)V

    .line 25
    new-instance v1, Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;

    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/PrepareGuestImageForPackagedWineApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {v0, v1}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;->prepareWineForCurrentMemoryConfiguration(Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;)V

    .line 29
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/PrepareGuestImageForPackagedWineApplication;->sendDone()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to prepare the unpacked exagear image for the game being started."

    .line 32
    invoke-virtual {p0, v1, v0}, Lcom/eltechs/axs/configuration/startup/actions/PrepareGuestImageForPackagedWineApplication;->sendError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
