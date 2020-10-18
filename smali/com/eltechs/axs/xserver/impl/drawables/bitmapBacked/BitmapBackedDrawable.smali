.class public Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;
.super Ljava/lang/Object;
.source "BitmapBackedDrawable.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/Drawable;


# instance fields
.field private final content:Landroid/graphics/Bitmap;

.field private final height:I

.field private final id:I

.field private final painter:Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;

.field private final rootWindow:Lcom/eltechs/axs/xserver/Window;

.field private final visual:Lcom/eltechs/axs/xserver/impl/drawables/Visual;

.field private final width:I


# direct methods
.method public constructor <init>(ILcom/eltechs/axs/xserver/Window;Landroid/graphics/Bitmap;IILcom/eltechs/axs/xserver/impl/drawables/Visual;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt p4, v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt p5, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Bitmap smaller than the Drawable"

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 53
    iput p1, p0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;->id:I

    .line 54
    iput-object p2, p0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;->rootWindow:Lcom/eltechs/axs/xserver/Window;

    .line 55
    iput-object p6, p0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;->visual:Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    .line 57
    iput-object p3, p0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;->content:Landroid/graphics/Bitmap;

    .line 58
    iput p4, p0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;->width:I

    .line 59
    iput p5, p0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;->height:I

    .line 60
    new-instance p1, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;

    iget-object p2, p0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;->content:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2, p0, p4, p5}, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;-><init>(Landroid/graphics/Bitmap;Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;II)V

    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;->painter:Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;

    .line 62
    iget-object p1, p0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;->painter:Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;

    new-instance p2, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable$1;

    invoke-direct {p2, p0}, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable$1;-><init>(Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;)V

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->setModificationListener(Lcom/eltechs/axs/xserver/Drawable$ModificationListener;)V

    return-void
.end method


# virtual methods
.method public getContent()Landroid/graphics/Bitmap;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;->content:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;->height:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;->id:I

    return v0
.end method

.method public getPainter()Lcom/eltechs/axs/xserver/Painter;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;->painter:Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;

    return-object v0
.end method

.method public getRoot()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;->rootWindow:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;->visual:Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;->width:I

    return v0
.end method

.method public installModificationListener(Lcom/eltechs/axs/xserver/Drawable$ModificationListener;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;->painter:Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/PainterOnBitmap;->setModificationListener(Lcom/eltechs/axs/xserver/Drawable$ModificationListener;)V

    return-void
.end method
