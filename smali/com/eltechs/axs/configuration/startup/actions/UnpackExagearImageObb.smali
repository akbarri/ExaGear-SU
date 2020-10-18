.class public Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;
.super Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;
.source "UnpackExagearImageObb.java"


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
.field private final keepOldFiles:[Ljava/lang/String;

.field private final mayTakeFromSdcard:Z

.field private final progressFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;-><init>()V

    .line 45
    iput-boolean p1, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;->mayTakeFromSdcard:Z

    const/4 p1, 0x0

    .line 46
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;->keepOldFiles:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;->progressFileName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z[Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;-><init>()V

    .line 38
    iput-boolean p1, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;->mayTakeFromSdcard:Z

    .line 39
    iput-object p2, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;->keepOldFiles:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;->progressFileName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;-><init>()V

    .line 31
    iput-boolean p1, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;->mayTakeFromSdcard:Z

    .line 32
    iput-object p2, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;->keepOldFiles:[Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;->progressFileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 9

    .line 63
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/ExagearImageAware;

    .line 64
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 66
    iget-object v1, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;->progressFileName:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;->progressFileName:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 71
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 75
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :catch_0
    :cond_2
    new-instance v6, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb$1;

    invoke-direct {v6, p0, v2, v1}, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb$1;-><init>(Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;Landroid/content/Context;Ljava/io/File;)V

    .line 128
    :try_start_1
    new-instance v8, Lcom/eltechs/axs/helpers/ZipInstallerObb;

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;->mayTakeFromSdcard:Z

    .line 131
    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/ExagearImageAware;->getExagearImage()Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    move-result-object v5

    iget-object v7, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;->keepOldFiles:[Ljava/lang/String;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/eltechs/axs/helpers/ZipInstallerObb;-><init>(Landroid/content/Context;ZZLcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;Lcom/eltechs/axs/helpers/ZipInstallerObb$Callbacks;[Ljava/lang/String;)V

    .line 135
    invoke-virtual {v8}, Lcom/eltechs/axs/helpers/ZipInstallerObb;->installImageFromObbIfNeeded()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "Failed to unpack the exagear system image."

    .line 139
    invoke-virtual {p0, v1, v0}, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;->sendError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public getInfo()Lcom/eltechs/axs/configuration/startup/StartupActionInfo;
    .locals 3

    .line 53
    new-instance v0, Lcom/eltechs/axs/configuration/startup/StartupActionInfo;

    const-string v1, ""

    iget-object v2, p0, Lcom/eltechs/axs/configuration/startup/actions/UnpackExagearImageObb;->progressFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/configuration/startup/StartupActionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
