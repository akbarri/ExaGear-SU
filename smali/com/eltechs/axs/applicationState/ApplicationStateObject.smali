.class public Lcom/eltechs/axs/applicationState/ApplicationStateObject;
.super Ljava/lang/Object;
.source "ApplicationStateObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final container:Lcom/eltechs/axs/container/Container;

.field private final state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lcom/eltechs/axs/container/AutowiringEnhancedObject;->addAutowiring(Ljava/lang/Class;)Lcom/eltechs/axs/container/AutowiringEnhancedObject;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/eltechs/axs/container/AutowiringEnhancedObject;->getProxy()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/applicationState/ApplicationStateObject;->state:Ljava/lang/Object;

    .line 23
    invoke-virtual {p1}, Lcom/eltechs/axs/container/AutowiringEnhancedObject;->getContainer()Lcom/eltechs/axs/container/Container;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/applicationState/ApplicationStateObject;->container:Lcom/eltechs/axs/container/Container;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/eltechs/axs/applicationState/ApplicationStateObject;->container:Lcom/eltechs/axs/container/Container;

    invoke-virtual {v0}, Lcom/eltechs/axs/container/Container;->removeAllComponents()V

    return-void
.end method

.method public getState()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/eltechs/axs/applicationState/ApplicationStateObject;->state:Ljava/lang/Object;

    return-object v0
.end method
