.class Lcom/eltechs/axs/helpers/ZipInstallerAssets$1$1;
.super Ljava/lang/Object;
.source "ZipInstallerAssets.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1$1;->this$0:Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1$1;->this$0:Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;

    iget-object v0, v0, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;->val$callback:Lcom/eltechs/axs/helpers/ZipInstallerAssets$InstallCallback;

    iget-object v1, p0, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1$1;->this$0:Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;

    iget-object v1, v1, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;->val$targetDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/eltechs/axs/helpers/ZipInstallerAssets$InstallCallback;->installationFinished(Ljava/lang/String;)V

    return-void
.end method
