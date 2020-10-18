.class Lcom/eltechs/axs/xserver/impl/WindowImpl$1;
.super Ljava/lang/Object;
.source "WindowImpl.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/xserver/impl/WindowImpl;->getChildrenTopToBottom()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/eltechs/axs/xserver/Window;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/xserver/impl/WindowImpl;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/xserver/impl/WindowImpl;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl$1;->this$0:Lcom/eltechs/axs/xserver/impl/WindowImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/eltechs/axs/xserver/Window;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl$1;->this$0:Lcom/eltechs/axs/xserver/impl/WindowImpl;

    invoke-static {v0}, Lcom/eltechs/axs/xserver/impl/WindowImpl;->access$000(Lcom/eltechs/axs/xserver/impl/WindowImpl;)Lcom/eltechs/axs/xserver/impl/WindowChildrenList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 111
    new-instance v1, Lcom/eltechs/axs/xserver/impl/WindowImpl$1$1;

    invoke-direct {v1, p0, v0}, Lcom/eltechs/axs/xserver/impl/WindowImpl$1$1;-><init>(Lcom/eltechs/axs/xserver/impl/WindowImpl$1;Ljava/util/ListIterator;)V

    return-object v1
.end method
