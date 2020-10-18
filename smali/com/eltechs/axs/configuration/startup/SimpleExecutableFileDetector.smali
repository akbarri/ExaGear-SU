.class public abstract Lcom/eltechs/axs/configuration/startup/SimpleExecutableFileDetector;
.super Ljava/lang/Object;
.source "SimpleExecutableFileDetector.java"

# interfaces
.implements Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$ExecutableFileDetector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$ExecutableFileDetector<",
        "TStateClass;>;"
    }
.end annotation


# instance fields
.field private final fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/SimpleExecutableFileDetector;->fileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract createDescriptor(Ljava/io/File;Ljava/lang/String;)Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile<",
            "TStateClass;>;"
        }
    .end annotation
.end method

.method public final detect(Ljava/io/File;Ljava/lang/String;)Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile<",
            "TStateClass;>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/SimpleExecutableFileDetector;->fileName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/axs/configuration/startup/SimpleExecutableFileDetector;->createDescriptor(Ljava/io/File;Ljava/lang/String;)Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
