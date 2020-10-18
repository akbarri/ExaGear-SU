.class public Lcom/eltechs/ed/startupActions/WDesktop;
.super Lcom/eltechs/axs/configuration/startup/actions/InteractiveStartupActionBase;
.source "WDesktop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/eltechs/axs/configuration/startup/actions/InteractiveStartupActionBase<",
        "TStateClass;",
        "Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/InteractiveStartupActionBase;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .line 13
    const-class v0, Lcom/eltechs/ed/activities/EDMainActivity;

    invoke-virtual {p0, v0}, Lcom/eltechs/ed/startupActions/WDesktop;->requestUserInput(Ljava/lang/Class;)V

    return-void
.end method

.method public userInteractionCanceled()V
    .locals 0

    .line 36
    invoke-static {}, Lcom/eltechs/axs/activities/StartupActivity;->shutdownAXSApplication()V

    return-void
.end method

.method public userInteractionFinished(Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;)V
    .locals 1

    .line 19
    sget-object v0, Lcom/eltechs/ed/startupActions/WDesktop$1;->$SwitchMap$com$eltechs$ed$startupActions$WDesktop$UserRequestedAction:[I

    invoke-virtual {p1}, Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 26
    :pswitch_0
    invoke-virtual {p0}, Lcom/eltechs/ed/startupActions/WDesktop;->getStartupActions()Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    move-result-object p1

    new-instance v0, Lcom/eltechs/ed/startupActions/InitGuestContainersManager;

    invoke-direct {v0}, Lcom/eltechs/ed/startupActions/InitGuestContainersManager;-><init>()V

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->addAction(Lcom/eltechs/axs/configuration/startup/StartupAction;)V

    .line 27
    invoke-virtual {p0}, Lcom/eltechs/ed/startupActions/WDesktop;->getStartupActions()Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    move-result-object p1

    new-instance v0, Lcom/eltechs/ed/startupActions/WDesktop;

    invoke-direct {v0}, Lcom/eltechs/ed/startupActions/WDesktop;-><init>()V

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->addAction(Lcom/eltechs/axs/configuration/startup/StartupAction;)V

    .line 28
    invoke-virtual {p0}, Lcom/eltechs/ed/startupActions/WDesktop;->sendDone()V

    goto :goto_0

    .line 22
    :pswitch_1
    invoke-virtual {p0}, Lcom/eltechs/ed/startupActions/WDesktop;->sendDone()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic userInteractionFinished(Ljava/io/Serializable;)V
    .locals 0

    .line 7
    check-cast p1, Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;

    invoke-virtual {p0, p1}, Lcom/eltechs/ed/startupActions/WDesktop;->userInteractionFinished(Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;)V

    return-void
.end method
