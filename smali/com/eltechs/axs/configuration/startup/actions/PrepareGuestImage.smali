.class public Lcom/eltechs/axs/configuration/startup/actions/PrepareGuestImage;
.super Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;
.source "PrepareGuestImage.java"


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


# instance fields
.field private final homeDir:Ljava/lang/String;

.field private final hostDirInUserArea:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/PrepareGuestImage;->homeDir:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/eltechs/axs/configuration/startup/actions/PrepareGuestImage;->hostDirInUserArea:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .line 35
    :try_start_0
    new-instance v0, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;

    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/PrepareGuestImage;->getApplicationState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/applicationState/ExagearImageAware;

    invoke-interface {v1}, Lcom/eltechs/axs/applicationState/ExagearImageAware;->getExagearImage()Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;-><init>(Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;)V

    .line 36
    new-instance v1, Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;

    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/PrepareGuestImage;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/eltechs/axs/configuration/startup/actions/PrepareGuestImage;->homeDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 41
    iget-object v3, p0, Lcom/eltechs/axs/configuration/startup/actions/PrepareGuestImage;->homeDir:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;->createEtcPasswd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 43
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/eltechs/axs/configuration/startup/actions/PrepareGuestImage;->hostDirInUserArea:Ljava/io/File;

    .line 44
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eltechs/axs/helpers/StringHelpers;->appendTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "/proc/"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "/dev/"

    aput-object v4, v2, v3

    .line 43
    invoke-virtual {v0, v2}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;->createVpathsList([Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;->recreateX11SocketDir()V

    .line 49
    invoke-virtual {v0}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;->recreateSoundSocketDir()V

    .line 50
    invoke-virtual {v0, v1}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImageConfigurationHelpers;->prepareWineForCurrentMemoryConfiguration(Lcom/eltechs/axs/environmentService/components/NativeLibsConfiguration;)V

    .line 52
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/PrepareGuestImage;->sendDone()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to prepare the unpacked exagear image for the game being started."

    .line 55
    invoke-virtual {p0, v1, v0}, Lcom/eltechs/axs/configuration/startup/actions/PrepareGuestImage;->sendError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
