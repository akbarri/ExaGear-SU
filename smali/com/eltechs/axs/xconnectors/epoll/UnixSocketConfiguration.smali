.class public Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;
.super Ljava/lang/Object;
.source "UnixSocketConfiguration.java"


# instance fields
.field private isAbstract:Z

.field private relPath:Ljava/lang/String;

.field private rootPath:Ljava/lang/String;


# direct methods
.method private constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean p1, p0, Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;->isAbstract:Z

    .line 23
    iput-object p2, p0, Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;->rootPath:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;->relPath:Ljava/lang/String;

    return-void
.end method

.method public static createAbstractSocket(Ljava/lang/String;)Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;
    .locals 3

    .line 44
    new-instance v0, Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    const-string v1, "/"

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, p0}, Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createRegularSocket(Ljava/lang/String;Ljava/lang/String;)Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;
    .locals 2

    .line 49
    new-instance v0, Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getGuestPath()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;->relPath:Ljava/lang/String;

    return-object v0
.end method

.method public getHostPath()Ljava/lang/String;
    .locals 3

    .line 39
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;->rootPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;->relPath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAbstract()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;->isAbstract:Z

    return v0
.end method
