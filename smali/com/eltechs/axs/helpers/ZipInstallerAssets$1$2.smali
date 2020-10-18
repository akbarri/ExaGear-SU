.class Lcom/eltechs/axs/helpers/ZipInstallerAssets$1$2;
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

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;Ljava/io/IOException;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1$2;->this$0:Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;

    iput-object p2, p0, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1$2;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 120
    iget-object v0, p0, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1$2;->this$0:Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;

    iget-object v0, v0, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;->val$callback:Lcom/eltechs/axs/helpers/ZipInstallerAssets$InstallCallback;

    const-string v1, "%s; %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1$2;->this$0:Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;

    iget-object v3, v3, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1;->val$context:Landroid/content/Context;

    .line 121
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/eltechs/axs/R$string;->fail_to_unpack_zip:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/eltechs/axs/helpers/ZipInstallerAssets$1$2;->val$e:Ljava/io/IOException;

    .line 122
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 120
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/eltechs/axs/helpers/ZipInstallerAssets$InstallCallback;->installationFailed(Ljava/lang/String;)V

    return-void
.end method
