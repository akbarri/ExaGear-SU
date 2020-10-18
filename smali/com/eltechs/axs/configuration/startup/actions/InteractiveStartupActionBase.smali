.class public abstract Lcom/eltechs/axs/configuration/startup/actions/InteractiveStartupActionBase;
.super Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;
.source "InteractiveStartupActionBase.java"

# interfaces
.implements Lcom/eltechs/axs/configuration/startup/InteractiveStartupAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass:",
        "Ljava/lang/Object;",
        "UserResponseType::",
        "Ljava/io/Serializable;",
        ">",
        "Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction<",
        "TStateClass;>;",
        "Lcom/eltechs/axs/configuration/startup/InteractiveStartupAction<",
        "TStateClass;TUserResponseType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;-><init>()V

    return-void
.end method


# virtual methods
.method protected final requestUserInput()V
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/InteractiveStartupActionBase;->getStartupActions()Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->requestUserInput()V

    return-void
.end method

.method protected final requestUserInput(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/eltechs/axs/activities/FrameworkActivity;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/InteractiveStartupActionBase;->getStartupActions()Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->requestUserInput(Ljava/lang/Class;Ljava/io/Serializable;)V

    return-void
.end method

.method protected final requestUserInput(Ljava/lang/Class;Ljava/io/Serializable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/eltechs/axs/activities/FrameworkActivity;",
            ">;",
            "Ljava/io/Serializable;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/InteractiveStartupActionBase;->getStartupActions()Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->requestUserInput(Ljava/lang/Class;Ljava/io/Serializable;)V

    return-void
.end method
