.class public abstract Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;
.super Ljava/lang/Object;
.source "AbstractStartupAction.java"

# interfaces
.implements Lcom/eltechs/axs/configuration/startup/StartupAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/eltechs/axs/configuration/startup/StartupAction<",
        "TStateClass;>;"
    }
.end annotation


# instance fields
.field private volatile startupActions:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eltechs/axs/configuration/startup/StartupActionsCollection<",
            "TStateClass;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final attach(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/configuration/startup/StartupActionsCollection<",
            "TStateClass;>;)V"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;->startupActions:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Already registered within a startup actions collection."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;->startupActions:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    return-void
.end method

.method protected getAppContext()Landroid/content/Context;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;->startupActions:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->getAndroidApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getApplicationState()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TStateClass;"
        }
    .end annotation

    .line 47
    invoke-static {}, Lcom/eltechs/axs/Globals;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInfo()Lcom/eltechs/axs/configuration/startup/StartupActionInfo;
    .locals 2

    .line 37
    new-instance v0, Lcom/eltechs/axs/configuration/startup/StartupActionInfo;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/eltechs/axs/configuration/startup/StartupActionInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getStartupActions()Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/eltechs/axs/configuration/startup/StartupActionsCollection<",
            "TStateClass;>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;->startupActions:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    return-object v0
.end method

.method protected final getString(I)Ljava/lang/String;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final sendDone()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;->startupActions:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->actionDone(Lcom/eltechs/axs/configuration/startup/StartupAction;)V

    return-void
.end method

.method protected final sendError(Ljava/lang/String;)V
    .locals 3

    const-string v0, "<html><body>%s</body></html>"

    const/4 v1, 0x1

    .line 67
    new-array v1, v1, [Ljava/lang/Object;

    .line 68
    invoke-static {p1}, Lorg/apache/commons/lang3/StringEscapeUtils;->escapeHtml4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 67
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;->sendErrorHtml(Ljava/lang/String;)V

    return-void
.end method

.method protected final sendError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 73
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 74
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 75
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string p2, "<html><body>%s<br><br><pre>%s</pre></body></html>"

    const/4 v1, 0x2

    .line 77
    new-array v1, v1, [Ljava/lang/Object;

    .line 78
    invoke-static {p1}, Lorg/apache/commons/lang3/StringEscapeUtils;->escapeHtml4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 79
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringEscapeUtils;->escapeHtml4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v1, v0

    .line 77
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;->sendErrorHtml(Ljava/lang/String;)V

    return-void
.end method

.method protected final sendErrorHtml(Ljava/lang/String;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;->startupActions:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;

    invoke-virtual {v0, p0, p1}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->actionFailed(Lcom/eltechs/axs/configuration/startup/StartupAction;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "[Startup action: %s]"

    const/4 v1, 0x1

    .line 90
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
