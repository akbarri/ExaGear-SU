.class public Lcom/eltechs/axs/container/Container;
.super Ljava/lang/Object;
.source "Container.java"


# instance fields
.field private final autowiringInformation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/container/impl/AutowiringRequest;",
            ">;>;"
        }
    .end annotation
.end field

.field private final components:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private iterating:Z

.field private final mainThread:Ljava/lang/Thread;

.field private final postAddActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/container/impl/LifecycleHandlerMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field private final preRemoveActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/container/impl/LifecycleHandlerMethod;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/container/Container;->mainThread:Ljava/lang/Thread;

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/container/Container;->components:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/container/Container;->postAddActions:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/container/Container;->preRemoveActions:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/container/Container;->autowiringInformation:Ljava/util/Map;

    return-void
.end method

.method private callPostAdd(Ljava/lang/Object;)V
    .locals 2

    .line 136
    invoke-direct {p0, p1}, Lcom/eltechs/axs/container/Container;->getPostAddActions(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/container/impl/LifecycleHandlerMethod;

    .line 138
    invoke-virtual {v1, p1}, Lcom/eltechs/axs/container/impl/LifecycleHandlerMethod;->apply(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private callPreRemove(Ljava/lang/Object;)V
    .locals 2

    .line 144
    invoke-direct {p0, p1}, Lcom/eltechs/axs/container/Container;->getPreRemoveActions(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/container/impl/LifecycleHandlerMethod;

    .line 146
    invoke-virtual {v1, p1}, Lcom/eltechs/axs/container/impl/LifecycleHandlerMethod;->apply(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private callSetter(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 176
    invoke-direct {p0, p1}, Lcom/eltechs/axs/container/Container;->getAutowiringRequestsForComponent(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/container/impl/AutowiringRequest;

    .line 178
    invoke-virtual {v1, p2}, Lcom/eltechs/axs/container/impl/AutowiringRequest;->isInterestedIn(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    invoke-virtual {v1, p1, p3}, Lcom/eltechs/axs/container/impl/AutowiringRequest;->inject(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    return-void
.end method

.method private getAutowiringRequestsForComponent(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/container/impl/AutowiringRequest;",
            ">;"
        }
    .end annotation

    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 189
    iget-object v0, p0, Lcom/eltechs/axs/container/Container;->autowiringInformation:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 192
    invoke-static {p1}, Lcom/eltechs/axs/container/impl/AutowiredPropertiesScanner;->listAutowiringRequests(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/eltechs/axs/container/Container;->autowiringInformation:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getPostAddActions(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/container/impl/LifecycleHandlerMethod;",
            ">;"
        }
    .end annotation

    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 153
    iget-object v0, p0, Lcom/eltechs/axs/container/Container;->postAddActions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 156
    invoke-static {p1}, Lcom/eltechs/axs/container/impl/LifecycleHandlersScanner;->listPostAddActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/eltechs/axs/container/Container;->postAddActions:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getPreRemoveActions(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/container/impl/LifecycleHandlerMethod;",
            ">;"
        }
    .end annotation

    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 165
    iget-object v0, p0, Lcom/eltechs/axs/container/Container;->preRemoveActions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 168
    invoke-static {p1}, Lcom/eltechs/axs/container/impl/LifecycleHandlersScanner;->listPreRemoveActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/eltechs/axs/container/Container;->preRemoveActions:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private updateExistingComponentsConfigurationUponAddition(Ljava/lang/Object;)V
    .locals 3

    .line 108
    iget-boolean v0, p0, Lcom/eltechs/axs/container/Container;->iterating:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 109
    iput-boolean v1, p0, Lcom/eltechs/axs/container/Container;->iterating:Z

    .line 110
    iget-object v0, p0, Lcom/eltechs/axs/container/Container;->components:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 112
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, v1, v2, p1}, Lcom/eltechs/axs/container/Container;->callSetter(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    :cond_0
    iget-boolean p1, p0, Lcom/eltechs/axs/container/Container;->iterating:Z

    invoke-static {p1}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    const/4 p1, 0x0

    .line 117
    iput-boolean p1, p0, Lcom/eltechs/axs/container/Container;->iterating:Z

    return-void
.end method

.method private updateExistingComponentsConfigurationUponRemoval(Ljava/lang/Object;)V
    .locals 4

    .line 122
    iget-boolean v0, p0, Lcom/eltechs/axs/container/Container;->iterating:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 123
    iput-boolean v1, p0, Lcom/eltechs/axs/container/Container;->iterating:Z

    .line 124
    iget-object v0, p0, Lcom/eltechs/axs/container/Container;->components:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 126
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/eltechs/axs/container/Container;->callSetter(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 130
    :cond_0
    iget-boolean p1, p0, Lcom/eltechs/axs/container/Container;->iterating:Z

    invoke-static {p1}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    const/4 p1, 0x0

    .line 131
    iput-boolean p1, p0, Lcom/eltechs/axs/container/Container;->iterating:Z

    return-void
.end method

.method private updateNewComponentConfiguration(Ljava/lang/Object;)V
    .locals 3

    .line 94
    iget-boolean v0, p0, Lcom/eltechs/axs/container/Container;->iterating:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 95
    iput-boolean v1, p0, Lcom/eltechs/axs/container/Container;->iterating:Z

    .line 96
    iget-object v0, p0, Lcom/eltechs/axs/container/Container;->components:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 98
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, p1, v2, v1}, Lcom/eltechs/axs/container/Container;->callSetter(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-boolean p1, p0, Lcom/eltechs/axs/container/Container;->iterating:Z

    invoke-static {p1}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    const/4 p1, 0x0

    .line 103
    iput-boolean p1, p0, Lcom/eltechs/axs/container/Container;->iterating:Z

    return-void
.end method


# virtual methods
.method public addComponent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/container/Container;->mainThread:Ljava/lang/Thread;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 35
    iget-object v0, p0, Lcom/eltechs/axs/container/Container;->components:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "The component \'%s\' is already present in the container."

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->isFalse(ZLjava/lang/String;)V

    .line 36
    iget-boolean v0, p0, Lcom/eltechs/axs/container/Container;->iterating:Z

    xor-int/2addr v0, v3

    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 38
    iget-object v0, p0, Lcom/eltechs/axs/container/Container;->components:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-direct {p0, p2}, Lcom/eltechs/axs/container/Container;->updateNewComponentConfiguration(Ljava/lang/Object;)V

    .line 40
    invoke-direct {p0, p2}, Lcom/eltechs/axs/container/Container;->callPostAdd(Ljava/lang/Object;)V

    .line 42
    invoke-direct {p0, p2}, Lcom/eltechs/axs/container/Container;->updateExistingComponentsConfigurationUponAddition(Ljava/lang/Object;)V

    return-void
.end method

.method public getComponent(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/eltechs/axs/container/Container;->components:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeAllComponents()V
    .locals 3

    .line 73
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/container/Container;->mainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 74
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/eltechs/axs/container/Container;->components:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 77
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    invoke-virtual {p0, v1}, Lcom/eltechs/axs/container/Container;->removeComponent(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public removeComponent(Ljava/lang/String;)V
    .locals 5

    .line 47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/container/Container;->mainThread:Ljava/lang/Thread;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 48
    iget-object v0, p0, Lcom/eltechs/axs/container/Container;->components:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The component \'%s\' is not present in the container."

    .line 49
    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/eltechs/axs/helpers/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-boolean p1, p0, Lcom/eltechs/axs/container/Container;->iterating:Z

    xor-int/2addr p1, v3

    invoke-static {p1}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 52
    invoke-direct {p0, v0}, Lcom/eltechs/axs/container/Container;->callPreRemove(Ljava/lang/Object;)V

    .line 53
    invoke-direct {p0, v0}, Lcom/eltechs/axs/container/Container;->updateExistingComponentsConfigurationUponRemoval(Ljava/lang/Object;)V

    return-void
.end method

.method public setComponent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/container/Container;->mainThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 59
    iget-boolean v0, p0, Lcom/eltechs/axs/container/Container;->iterating:Z

    xor-int/2addr v0, v2

    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 60
    iget-object v0, p0, Lcom/eltechs/axs/container/Container;->components:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/container/Container;->removeComponent(Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/axs/container/Container;->addComponent(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
