.class public Lcom/eltechs/axs/helpers/BitmapLoader;
.super Ljava/lang/Object;
.source "BitmapLoader.java"


# instance fields
.field private final options:Landroid/graphics/BitmapFactory$Options;

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/helpers/BitmapLoader;->options:Landroid/graphics/BitmapFactory$Options;

    .line 24
    iget-object v0, p0, Lcom/eltechs/axs/helpers/BitmapLoader;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 25
    iput-object p1, p0, Lcom/eltechs/axs/helpers/BitmapLoader;->resources:Landroid/content/res/Resources;

    return-void
.end method

.method public static createBitmapLoader()Lcom/eltechs/axs/helpers/BitmapLoader;
    .locals 2

    .line 30
    new-instance v0, Lcom/eltechs/axs/helpers/BitmapLoader;

    invoke-static {}, Lcom/eltechs/axs/Globals;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/eltechs/axs/helpers/BitmapLoader;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public static loadOneBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 35
    invoke-static {}, Lcom/eltechs/axs/helpers/BitmapLoader;->createBitmapLoader()Lcom/eltechs/axs/helpers/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/helpers/BitmapLoader;->loadBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public loadBitmap(I)Landroid/graphics/Bitmap;
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/eltechs/axs/helpers/BitmapLoader;->resources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/eltechs/axs/helpers/BitmapLoader;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
