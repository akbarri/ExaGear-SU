.class public Lcom/eltechs/axs/configuration/startup/actions/CheckWritePermissionOfUserApplicationDirs;
.super Lcom/eltechs/axs/configuration/startup/actions/SimpleInteractiveStartupActionBase;
.source "CheckWritePermissionOfUserApplicationDirs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass::",
        "Lcom/eltechs/axs/applicationState/UserApplicationsDirectoryNameAware;",
        ">",
        "Lcom/eltechs/axs/configuration/startup/actions/SimpleInteractiveStartupActionBase<",
        "TStateClass;>;"
    }
.end annotation


# static fields
.field private static final DIR_WITH_USER_APPLICATION_SEARCH_DEPTH:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/SimpleInteractiveStartupActionBase;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 41
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 43
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/CheckWritePermissionOfUserApplicationDirs;->getApplicationState()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eltechs/axs/applicationState/UserApplicationsDirectoryNameAware;

    invoke-interface {v2}, Lcom/eltechs/axs/applicationState/UserApplicationsDirectoryNameAware;->getUserApplicationsDirectoryName()Lcom/eltechs/axs/applicationState/UserApplicationsDirectoryName;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eltechs/axs/applicationState/UserApplicationsDirectoryName;->getName()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-static {v0, v1, v2}, Lcom/eltechs/axs/helpers/FileFinder;->findDirectory(Ljava/io/File;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 47
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/CheckWritePermissionOfUserApplicationDirs;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/eltechs/axs/R$string;->uadwp_external_sdcard_not_writable:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 50
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    .line 49
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 52
    const-class v1, Lcom/eltechs/axs/activities/WarningActivity;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringEscapeUtils;->escapeHtml4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/eltechs/axs/configuration/startup/actions/CheckWritePermissionOfUserApplicationDirs;->requestUserInput(Ljava/lang/Class;Ljava/io/Serializable;)V

    return-void

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/CheckWritePermissionOfUserApplicationDirs;->sendDone()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to enumerate executable files in /mnt/sdcard/ExaGear/."

    .line 60
    invoke-virtual {p0, v1, v0}, Lcom/eltechs/axs/configuration/startup/actions/CheckWritePermissionOfUserApplicationDirs;->sendError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public userInteractionCanceled()V
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/CheckWritePermissionOfUserApplicationDirs;->sendDone()V

    return-void
.end method

.method public userInteractionFinished()V
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/CheckWritePermissionOfUserApplicationDirs;->sendDone()V

    return-void
.end method
