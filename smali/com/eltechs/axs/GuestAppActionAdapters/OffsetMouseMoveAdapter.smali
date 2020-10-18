.class public Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;
.super Ljava/lang/Object;
.source "OffsetMouseMoveAdapter.java"

# interfaces
.implements Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;


# instance fields
.field private final moveAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

.field private final offsetX:F

.field private final offsetY:F


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;FF)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;->moveAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

    .line 22
    iput p2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;->offsetX:F

    .line 23
    iput p3, p0, Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;->offsetY:F

    return-void
.end method


# virtual methods
.method public moveTo(FF)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;->moveAdapter:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

    iget v1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;->offsetX:F

    add-float/2addr p1, v1

    iget v1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;->offsetY:F

    add-float/2addr p2, v1

    invoke-interface {v0, p1, p2}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;->moveTo(FF)V

    return-void
.end method

.method public prepareMoving(FF)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/axs/GuestAppActionAdapters/OffsetMouseMoveAdapter;->moveTo(FF)V

    return-void
.end method
