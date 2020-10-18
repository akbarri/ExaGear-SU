.class public Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawablesFactory;
.super Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactoryImplBase;
.source "BitmapBackedDrawablesFactory.java"


# static fields
.field private static final preferredVisual:Lcom/eltechs/axs/xserver/impl/drawables/Visual;

.field private static final supportedImageFormats:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final supportedVisuals:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/xserver/impl/drawables/Visual;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final imagesMustBePowerOfTwo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 34
    invoke-static {}, Lcom/eltechs/axs/xserver/impl/SmallIdsGenerator;->generateId()I

    move-result v0

    const/16 v1, 0x18

    const/16 v2, 0x18

    const/high16 v3, 0xff0000

    const v4, 0xff00

    const/16 v5, 0xff

    invoke-static/range {v0 .. v5}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->makeDisplayableVisual(IIIIII)Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v0

    sput-object v0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawablesFactory;->preferredVisual:Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawablesFactory;->supportedVisuals:Ljava/util/Collection;

    .line 36
    sget-object v0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawablesFactory;->supportedVisuals:Ljava/util/Collection;

    sget-object v1, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawablesFactory;->preferredVisual:Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawablesFactory;->supportedVisuals:Ljava/util/Collection;

    invoke-static {}, Lcom/eltechs/axs/xserver/impl/SmallIdsGenerator;->generateId()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->makeNonDisplayableVisual(II)Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawablesFactory;->supportedImageFormats:Ljava/util/Collection;

    .line 40
    sget-object v0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawablesFactory;->supportedImageFormats:Ljava/util/Collection;

    new-instance v1, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;

    const/16 v3, 0x20

    invoke-direct {v1, v2, v2, v3}, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawablesFactory;->supportedImageFormats:Ljava/util/Collection;

    new-instance v1, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v3, v3}, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawablesFactory;->supportedImageFormats:Ljava/util/Collection;

    new-instance v1, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;

    invoke-direct {v1, v3, v3, v3}, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    .line 47
    sget-object v0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawablesFactory;->supportedVisuals:Ljava/util/Collection;

    sget-object v1, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawablesFactory;->supportedImageFormats:Ljava/util/Collection;

    sget-object v2, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawablesFactory;->preferredVisual:Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    invoke-direct {p0, v0, v1, v2}, Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactoryImplBase;-><init>(Ljava/util/Collection;Ljava/util/Collection;Lcom/eltechs/axs/xserver/impl/drawables/Visual;)V

    .line 48
    iput-boolean p1, p0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawablesFactory;->imagesMustBePowerOfTwo:Z

    return-void
.end method


# virtual methods
.method public create(ILcom/eltechs/axs/xserver/Window;IILcom/eltechs/axs/xserver/impl/drawables/Visual;)Lcom/eltechs/axs/xserver/Drawable;
    .locals 10

    .line 61
    iget-boolean v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawablesFactory;->imagesMustBePowerOfTwo:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-static {p3}, Lcom/eltechs/axs/helpers/MathHelpers;->upperPOT(I)I

    move-result v0

    .line 64
    invoke-static {p4}, Lcom/eltechs/axs/helpers/MathHelpers;->upperPOT(I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v0, p3

    move v1, p4

    .line 70
    :goto_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 71
    new-instance v0, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;

    move-object v3, v0

    move v4, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/eltechs/axs/xserver/impl/drawables/bitmapBacked/BitmapBackedDrawable;-><init>(ILcom/eltechs/axs/xserver/Window;Landroid/graphics/Bitmap;IILcom/eltechs/axs/xserver/impl/drawables/Visual;)V

    return-object v0
.end method
