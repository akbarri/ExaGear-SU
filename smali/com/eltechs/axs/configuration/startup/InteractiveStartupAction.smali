.class public interface abstract Lcom/eltechs/axs/configuration/startup/InteractiveStartupAction;
.super Ljava/lang/Object;
.source "InteractiveStartupAction.java"

# interfaces
.implements Lcom/eltechs/axs/configuration/startup/StartupAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass:",
        "Ljava/lang/Object;",
        "UserResponseClass::",
        "Ljava/io/Serializable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/eltechs/axs/configuration/startup/StartupAction<",
        "TStateClass;>;"
    }
.end annotation


# virtual methods
.method public abstract userInteractionCanceled()V
.end method

.method public abstract userInteractionFinished(Ljava/io/Serializable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUserResponseClass;)V"
        }
    .end annotation
.end method
