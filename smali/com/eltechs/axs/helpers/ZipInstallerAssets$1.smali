.class final Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;
.super Landroid/os/AsyncTask;
.source "ZipInstallerAssets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/helpers/ZipInstallerAssets;->installIfNecessary(Landroid/content/Context;Lcom/eltechs/axs/helpers/ZipInstallerAssets$InstallCallback;Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/eltechs/axs/helpers/ZipInstallerAssets$InstallCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$srcFileName:Ljava/lang/String;

.field final synthetic val$targetDirectory:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Lcom/eltechs/axs/helpers/ZipInstallerAssets$InstallCallback;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;->val$targetDirectory:Ljava/io/File;

    iput-object p2, p0, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;->val$srcFileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;->val$callback:Lcom/eltechs/axs/helpers/ZipInstallerAssets$InstallCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 69
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;->val$targetDirectory:Ljava/io/File;

    iget-object v1, p0, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;->val$srcFileName:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;->val$targetDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to create the directory \'%s\'."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;->val$targetDirectory:Ljava/io/File;

    .line 77
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 75
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;->val$srcFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 81
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 82
    :try_start_2
    invoke-static {v1, v2}, Lcom/eltechs/axs/helpers/IOStreamHelpers;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 84
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 86
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 89
    :try_start_4
    iget-object v1, p0, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;->val$targetDirectory:Ljava/io/File;

    invoke-static {p1, v1, v0}, Lcom/eltechs/axs/helpers/ZipUnpacker;->unpackZip(Ljava/io/File;Ljava/io/File;Lcom/eltechs/axs/helpers/ZipUnpacker$Callbacks;)V

    .line 91
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 93
    new-instance v1, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1$1;

    invoke-direct {v1, p0}, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1$1;-><init>(Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;)V

    invoke-static {v1}, Lcom/eltechs/axs/helpers/UiThread;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v6, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v6

    goto :goto_0

    :catch_2
    move-exception v2

    move-object v3, v0

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_0

    :catch_3
    move-exception v1

    move-object v2, v0

    move-object v3, v2

    :goto_0
    if-eqz v2, :cond_1

    .line 102
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_1
    if-eqz v3, :cond_2

    .line 106
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 109
    :catch_5
    :cond_2
    iget-object v2, p0, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;->val$targetDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 111
    iget-object v2, p0, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;->val$targetDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 113
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 115
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 118
    :cond_4
    new-instance p1, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1$2;

    invoke-direct {p1, p0, v1}, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1$2;-><init>(Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;Ljava/io/IOException;)V

    invoke-static {p1}, Lcom/eltechs/axs/helpers/UiThread;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-object v0
.end method
