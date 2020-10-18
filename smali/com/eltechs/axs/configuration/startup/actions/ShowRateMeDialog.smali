.class public Lcom/eltechs/axs/configuration/startup/actions/ShowRateMeDialog;
.super Lcom/eltechs/axs/configuration/startup/actions/SimpleInteractiveStartupActionBase;
.source "ShowRateMeDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/eltechs/axs/configuration/startup/actions/SimpleInteractiveStartupActionBase<",
        "TStateClass;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/SimpleInteractiveStartupActionBase;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .line 17
    const-class v0, Lcom/eltechs/axs/activities/RateMeActivity;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/configuration/startup/actions/ShowRateMeDialog;->requestUserInput(Ljava/lang/Class;)V

    return-void
.end method

.method public userInteractionCanceled()V
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/ShowRateMeDialog;->sendDone()V

    return-void
.end method

.method public userInteractionFinished()V
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/ShowRateMeDialog;->sendDone()V

    return-void
.end method
