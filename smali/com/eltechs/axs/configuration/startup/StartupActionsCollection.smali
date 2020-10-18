.class public Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;
.super Ljava/lang/Object;
.source "StartupActionsCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "StartupActions"


# instance fields
.field private final actionCompletionReporter:Lcom/eltechs/axs/activities/BufferedListenerInvoker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eltechs/axs/activities/BufferedListenerInvoker<",
            "Lcom/eltechs/axs/configuration/startup/actions/StartupActionCompletionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final actions:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/eltechs/axs/configuration/startup/StartupAction;",
            ">;"
        }
    .end annotation
.end field

.field private final applicationContext:Landroid/content/Context;

.field private final asyncStartupActionsExecutor:Ljava/util/concurrent/Executor;

.field private currentActionState:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

.field private final infoUpdater:Lcom/eltechs/axs/activities/BufferedListenerInvoker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eltechs/axs/activities/BufferedListenerInvoker<",
            "Lcom/eltechs/axs/configuration/startup/actions/StartupStepInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private isFinished:Z

.field private final userInteractionRequester:Lcom/eltechs/axs/activities/BufferedListenerInvoker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eltechs/axs/activities/BufferedListenerInvoker<",
            "Lcom/eltechs/axs/configuration/startup/actions/UserInteractionRequestListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->actions:Ljava/util/Deque;

    .line 36
    sget-object v0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;->NOT_YET_STARTED:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    iput-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->currentActionState:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    .line 39
    new-instance v0, Lcom/eltechs/axs/activities/BufferedListenerInvoker;

    const-class v1, Lcom/eltechs/axs/configuration/startup/actions/StartupActionCompletionListener;

    invoke-direct {v0, v1}, Lcom/eltechs/axs/activities/BufferedListenerInvoker;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->actionCompletionReporter:Lcom/eltechs/axs/activities/BufferedListenerInvoker;

    .line 40
    new-instance v0, Lcom/eltechs/axs/activities/BufferedListenerInvoker;

    const-class v1, Lcom/eltechs/axs/configuration/startup/actions/UserInteractionRequestListener;

    invoke-direct {v0, v1}, Lcom/eltechs/axs/activities/BufferedListenerInvoker;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->userInteractionRequester:Lcom/eltechs/axs/activities/BufferedListenerInvoker;

    .line 41
    new-instance v0, Lcom/eltechs/axs/activities/BufferedListenerInvoker;

    const-class v1, Lcom/eltechs/axs/configuration/startup/actions/StartupStepInfoListener;

    invoke-direct {v0, v1}, Lcom/eltechs/axs/activities/BufferedListenerInvoker;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->infoUpdater:Lcom/eltechs/axs/activities/BufferedListenerInvoker;

    .line 43
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->asyncStartupActionsExecutor:Ljava/util/concurrent/Executor;

    .line 47
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->applicationContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->logDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;)Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->currentActionState:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    return-object p0
.end method

.method static synthetic access$102(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;)Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->currentActionState:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;)Lcom/eltechs/axs/configuration/startup/StartupAction;
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->getCurrentAction()Lcom/eltechs/axs/configuration/startup/StartupAction;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;)Ljava/util/Deque;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->actions:Ljava/util/Deque;

    return-object p0
.end method

.method static synthetic access$400(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;)Lcom/eltechs/axs/activities/BufferedListenerInvoker;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->actionCompletionReporter:Lcom/eltechs/axs/activities/BufferedListenerInvoker;

    return-object p0
.end method

.method static synthetic access$500(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;)Lcom/eltechs/axs/activities/BufferedListenerInvoker;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->userInteractionRequester:Lcom/eltechs/axs/activities/BufferedListenerInvoker;

    return-object p0
.end method

.method private getCurrentAction()Lcom/eltechs/axs/configuration/startup/StartupAction;
    .locals 1

    .line 250
    invoke-static {}, Lcom/eltechs/axs/helpers/UiThread;->check()V

    .line 252
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->actions:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/configuration/startup/StartupAction;

    return-object v0
.end method

.method private isAsyncAction(Lcom/eltechs/axs/configuration/startup/StartupAction;)Z
    .locals 0

    .line 262
    instance-of p1, p1, Lcom/eltechs/axs/configuration/startup/AsyncStartupAction;

    return p1
.end method

.method private varargs logDebug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "StartupActions"

    .line 267
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setStartupActivity(Lcom/eltechs/axs/activities/StartupActivity;)V
    .locals 1
    .annotation runtime Lcom/eltechs/axs/container/annotations/Autowired;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/activities/StartupActivity<",
            "*>;)V"
        }
    .end annotation

    .line 53
    invoke-static {}, Lcom/eltechs/axs/helpers/UiThread;->check()V

    .line 55
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->actionCompletionReporter:Lcom/eltechs/axs/activities/BufferedListenerInvoker;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/activities/BufferedListenerInvoker;->setRealListener(Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->userInteractionRequester:Lcom/eltechs/axs/activities/BufferedListenerInvoker;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/activities/BufferedListenerInvoker;->setRealListener(Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->infoUpdater:Lcom/eltechs/axs/activities/BufferedListenerInvoker;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/activities/BufferedListenerInvoker;->setRealListener(Ljava/lang/Object;)V

    return-void
.end method

.method private setStepInfo(Lcom/eltechs/axs/configuration/startup/StartupActionInfo;)V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->infoUpdater:Lcom/eltechs/axs/activities/BufferedListenerInvoker;

    invoke-virtual {v0}, Lcom/eltechs/axs/activities/BufferedListenerInvoker;->getProxy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/configuration/startup/actions/StartupStepInfoListener;

    invoke-interface {v0, p1}, Lcom/eltechs/axs/configuration/startup/actions/StartupStepInfoListener;->setStepInfo(Lcom/eltechs/axs/configuration/startup/StartupActionInfo;)V

    return-void
.end method


# virtual methods
.method public actionDone(Lcom/eltechs/axs/configuration/startup/StartupAction;)V
    .locals 1

    .line 123
    new-instance v0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$3;

    invoke-direct {v0, p0, p1}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$3;-><init>(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;Lcom/eltechs/axs/configuration/startup/StartupAction;)V

    invoke-static {v0}, Lcom/eltechs/axs/helpers/UiThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public actionFailed(Lcom/eltechs/axs/configuration/startup/StartupAction;Ljava/lang/String;)V
    .locals 1

    .line 144
    new-instance v0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$4;-><init>(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;Lcom/eltechs/axs/configuration/startup/StartupAction;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/eltechs/axs/helpers/UiThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public addAction(Lcom/eltechs/axs/configuration/startup/StartupAction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/configuration/startup/StartupAction<",
            "TStateClass;>;)V"
        }
    .end annotation

    .line 62
    invoke-static {}, Lcom/eltechs/axs/helpers/UiThread;->check()V

    .line 64
    invoke-interface {p1, p0}, Lcom/eltechs/axs/configuration/startup/StartupAction;->attach(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;)V

    .line 65
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->actions:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public addActions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/configuration/startup/StartupAction<",
            "TStateClass;>;>;)V"
        }
    .end annotation

    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/configuration/startup/StartupAction;

    .line 72
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->addAction(Lcom/eltechs/axs/configuration/startup/StartupAction;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAndroidApplicationContext()Landroid/content/Context;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .line 243
    invoke-static {}, Lcom/eltechs/axs/helpers/UiThread;->check()V

    .line 245
    iget-boolean v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->isFinished:Z

    return v0
.end method

.method public isWaitingForUserInput()Z
    .locals 2

    .line 236
    invoke-static {}, Lcom/eltechs/axs/helpers/UiThread;->check()V

    .line 238
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->currentActionState:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    sget-object v1, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;->AWAITING_RESPONSE:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public requestUserInput()V
    .locals 1

    .line 219
    new-instance v0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$6;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$6;-><init>(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;)V

    invoke-static {v0}, Lcom/eltechs/axs/helpers/UiThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestUserInput(Ljava/lang/Class;Ljava/io/Serializable;)V
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

    .line 200
    new-instance v0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$5;-><init>(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;Ljava/lang/Class;Ljava/io/Serializable;)V

    invoke-static {v0}, Lcom/eltechs/axs/helpers/UiThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public runAction()Z
    .locals 4

    .line 78
    invoke-static {}, Lcom/eltechs/axs/helpers/UiThread;->check()V

    .line 80
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->actions:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "runAction() found no more startup actions\n"

    .line 82
    new-array v3, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v3}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->logDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iput-boolean v1, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->isFinished:Z

    return v2

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->currentActionState:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    sget-object v3, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;->NOT_YET_STARTED:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    if-eq v0, v3, :cond_1

    const-string v0, "runAction() called with the current action in invalid state %s."

    .line 89
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->currentActionState:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    return v2

    .line 93
    :cond_1
    sget-object v0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;->RUNNING:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    iput-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->currentActionState:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    .line 95
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->getCurrentAction()Lcom/eltechs/axs/configuration/startup/StartupAction;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Lcom/eltechs/axs/configuration/startup/StartupAction;->getInfo()Lcom/eltechs/axs/configuration/startup/StartupActionInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->setStepInfo(Lcom/eltechs/axs/configuration/startup/StartupActionInfo;)V

    .line 98
    invoke-direct {p0, v0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->isAsyncAction(Lcom/eltechs/axs/configuration/startup/StartupAction;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 100
    new-instance v2, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$1;

    invoke-direct {v2, p0, v0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$1;-><init>(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;Lcom/eltechs/axs/configuration/startup/StartupAction;)V

    invoke-static {v2}, Lcom/eltechs/axs/helpers/UiThread;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 109
    :cond_2
    iget-object v2, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->asyncStartupActionsExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$2;

    invoke-direct {v3, p0, v0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$2;-><init>(Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;Lcom/eltechs/axs/configuration/startup/StartupAction;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return v1
.end method

.method public userInteractionCanceled()V
    .locals 3

    .line 180
    invoke-static {}, Lcom/eltechs/axs/helpers/UiThread;->check()V

    const-string v0, "userInteractionCanceled()\n"

    const/4 v1, 0x0

    .line 181
    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->logDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->currentActionState:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    sget-object v2, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;->AWAITING_RESPONSE:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v0, "userInteractionCanceled() called but the current action expects no user input."

    invoke-static {v1, v0}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 186
    sget-object v0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;->RUNNING:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    iput-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->currentActionState:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    .line 188
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->getCurrentAction()Lcom/eltechs/axs/configuration/startup/StartupAction;

    move-result-object v0

    instance-of v0, v0, Lcom/eltechs/axs/configuration/startup/InteractiveStartupAction;

    const-string v1, "Only interactive startup actions can receive nontrivial user responses."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 189
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->getCurrentAction()Lcom/eltechs/axs/configuration/startup/StartupAction;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/configuration/startup/InteractiveStartupAction;

    invoke-interface {v0}, Lcom/eltechs/axs/configuration/startup/InteractiveStartupAction;->userInteractionCanceled()V

    return-void
.end method

.method public userInteractionFinished(Ljava/io/Serializable;)V
    .locals 3

    .line 165
    invoke-static {}, Lcom/eltechs/axs/helpers/UiThread;->check()V

    const-string v0, "userInteractionFinished()\n"

    const/4 v1, 0x0

    .line 166
    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->logDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->currentActionState:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    sget-object v2, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;->AWAITING_RESPONSE:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v0, "userInteractionFinished() called but the current action expects no user input."

    invoke-static {v1, v0}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 171
    sget-object v0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;->RUNNING:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    iput-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->currentActionState:Lcom/eltechs/axs/configuration/startup/StartupActionsCollection$ActionState;

    .line 173
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->getCurrentAction()Lcom/eltechs/axs/configuration/startup/StartupAction;

    move-result-object v0

    instance-of v0, v0, Lcom/eltechs/axs/configuration/startup/InteractiveStartupAction;

    const-string v1, "Only interactive startup actions can receive nontrivial user responses."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 174
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/StartupActionsCollection;->getCurrentAction()Lcom/eltechs/axs/configuration/startup/StartupAction;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/configuration/startup/InteractiveStartupAction;

    invoke-interface {v0, p1}, Lcom/eltechs/axs/configuration/startup/InteractiveStartupAction;->userInteractionFinished(Ljava/io/Serializable;)V

    return-void
.end method
