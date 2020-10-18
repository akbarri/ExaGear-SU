.class public Lcom/eltechs/axs/configuration/startup/ExecutableFileDetectorsCollection;
.super Ljava/lang/Object;
.source "ExecutableFileDetectorsCollection.java"


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
.field private final defaultDetector:Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$ExecutableFileDetector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$ExecutableFileDetector<",
            "TStateClass;>;"
        }
    .end annotation
.end field

.field private final detectors:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$ExecutableFileDetector<",
            "TStateClass;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$ExecutableFileDetector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$ExecutableFileDetector<",
            "TStateClass;>;>;",
            "Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$ExecutableFileDetector<",
            "TStateClass;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/ExecutableFileDetectorsCollection;->detectors:Ljava/util/Collection;

    .line 23
    iput-object p2, p0, Lcom/eltechs/axs/configuration/startup/ExecutableFileDetectorsCollection;->defaultDetector:Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$ExecutableFileDetector;

    return-void
.end method


# virtual methods
.method public getDefaultDetector()Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$ExecutableFileDetector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$ExecutableFileDetector<",
            "TStateClass;>;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/ExecutableFileDetectorsCollection;->defaultDetector:Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$ExecutableFileDetector;

    return-object v0
.end method

.method public getDetectors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$ExecutableFileDetector<",
            "TStateClass;>;>;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/ExecutableFileDetectorsCollection;->detectors:Ljava/util/Collection;

    return-object v0
.end method
