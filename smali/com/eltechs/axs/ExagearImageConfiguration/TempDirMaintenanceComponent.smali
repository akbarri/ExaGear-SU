.class public Lcom/eltechs/axs/ExagearImageConfiguration/TempDirMaintenanceComponent;
.super Lcom/eltechs/axs/environmentService/EnvironmentComponent;
.source "TempDirMaintenanceComponent.java"


# instance fields
.field private final pathToImage:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/eltechs/axs/environmentService/EnvironmentComponent;-><init>()V

    .line 26
    invoke-virtual {p1}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->getPath()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/ExagearImageConfiguration/TempDirMaintenanceComponent;->pathToImage:Ljava/io/File;

    return-void
.end method

.method private cleanTempDir()V
    .locals 2

    .line 51
    invoke-virtual {p0}, Lcom/eltechs/axs/ExagearImageConfiguration/TempDirMaintenanceComponent;->getTempDir()Ljava/io/File;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    :try_start_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/SafeFileHelpers;->cleanupDirectory(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public getTempDir()Ljava/io/File;
    .locals 3

    .line 31
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/eltechs/axs/ExagearImageConfiguration/TempDirMaintenanceComponent;->pathToImage:Ljava/io/File;

    const-string v2, ".exagear/tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/eltechs/axs/ExagearImageConfiguration/TempDirMaintenanceComponent;->getTempDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/helpers/FileHelpers;->createDirectory(Ljava/io/File;)V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/eltechs/axs/ExagearImageConfiguration/TempDirMaintenanceComponent;->cleanTempDir()V

    return-void
.end method
