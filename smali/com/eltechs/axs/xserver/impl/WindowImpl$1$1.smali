.class Lcom/eltechs/axs/xserver/impl/WindowImpl$1$1;
.super Ljava/lang/Object;
.source "WindowImpl.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/xserver/impl/WindowImpl$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/eltechs/axs/xserver/Window;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eltechs/axs/xserver/impl/WindowImpl$1;

.field final synthetic val$impl:Ljava/util/ListIterator;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/xserver/impl/WindowImpl$1;Ljava/util/ListIterator;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl$1$1;->this$1:Lcom/eltechs/axs/xserver/impl/WindowImpl$1;

    iput-object p2, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl$1$1;->val$impl:Ljava/util/ListIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl$1$1;->val$impl:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl$1$1;->val$impl:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/impl/WindowImpl$1$1;->next()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl$1$1;->val$impl:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    return-void
.end method
