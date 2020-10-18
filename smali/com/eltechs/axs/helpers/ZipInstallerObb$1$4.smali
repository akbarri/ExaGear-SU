.class Lcom/eltechs/axs/helpers/ZipInstallerObb$1$4;
.super Ljava/lang/Object;
.source "ZipInstallerObb.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/helpers/ZipInstallerObb$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eltechs/axs/helpers/ZipInstallerObb$1;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/helpers/ZipInstallerObb$1;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb$1$4;->this$1:Lcom/eltechs/axs/helpers/ZipInstallerObb$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb$1$4;->this$1:Lcom/eltechs/axs/helpers/ZipInstallerObb$1;

    iget-object v0, v0, Lcom/eltechs/axs/helpers/ZipInstallerObb$1;->this$0:Lcom/eltechs/axs/helpers/ZipInstallerObb;

    invoke-static {v0}, Lcom/eltechs/axs/helpers/ZipInstallerObb;->access$000(Lcom/eltechs/axs/helpers/ZipInstallerObb;)Lcom/eltechs/axs/helpers/ZipInstallerObb$Callbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/helpers/ZipInstallerObb$1$4;->this$1:Lcom/eltechs/axs/helpers/ZipInstallerObb$1;

    iget-object v1, v1, Lcom/eltechs/axs/helpers/ZipInstallerObb$1;->val$pathToImage:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/eltechs/axs/helpers/ZipInstallerObb$Callbacks;->unpackingCompleted(Ljava/io/File;)V

    return-void
.end method
