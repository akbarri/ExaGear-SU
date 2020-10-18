.class public Lcom/eltechs/axs/xserver/impl/drawables/Visual;
.super Ljava/lang/Object;
.source "Visual.java"


# instance fields
.field private final bitsPerRgbValue:I

.field private final blueMask:I

.field private final depth:I

.field private displayable:Z

.field private final greenMask:I

.field private final id:I

.field private final redMask:I


# direct methods
.method private constructor <init>(IZIIIII)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->id:I

    .line 42
    iput-boolean p2, p0, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->displayable:Z

    .line 44
    iput p3, p0, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->depth:I

    .line 45
    iput p4, p0, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->bitsPerRgbValue:I

    .line 47
    iput p5, p0, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->redMask:I

    .line 48
    iput p6, p0, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->greenMask:I

    .line 49
    iput p7, p0, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->blueMask:I

    return-void
.end method

.method public static makeDisplayableVisual(IIIIII)Lcom/eltechs/axs/xserver/impl/drawables/Visual;
    .locals 9

    .line 68
    new-instance v8, Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    const/4 v2, 0x1

    move-object v0, v8

    move v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;-><init>(IZIIIII)V

    return-object v8
.end method

.method public static makeNonDisplayableVisual(II)Lcom/eltechs/axs/xserver/impl/drawables/Visual;
    .locals 9

    .line 80
    new-instance v8, Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move v1, p0

    move v3, p1

    move v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;-><init>(IZIIIII)V

    return-object v8
.end method


# virtual methods
.method public getBitsPerRgbValue()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->bitsPerRgbValue:I

    return v0
.end method

.method public getBlueMask()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->blueMask:I

    return v0
.end method

.method public getDepth()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->depth:I

    return v0
.end method

.method public getGreenMask()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->greenMask:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->id:I

    return v0
.end method

.method public getRedMask()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->redMask:I

    return v0
.end method

.method public getVisualClass()Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;
    .locals 1

    .line 106
    sget-object v0, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;->TRUE_COLOR:Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

    return-object v0
.end method

.method public isDisplayable()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->displayable:Z

    return v0
.end method
