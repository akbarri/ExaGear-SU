.class public Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationLifecycleListenersList;
.super Ljava/lang/Object;
.source "GuestApplicationLifecycleListenersList.java"


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleListener;",
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

    iput-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationLifecycleListenersList;->listeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleListener;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationLifecycleListenersList;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeListener(Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleListener;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationLifecycleListenersList;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendTranslatorExited(Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationLifecycleListenersList;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleListener;

    .line 41
    invoke-interface {v1, p1}, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleListener;->translatorExited(Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendTranslatorStarted(Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationLifecycleListenersList;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleListener;

    .line 33
    invoke-interface {v1, p1}, Lcom/eltechs/axs/guestApplicationsTracker/GuestApplicationsLifecycleListener;->translatorStarted(Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;)V

    goto :goto_0

    :cond_0
    return-void
.end method
