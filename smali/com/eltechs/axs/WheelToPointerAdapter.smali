.class public Lcom/eltechs/axs/WheelToPointerAdapter;
.super Ljava/lang/Object;
.source "WheelToPointerAdapter.java"

# interfaces
.implements Lcom/eltechs/axs/WheelEventListener;


# instance fields
.field private final absolute:Z

.field private accumulatedAngle:D

.field private final isHorizontal:Z

.field private final pointerEvenReporter:Lcom/eltechs/axs/PointerEventReporter;

.field private pointerX:F

.field private pointerY:F

.field private final viewFacade:Lcom/eltechs/axs/xserver/ViewFacade;

.field private final wheelStep:D


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/PointerEventReporter;ZZ)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->accumulatedAngle:D

    .line 39
    iput-object p1, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->viewFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    .line 40
    iput-object p2, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->pointerEvenReporter:Lcom/eltechs/axs/PointerEventReporter;

    .line 41
    iput-boolean p3, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->isHorizontal:Z

    .line 42
    iput-boolean p4, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->absolute:Z

    if-eqz p4, :cond_0

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    .line 46
    iput-wide p3, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->wheelStep:D

    .line 47
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object p3

    iget p3, p3, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iput p3, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->pointerX:F

    .line 48
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object p1

    iget p1, p1, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->pointerY:F

    .line 50
    iget p1, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->pointerX:F

    iget p3, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->pointerY:F

    invoke-virtual {p2, p1, p3}, Lcom/eltechs/axs/PointerEventReporter;->pointerEntered(FF)V

    goto :goto_0

    :cond_0
    const-wide p1, 0x3faeb851eb851eb8L    # 0.06

    .line 53
    iput-wide p1, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->wheelStep:D

    :goto_0
    return-void
.end method


# virtual methods
.method public convertAngleToSteps(D)I
    .locals 6

    .line 78
    iget-wide v0, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->accumulatedAngle:D

    add-double/2addr v0, p1

    .line 79
    iget-wide p1, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->wheelStep:D

    div-double p1, v0, p1

    double-to-int p1, p1

    int-to-double v2, p1

    .line 80
    iget-wide v4, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->wheelStep:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->accumulatedAngle:D

    return p1
.end method

.method public fixCoordinates()V
    .locals 2

    .line 62
    iget v0, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->pointerX:F

    iget-object v1, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->viewFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v1

    iget v1, v1, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/ArithHelpers;->unsignedSaturate(FF)F

    move-result v0

    iput v0, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->pointerX:F

    .line 63
    iget v0, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->pointerY:F

    iget-object v1, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->viewFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v1

    iget v1, v1, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/ArithHelpers;->unsignedSaturate(FF)F

    move-result v0

    iput v0, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->pointerY:F

    return-void
.end method

.method public turnedAntiClockwise(D)V
    .locals 0

    neg-double p1, p1

    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/axs/WheelToPointerAdapter;->turnedClockwise(D)V

    return-void
.end method

.method public turnedClockwise(D)V
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->absolute:Z

    if-eqz v0, :cond_1

    .line 90
    iget-boolean v0, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->isHorizontal:Z

    if-eqz v0, :cond_0

    .line 92
    iget v0, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->pointerX:F

    invoke-virtual {p0, p1, p2}, Lcom/eltechs/axs/WheelToPointerAdapter;->convertAngleToSteps(D)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->pointerX:F

    goto :goto_0

    .line 95
    :cond_0
    iget v0, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->pointerY:F

    invoke-virtual {p0, p1, p2}, Lcom/eltechs/axs/WheelToPointerAdapter;->convertAngleToSteps(D)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->pointerY:F

    .line 97
    :goto_0
    invoke-virtual {p0}, Lcom/eltechs/axs/WheelToPointerAdapter;->fixCoordinates()V

    .line 98
    iget-object p1, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->pointerEvenReporter:Lcom/eltechs/axs/PointerEventReporter;

    iget p2, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->pointerX:F

    iget v0, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->pointerY:F

    invoke-virtual {p1, p2, v0}, Lcom/eltechs/axs/PointerEventReporter;->pointerMove(FF)V

    goto :goto_2

    .line 102
    :cond_1
    iget-boolean v0, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->isHorizontal:Z

    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/axs/WheelToPointerAdapter;->convertAngleToSteps(D)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->pointerX:F

    goto :goto_1

    .line 107
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/axs/WheelToPointerAdapter;->convertAngleToSteps(D)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->pointerY:F

    .line 109
    :goto_1
    iget-object p1, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->pointerEvenReporter:Lcom/eltechs/axs/PointerEventReporter;

    iget p2, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->pointerX:F

    iget v0, p0, Lcom/eltechs/axs/WheelToPointerAdapter;->pointerY:F

    invoke-virtual {p1, p2, v0}, Lcom/eltechs/axs/PointerEventReporter;->pointerMoveDelta(FF)V

    :goto_2
    return-void
.end method
