.class public Lcom/eltechs/axs/xserver/events/Expose;
.super Lcom/eltechs/axs/xserver/events/Event;
.source "Expose.java"


# instance fields
.field private final height:I

.field private final width:I

.field private final window:Lcom/eltechs/axs/xserver/Window;

.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/Window;)V
    .locals 1

    const/16 v0, 0xc

    .line 21
    invoke-direct {p0, v0}, Lcom/eltechs/axs/xserver/events/Event;-><init>(I)V

    .line 23
    iput-object p1, p0, Lcom/eltechs/axs/xserver/events/Expose;->window:Lcom/eltechs/axs/xserver/Window;

    .line 25
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getBoundingRectangle()Lcom/eltechs/axs/geom/Rectangle;

    move-result-object p1

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/eltechs/axs/xserver/events/Expose;->y:I

    iput v0, p0, Lcom/eltechs/axs/xserver/events/Expose;->x:I

    .line 28
    iget v0, p1, Lcom/eltechs/axs/geom/Rectangle;->width:I

    iput v0, p0, Lcom/eltechs/axs/xserver/events/Expose;->width:I

    .line 29
    iget p1, p1, Lcom/eltechs/axs/geom/Rectangle;->height:I

    iput p1, p0, Lcom/eltechs/axs/xserver/events/Expose;->height:I

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/xserver/Window;IIII)V
    .locals 1

    const/16 v0, 0xc

    .line 38
    invoke-direct {p0, v0}, Lcom/eltechs/axs/xserver/events/Event;-><init>(I)V

    .line 40
    iput-object p1, p0, Lcom/eltechs/axs/xserver/events/Expose;->window:Lcom/eltechs/axs/xserver/Window;

    .line 42
    iput p2, p0, Lcom/eltechs/axs/xserver/events/Expose;->x:I

    .line 43
    iput p3, p0, Lcom/eltechs/axs/xserver/events/Expose;->y:I

    .line 45
    iput p4, p0, Lcom/eltechs/axs/xserver/events/Expose;->width:I

    .line 46
    iput p5, p0, Lcom/eltechs/axs/xserver/events/Expose;->height:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/eltechs/axs/xserver/events/Expose;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/eltechs/axs/xserver/events/Expose;->width:I

    return v0
.end method

.method public getWindow()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/Expose;->window:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public getX()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/eltechs/axs/xserver/events/Expose;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/eltechs/axs/xserver/events/Expose;->y:I

    return v0
.end method
