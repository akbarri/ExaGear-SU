.class Lcom/eltechs/axs/xserver/impl/WindowImpl$2;
.super Ljava/lang/Object;
.source "WindowImpl.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/Drawable$ModificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/xserver/impl/WindowImpl;->installFrontBufferModificationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/xserver/impl/WindowImpl;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/xserver/impl/WindowImpl;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl$2;->this$0:Lcom/eltechs/axs/xserver/impl/WindowImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(IIII)V
    .locals 7

    .line 236
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl$2;->this$0:Lcom/eltechs/axs/xserver/impl/WindowImpl;

    invoke-static {v0}, Lcom/eltechs/axs/xserver/impl/WindowImpl;->access$100(Lcom/eltechs/axs/xserver/impl/WindowImpl;)Lcom/eltechs/axs/xserver/WindowContentModificationListenersList;

    move-result-object v1

    iget-object v2, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl$2;->this$0:Lcom/eltechs/axs/xserver/impl/WindowImpl;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/eltechs/axs/xserver/WindowContentModificationListenersList;->sendWindowContentChanged(Lcom/eltechs/axs/xserver/Window;IIII)V

    return-void
.end method
