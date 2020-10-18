.class public Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;
.super Ljava/lang/Object;
.source "GraphicsContextImpl.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/GraphicsContext;


# instance fields
.field private background:I

.field private foreground:I

.field private function:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

.field private final id:I

.field private lineWidth:I

.field private planeMask:I

.field private final referenceDrawable:Lcom/eltechs/axs/xserver/Drawable;

.field private subwindowMode:Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;


# direct methods
.method public constructor <init>(ILcom/eltechs/axs/xserver/Drawable;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;->id:I

    .line 41
    iput-object p2, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;->referenceDrawable:Lcom/eltechs/axs/xserver/Drawable;

    .line 48
    sget-object p1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->COPY:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;->function:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    const/4 p1, -0x1

    .line 49
    iput p1, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;->planeMask:I

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;->foreground:I

    const/4 p1, 0x1

    .line 51
    iput p1, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;->background:I

    .line 53
    sget-object p2, Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;->CLIP_BY_CHILDREN:Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;

    iput-object p2, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;->subwindowMode:Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;

    .line 54
    iput p1, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;->lineWidth:I

    return-void
.end method


# virtual methods
.method public getBackground()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;->background:I

    return v0
.end method

.method public getForeground()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;->foreground:I

    return v0
.end method

.method public getFunction()Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;->function:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;->id:I

    return v0
.end method

.method public getLineWidth()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;->lineWidth:I

    return v0
.end method

.method public getPlaneMask()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;->planeMask:I

    return v0
.end method

.method public getReferenceDrawable()Lcom/eltechs/axs/xserver/Drawable;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;->referenceDrawable:Lcom/eltechs/axs/xserver/Drawable;

    return-object v0
.end method

.method public getSubwindowMode()Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;->subwindowMode:Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;

    return-object v0
.end method

.method public setBackground(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;->background:I

    return-void
.end method

.method public setForeground(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;->foreground:I

    return-void
.end method

.method public setFunction(Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;->function:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    return-void
.end method

.method public setLineWidth(I)V
    .locals 0

    .line 137
    iput p1, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;->lineWidth:I

    return-void
.end method

.method public setPlaneMask(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const-string v0, "GC::PlaneMask must be all ones. Other values are not supported yet."

    .line 90
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet(Ljava/lang/String;)V

    .line 93
    :cond_0
    iput p1, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;->planeMask:I

    return-void
.end method

.method public setSubwindowMode(Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;->subwindowMode:Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;

    return-void
.end method
