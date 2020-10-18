.class public Lcom/eltechs/axs/configuration/startup/AvailableExecutableFiles;
.super Ljava/lang/Object;
.source "AvailableExecutableFiles.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final otherFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile<",
            "TStateClass;>;>;"
        }
    .end annotation
.end field

.field private final supportedFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile<",
            "TStateClass;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile<",
            "TStateClass;>;>;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile<",
            "TStateClass;>;>;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/AvailableExecutableFiles;->supportedFiles:Ljava/util/List;

    .line 21
    iput-object p2, p0, Lcom/eltechs/axs/configuration/startup/AvailableExecutableFiles;->otherFiles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getOtherFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile<",
            "TStateClass;>;>;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/AvailableExecutableFiles;->otherFiles:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile<",
            "TStateClass;>;>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/AvailableExecutableFiles;->supportedFiles:Ljava/util/List;

    return-object v0
.end method
