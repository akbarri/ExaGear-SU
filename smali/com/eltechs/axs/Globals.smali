.class public abstract Lcom/eltechs/axs/Globals;
.super Ljava/lang/Object;
.source "Globals.java"


# static fields
.field private static applicationState:Lcom/eltechs/axs/applicationState/ApplicationStateObject;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearState()V
    .locals 1

    .line 35
    sget-object v0, Lcom/eltechs/axs/Globals;->applicationState:Lcom/eltechs/axs/applicationState/ApplicationStateObject;

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/eltechs/axs/Globals;->applicationState:Lcom/eltechs/axs/applicationState/ApplicationStateObject;

    invoke-virtual {v0}, Lcom/eltechs/axs/applicationState/ApplicationStateObject;->clear()V

    const/4 v0, 0x0

    .line 38
    sput-object v0, Lcom/eltechs/axs/Globals;->applicationState:Lcom/eltechs/axs/applicationState/ApplicationStateObject;

    :cond_0
    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .line 44
    invoke-static {}, Lcom/eltechs/axs/Globals;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    .line 45
    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->getAndroidApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getApplicationState()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/eltechs/axs/Globals;->applicationState:Lcom/eltechs/axs/applicationState/ApplicationStateObject;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/eltechs/axs/Globals;->applicationState:Lcom/eltechs/axs/applicationState/ApplicationStateObject;

    .line 29
    invoke-virtual {v0}, Lcom/eltechs/axs/applicationState/ApplicationStateObject;->getState()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static setApplicationState(Lcom/eltechs/axs/applicationState/ApplicationStateObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/eltechs/axs/applicationState/ApplicationStateBase;",
            ">(",
            "Lcom/eltechs/axs/applicationState/ApplicationStateObject<",
            "TT;>;)V"
        }
    .end annotation

    .line 21
    sget-object v0, Lcom/eltechs/axs/Globals;->applicationState:Lcom/eltechs/axs/applicationState/ApplicationStateObject;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Application state object already created."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 23
    sput-object p0, Lcom/eltechs/axs/Globals;->applicationState:Lcom/eltechs/axs/applicationState/ApplicationStateObject;

    return-void
.end method
