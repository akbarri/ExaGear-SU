.class public Lcom/eltechs/axs/configuration/startup/actions/CreatePutYourApplicationsHereDirectory;
.super Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;
.source "CreatePutYourApplicationsHereDirectory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass::",
        "Lcom/eltechs/axs/applicationState/UserApplicationsDirectoryNameAware;",
        ">",
        "Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction<",
        "TStateClass;>;"
    }
.end annotation


# static fields
.field private static final README_NAME:Ljava/lang/String; = "README.html"


# instance fields
.field private final readmeText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/CreatePutYourApplicationsHereDirectory;->readmeText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .line 34
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/CreatePutYourApplicationsHereDirectory;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/UserApplicationsDirectoryNameAware;

    .line 35
    invoke-static {}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getMainSDCard()Ljava/io/File;

    move-result-object v1

    .line 37
    new-instance v2, Ljava/io/File;

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/UserApplicationsDirectoryNameAware;->getUserApplicationsDirectoryName()Lcom/eltechs/axs/applicationState/UserApplicationsDirectoryName;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/applicationState/UserApplicationsDirectoryName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    :try_start_0
    invoke-static {v2}, Lcom/eltechs/axs/helpers/FileHelpers;->createDirectory(Ljava/io/File;)V

    const-string v0, "README.html"

    .line 43
    invoke-static {v2, v0}, Lcom/eltechs/axs/helpers/FileHelpers;->touch(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/io/FileWriter;

    new-instance v3, Ljava/io/File;

    const-string v4, "README.html"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 45
    iget-object v2, p0, Lcom/eltechs/axs/configuration/startup/actions/CreatePutYourApplicationsHereDirectory;->readmeText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 49
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/CreatePutYourApplicationsHereDirectory;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x0

    invoke-static {v1, v2, v0, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :catch_0
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/CreatePutYourApplicationsHereDirectory;->sendDone()V

    return-void
.end method
