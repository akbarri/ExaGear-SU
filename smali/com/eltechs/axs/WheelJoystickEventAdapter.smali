.class public Lcom/eltechs/axs/WheelJoystickEventAdapter;
.super Ljava/lang/Object;
.source "WheelJoystickEventAdapter.java"

# interfaces
.implements Lcom/eltechs/axs/TouchEventAdapter;


# instance fields
.field private final coordX:F

.field private final coordY:F

.field private finger:Lcom/eltechs/axs/Finger;

.field private prevX:F

.field private prevY:F

.field private final radiusDelta:F

.field private final viewFacade:Lcom/eltechs/axs/xserver/ViewFacade;

.field private final wheelEventListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/WheelEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final wheelExternalRadius:F

.field private final wheelInternalRadius:F


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/ViewFacade;FFFFF)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->viewFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    .line 55
    iput p2, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->coordX:F

    .line 56
    iput p3, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->coordY:F

    .line 57
    iput p4, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->wheelInternalRadius:F

    .line 58
    iput p5, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->wheelExternalRadius:F

    .line 59
    iput p6, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->radiusDelta:F

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->wheelEventListeners:Ljava/util/Collection;

    return-void
.end method

.method private isFingerOnTheWheel(Lcom/eltechs/axs/Finger;)Z
    .locals 4

    .line 94
    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v0

    iget v1, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->coordX:F

    sub-float/2addr v0, v1

    .line 95
    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getY()F

    move-result p1

    iget v1, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->coordY:F

    sub-float/2addr p1, v1

    mul-float/2addr v0, v0

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    float-to-double v0, v0

    .line 96
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 98
    iget p1, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->wheelInternalRadius:F

    iget v2, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->radiusDelta:F

    sub-float/2addr p1, v2

    float-to-double v2, p1

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    iget p1, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->wheelExternalRadius:F

    iget v2, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->radiusDelta:F

    add-float/2addr p1, v2

    float-to-double v2, p1

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private rotateWheel(Lcom/eltechs/axs/Finger;)V
    .locals 6

    .line 110
    invoke-direct {p0, p1}, Lcom/eltechs/axs/WheelJoystickEventAdapter;->isFingerOnTheWheel(Lcom/eltechs/axs/Finger;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->finger:Lcom/eltechs/axs/Finger;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 115
    iput-object p1, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->finger:Lcom/eltechs/axs/Finger;

    :cond_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->finger:Lcom/eltechs/axs/Finger;

    if-nez v0, :cond_2

    .line 123
    iput-object p1, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->finger:Lcom/eltechs/axs/Finger;

    .line 124
    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v0

    iput v0, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->prevX:F

    .line 125
    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getY()F

    move-result p1

    iput p1, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->prevY:F

    return-void

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->finger:Lcom/eltechs/axs/Finger;

    if-eq v0, p1, :cond_3

    return-void

    .line 140
    :cond_3
    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v0

    iget v1, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->coordX:F

    sub-float/2addr v0, v1

    .line 141
    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v1

    iget v2, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->coordY:F

    sub-float/2addr v1, v2

    .line 142
    iget v2, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->prevX:F

    iget v3, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->coordX:F

    sub-float/2addr v2, v3

    .line 143
    iget v3, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->prevY:F

    iget v4, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->coordY:F

    sub-float/2addr v3, v4

    mul-float v4, v1, v2

    mul-float v5, v0, v3

    sub-float/2addr v4, v5

    float-to-double v4, v4

    mul-float/2addr v0, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 144
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 145
    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v2

    iput v2, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->prevX:F

    .line 146
    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getY()F

    move-result p1

    iput p1, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->prevY:F

    .line 148
    iget-object p1, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->wheelEventListeners:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eltechs/axs/WheelEventListener;

    .line 150
    invoke-interface {v2, v0, v1}, Lcom/eltechs/axs/WheelEventListener;->turnedAntiClockwise(D)V

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public varargs addListener([Lcom/eltechs/axs/WheelEventListener;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->wheelEventListeners:Ljava/util/Collection;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public notifyMoved(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    .line 199
    invoke-direct {p0, p1}, Lcom/eltechs/axs/WheelJoystickEventAdapter;->rotateWheel(Lcom/eltechs/axs/Finger;)V

    return-void
.end method

.method public notifyMovedIn(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    .line 163
    invoke-direct {p0, p1}, Lcom/eltechs/axs/WheelJoystickEventAdapter;->rotateWheel(Lcom/eltechs/axs/Finger;)V

    return-void
.end method

.method public notifyMovedOut(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    .line 184
    iget-object p2, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->finger:Lcom/eltechs/axs/Finger;

    if-eq p2, p1, :cond_0

    return-void

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->finger:Lcom/eltechs/axs/Finger;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 192
    iput-object p1, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->finger:Lcom/eltechs/axs/Finger;

    :cond_1
    return-void
.end method

.method public notifyReleased(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    .line 169
    iget-object p2, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->finger:Lcom/eltechs/axs/Finger;

    if-eq p2, p1, :cond_0

    return-void

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->finger:Lcom/eltechs/axs/Finger;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 177
    iput-object p1, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->finger:Lcom/eltechs/axs/Finger;

    :cond_1
    return-void
.end method

.method public notifyTouched(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    .line 157
    invoke-direct {p0, p1}, Lcom/eltechs/axs/WheelJoystickEventAdapter;->rotateWheel(Lcom/eltechs/axs/Finger;)V

    return-void
.end method

.method public varargs removeLister([Lcom/eltechs/axs/WheelEventListener;)V
    .locals 4

    const/4 v0, 0x0

    .line 80
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 82
    iget-object v3, p0, Lcom/eltechs/axs/WheelJoystickEventAdapter;->wheelEventListeners:Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
