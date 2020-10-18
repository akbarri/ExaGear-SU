.class public abstract Lcom/eltechs/axs/xserver/helpers/WindowHelpers;
.super Ljava/lang/Object;
.source "WindowHelpers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculatePointWindow(Lcom/eltechs/axs/xserver/XServer;)Lcom/eltechs/axs/xserver/Window;
    .locals 2

    .line 437
    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/Pointer;->getX()I

    move-result v0

    .line 438
    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/Pointer;->getY()I

    move-result v1

    .line 439
    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/eltechs/axs/xserver/WindowsManager;->getRootWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object p0

    .line 441
    invoke-static {p0, v0, v1}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getLeafMappedSubWindowByCoords(Lcom/eltechs/axs/xserver/Window;II)Lcom/eltechs/axs/xserver/Window;

    move-result-object p0

    return-object p0
.end method

.method public static convertRootCoordsToWindow(Lcom/eltechs/axs/xserver/Window;II)Lcom/eltechs/axs/geom/Point;
    .locals 1

    :goto_0
    if-eqz p0, :cond_0

    .line 402
    invoke-interface {p0}, Lcom/eltechs/axs/xserver/Window;->getBoundingRectangle()Lcom/eltechs/axs/geom/Rectangle;

    move-result-object v0

    iget v0, v0, Lcom/eltechs/axs/geom/Rectangle;->x:I

    sub-int/2addr p1, v0

    .line 403
    invoke-interface {p0}, Lcom/eltechs/axs/xserver/Window;->getBoundingRectangle()Lcom/eltechs/axs/geom/Rectangle;

    move-result-object v0

    iget v0, v0, Lcom/eltechs/axs/geom/Rectangle;->y:I

    sub-int/2addr p2, v0

    .line 404
    invoke-interface {p0}, Lcom/eltechs/axs/xserver/Window;->getParent()Lcom/eltechs/axs/xserver/Window;

    move-result-object p0

    goto :goto_0

    .line 406
    :cond_0
    new-instance p0, Lcom/eltechs/axs/geom/Point;

    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/geom/Point;-><init>(II)V

    return-object p0
.end method

.method public static convertWindowCoordsToRoot(Lcom/eltechs/axs/xserver/Window;II)Lcom/eltechs/axs/geom/Point;
    .locals 1

    :goto_0
    if-eqz p0, :cond_0

    .line 422
    invoke-interface {p0}, Lcom/eltechs/axs/xserver/Window;->getBoundingRectangle()Lcom/eltechs/axs/geom/Rectangle;

    move-result-object v0

    iget v0, v0, Lcom/eltechs/axs/geom/Rectangle;->x:I

    add-int/2addr p1, v0

    .line 423
    invoke-interface {p0}, Lcom/eltechs/axs/xserver/Window;->getBoundingRectangle()Lcom/eltechs/axs/geom/Rectangle;

    move-result-object v0

    iget v0, v0, Lcom/eltechs/axs/geom/Rectangle;->y:I

    add-int/2addr p2, v0

    .line 424
    invoke-interface {p0}, Lcom/eltechs/axs/xserver/Window;->getParent()Lcom/eltechs/axs/xserver/Window;

    move-result-object p0

    goto :goto_0

    .line 426
    :cond_0
    new-instance p0, Lcom/eltechs/axs/geom/Point;

    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/geom/Point;-><init>(II)V

    return-object p0
.end method

.method public static getAncestorWindowByCondition(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/helpers/Predicate;)Lcom/eltechs/axs/xserver/Window;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/Window;",
            "Lcom/eltechs/axs/helpers/Predicate<",
            "Lcom/eltechs/axs/xserver/Window;",
            ">;)",
            "Lcom/eltechs/axs/xserver/Window;"
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_1

    .line 138
    invoke-interface {p1, p0}, Lcom/eltechs/axs/helpers/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 143
    :cond_0
    invoke-interface {p0}, Lcom/eltechs/axs/xserver/Window;->getParent()Lcom/eltechs/axs/xserver/Window;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAncestorWindowByConditionWithBreak(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/helpers/Predicate;Lcom/eltechs/axs/helpers/Predicate;)Lcom/eltechs/axs/xserver/Window;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/Window;",
            "Lcom/eltechs/axs/helpers/Predicate<",
            "Lcom/eltechs/axs/xserver/Window;",
            ">;",
            "Lcom/eltechs/axs/helpers/Predicate<",
            "Lcom/eltechs/axs/xserver/Window;",
            ">;)",
            "Lcom/eltechs/axs/xserver/Window;"
        }
    .end annotation

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 167
    invoke-interface {p1, p0}, Lcom/eltechs/axs/helpers/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 172
    :cond_0
    invoke-interface {p2, p0}, Lcom/eltechs/axs/helpers/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 177
    :cond_1
    invoke-interface {p0}, Lcom/eltechs/axs/xserver/Window;->getParent()Lcom/eltechs/axs/xserver/Window;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getAncestorWithDeviceEventMask(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/impl/masks/Mask;)Lcom/eltechs/axs/xserver/Window;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/Window;",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/EventName;",
            ">;)",
            "Lcom/eltechs/axs/xserver/Window;"
        }
    .end annotation

    .line 283
    new-instance v0, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$6;

    invoke-direct {v0, p1}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$6;-><init>(Lcom/eltechs/axs/xserver/impl/masks/Mask;)V

    .line 291
    new-instance v1, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$7;

    invoke-direct {v1, p1}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$7;-><init>(Lcom/eltechs/axs/xserver/impl/masks/Mask;)V

    .line 299
    invoke-static {p0, v0, v1}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getAncestorWindowByConditionWithBreak(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/helpers/Predicate;Lcom/eltechs/axs/helpers/Predicate;)Lcom/eltechs/axs/xserver/Window;

    move-result-object p0

    return-object p0
.end method

.method public static getAncestorWithDeviceEventName(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/EventName;)Lcom/eltechs/axs/xserver/Window;
    .locals 2

    .line 254
    new-instance v0, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$4;

    invoke-direct {v0, p1}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$4;-><init>(Lcom/eltechs/axs/xserver/EventName;)V

    .line 262
    new-instance v1, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$5;

    invoke-direct {v1, p1}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$5;-><init>(Lcom/eltechs/axs/xserver/EventName;)V

    .line 270
    invoke-static {p0, v0, v1}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getAncestorWindowByConditionWithBreak(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/helpers/Predicate;Lcom/eltechs/axs/helpers/Predicate;)Lcom/eltechs/axs/xserver/Window;

    move-result-object p0

    return-object p0
.end method

.method public static getAncestorWithDeviceEventNameInSubtree(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/EventName;Lcom/eltechs/axs/xserver/Window;)Lcom/eltechs/axs/xserver/Window;
    .locals 2

    .line 315
    invoke-static {p0, p2}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->isAncestorOf(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)Z

    move-result v0

    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 316
    new-instance v0, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$8;

    invoke-direct {v0, p1}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$8;-><init>(Lcom/eltechs/axs/xserver/EventName;)V

    .line 324
    new-instance v1, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$9;

    invoke-direct {v1, p2, p1}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$9;-><init>(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/EventName;)V

    .line 333
    invoke-static {p0, v0, v1}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getAncestorWindowByConditionWithBreak(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/helpers/Predicate;Lcom/eltechs/axs/helpers/Predicate;)Lcom/eltechs/axs/xserver/Window;

    move-result-object p0

    return-object p0
.end method

.method public static getDirectChild(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)Lcom/eltechs/axs/xserver/Window;
    .locals 1

    if-eq p1, p0, :cond_1

    .line 193
    invoke-static {p0, p1}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->isAncestorOf(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    new-instance v0, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$1;

    invoke-direct {v0, p1}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$1;-><init>(Lcom/eltechs/axs/xserver/Window;)V

    invoke-static {p0, v0}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getAncestorWindowByCondition(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/helpers/Predicate;)Lcom/eltechs/axs/xserver/Window;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDirectMappedSubWindowByCoords(Lcom/eltechs/axs/xserver/Window;II)Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 378
    new-instance v0, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$11;

    invoke-direct {v0, p1, p2}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$11;-><init>(II)V

    invoke-static {p0, v0}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getDirectSubWindowByCondition(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/helpers/Predicate;)Lcom/eltechs/axs/xserver/Window;

    move-result-object p0

    return-object p0
.end method

.method public static getDirectSubWindowByCondition(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/helpers/Predicate;)Lcom/eltechs/axs/xserver/Window;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/Window;",
            "Lcom/eltechs/axs/helpers/Predicate<",
            "Lcom/eltechs/axs/xserver/Window;",
            ">;)",
            "Lcom/eltechs/axs/xserver/Window;"
        }
    .end annotation

    .line 114
    invoke-interface {p0}, Lcom/eltechs/axs/xserver/Window;->getChildrenTopToBottom()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/xserver/Window;

    .line 116
    invoke-interface {p1, v0}, Lcom/eltechs/axs/helpers/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLeafMappedSubWindowByCoords(Lcom/eltechs/axs/xserver/Window;II)Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 353
    new-instance v0, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$10;

    invoke-direct {v0, p1, p2}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$10;-><init>(II)V

    invoke-static {p0, v0}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getLeafSubWindowByCondition(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/helpers/Predicate;)Lcom/eltechs/axs/xserver/Window;

    move-result-object p0

    return-object p0
.end method

.method public static getLeafSubWindowByCondition(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/helpers/Predicate;)Lcom/eltechs/axs/xserver/Window;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/Window;",
            "Lcom/eltechs/axs/helpers/Predicate<",
            "Lcom/eltechs/axs/xserver/Window;",
            ">;)",
            "Lcom/eltechs/axs/xserver/Window;"
        }
    .end annotation

    .line 90
    invoke-interface {p1, p0}, Lcom/eltechs/axs/helpers/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 95
    :cond_0
    invoke-static {p0, p1}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getDirectSubWindowByCondition(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/helpers/Predicate;)Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    invoke-static {v0, p1}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getLeafSubWindowByCondition(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/helpers/Predicate;)Lcom/eltechs/axs/xserver/Window;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p0
.end method

.method public static getLeastCommonAncestor(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 216
    new-instance v0, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$2;

    invoke-direct {v0, p1}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$2;-><init>(Lcom/eltechs/axs/xserver/Window;)V

    invoke-static {p0, v0}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getAncestorWindowByCondition(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/helpers/Predicate;)Lcom/eltechs/axs/xserver/Window;

    move-result-object p0

    return-object p0
.end method

.method public static getRootWindowOf(Lcom/eltechs/axs/xserver/Window;)Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 66
    :goto_0
    invoke-interface {p0}, Lcom/eltechs/axs/xserver/Window;->getParent()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method public static getWindowMapState(Lcom/eltechs/axs/xserver/Window;)Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;
    .locals 1

    .line 40
    invoke-interface {p0}, Lcom/eltechs/axs/xserver/Window;->getWindowAttributes()Lcom/eltechs/axs/xserver/WindowAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/WindowAttributes;->isMapped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    sget-object p0, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;->UNMAPPED:Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;

    return-object p0

    .line 45
    :cond_0
    invoke-interface {p0}, Lcom/eltechs/axs/xserver/Window;->getParent()Lcom/eltechs/axs/xserver/Window;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 47
    invoke-interface {p0}, Lcom/eltechs/axs/xserver/Window;->getWindowAttributes()Lcom/eltechs/axs/xserver/WindowAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/WindowAttributes;->isMapped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    sget-object p0, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;->UNVIEWABLE:Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;

    return-object p0

    .line 53
    :cond_1
    sget-object p0, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;->VIEWABLE:Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;

    return-object p0
.end method

.method public static isAncestorOf(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)Z
    .locals 1

    .line 235
    new-instance v0, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$3;

    invoke-direct {v0, p1}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$3;-><init>(Lcom/eltechs/axs/xserver/Window;)V

    invoke-static {p0, v0}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getAncestorWindowByCondition(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/helpers/Predicate;)Lcom/eltechs/axs/xserver/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
