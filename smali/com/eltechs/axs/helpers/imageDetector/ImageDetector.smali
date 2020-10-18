.class public Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;
.super Ljava/lang/Object;
.source "ImageDetector.java"


# instance fields
.field private final area:Lcom/eltechs/axs/geom/Rectangle;

.field private final sample:[B


# direct methods
.method public constructor <init>([BLcom/eltechs/axs/geom/Rectangle;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;->area:Lcom/eltechs/axs/geom/Rectangle;

    .line 25
    iput-object p1, p0, Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;->sample:[B

    return-void
.end method


# virtual methods
.method public isSamplePresentInDrawable(Lcom/eltechs/axs/xserver/Drawable;)Z
    .locals 4

    .line 30
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Drawable;->getPainter()Lcom/eltechs/axs/xserver/Painter;

    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;->area:Lcom/eltechs/axs/geom/Rectangle;

    iget v0, v0, Lcom/eltechs/axs/geom/Rectangle;->x:I

    iget-object v1, p0, Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;->area:Lcom/eltechs/axs/geom/Rectangle;

    iget v1, v1, Lcom/eltechs/axs/geom/Rectangle;->y:I

    iget-object v2, p0, Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;->area:Lcom/eltechs/axs/geom/Rectangle;

    iget v2, v2, Lcom/eltechs/axs/geom/Rectangle;->width:I

    iget-object v3, p0, Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;->area:Lcom/eltechs/axs/geom/Rectangle;

    iget v3, v3, Lcom/eltechs/axs/geom/Rectangle;->height:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/Painter;->getZPixmap(IIII)[B

    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;->sample:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method
