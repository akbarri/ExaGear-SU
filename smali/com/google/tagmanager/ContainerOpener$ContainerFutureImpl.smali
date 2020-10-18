.class Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;
.super Ljava/lang/Object;
.source "ContainerOpener.java"

# interfaces
.implements Lcom/google/tagmanager/ContainerOpener$ContainerFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/ContainerOpener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContainerFutureImpl"
.end annotation


# instance fields
.field private volatile mContainer:Lcom/google/tagmanager/Container;

.field private mContainerIsReady:Ljava/util/concurrent/Semaphore;

.field private volatile mHaveGotten:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;->mContainerIsReady:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/ContainerOpener$1;)V
    .locals 0

    .line 312
    invoke-direct {p0}, Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/tagmanager/Container;
    .locals 1

    .line 319
    iget-boolean v0, p0, Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;->mHaveGotten:Z

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;->mContainer:Lcom/google/tagmanager/Container;

    return-object v0

    .line 324
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;->mContainerIsReady:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x1

    .line 328
    iput-boolean v0, p0, Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;->mHaveGotten:Z

    .line 329
    iget-object v0, p0, Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;->mContainer:Lcom/google/tagmanager/Container;

    return-object v0
.end method

.method public isDone()Z
    .locals 1

    .line 339
    iget-boolean v0, p0, Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;->mHaveGotten:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;->mContainerIsReady:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setContainer(Lcom/google/tagmanager/Container;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;->mContainer:Lcom/google/tagmanager/Container;

    .line 334
    iget-object p1, p0, Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;->mContainerIsReady:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
