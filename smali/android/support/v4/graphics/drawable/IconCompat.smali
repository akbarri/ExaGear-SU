.class public Landroid/support/v4/graphics/drawable/IconCompat;
.super Ljava/lang/Object;
.source "IconCompat.java"


# static fields
.field private static final ADAPTIVE_ICON_INSET_FACTOR:F = 0.25f

.field private static final AMBIENT_SHADOW_ALPHA:I = 0x1e

.field private static final BLUR_FACTOR:F = 0.010416667f

.field private static final DEFAULT_VIEW_PORT_SCALE:F = 0.6666667f

.field private static final ICON_DIAMETER_FACTOR:F = 0.9166667f

.field private static final KEY_SHADOW_ALPHA:I = 0x3d

.field private static final KEY_SHADOW_OFFSET_FACTOR:F = 0.020833334f

.field private static final TYPE_ADAPTIVE_BITMAP:I = 0x5

.field private static final TYPE_BITMAP:I = 0x1

.field private static final TYPE_DATA:I = 0x3

.field private static final TYPE_RESOURCE:I = 0x2

.field private static final TYPE_URI:I = 0x4


# instance fields
.field private mInt1:I

.field private mInt2:I

.field private mObj1:Ljava/lang/Object;

.field private final mType:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput p1, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mType:I

    return-void
.end method

.method static createLegacyIconFromAdaptiveIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 9
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 278
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 279
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 278
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f2aaaab

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 281
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 282
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 283
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    int-to-float v4, v0

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v5, v4

    const v6, 0x3f6aaaab

    mul-float/2addr v6, v5

    if-eqz p1, :cond_0

    const p1, 0x3c2aaaab

    mul-float/2addr p1, v4

    const/4 v7, 0x0

    .line 291
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    const v7, 0x3caaaaab

    mul-float/2addr v7, v4

    const/high16 v4, 0x3d000000    # 0.03125f

    const/4 v8, 0x0

    .line 292
    invoke-virtual {v3, p1, v8, v7, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 293
    invoke-virtual {v2, v5, v5, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x1e000000

    .line 296
    invoke-virtual {v3, p1, v8, v8, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 297
    invoke-virtual {v2, v5, v5, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 298
    invoke-virtual {v3}, Landroid/graphics/Paint;->clearShadowLayer()V

    :cond_0
    const/high16 p1, -0x1000000

    .line 302
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 303
    new-instance p1, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p0, v4, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 305
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 306
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v7, v0

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    .line 307
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    sub-int/2addr p0, v0

    neg-int p0, p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    .line 306
    invoke-virtual {v4, v7, p0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 308
    invoke-virtual {p1, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 309
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 310
    invoke-virtual {v2, v5, v5, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 p0, 0x0

    .line 312
    invoke-virtual {v2, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/IconCompat;
    .locals 2

    if-nez p0, :cond_0

    .line 122
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bitmap must not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 124
    :cond_0
    new-instance v0, Landroid/support/v4/graphics/drawable/IconCompat;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/support/v4/graphics/drawable/IconCompat;-><init>(I)V

    .line 125
    iput-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    return-object v0
.end method

.method public static createWithBitmap(Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/IconCompat;
    .locals 2

    if-nez p0, :cond_0

    .line 107
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bitmap must not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 109
    :cond_0
    new-instance v0, Landroid/support/v4/graphics/drawable/IconCompat;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v4/graphics/drawable/IconCompat;-><init>(I)V

    .line 110
    iput-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    return-object v0
.end method

.method public static createWithContentUri(Landroid/net/Uri;)Landroid/support/v4/graphics/drawable/IconCompat;
    .locals 1

    if-nez p0, :cond_0

    .line 172
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Uri must not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 174
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/graphics/drawable/IconCompat;->createWithContentUri(Ljava/lang/String;)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method public static createWithContentUri(Ljava/lang/String;)Landroid/support/v4/graphics/drawable/IconCompat;
    .locals 2

    if-nez p0, :cond_0

    .line 157
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Uri must not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 159
    :cond_0
    new-instance v0, Landroid/support/v4/graphics/drawable/IconCompat;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v4/graphics/drawable/IconCompat;-><init>(I)V

    .line 160
    iput-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    return-object v0
.end method

.method public static createWithData([BII)Landroid/support/v4/graphics/drawable/IconCompat;
    .locals 2

    if-nez p0, :cond_0

    .line 140
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Data must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 142
    :cond_0
    new-instance v0, Landroid/support/v4/graphics/drawable/IconCompat;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/support/v4/graphics/drawable/IconCompat;-><init>(I)V

    .line 143
    iput-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 144
    iput p1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mInt1:I

    .line 145
    iput p2, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mInt2:I

    return-object v0
.end method

.method public static createWithResource(Landroid/content/Context;I)Landroid/support/v4/graphics/drawable/IconCompat;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    if-nez p0, :cond_0

    .line 92
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    :cond_0
    new-instance v0, Landroid/support/v4/graphics/drawable/IconCompat;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/support/v4/graphics/drawable/IconCompat;-><init>(I)V

    .line 95
    iput p1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mInt1:I

    .line 96
    iput-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public addToShortcutIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 216
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/graphics/drawable/IconCompat;->addToShortcutIntent(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public addToShortcutIntent(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 225
    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mType:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    .line 257
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Icon type not supported for intent shortcuts"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    const-string p2, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 238
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget v1, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mInt1:I

    .line 239
    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    .line 238
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 243
    iget v1, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mInt1:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 244
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    .line 249
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    const-string v2, "activity"

    .line 245
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 246
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v0

    .line 247
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 252
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 253
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 227
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_4

    .line 230
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 234
    :cond_3
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0, v2}, Landroid/support/v4/graphics/drawable/IconCompat;->createLegacyIconFromAdaptiveIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    .line 261
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 262
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 263
    div-int/lit8 v3, v1, 0x2

    div-int/lit8 v4, v2, 0x2

    invoke-virtual {p2, v3, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 264
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    const-string p2, "android.intent.extra.shortcut.ICON"

    .line 266
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toIcon()Landroid/graphics/drawable/Icon;
    .locals 3
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 188
    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :pswitch_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    .line 195
    :cond_0
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 196
    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/IconCompat;->createLegacyIconFromAdaptiveIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    .line 203
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    .line 201
    :pswitch_2
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mInt1:I

    iget v2, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mInt2:I

    invoke-static {v0, v1, v2}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    .line 199
    :pswitch_3
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget v1, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mInt1:I

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    .line 190
    :pswitch_4
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
