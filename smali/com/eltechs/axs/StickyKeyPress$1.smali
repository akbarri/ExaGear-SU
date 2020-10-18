.class Lcom/eltechs/axs/StickyKeyPress$1;
.super Lcom/eltechs/axs/helpers/InfiniteTimer;
.source "StickyKeyPress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/StickyKeyPress;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/StickyKeyPress;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/StickyKeyPress;J)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/eltechs/axs/StickyKeyPress$1;->this$0:Lcom/eltechs/axs/StickyKeyPress;

    invoke-direct {p0, p2, p3}, Lcom/eltechs/axs/helpers/InfiniteTimer;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onTick(J)V
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/eltechs/axs/StickyKeyPress$1;->this$0:Lcom/eltechs/axs/StickyKeyPress;

    invoke-static {p1}, Lcom/eltechs/axs/StickyKeyPress;->access$100(Lcom/eltechs/axs/StickyKeyPress;)Lcom/eltechs/axs/xserver/ViewFacade;

    move-result-object p1

    iget-object p2, p0, Lcom/eltechs/axs/StickyKeyPress$1;->this$0:Lcom/eltechs/axs/StickyKeyPress;

    invoke-static {p2}, Lcom/eltechs/axs/StickyKeyPress;->access$000(Lcom/eltechs/axs/StickyKeyPress;)B

    move-result p2

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/ViewFacade;->injectKeyType(B)V

    return-void
.end method
