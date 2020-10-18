.class Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;
.super Ljava/lang/Object;
.source "DetectExecutableFiles.java"

# interfaces
.implements Lcom/eltechs/axs/helpers/SafeFileHelpers$FileCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilesAccumulator"
.end annotation


# instance fields
.field private final detectedExecutableFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile<",
            "TStateClass;>;>;"
        }
    .end annotation
.end field

.field private final otherExecutableFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile<",
            "TStateClass;>;>;"
        }
    .end annotation
.end field

.field private sorted:Z

.field final synthetic this$0:Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;


# direct methods
.method private constructor <init>(Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;->this$0:Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;->detectedExecutableFiles:Ljava/util/List;

    .line 180
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;->otherExecutableFiles:Ljava/util/List;

    const/4 p1, 0x0

    .line 181
    iput-boolean p1, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;->sorted:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$1;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;-><init>(Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;)V

    return-void
.end method

.method private sortIfNeed()V
    .locals 2

    .line 217
    iget-boolean v0, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;->sorted:Z

    if-eqz v0, :cond_0

    return-void

    .line 221
    :cond_0
    new-instance v0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator$1;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator$1;-><init>(Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;)V

    .line 229
    iget-object v1, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;->detectedExecutableFiles:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 230
    iget-object v1, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;->otherExecutableFiles:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x1

    .line 231
    iput-boolean v0, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;->sorted:Z

    return-void
.end method


# virtual methods
.method public apply(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;->this$0:Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;

    invoke-static {v0}, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;->access$100(Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;)Lcom/eltechs/axs/configuration/startup/ExecutableFileDetectorsCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/ExecutableFileDetectorsCollection;->getDetectors()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$ExecutableFileDetector;

    .line 188
    invoke-interface {v1, p1, p2}, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$ExecutableFileDetector;->detect(Ljava/io/File;Ljava/lang/String;)Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;->detectedExecutableFiles:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;->this$0:Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;

    invoke-static {v0}, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;->access$100(Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;)Lcom/eltechs/axs/configuration/startup/ExecutableFileDetectorsCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/ExecutableFileDetectorsCollection;->getDefaultDetector()Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$ExecutableFileDetector;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$ExecutableFileDetector;->detect(Ljava/io/File;Ljava/lang/String;)Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 199
    iget-object p2, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;->otherExecutableFiles:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method getDetectedExecutableFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile<",
            "TStateClass;>;>;"
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;->sortIfNeed()V

    .line 206
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;->detectedExecutableFiles:Ljava/util/List;

    return-object v0
.end method

.method getOtherExecutableFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile<",
            "TStateClass;>;>;"
        }
    .end annotation

    .line 211
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;->sortIfNeed()V

    .line 212
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;->otherExecutableFiles:Ljava/util/List;

    return-object v0
.end method
