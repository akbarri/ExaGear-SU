.class Lcom/eltechs/axs/helpers/ZipInstallerObb$1;
.super Landroid/os/AsyncTask;
.source "ZipInstallerObb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/helpers/ZipInstallerObb;->installImageFromObbIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/helpers/ZipInstallerObb;

.field final synthetic val$obbFile:Ljava/io/File;

.field final synthetic val$pathToImage:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/helpers/ZipInstallerObb;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb$1;->this$0:Lcom/eltechs/axs/helpers/ZipInstallerObb;

    iput-object p2, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb$1;->val$pathToImage:Ljava/io/File;

    iput-object p3, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb$1;->val$obbFile:Ljava/io/File;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 154
    :try_start_0
    new-instance p1, Lcom/eltechs/axs/helpers/ZipInstallerObb$1$1;

    invoke-direct {p1, p0}, Lcom/eltechs/axs/helpers/ZipInstallerObb$1$1;-><init>(Lcom/eltechs/axs/helpers/ZipInstallerObb$1;)V

    invoke-static {p1}, Lcom/eltechs/axs/helpers/UiThread;->post(Ljava/lang/Runnable;)Z

    .line 159
    iget-object p1, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb$1;->this$0:Lcom/eltechs/axs/helpers/ZipInstallerObb;

    invoke-static {p1}, Lcom/eltechs/axs/helpers/ZipInstallerObb;->access$100(Lcom/eltechs/axs/helpers/ZipInstallerObb;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    if-nez p1, :cond_0

    .line 161
    iget-object p1, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb$1;->val$pathToImage:Ljava/io/File;

    invoke-static {p1}, Lcom/eltechs/axs/helpers/SafeFileHelpers;->removeDirectory(Ljava/io/File;)V

    .line 162
    iget-object p1, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb$1;->val$pathToImage:Ljava/io/File;

    invoke-static {p1}, Lcom/eltechs/axs/helpers/FileHelpers;->createDirectory(Ljava/io/File;)V

    goto :goto_1

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb$1;->val$pathToImage:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 167
    iget-object p1, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb$1;->val$pathToImage:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    goto :goto_0

    .line 170
    :cond_1
    iget-object p1, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb$1;->val$pathToImage:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    invoke-static {p1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 175
    :goto_0
    iget-object p1, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb$1;->val$pathToImage:Ljava/io/File;

    const/4 v0, 0x1

    new-instance v1, Lcom/eltechs/axs/helpers/ZipInstallerObb$1$2;

    invoke-direct {v1, p0}, Lcom/eltechs/axs/helpers/ZipInstallerObb$1$2;-><init>(Lcom/eltechs/axs/helpers/ZipInstallerObb$1;)V

    new-instance v2, Lcom/eltechs/axs/helpers/ZipInstallerObb$1$3;

    invoke-direct {v2, p0}, Lcom/eltechs/axs/helpers/ZipInstallerObb$1$3;-><init>(Lcom/eltechs/axs/helpers/ZipInstallerObb$1;)V

    invoke-static {p1, v0, v1, v2}, Lcom/eltechs/axs/helpers/SafeFileHelpers;->doWithFiles(Ljava/io/File;ILcom/eltechs/axs/helpers/SafeFileHelpers$FileFilter;Lcom/eltechs/axs/helpers/SafeFileHelpers$FileCallback;)V

    .line 213
    :goto_1
    iget-object p1, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb$1;->val$obbFile:Ljava/io/File;

    iget-object v0, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb$1;->val$pathToImage:Ljava/io/File;

    iget-object v1, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb$1;->this$0:Lcom/eltechs/axs/helpers/ZipInstallerObb;

    invoke-static {v1}, Lcom/eltechs/axs/helpers/ZipInstallerObb;->access$000(Lcom/eltechs/axs/helpers/ZipInstallerObb;)Lcom/eltechs/axs/helpers/ZipInstallerObb$Callbacks;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/eltechs/axs/helpers/ZipUnpacker;->unpackZip(Ljava/io/File;Ljava/io/File;Lcom/eltechs/axs/helpers/ZipUnpacker$Callbacks;)V

    .line 215
    iget-object p1, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb$1;->val$pathToImage:Ljava/io/File;

    const-string v0, ".exagear"

    invoke-static {p1, v0}, Lcom/eltechs/axs/helpers/FileHelpers;->createDirectory(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 216
    iget-object p1, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb$1;->this$0:Lcom/eltechs/axs/helpers/ZipInstallerObb;

    iget-object v0, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb$1;->val$pathToImage:Ljava/io/File;

    invoke-static {p1, v0}, Lcom/eltechs/axs/helpers/ZipInstallerObb;->access$200(Lcom/eltechs/axs/helpers/ZipInstallerObb;Ljava/io/File;)V

    .line 218
    new-instance p1, Lcom/eltechs/axs/helpers/ZipInstallerObb$1$4;

    invoke-direct {p1, p0}, Lcom/eltechs/axs/helpers/ZipInstallerObb$1$4;-><init>(Lcom/eltechs/axs/helpers/ZipInstallerObb$1;)V

    invoke-static {p1}, Lcom/eltechs/axs/helpers/UiThread;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 226
    new-instance v0, Lcom/eltechs/axs/helpers/ZipInstallerObb$1$5;

    invoke-direct {v0, p0, p1}, Lcom/eltechs/axs/helpers/ZipInstallerObb$1$5;-><init>(Lcom/eltechs/axs/helpers/ZipInstallerObb$1;Ljava/io/IOException;)V

    invoke-static {v0}, Lcom/eltechs/axs/helpers/UiThread;->post(Ljava/lang/Runnable;)Z

    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method
