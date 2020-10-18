.class Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator$1;
.super Ljava/lang/Object;
.source "DetectExecutableFiles.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;->sortIfNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile<",
        "TStateClass;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator$1;->this$1:Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile<",
            "TStateClass;>;",
            "Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile<",
            "TStateClass;>;)I"
        }
    .end annotation

    .line 226
    invoke-virtual {p1}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 222
    check-cast p1, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    check-cast p2, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    invoke-virtual {p0, p1, p2}, Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$FilesAccumulator$1;->compare(Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;)I

    move-result p1

    return p1
.end method
