.class public Lcom/eltechs/axs/activities/BufferedListenerInvoker;
.super Ljava/lang/Object;
.source "BufferedListenerInvoker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/activities/BufferedListenerInvoker$InvocationRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "ListenerType:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final enqueuedInvocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/axs/activities/BufferedListenerInvoker$InvocationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final proxy:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "ListenerType;"
        }
    .end annotation
.end field

.field private realListener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "ListenerType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "T",
            "ListenerType;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/activities/BufferedListenerInvoker;->enqueuedInvocations:Ljava/util/List;

    .line 53
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance p1, Lcom/eltechs/axs/activities/BufferedListenerInvoker$1;

    invoke-direct {p1, p0}, Lcom/eltechs/axs/activities/BufferedListenerInvoker$1;-><init>(Lcom/eltechs/axs/activities/BufferedListenerInvoker;)V

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/eltechs/axs/activities/BufferedListenerInvoker;->proxy:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/activities/BufferedListenerInvoker;)Ljava/lang/Object;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/eltechs/axs/activities/BufferedListenerInvoker;->realListener:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/eltechs/axs/activities/BufferedListenerInvoker;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/eltechs/axs/activities/BufferedListenerInvoker;->enqueuedInvocations:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized clearRealListener()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 80
    :try_start_0
    iput-object v0, p0, Lcom/eltechs/axs/activities/BufferedListenerInvoker;->realListener:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 79
    monitor-exit p0

    throw v0
.end method

.method public getProxy()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "ListenerType;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/eltechs/axs/activities/BufferedListenerInvoker;->proxy:Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized setRealListener(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "ListenerType;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 85
    :try_start_0
    iput-object p1, p0, Lcom/eltechs/axs/activities/BufferedListenerInvoker;->realListener:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 89
    monitor-exit p0

    return-void

    .line 94
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/eltechs/axs/activities/BufferedListenerInvoker;->enqueuedInvocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/activities/BufferedListenerInvoker$InvocationRequest;

    .line 96
    invoke-virtual {v1, p1}, Lcom/eltechs/axs/activities/BufferedListenerInvoker$InvocationRequest;->invoke(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "Listener methods must throw no exceptions."

    .line 100
    invoke-static {v0, p1}, Lcom/eltechs/axs/helpers/Assert;->abort(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    :cond_1
    iget-object p1, p0, Lcom/eltechs/axs/activities/BufferedListenerInvoker;->enqueuedInvocations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 84
    monitor-exit p0

    throw p1
.end method
