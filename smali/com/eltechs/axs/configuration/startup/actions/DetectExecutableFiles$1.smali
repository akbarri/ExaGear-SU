.class Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$1;
.super Ljava/lang/Object;
.source "DetectExecutableFiles.java"

# interfaces
.implements Lcom/eltechs/axs/helpers/SafeFileHelpers$FileCallback;


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

.field final synthetic val$newCache:Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$1;->this$0:Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;

    iput-object p2, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$1;->val$acc:Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;

    iput-object p3, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$1;->val$newCache:Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$1;->val$acc:Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;

    invoke-virtual {v0, p1, p2}, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;->apply(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$1;->val$newCache:Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;

    invoke-virtual {v0, p1, p2}, Lcom/eltechs/axs/configuration/startup/actions/DetectedExecutableFilesCache;->addFile(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method
