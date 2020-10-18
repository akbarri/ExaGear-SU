.class public Lcom/eltechs/axs/configuration/startup/PerApplicationSettingsStore;
.super Ljava/lang/Object;
.source "PerApplicationSettingsStore.java"


# instance fields
.field private final ecpFile:Ljava/lang/String;

.field private final settingsFor:Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile<",
            "*>;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/PerApplicationSettingsStore;->settingsFor:Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    .line 23
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getParentDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2f

    const/16 v1, 0x5f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ecp_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/PerApplicationSettingsStore;->ecpFile:Ljava/lang/String;

    return-void
.end method

.method public static get(Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;)Lcom/eltechs/axs/configuration/startup/PerApplicationSettingsStore;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile<",
            "*>;)",
            "Lcom/eltechs/axs/configuration/startup/PerApplicationSettingsStore;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/eltechs/axs/configuration/startup/PerApplicationSettingsStore;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/configuration/startup/PerApplicationSettingsStore;-><init>(Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;)V

    return-object v0
.end method

.method private loadEnvironmentCustomisationParameters()Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/PerApplicationSettingsStore;->ecpFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/eltechs/axs/helpers/AndroidHelpers;->openPrivateFileForReading(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    .line 57
    :try_start_1
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 58
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 59
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    return-object v2

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 55
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 59
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_2
    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    .line 61
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Deserialisation of EnvironmentCustomisationParameters has failed."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private storeEnvironmentCustomisationParameters(Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/PerApplicationSettingsStore;->ecpFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/eltechs/axs/helpers/AndroidHelpers;->openPrivateFileForWriting(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0

    const/4 v1, 0x0

    .line 69
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 70
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 67
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 71
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    :goto_1
    throw p1
.end method


# virtual methods
.method public storeDetectedExecutableFileConfiguration()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/PerApplicationSettingsStore;->settingsFor:Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getEnvironmentCustomisationParameters()Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/eltechs/axs/configuration/startup/PerApplicationSettingsStore;->storeEnvironmentCustomisationParameters(Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;)V

    return-void
.end method

.method public updateDetectedExecutableFileConfiguration()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/PerApplicationSettingsStore;->settingsFor:Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getEnvironmentCustomisationParameters()Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

    move-result-object v0

    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/PerApplicationSettingsStore;->loadEnvironmentCustomisationParameters()Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->copyFrom(Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
