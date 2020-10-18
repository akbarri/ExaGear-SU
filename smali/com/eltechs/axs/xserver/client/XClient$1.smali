.class Lcom/eltechs/axs/xserver/client/XClient$1;
.super Lcom/eltechs/axs/xserver/WindowLifecycleAdapter;
.source "XClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/xserver/client/XClient;-><init>(Lcom/eltechs/axs/xserver/XServer;Lcom/eltechs/axs/xconnectors/XOutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/xserver/client/XClient;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/xserver/client/XClient;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/eltechs/axs/xserver/client/XClient$1;->this$0:Lcom/eltechs/axs/xserver/client/XClient;

    invoke-direct {p0}, Lcom/eltechs/axs/xserver/WindowLifecycleAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public windowDestroyed(Lcom/eltechs/axs/xserver/Window;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient$1;->this$0:Lcom/eltechs/axs/xserver/client/XClient;

    invoke-static {v0}, Lcom/eltechs/axs/xserver/client/XClient;->access$000(Lcom/eltechs/axs/xserver/client/XClient;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient$1;->this$0:Lcom/eltechs/axs/xserver/client/XClient;

    invoke-static {v0}, Lcom/eltechs/axs/xserver/client/XClient;->access$100(Lcom/eltechs/axs/xserver/client/XClient;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method
