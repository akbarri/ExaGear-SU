.class public Lcom/eltechs/axs/ApplicationConfigurationAccessor;
.super Ljava/lang/Object;
.source "ApplicationConfigurationAccessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass::",
        "Lcom/eltechs/axs/applicationState/ApplicationStateBase<",
        "TStateClass;>;:",
        "Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/eltechs/axs/Globals;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    .line 23
    check-cast v0, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;

    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;->getSelectedExecutableFile()Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 25
    :goto_0
    invoke-static {v2}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 27
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getParentDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    const/16 v3, 0x5f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {}, Lcom/eltechs/axs/Globals;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/ApplicationConfigurationAccessor;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method
