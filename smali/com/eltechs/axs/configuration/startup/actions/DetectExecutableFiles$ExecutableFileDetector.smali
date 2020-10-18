.class public interface abstract Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles$ExecutableFileDetector;
.super Ljava/lang/Object;
.source "DetectExecutableFiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/configuration/startup/actions/DetectExecutableFiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExecutableFileDetector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract detect(Ljava/io/File;Ljava/lang/String;)Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;
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
