.class Lcom/eltechs/axs/environmentService/components/VirglServerComponent$1;
.super Ljava/lang/Thread;
.source "VirglServerComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/environmentService/components/VirglServerComponent;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/environmentService/components/VirglServerComponent;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/environmentService/components/VirglServerComponent;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/eltechs/axs/environmentService/components/VirglServerComponent$1;->this$0:Lcom/eltechs/axs/environmentService/components/VirglServerComponent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/components/VirglServerComponent$1;->this$0:Lcom/eltechs/axs/environmentService/components/VirglServerComponent;

    invoke-static {v0}, Lcom/eltechs/axs/environmentService/components/VirglServerComponent;->access$100(Lcom/eltechs/axs/environmentService/components/VirglServerComponent;)Lcom/eltechs/axs/rendering/impl/virglRenderer/VirglServer;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/environmentService/components/VirglServerComponent$1;->this$0:Lcom/eltechs/axs/environmentService/components/VirglServerComponent;

    invoke-static {v1}, Lcom/eltechs/axs/environmentService/components/VirglServerComponent;->access$000(Lcom/eltechs/axs/environmentService/components/VirglServerComponent;)Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/xconnectors/epoll/UnixSocketConfiguration;->getHostPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/rendering/impl/virglRenderer/VirglServer;->startServer(Ljava/lang/String;)V

    return-void
.end method
