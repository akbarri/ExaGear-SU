.class Lcom/eltechs/axs/xserver/client/XClient$2;
.super Ljava/lang/Object;
.source "XClient.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/PixmapLifecycleListener;


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

    .line 61
    iput-object p1, p0, Lcom/eltechs/axs/xserver/client/XClient$2;->this$0:Lcom/eltechs/axs/xserver/client/XClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pixmapCreated(Lcom/eltechs/axs/xserver/Pixmap;)V
    .locals 0

    return-void
.end method

.method public pixmapFreed(Lcom/eltechs/axs/xserver/Pixmap;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/eltechs/axs/xserver/client/XClient$2;->this$0:Lcom/eltechs/axs/xserver/client/XClient;

    invoke-static {v0}, Lcom/eltechs/axs/xserver/client/XClient;->access$200(Lcom/eltechs/axs/xserver/client/XClient;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method
