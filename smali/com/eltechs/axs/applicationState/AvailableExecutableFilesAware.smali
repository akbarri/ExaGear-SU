.class public interface abstract Lcom/eltechs/axs/applicationState/AvailableExecutableFilesAware;
.super Ljava/lang/Object;
.source "AvailableExecutableFilesAware.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getAvailableExecutableFiles()Lcom/eltechs/axs/configuration/startup/AvailableExecutableFiles;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/eltechs/axs/configuration/startup/AvailableExecutableFiles<",
            "TStateClass;>;"
        }
    .end annotation
.end method

.method public abstract setAvailableExecutableFiles(Lcom/eltechs/axs/configuration/startup/AvailableExecutableFiles;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/configuration/startup/AvailableExecutableFiles<",
            "TStateClass;>;)V"
        }
    .end annotation
.end method
