.class public Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithKeys;
.super Ljava/lang/Object;
.source "AsyncScrollAdapterWithKeys.java"

# interfaces
.implements Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;


# instance fields
.field private final facade:Lcom/eltechs/axs/xserver/ViewFacade;

.field private final kcLeft:Lcom/eltechs/axs/KeyCodesX;

.field private final kcRight:Lcom/eltechs/axs/KeyCodesX;

.field private leftPressed:Z

.field private rightPressed:Z


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/KeyCodesX;Lcom/eltechs/axs/KeyCodesX;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithKeys;->facade:Lcom/eltechs/axs/xserver/ViewFacade;

    .line 25
    iput-object p2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithKeys;->kcLeft:Lcom/eltechs/axs/KeyCodesX;

    .line 26
    iput-object p3, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithKeys;->kcRight:Lcom/eltechs/axs/KeyCodesX;

    return-void
.end method

.method private pressLeft()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithKeys;->facade:Lcom/eltechs/axs/xserver/ViewFacade;

    iget-object v1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithKeys;->kcLeft:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/ViewFacade;->injectKeyPress(B)V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithKeys;->leftPressed:Z

    return-void
.end method

.method private pressRight()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithKeys;->facade:Lcom/eltechs/axs/xserver/ViewFacade;

    iget-object v1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithKeys;->kcRight:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/ViewFacade;->injectKeyPress(B)V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithKeys;->rightPressed:Z

    return-void
.end method

.method private releaseLeft()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithKeys;->facade:Lcom/eltechs/axs/xserver/ViewFacade;

    iget-object v1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithKeys;->kcLeft:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/ViewFacade;->injectKeyRelease(B)V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithKeys;->leftPressed:Z

    return-void
.end method

.method private releaseRight()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithKeys;->facade:Lcom/eltechs/axs/xserver/ViewFacade;

    iget-object v1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithKeys;->kcRight:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v1}, Lcom/eltechs/axs/KeyCodesX;->getValue()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/ViewFacade;->injectKeyRelease(B)V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithKeys;->rightPressed:Z

    return-void
.end method


# virtual methods
.method public notifyStart()V
    .locals 0

    return-void
.end method

.method public notifyStop()V
    .locals 0

    return-void
.end method

.method public setScrolling(Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;)V
    .locals 0

    .line 61
    sget-object p2, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithKeys$1;->$SwitchMap$com$eltechs$axs$GuestAppActionAdapters$ScrollDirections$DirectionX:[I

    invoke-virtual {p1}, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 78
    :pswitch_0
    iget-boolean p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithKeys;->leftPressed:Z

    if-eqz p1, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithKeys;->releaseLeft()V

    goto :goto_0

    .line 81
    :cond_0
    iget-boolean p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithKeys;->rightPressed:Z

    if-eqz p1, :cond_3

    .line 83
    invoke-direct {p0}, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithKeys;->releaseRight()V

    goto :goto_0

    .line 71
    :pswitch_1
    iget-boolean p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithKeys;->leftPressed:Z

    if-eqz p1, :cond_1

    .line 73
    invoke-direct {p0}, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithKeys;->releaseLeft()V

    .line 75
    :cond_1
    invoke-direct {p0}, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithKeys;->pressRight()V

    goto :goto_0

    .line 64
    :pswitch_2
    iget-boolean p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithKeys;->rightPressed:Z

    if-eqz p1, :cond_2

    .line 66
    invoke-direct {p0}, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithKeys;->releaseRight()V

    .line 68
    :cond_2
    invoke-direct {p0}, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithKeys;->pressLeft()V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
