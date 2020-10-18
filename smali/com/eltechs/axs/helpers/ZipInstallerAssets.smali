.class public Lcom/eltechs/axs/helpers/ZipInstallerAssets;
.super Ljava/lang/Object;
.source "ZipInstallerAssets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/helpers/ZipInstallerAssets$InstallCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installIfNecessary(Landroid/content/Context;Lcom/eltechs/axs/helpers/ZipInstallerAssets$InstallCallback;Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .line 50
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 54
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/eltechs/axs/helpers/ZipInstallerAssets$InstallCallback;->installationFinished(Ljava/lang/String;)V

    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/eltechs/axs/R$string;->directory_is_occupied:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/eltechs/axs/helpers/ZipInstallerAssets$InstallCallback;->installationFailed(Ljava/lang/String;)V

    return-void

    .line 62
    :cond_1
    new-instance v0, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;

    invoke-direct {v0, p2, p3, p0, p1}, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Lcom/eltechs/axs/helpers/ZipInstallerAssets$InstallCallback;)V

    const/4 p0, 0x0

    .line 129
    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
