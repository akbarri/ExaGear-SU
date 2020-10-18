.class public Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;
.super Ljava/lang/Object;
.source "ConnectionListener.java"


# instance fields
.field private final fd:I
    .annotation build Lcom/eltechs/axs/annotations/UsedByNativeCode;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "xconnector-fairepoll"

    .line 18
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;->initialiseNativeParts()Z

    move-result v0

    const-string v1, "Managed and native parts of EpollProcessorThread do not match one another."

    .line 21
    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;->fd:I

    return-void
.end method

.method private native acceptImpl()I
.end method

.method private native closeImpl()V
.end method

.method private static native createAbstractAfUnixSocket(Ljava/lang/String;)I
.end method

.method private static native createAfUnixSocket(Ljava/lang/String;)I
.end method

.method private static native createLoopbackInetSocket(I)I
.end method

.method public static forAbstractAfUnixAddress(Ljava/lang/String;)Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;->createAbstractAfUnixSocket(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 48
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to create an AF_UNIX socket listening on \'\\0%s\'; errno = %d."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    neg-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, p0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_0
    new-instance p0, Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;

    invoke-direct {p0, v0}, Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;-><init>(I)V

    return-object p0
.end method

.method public static forAfUnixAddress(Ljava/lang/String;)Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-static {p0}, Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;->createAfUnixSocket(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 59
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to create an AF_UNIX socket listening on %s; errno = %d."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    neg-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, p0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_0
    new-instance p0, Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;

    invoke-direct {p0, v0}, Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;-><init>(I)V

    return-object p0
.end method

.method public static forLoopbackInetAddress(I)Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-static {p0}, Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;->createLoopbackInetSocket(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 37
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to create an AF_INET socket listening on 127.0.0.1:%d; errno = %d."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    neg-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, p0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_0
    new-instance p0, Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;

    invoke-direct {p0, v0}, Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;-><init>(I)V

    return-object p0
.end method

.method private static native initialiseNativeParts()Z
.end method


# virtual methods
.method public accept()I
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;->acceptImpl()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;->closeImpl()V

    return-void
.end method

.method public getFd()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/eltechs/axs/xconnectors/epoll/impl/ConnectionListener;->fd:I

    return v0
.end method
