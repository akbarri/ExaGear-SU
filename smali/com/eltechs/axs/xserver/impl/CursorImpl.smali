.class public Lcom/eltechs/axs/xserver/impl/CursorImpl;
.super Ljava/lang/Object;
.source "CursorImpl.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/Cursor;


# instance fields
.field private final cursorImage:Lcom/eltechs/axs/xserver/Drawable;

.field private final hotSpotX:I

.field private final hotSpotY:I

.field private final id:I

.field private final maskImage:Lcom/eltechs/axs/xserver/Drawable;

.field private final sourceImage:Lcom/eltechs/axs/xserver/Drawable;


# direct methods
.method public constructor <init>(IIILcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/xserver/Drawable;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/eltechs/axs/xserver/impl/CursorImpl;->id:I

    .line 40
    iput p2, p0, Lcom/eltechs/axs/xserver/impl/CursorImpl;->hotSpotX:I

    .line 41
    iput p3, p0, Lcom/eltechs/axs/xserver/impl/CursorImpl;->hotSpotY:I

    .line 42
    iput-object p4, p0, Lcom/eltechs/axs/xserver/impl/CursorImpl;->cursorImage:Lcom/eltechs/axs/xserver/Drawable;

    .line 43
    iput-object p5, p0, Lcom/eltechs/axs/xserver/impl/CursorImpl;->sourceImage:Lcom/eltechs/axs/xserver/Drawable;

    .line 44
    iput-object p6, p0, Lcom/eltechs/axs/xserver/impl/CursorImpl;->maskImage:Lcom/eltechs/axs/xserver/Drawable;

    if-eqz p6, :cond_2

    .line 48
    invoke-interface {p6}, Lcom/eltechs/axs/xserver/Drawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object p1

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-static {p1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 49
    invoke-interface {p6}, Lcom/eltechs/axs/xserver/Drawable;->getWidth()I

    move-result p1

    invoke-interface {p5}, Lcom/eltechs/axs/xserver/Drawable;->getWidth()I

    move-result p4

    if-ne p1, p4, :cond_1

    .line 50
    invoke-interface {p6}, Lcom/eltechs/axs/xserver/Drawable;->getHeight()I

    move-result p1

    invoke-interface {p5}, Lcom/eltechs/axs/xserver/Drawable;->getHeight()I

    move-result p4

    if-ne p1, p4, :cond_1

    move p2, p3

    .line 49
    :cond_1
    invoke-static {p2}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getCursorImage()Lcom/eltechs/axs/xserver/Drawable;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/CursorImpl;->cursorImage:Lcom/eltechs/axs/xserver/Drawable;

    return-object v0
.end method

.method public getHotSpotX()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/CursorImpl;->hotSpotX:I

    return v0
.end method

.method public getHotSpotY()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/CursorImpl;->hotSpotY:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/CursorImpl;->id:I

    return v0
.end method

.method public recolorCursor(IIIIII)V
    .locals 11

    move-object v0, p0

    .line 95
    iget-object v1, v0, Lcom/eltechs/axs/xserver/impl/CursorImpl;->cursorImage:Lcom/eltechs/axs/xserver/Drawable;

    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Drawable;->getPainter()Lcom/eltechs/axs/xserver/Painter;

    move-result-object v2

    iget-object v3, v0, Lcom/eltechs/axs/xserver/impl/CursorImpl;->sourceImage:Lcom/eltechs/axs/xserver/Drawable;

    iget-object v4, v0, Lcom/eltechs/axs/xserver/impl/CursorImpl;->maskImage:Lcom/eltechs/axs/xserver/Drawable;

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-interface/range {v2 .. v10}, Lcom/eltechs/axs/xserver/Painter;->drawAlphaMaskedBitmap(Lcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/xserver/Drawable;IIIIII)V

    return-void
.end method
