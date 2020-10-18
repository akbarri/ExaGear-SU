.class public abstract Lcom/eltechs/axs/configuration/startup/actions/SimpleInteractiveStartupActionBase;
.super Lcom/eltechs/axs/configuration/startup/actions/InteractiveStartupActionBase;
.source "SimpleInteractiveStartupActionBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/eltechs/axs/configuration/startup/actions/InteractiveStartupActionBase<",
        "TStateClass;",
        "Ljava/io/Serializable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/InteractiveStartupActionBase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract userInteractionCanceled()V
.end method

.method public abstract userInteractionFinished()V
.end method

.method public final userInteractionFinished(Ljava/io/Serializable;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "SimpleInteractiveStartupActions must receive only trivial responses from dialogs."

    .line 20
    invoke-static {p1, v0}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/SimpleInteractiveStartupActionBase;->userInteractionFinished()V

    return-void
.end method
