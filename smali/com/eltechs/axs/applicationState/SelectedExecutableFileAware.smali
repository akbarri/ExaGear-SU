.class public interface abstract Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware;
.super Ljava/lang/Object;
.source "SelectedExecutableFileAware.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass::",
        "Lcom/eltechs/axs/applicationState/SelectedExecutableFileAware<",
        "TStateClass;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getSelectedExecutableFile()Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile<",
            "TStateClass;>;"
        }
    .end annotation
.end method

.method public abstract setSelectedExecutableFile(Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile<",
            "TStateClass;>;)V"
        }
    .end annotation
.end method
