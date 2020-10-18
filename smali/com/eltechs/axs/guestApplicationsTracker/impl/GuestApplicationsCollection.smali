.class public Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;
.super Ljava/lang/Object;
.source "GuestApplicationsCollection.java"


# instance fields
.field private guestApplicationsAreRunnable:Z

.field private final listeners:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationLifecycleListenersList;

.field private final translators:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->translators:Ljava/util/Collection;

    .line 18
    new-instance v0, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationLifecycleListenersList;

    invoke-direct {v0}, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationLifecycleListenersList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->listeners:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationLifecycleListenersList;

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->guestApplicationsAreRunnable:Z

    return-void
.end method

.method private canFreeze()Z
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->translators:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;

    .line 156
    invoke-virtual {v1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->isForking()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private getTranslator(I)Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->translators:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;

    .line 72
    invoke-virtual {v1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->getPid()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private sleep(I)V
    .locals 2

    int-to-long v0, p1

    .line 176
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private yield()V
    .locals 1

    const/16 v0, 0xa

    .line 166
    invoke-direct {p0, v0}, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->sleep(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleListener;)V
    .locals 1

    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->listeners:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationLifecycleListenersList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationLifecycleListenersList;->addListener(Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 23
    monitor-exit p0

    throw p1
.end method

.method public freezeGuestApplications()V
    .locals 2

    .line 96
    :goto_0
    monitor-enter p0

    .line 98
    :try_start_0
    invoke-direct {p0}, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->canFreeze()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->translators:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;

    .line 102
    invoke-virtual {v1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->getPid()I

    move-result v1

    invoke-static {v1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/ProcessHelpers;->suspendProcess(I)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->guestApplicationsAreRunnable:Z

    .line 106
    monitor-exit p0

    return-void

    .line 108
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-direct {p0}, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->yield()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 108
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized haveGuestApplications()Z
    .locals 1

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->translators:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized killGuestApplications()V
    .locals 3

    monitor-enter p0

    .line 142
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->translators:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 143
    iget-object v1, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->translators:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 145
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;

    .line 147
    invoke-virtual {v1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->getPid()I

    move-result v2

    invoke-static {v2}, Lcom/eltechs/axs/guestApplicationsTracker/impl/ProcessHelpers;->killProcess(I)V

    .line 148
    iget-object v2, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->listeners:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationLifecycleListenersList;

    invoke-virtual {v2, v1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationLifecycleListenersList;->sendTranslatorExited(Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 150
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 141
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized killTranslator(Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;)V
    .locals 1

    monitor-enter p0

    .line 59
    :try_start_0
    invoke-virtual {p1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->getPid()I

    move-result v0

    invoke-static {v0}, Lcom/eltechs/axs/guestApplicationsTracker/impl/ProcessHelpers;->killProcess(I)V

    .line 60
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->translators:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->listeners:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationLifecycleListenersList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationLifecycleListenersList;->sendTranslatorExited(Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 58
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerTranslator(I)Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;
    .locals 1

    monitor-enter p0

    .line 34
    :try_start_0
    invoke-direct {p0, p1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->getTranslator(I)Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;

    invoke-direct {v0, p0, p1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;-><init>(Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;I)V

    .line 38
    iget-object p1, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->translators:Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object p1, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->listeners:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationLifecycleListenersList;

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationLifecycleListenersList;->sendTranslatorStarted(Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 33
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeListener(Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleListener;)V
    .locals 1

    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->listeners:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationLifecycleListenersList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationLifecycleListenersList;->removeListener(Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 28
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resumeGuestApplications()V
    .locals 2

    monitor-enter p0

    .line 127
    :try_start_0
    iget-boolean v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->guestApplicationsAreRunnable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 129
    monitor-exit p0

    return-void

    .line 132
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->translators:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;

    .line 134
    invoke-virtual {v1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->getPid()I

    move-result v1

    invoke-static {v1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/ProcessHelpers;->resumeProcess(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->guestApplicationsAreRunnable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 126
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized translatorStarted(ILcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;)V
    .locals 0

    monitor-enter p0

    .line 51
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->registerTranslator(I)Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;

    move-result-object p1

    .line 53
    invoke-virtual {p1, p2}, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->connectionEstablished(Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;)V

    .line 54
    invoke-virtual {p1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->sendEmptyPacket()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 50
    monitor-exit p0

    throw p1
.end method
