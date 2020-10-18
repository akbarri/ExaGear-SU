.class public final Lcom/eltechs/axs/geom/Rectangle;
.super Ljava/lang/Object;
.source "Rectangle.java"


# instance fields
.field public final height:I

.field public final width:I

.field public final x:I

.field public final y:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/eltechs/axs/geom/Rectangle;->x:I

    .line 25
    iput p2, p0, Lcom/eltechs/axs/geom/Rectangle;->y:I

    .line 26
    iput p3, p0, Lcom/eltechs/axs/geom/Rectangle;->width:I

    .line 27
    iput p4, p0, Lcom/eltechs/axs/geom/Rectangle;->height:I

    return-void
.end method

.method public static getIntersection(Lcom/eltechs/axs/geom/Rectangle;Lcom/eltechs/axs/geom/Rectangle;)Lcom/eltechs/axs/geom/Rectangle;
    .locals 5

    .line 118
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/geom/Rectangle;->containsRectangle(Lcom/eltechs/axs/geom/Rectangle;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 122
    :cond_0
    invoke-virtual {p1, p0}, Lcom/eltechs/axs/geom/Rectangle;->containsRectangle(Lcom/eltechs/axs/geom/Rectangle;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 127
    :cond_1
    iget v0, p0, Lcom/eltechs/axs/geom/Rectangle;->x:I

    .line 128
    iget v1, p0, Lcom/eltechs/axs/geom/Rectangle;->y:I

    .line 129
    iget v2, p0, Lcom/eltechs/axs/geom/Rectangle;->width:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 130
    iget p0, p0, Lcom/eltechs/axs/geom/Rectangle;->height:I

    add-int/2addr p0, v1

    add-int/lit8 p0, p0, -0x1

    .line 132
    iget v3, p1, Lcom/eltechs/axs/geom/Rectangle;->x:I

    iget v4, p1, Lcom/eltechs/axs/geom/Rectangle;->width:I

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_7

    iget v3, p1, Lcom/eltechs/axs/geom/Rectangle;->y:I

    iget v4, p1, Lcom/eltechs/axs/geom/Rectangle;->height:I

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_7

    iget v3, p1, Lcom/eltechs/axs/geom/Rectangle;->x:I

    if-lt v2, v3, :cond_7

    iget v3, p1, Lcom/eltechs/axs/geom/Rectangle;->y:I

    if-ge p0, v3, :cond_2

    goto :goto_0

    .line 140
    :cond_2
    iget v3, p1, Lcom/eltechs/axs/geom/Rectangle;->x:I

    if-ge v0, v3, :cond_3

    .line 142
    iget v0, p1, Lcom/eltechs/axs/geom/Rectangle;->x:I

    .line 144
    :cond_3
    iget v3, p1, Lcom/eltechs/axs/geom/Rectangle;->y:I

    if-ge v1, v3, :cond_4

    .line 146
    iget v1, p1, Lcom/eltechs/axs/geom/Rectangle;->y:I

    .line 149
    :cond_4
    iget v3, p1, Lcom/eltechs/axs/geom/Rectangle;->width:I

    if-lt v2, v3, :cond_5

    .line 151
    iget v2, p1, Lcom/eltechs/axs/geom/Rectangle;->width:I

    add-int/lit8 v2, v2, -0x1

    .line 153
    :cond_5
    iget v3, p1, Lcom/eltechs/axs/geom/Rectangle;->height:I

    if-lt p0, v3, :cond_6

    .line 155
    iget p0, p1, Lcom/eltechs/axs/geom/Rectangle;->height:I

    add-int/lit8 p0, p0, -0x1

    .line 158
    :cond_6
    new-instance p1, Lcom/eltechs/axs/geom/Rectangle;

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x1

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/eltechs/axs/geom/Rectangle;-><init>(IIII)V

    return-object p1

    :cond_7
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public containsInnerPoint(II)Z
    .locals 1

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 65
    iget v0, p0, Lcom/eltechs/axs/geom/Rectangle;->width:I

    if-ge p1, v0, :cond_0

    iget p1, p0, Lcom/eltechs/axs/geom/Rectangle;->height:I

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsInnerPoint(Lcom/eltechs/axs/geom/Point;)Z
    .locals 1

    .line 79
    iget v0, p1, Lcom/eltechs/axs/geom/Point;->x:I

    iget p1, p1, Lcom/eltechs/axs/geom/Point;->y:I

    invoke-virtual {p0, v0, p1}, Lcom/eltechs/axs/geom/Rectangle;->containsInnerPoint(II)Z

    move-result p1

    return p1
.end method

.method public containsInnerRectangle(Lcom/eltechs/axs/geom/Rectangle;)Z
    .locals 3

    .line 103
    iget v0, p1, Lcom/eltechs/axs/geom/Rectangle;->x:I

    iget v1, p1, Lcom/eltechs/axs/geom/Rectangle;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/eltechs/axs/geom/Rectangle;->containsInnerPoint(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/eltechs/axs/geom/Rectangle;->x:I

    iget v2, p1, Lcom/eltechs/axs/geom/Rectangle;->width:I

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    iget v2, p1, Lcom/eltechs/axs/geom/Rectangle;->y:I

    iget p1, p1, Lcom/eltechs/axs/geom/Rectangle;->height:I

    add-int/2addr v2, p1

    sub-int/2addr v2, v1

    .line 104
    invoke-virtual {p0, v0, v2}, Lcom/eltechs/axs/geom/Rectangle;->containsInnerPoint(II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public containsPoint(II)Z
    .locals 2

    .line 39
    iget v0, p0, Lcom/eltechs/axs/geom/Rectangle;->x:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/eltechs/axs/geom/Rectangle;->y:I

    if-gt v0, p2, :cond_0

    iget v0, p0, Lcom/eltechs/axs/geom/Rectangle;->x:I

    iget v1, p0, Lcom/eltechs/axs/geom/Rectangle;->width:I

    add-int/2addr v0, v1

    if-le v0, p1, :cond_0

    iget p1, p0, Lcom/eltechs/axs/geom/Rectangle;->y:I

    iget v0, p0, Lcom/eltechs/axs/geom/Rectangle;->height:I

    add-int/2addr p1, v0

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsPoint(Lcom/eltechs/axs/geom/Point;)Z
    .locals 1

    .line 53
    iget v0, p1, Lcom/eltechs/axs/geom/Point;->x:I

    iget p1, p1, Lcom/eltechs/axs/geom/Point;->y:I

    invoke-virtual {p0, v0, p1}, Lcom/eltechs/axs/geom/Rectangle;->containsPoint(II)Z

    move-result p1

    return p1
.end method

.method public containsRectangle(Lcom/eltechs/axs/geom/Rectangle;)Z
    .locals 3

    .line 90
    iget v0, p1, Lcom/eltechs/axs/geom/Rectangle;->x:I

    iget v1, p1, Lcom/eltechs/axs/geom/Rectangle;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/eltechs/axs/geom/Rectangle;->containsPoint(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/eltechs/axs/geom/Rectangle;->x:I

    iget v2, p1, Lcom/eltechs/axs/geom/Rectangle;->width:I

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    iget v2, p1, Lcom/eltechs/axs/geom/Rectangle;->y:I

    iget p1, p1, Lcom/eltechs/axs/geom/Rectangle;->height:I

    add-int/2addr v2, p1

    sub-int/2addr v2, v1

    .line 91
    invoke-virtual {p0, v0, v2}, Lcom/eltechs/axs/geom/Rectangle;->containsPoint(II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
