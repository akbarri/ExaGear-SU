.class Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$2;
.super Ljava/lang/Object;
.source "DetectExecutableFiles.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;

.field final synthetic val$acc:Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$2;->this$0:Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;

    iput-object p2, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$2;->val$acc:Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$2;->this$0:Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;

    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/AvailableExecutableFilesAware;

    new-instance v1, Lcom/eltechs/axs/configuration/startup/AvailableExecutableFiles;

    iget-object v2, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$2;->val$acc:Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;

    invoke-virtual {v2}, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;->getDetectedExecutableFiles()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$2;->val$acc:Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;

    invoke-virtual {v3}, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;->getOtherExecutableFiles()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/eltechs/axs/configuration/startup/AvailableExecutableFiles;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/eltechs/axs/applicationState/AvailableExecutableFilesAware;->setAvailableExecutableFiles(Lcom/eltechs/axs/configuration/startup/AvailableExecutableFiles;)V

    .line 134
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$2;->this$0:Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;

    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;->sendDone()V

    return-void
.end method
