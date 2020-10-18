.class public Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;
.super Ljava/lang/Object;
.source "AsyncScrollAdapterWithPointer.java"

# interfaces
.implements Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapter;


# instance fields
.field private final facade:Lcom/eltechs/axs/xserver/ViewFacade;

.field private final rect:Lcom/eltechs/axs/geom/Rectangle;

.field private savedPosX:I

.field private savedPosY:I

.field private scrollingX:Z

.field private scrollingY:Z


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/geom/Rectangle;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;->facade:Lcom/eltechs/axs/xserver/ViewFacade;

    .line 28
    iput-object p2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;->rect:Lcom/eltechs/axs/geom/Rectangle;

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;->scrollingY:Z

    iput-boolean p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;->scrollingX:Z

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;->savedPosY:I

    iput p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;->savedPosX:I

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
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;->facade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/ViewFacade;->getPointerLocation()Lcom/eltechs/axs/geom/Point;

    move-result-object v0

    .line 44
    iget v1, v0, Lcom/eltechs/axs/geom/Point;->x:I

    iget v2, v0, Lcom/eltechs/axs/geom/Point;->y:I

    .line 46
    iget-boolean v3, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;->scrollingX:Z

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 48
    iget v3, v0, Lcom/eltechs/axs/geom/Point;->x:I

    iput v3, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;->savedPosX:I

    .line 49
    iput-boolean v4, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;->scrollingX:Z

    .line 52
    :cond_0
    sget-object v3, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer$1;->$SwitchMap$com$eltechs$axs$GuestAppActionAdapters$ScrollDirections$DirectionX:[I

    invoke-virtual {p1}, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;->ordinal()I

    move-result p1

    aget p1, v3, p1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 61
    :pswitch_0
    iget-boolean p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;->scrollingX:Z

    if-eqz p1, :cond_1

    .line 63
    iget p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;->savedPosX:I

    move v1, p1

    .line 65
    :cond_1
    iput-boolean v3, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;->scrollingX:Z

    goto :goto_0

    .line 58
    :pswitch_1
    iget-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;->rect:Lcom/eltechs/axs/geom/Rectangle;

    iget v1, p1, Lcom/eltechs/axs/geom/Rectangle;->width:I

    goto :goto_0

    :pswitch_2
    move v1, v3

    .line 69
    :goto_0
    iget-boolean p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;->scrollingY:Z

    if-nez p1, :cond_2

    .line 71
    iget p1, v0, Lcom/eltechs/axs/geom/Point;->y:I

    iput p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;->savedPosY:I

    .line 72
    iput-boolean v4, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;->scrollingY:Z

    .line 75
    :cond_2
    sget-object p1, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer$1;->$SwitchMap$com$eltechs$axs$GuestAppActionAdapters$ScrollDirections$DirectionY:[I

    invoke-virtual {p2}, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 84
    :pswitch_3
    iget-boolean p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;->scrollingY:Z

    if-eqz p1, :cond_3

    .line 86
    iget p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;->savedPosY:I

    move v2, p1

    .line 88
    :cond_3
    iput-boolean v3, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;->scrollingY:Z

    goto :goto_1

    .line 81
    :pswitch_4
    iget-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;->rect:Lcom/eltechs/axs/geom/Rectangle;

    iget v2, p1, Lcom/eltechs/axs/geom/Rectangle;->height:I

    goto :goto_1

    :pswitch_5
    move v2, v3

    .line 92
    :goto_1
    iget-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/AsyncScrollAdapterWithPointer;->facade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {p1, v1, v2}, Lcom/eltechs/axs/xserver/ViewFacade;->injectPointerMove(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
