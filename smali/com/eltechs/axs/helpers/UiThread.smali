.class public abstract Lcom/eltechs/axs/helpers/UiThread;
.super Ljava/lang/Object;
.source "UiThread.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check()V
    .locals 2

    .line 37
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    return-void
.end method

.method private static inferListenerClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "ListenerType:Ljava/lang/Object;",
            ">(T",
            "ListenerType;",
            ")",
            "Ljava/lang/Class<",
            "T",
            "ListenerType;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 101
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 102
    array-length v3, v2

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 107
    array-length v5, v2

    if-gt v5, v4, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    const-string v6, "The class %s is used as a listener and must implement exactly one interface."

    new-array v7, v4, [Ljava/lang/Object;

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v7, v3

    .line 107
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 110
    array-length v5, v2

    if-ne v5, v4, :cond_2

    .line 112
    aget-object v1, v2, v3

    .line 99
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static post(Ljava/lang/Runnable;)Z
    .locals 2

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public static postDelayed(JLjava/lang/Runnable;)Z
    .locals 2

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 28
    invoke-virtual {v0, p2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0
.end method

.method public static wrap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "ListenerType:Ljava/lang/Object;",
            ">(T",
            "ListenerType;",
            ")T",
            "ListenerType;"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 52
    invoke-static {p0}, Lcom/eltechs/axs/helpers/UiThread;->inferListenerClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    .line 53
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 54
    invoke-static {}, Lcom/eltechs/axs/helpers/UiThread;->check()V

    const/4 v3, 0x1

    .line 56
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    new-instance v1, Lcom/eltechs/axs/helpers/UiThread$1;

    invoke-direct {v1, v2, p0}, Lcom/eltechs/axs/helpers/UiThread$1;-><init>(Landroid/os/Handler;Ljava/lang/Object;)V

    invoke-static {v0, v3, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
