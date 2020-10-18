.class public Lcom/eltechs/ed/startupActions/InstallRecipesFromAssets;
.super Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;
.source "InstallRecipesFromAssets.java"


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

.method static synthetic access$000(Lcom/eltechs/ed/startupActions/InstallRecipesFromAssets;)V
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/eltechs/ed/startupActions/InstallRecipesFromAssets;->sendDone()V

    return-void
.end method

.method static synthetic access$100(Lcom/eltechs/ed/startupActions/InstallRecipesFromAssets;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/eltechs/ed/startupActions/InstallRecipesFromAssets;->sendError(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 22
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/eltechs/ed/startupActions/InstallRecipesFromAssets;->getApplicationState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/applicationState/ExagearImageAware;

    invoke-interface {v1}, Lcom/eltechs/axs/applicationState/ExagearImageAware;->getExagearImage()Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->getPath()Ljava/io/File;

    move-result-object v1

    const-string v2, "/opt/recipe/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    :try_start_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/SafeFileHelpers;->removeDirectory(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    new-instance v1, Lcom/eltechs/ed/startupActions/InstallRecipesFromAssets$1;

    invoke-direct {v1, p0}, Lcom/eltechs/ed/startupActions/InstallRecipesFromAssets$1;-><init>(Lcom/eltechs/ed/startupActions/InstallRecipesFromAssets;)V

    .line 46
    invoke-virtual {p0}, Lcom/eltechs/ed/startupActions/InstallRecipesFromAssets;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "recipe.zip"

    invoke-static {v2, v1, v0, v3}, Lcom/eltechs/axs/helpers/ZipInstallerAssets;->installIfNecessary(Landroid/content/Context;Lcom/eltechs/axs/helpers/ZipInstallerAssets$InstallCallback;Ljava/io/File;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eltechs/ed/startupActions/InstallRecipesFromAssets;->sendError(Ljava/lang/String;)V

    return-void
.end method
