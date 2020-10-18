.class public interface abstract Lcom/eltechs/axs/configuration/startup/StartupAction;
.super Ljava/lang/Object;
.source "StartupAction.java"


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
.method public abstract attach(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/configuration/startup/StartupActionsCollection<",
            "TStateClass;>;)V"
        }
    .end annotation
.end method

.method public abstract execute()V
.end method

.method public abstract getInfo()Lcom/eltechs/axs/configuration/startup/StartupActionInfo;
.end method
