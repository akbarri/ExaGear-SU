.class public Lcom/eltechs/axs/StickyKeyPress;
.super Ljava/lang/Object;
.source "StickyKeyPress.java"


# instance fields
.field private final facade:Lcom/eltechs/axs/xserver/ViewFacade;

.field private final intervalMs:I

.field private final keyCode:B

.field private timer:Lcom/eltechs/axs/helpers/InfiniteTimer;


# direct methods
.method public constructor <init>(IBLcom/eltechs/axs/xserver/ViewFacade;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/eltechs/axs/StickyKeyPress;->intervalMs:I

    .line 24
    iput-byte p2, p0, Lcom/eltechs/axs/StickyKeyPress;->keyCode:B

    .line 25
    iput-object p3, p0, Lcom/eltechs/axs/StickyKeyPress;->facade:Lcom/eltechs/axs/xserver/ViewFacade;

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/StickyKeyPress;)B
    .locals 0

    .line 13
    iget-byte p0, p0, Lcom/eltechs/axs/StickyKeyPress;->keyCode:B

    return p0
.end method

.method static synthetic access$100(Lcom/eltechs/axs/StickyKeyPress;)Lcom/eltechs/axs/xserver/ViewFacade;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/eltechs/axs/StickyKeyPress;->facade:Lcom/eltechs/axs/xserver/ViewFacade;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/eltechs/axs/StickyKeyPress;->timer:Lcom/eltechs/axs/helpers/InfiniteTimer;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/eltechs/axs/StickyKeyPress;->timer:Lcom/eltechs/axs/helpers/InfiniteTimer;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/InfiniteTimer;->cancel()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/eltechs/axs/StickyKeyPress;->timer:Lcom/eltechs/axs/helpers/InfiniteTimer;

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/eltechs/axs/StickyKeyPress;->timer:Lcom/eltechs/axs/helpers/InfiniteTimer;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/eltechs/axs/StickyKeyPress;->cancel()V

    .line 35
    :cond_0
    new-instance v0, Lcom/eltechs/axs/StickyKeyPress$1;

    iget v1, p0, Lcom/eltechs/axs/StickyKeyPress;->intervalMs:I

    int-to-long v1, v1

    invoke-direct {v0, p0, v1, v2}, Lcom/eltechs/axs/StickyKeyPress$1;-><init>(Lcom/eltechs/axs/StickyKeyPress;J)V

    iput-object v0, p0, Lcom/eltechs/axs/StickyKeyPress;->timer:Lcom/eltechs/axs/helpers/InfiniteTimer;

    .line 43
    iget-object v0, p0, Lcom/eltechs/axs/StickyKeyPress;->timer:Lcom/eltechs/axs/helpers/InfiniteTimer;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/InfiniteTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
