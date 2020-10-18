.class public Lcom/eltechs/axs/PointerMoveToKeyAdapter;
.super Ljava/lang/Object;
.source "PointerMoveToKeyAdapter.java"

# interfaces
.implements Lcom/eltechs/axs/PointerEventListener;


# static fields
.field private static final MOVE_ACC:I = 0x10

.field private static final MOVE_DOWN:I = 0x4

.field private static final MOVE_LEFT:I = 0x2

.field private static final MOVE_NONE:I = 0x0

.field private static final MOVE_RIGHT:I = 0x1

.field private static final MOVE_UP:I = 0x8


# instance fields
.field private final accelerateDelta:F

.field private activeKeyCode:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/KeyCodesX;",
            ">;"
        }
    .end annotation
.end field

.field private finger:Lcom/eltechs/axs/Finger;

.field private final keyAccelerate:Lcom/eltechs/axs/KeyCodesX;

.field private final keyEventReporter:Lcom/eltechs/axs/KeyEventReporter;

.field private final keyMoveDown:[Lcom/eltechs/axs/KeyCodesX;

.field private final keyMoveLeft:[Lcom/eltechs/axs/KeyCodesX;

.field private final keyMoveRight:[Lcom/eltechs/axs/KeyCodesX;

.field private final keyMoveUp:[Lcom/eltechs/axs/KeyCodesX;

.field private final likeJoystick:Z

.field private final minimalCoordinateDelta:F

.field private final minimalDelta:F

.field private prevMovementMask:I


# direct methods
.method public constructor <init>(FF[Lcom/eltechs/axs/KeyCodesX;[Lcom/eltechs/axs/KeyCodesX;[Lcom/eltechs/axs/KeyCodesX;[Lcom/eltechs/axs/KeyCodesX;Lcom/eltechs/axs/KeyCodesX;ZLcom/eltechs/axs/KeyEventReporter;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->activeKeyCode:Ljava/util/Collection;

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->prevMovementMask:I

    if-nez p3, :cond_0

    .line 74
    new-array p3, v0, [Lcom/eltechs/axs/KeyCodesX;

    :cond_0
    iput-object p3, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->keyMoveUp:[Lcom/eltechs/axs/KeyCodesX;

    if-nez p4, :cond_1

    .line 75
    new-array p4, v0, [Lcom/eltechs/axs/KeyCodesX;

    :cond_1
    iput-object p4, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->keyMoveDown:[Lcom/eltechs/axs/KeyCodesX;

    if-nez p5, :cond_2

    .line 76
    new-array p5, v0, [Lcom/eltechs/axs/KeyCodesX;

    :cond_2
    iput-object p5, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->keyMoveLeft:[Lcom/eltechs/axs/KeyCodesX;

    if-nez p6, :cond_3

    .line 77
    new-array p6, v0, [Lcom/eltechs/axs/KeyCodesX;

    :cond_3
    iput-object p6, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->keyMoveRight:[Lcom/eltechs/axs/KeyCodesX;

    .line 78
    iput-object p7, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->keyAccelerate:Lcom/eltechs/axs/KeyCodesX;

    .line 79
    iput p1, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->minimalDelta:F

    .line 80
    iput p2, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->accelerateDelta:F

    .line 81
    iput-boolean p8, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->likeJoystick:Z

    .line 82
    iput-object p9, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->keyEventReporter:Lcom/eltechs/axs/KeyEventReporter;

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 83
    iput p1, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->minimalCoordinateDelta:F

    return-void
.end method

.method private reportKeysPressed()V
    .locals 5

    .line 229
    iget-object v0, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->activeKeyCode:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/KeyCodesX;

    .line 231
    iget-object v2, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->keyEventReporter:Lcom/eltechs/axs/KeyEventReporter;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/eltechs/axs/KeyCodesX;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/eltechs/axs/KeyEventReporter;->reportKeysPress([Lcom/eltechs/axs/KeyCodesX;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private reportKeysReleased()V
    .locals 5

    .line 212
    iget v0, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->prevMovementMask:I

    if-nez v0, :cond_0

    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->activeKeyCode:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/KeyCodesX;

    .line 219
    iget-object v3, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->keyEventReporter:Lcom/eltechs/axs/KeyEventReporter;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/eltechs/axs/KeyCodesX;

    aput-object v1, v4, v2

    invoke-virtual {v3, v4}, Lcom/eltechs/axs/KeyEventReporter;->reportKeysRelease([Lcom/eltechs/axs/KeyCodesX;)V

    goto :goto_0

    .line 221
    :cond_1
    iput v2, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->prevMovementMask:I

    return-void
.end method

.method private reportMoveDelta(FF)V
    .locals 5

    .line 141
    iget v0, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->minimalCoordinateDelta:F

    .line 142
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    .line 144
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 146
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    .line 148
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :cond_1
    const/4 v1, 0x0

    .line 154
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->accelerateDelta:F

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_2

    .line 158
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->accelerateDelta:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->keyAccelerate:Lcom/eltechs/axs/KeyCodesX;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x10

    .line 165
    :cond_3
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    cmpl-float v3, v3, v0

    const/4 v4, 0x0

    if-ltz v3, :cond_5

    cmpg-float v3, p1, v4

    if-gez v3, :cond_4

    .line 169
    iget-object p1, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->keyMoveRight:[Lcom/eltechs/axs/KeyCodesX;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    cmpl-float p1, p1, v4

    if-lez p1, :cond_5

    .line 173
    iget-object p1, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->keyMoveLeft:[Lcom/eltechs/axs/KeyCodesX;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    or-int/lit8 v1, v1, 0x2

    .line 179
    :cond_5
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_7

    cmpg-float p1, p2, v4

    if-gez p1, :cond_6

    .line 183
    iget-object p1, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->keyMoveDown:[Lcom/eltechs/axs/KeyCodesX;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    or-int/lit8 v1, v1, 0x4

    goto :goto_1

    :cond_6
    cmpl-float p1, p2, v4

    if-lez p1, :cond_7

    .line 187
    iget-object p1, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->keyMoveUp:[Lcom/eltechs/axs/KeyCodesX;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    or-int/lit8 v1, v1, 0x8

    .line 192
    :cond_7
    :goto_1
    iget p1, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->prevMovementMask:I

    if-eq p1, v1, :cond_8

    .line 194
    invoke-direct {p0}, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->reportKeysReleased()V

    .line 196
    iput-object v2, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->activeKeyCode:Ljava/util/Collection;

    .line 197
    iput v1, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->prevMovementMask:I

    if-eqz v1, :cond_8

    .line 201
    invoke-direct {p0}, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->reportKeysPressed()V

    :cond_8
    return-void
.end method


# virtual methods
.method public pointerEntered(FF)V
    .locals 1

    .line 89
    new-instance v0, Lcom/eltechs/axs/Finger;

    invoke-direct {v0, p1, p2}, Lcom/eltechs/axs/Finger;-><init>(FF)V

    iput-object v0, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->finger:Lcom/eltechs/axs/Finger;

    return-void
.end method

.method public pointerExited(FF)V
    .locals 0

    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->finger:Lcom/eltechs/axs/Finger;

    .line 96
    invoke-direct {p0}, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->reportKeysReleased()V

    return-void
.end method

.method public pointerMove(FF)V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->finger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->finger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v1}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v1

    sub-float/2addr v0, p1

    sub-float/2addr v1, p2

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 107
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->minimalDelta:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 110
    iget-boolean p1, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->likeJoystick:Z

    if-eqz p1, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->reportKeysReleased()V

    :cond_0
    return-void

    .line 118
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->reportMoveDelta(FF)V

    .line 120
    iget-boolean v0, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->likeJoystick:Z

    if-nez v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/eltechs/axs/PointerMoveToKeyAdapter;->finger:Lcom/eltechs/axs/Finger;

    invoke-virtual {v0, p1, p2}, Lcom/eltechs/axs/Finger;->update(FF)V

    :cond_2
    return-void
.end method
