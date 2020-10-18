.class public Lcom/eltechs/axs/TouchArea;
.super Ljava/lang/Object;
.source "TouchArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/TouchArea$FingerAction;,
        Lcom/eltechs/axs/TouchArea$FingerActionType;
    }
.end annotation


# instance fields
.field private final activeFingers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;"
        }
    .end annotation
.end field

.field private final adapter:Lcom/eltechs/axs/TouchEventAdapter;

.field private final bottomX:F

.field private final bottomY:F

.field private final immutableActiveFingers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;"
        }
    .end annotation
.end field

.field private final lastFingerAction:Lcom/eltechs/axs/TouchArea$FingerAction;

.field private final topX:F

.field private final topY:F


# direct methods
.method public constructor <init>(FFFFLcom/eltechs/axs/TouchEventAdapter;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/TouchArea;->activeFingers:Ljava/util/List;

    .line 25
    iget-object v0, p0, Lcom/eltechs/axs/TouchArea;->activeFingers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/TouchArea;->immutableActiveFingers:Ljava/util/List;

    .line 84
    iput p1, p0, Lcom/eltechs/axs/TouchArea;->topX:F

    .line 85
    iput p2, p0, Lcom/eltechs/axs/TouchArea;->topY:F

    .line 86
    iput p3, p0, Lcom/eltechs/axs/TouchArea;->bottomX:F

    .line 87
    iput p4, p0, Lcom/eltechs/axs/TouchArea;->bottomY:F

    .line 88
    iput-object p5, p0, Lcom/eltechs/axs/TouchArea;->adapter:Lcom/eltechs/axs/TouchEventAdapter;

    .line 89
    new-instance p1, Lcom/eltechs/axs/TouchArea$FingerAction;

    invoke-direct {p1, p0}, Lcom/eltechs/axs/TouchArea$FingerAction;-><init>(Lcom/eltechs/axs/TouchArea;)V

    iput-object p1, p0, Lcom/eltechs/axs/TouchArea;->lastFingerAction:Lcom/eltechs/axs/TouchArea$FingerAction;

    return-void
.end method

.method private addFinger(Lcom/eltechs/axs/Finger;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/eltechs/axs/TouchArea;->activeFingers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object p1, p0, Lcom/eltechs/axs/TouchArea;->activeFingers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/Finger;

    .line 115
    invoke-virtual {v0}, Lcom/eltechs/axs/Finger;->notifyFingersCountChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isInside(Lcom/eltechs/axs/Finger;)Z
    .locals 2

    .line 188
    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v0

    .line 189
    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getY()F

    move-result p1

    .line 190
    iget v1, p0, Lcom/eltechs/axs/TouchArea;->topX:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/eltechs/axs/TouchArea;->bottomX:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/eltechs/axs/TouchArea;->topY:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/eltechs/axs/TouchArea;->bottomY:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private removeFinger(Lcom/eltechs/axs/Finger;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/eltechs/axs/TouchArea;->activeFingers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/Finger;

    .line 100
    invoke-virtual {v1}, Lcom/eltechs/axs/Finger;->notifyFingersCountChanged()V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/TouchArea;->activeFingers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getFingers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/eltechs/axs/TouchArea;->immutableActiveFingers:Ljava/util/List;

    return-object v0
.end method

.method public getLastFingerAction()Lcom/eltechs/axs/TouchArea$FingerAction;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/eltechs/axs/TouchArea;->lastFingerAction:Lcom/eltechs/axs/TouchArea$FingerAction;

    return-object v0
.end method

.method public handleFingerDown(Lcom/eltechs/axs/Finger;)V
    .locals 2

    .line 126
    invoke-direct {p0, p1}, Lcom/eltechs/axs/TouchArea;->isInside(Lcom/eltechs/axs/Finger;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0, p1}, Lcom/eltechs/axs/TouchArea;->addFinger(Lcom/eltechs/axs/Finger;)V

    .line 129
    iget-object v0, p0, Lcom/eltechs/axs/TouchArea;->lastFingerAction:Lcom/eltechs/axs/TouchArea$FingerAction;

    sget-object v1, Lcom/eltechs/axs/TouchArea$FingerActionType;->TOUCH:Lcom/eltechs/axs/TouchArea$FingerActionType;

    invoke-virtual {v0, p1, v1}, Lcom/eltechs/axs/TouchArea$FingerAction;->set(Lcom/eltechs/axs/Finger;Lcom/eltechs/axs/TouchArea$FingerActionType;)V

    .line 130
    iget-object v0, p0, Lcom/eltechs/axs/TouchArea;->adapter:Lcom/eltechs/axs/TouchEventAdapter;

    iget-object v1, p0, Lcom/eltechs/axs/TouchArea;->immutableActiveFingers:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Lcom/eltechs/axs/TouchEventAdapter;->notifyTouched(Lcom/eltechs/axs/Finger;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public handleFingerMove(Lcom/eltechs/axs/Finger;)V
    .locals 2

    .line 156
    invoke-direct {p0, p1}, Lcom/eltechs/axs/TouchArea;->isInside(Lcom/eltechs/axs/Finger;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/eltechs/axs/TouchArea;->activeFingers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/eltechs/axs/TouchArea;->lastFingerAction:Lcom/eltechs/axs/TouchArea$FingerAction;

    sget-object v1, Lcom/eltechs/axs/TouchArea$FingerActionType;->MOVE:Lcom/eltechs/axs/TouchArea$FingerActionType;

    invoke-virtual {v0, p1, v1}, Lcom/eltechs/axs/TouchArea$FingerAction;->set(Lcom/eltechs/axs/Finger;Lcom/eltechs/axs/TouchArea$FingerActionType;)V

    .line 162
    iget-object v0, p0, Lcom/eltechs/axs/TouchArea;->adapter:Lcom/eltechs/axs/TouchEventAdapter;

    iget-object v1, p0, Lcom/eltechs/axs/TouchArea;->immutableActiveFingers:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Lcom/eltechs/axs/TouchEventAdapter;->notifyMoved(Lcom/eltechs/axs/Finger;Ljava/util/List;)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-direct {p0, p1}, Lcom/eltechs/axs/TouchArea;->addFinger(Lcom/eltechs/axs/Finger;)V

    .line 166
    iget-object v0, p0, Lcom/eltechs/axs/TouchArea;->lastFingerAction:Lcom/eltechs/axs/TouchArea$FingerAction;

    sget-object v1, Lcom/eltechs/axs/TouchArea$FingerActionType;->MOVE_IN:Lcom/eltechs/axs/TouchArea$FingerActionType;

    invoke-virtual {v0, p1, v1}, Lcom/eltechs/axs/TouchArea$FingerAction;->set(Lcom/eltechs/axs/Finger;Lcom/eltechs/axs/TouchArea$FingerActionType;)V

    .line 167
    iget-object v0, p0, Lcom/eltechs/axs/TouchArea;->adapter:Lcom/eltechs/axs/TouchEventAdapter;

    iget-object v1, p0, Lcom/eltechs/axs/TouchArea;->immutableActiveFingers:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Lcom/eltechs/axs/TouchEventAdapter;->notifyMovedIn(Lcom/eltechs/axs/Finger;Ljava/util/List;)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/eltechs/axs/TouchArea;->activeFingers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    invoke-direct {p0, p1}, Lcom/eltechs/axs/TouchArea;->removeFinger(Lcom/eltechs/axs/Finger;)V

    .line 174
    iget-object v0, p0, Lcom/eltechs/axs/TouchArea;->lastFingerAction:Lcom/eltechs/axs/TouchArea$FingerAction;

    sget-object v1, Lcom/eltechs/axs/TouchArea$FingerActionType;->MOVE_OUT:Lcom/eltechs/axs/TouchArea$FingerActionType;

    invoke-virtual {v0, p1, v1}, Lcom/eltechs/axs/TouchArea$FingerAction;->set(Lcom/eltechs/axs/Finger;Lcom/eltechs/axs/TouchArea$FingerActionType;)V

    .line 175
    iget-object v0, p0, Lcom/eltechs/axs/TouchArea;->adapter:Lcom/eltechs/axs/TouchEventAdapter;

    iget-object v1, p0, Lcom/eltechs/axs/TouchArea;->immutableActiveFingers:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Lcom/eltechs/axs/TouchEventAdapter;->notifyMovedOut(Lcom/eltechs/axs/Finger;Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public handleFingerUp(Lcom/eltechs/axs/Finger;)V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/eltechs/axs/TouchArea;->activeFingers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-direct {p0, p1}, Lcom/eltechs/axs/TouchArea;->removeFinger(Lcom/eltechs/axs/Finger;)V

    .line 144
    iget-object v0, p0, Lcom/eltechs/axs/TouchArea;->lastFingerAction:Lcom/eltechs/axs/TouchArea$FingerAction;

    sget-object v1, Lcom/eltechs/axs/TouchArea$FingerActionType;->RELEASE:Lcom/eltechs/axs/TouchArea$FingerActionType;

    invoke-virtual {v0, p1, v1}, Lcom/eltechs/axs/TouchArea$FingerAction;->set(Lcom/eltechs/axs/Finger;Lcom/eltechs/axs/TouchArea$FingerActionType;)V

    .line 145
    iget-object v0, p0, Lcom/eltechs/axs/TouchArea;->adapter:Lcom/eltechs/axs/TouchEventAdapter;

    iget-object v1, p0, Lcom/eltechs/axs/TouchArea;->immutableActiveFingers:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Lcom/eltechs/axs/TouchEventAdapter;->notifyReleased(Lcom/eltechs/axs/Finger;Ljava/util/List;)V

    :cond_0
    return-void
.end method
