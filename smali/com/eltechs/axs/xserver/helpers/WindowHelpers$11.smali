.class final Lcom/eltechs/axs/xserver/helpers/WindowHelpers$11;
.super Ljava/lang/Object;
.source "WindowHelpers.java"

# interfaces
.implements Lcom/eltechs/axs/helpers/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getDirectMappedSubWindowByCoords(Lcom/eltechs/axs/xserver/Window;II)Lcom/eltechs/axs/xserver/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/eltechs/axs/helpers/Predicate<",
        "Lcom/eltechs/axs/xserver/Window;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 378
    iput p1, p0, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$11;->val$x:I

    iput p2, p0, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$11;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/eltechs/axs/xserver/Window;)Z
    .locals 2

    .line 382
    iget v0, p0, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$11;->val$x:I

    iget v1, p0, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$11;->val$y:I

    invoke-static {p1, v0, v1}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->convertRootCoordsToWindow(Lcom/eltechs/axs/xserver/Window;II)Lcom/eltechs/axs/geom/Point;

    move-result-object v0

    .line 383
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getWindowAttributes()Lcom/eltechs/axs/xserver/WindowAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/WindowAttributes;->isMapped()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getBoundingRectangle()Lcom/eltechs/axs/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/geom/Rectangle;->containsInnerPoint(Lcom/eltechs/axs/geom/Point;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 378
    check-cast p1, Lcom/eltechs/axs/xserver/Window;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$11;->apply(Lcom/eltechs/axs/xserver/Window;)Z

    move-result p1

    return p1
.end method
