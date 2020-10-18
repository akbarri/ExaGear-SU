.class Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$1;
.super Lcom/eltechs/axs/xserver/WindowLifecycleAdapter;
.source "SelectionsManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$1;->this$0:Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;

    invoke-direct {p0}, Lcom/eltechs/axs/xserver/WindowLifecycleAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public windowDestroyed(Lcom/eltechs/axs/xserver/Window;)V
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$1;->this$0:Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;

    invoke-static {v0}, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;->access$000(Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$SelectionInfo;

    .line 26
    iget-object v2, v1, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$SelectionInfo;->owner:Lcom/eltechs/axs/xserver/Window;

    if-ne v2, p1, :cond_0

    const/4 v2, 0x0

    .line 28
    iput-object v2, v1, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$SelectionInfo;->owner:Lcom/eltechs/axs/xserver/Window;

    .line 29
    iput-object v2, v1, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$SelectionInfo;->client:Lcom/eltechs/axs/xserver/client/XClient;

    goto :goto_0

    :cond_1
    return-void
.end method
