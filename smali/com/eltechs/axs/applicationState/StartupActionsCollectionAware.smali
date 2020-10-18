.class public interface abstract Lcom/eltechs/axs/applicationState/StartupActionsCollectionAware;
.super Ljava/lang/Object;
.source "StartupActionsCollectionAware.java"


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
.method public abstract getStartupActionsCollection()Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/eltechs/axs/configuration/startup/StartupActionsCollection<",
            "TStateClass;>;"
        }
    .end annotation
.end method

.method public abstract setStartupActionsCollection(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/configuration/startup/StartupActionsCollection<",
            "TStateClass;>;)V"
        }
    .end annotation
.end method
