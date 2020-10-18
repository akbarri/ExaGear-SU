.class public final Lcom/google/android/gms/common/internal/zzby;
.super Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/zzby;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 p2, 0x0

    const v0, 0x1010048

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static zzf(IIII)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const/16 p2, 0x21

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Unknown color scheme: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    return p3

    :pswitch_1
    return p2

    :pswitch_2
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final zza(Landroid/content/res/Resources;II)V
    .locals 4

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzby;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzby;->setTextSize(F)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzby;->setMinHeight(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzby;->setMinWidth(I)V

    sget v0, Lcom/google/android/gms/R$drawable;->common_google_signin_btn_icon_dark:I

    sget v1, Lcom/google/android/gms/R$drawable;->common_google_signin_btn_icon_light:I

    sget v2, Lcom/google/android/gms/R$drawable;->common_google_signin_btn_icon_light:I

    invoke-static {p3, v0, v1, v2}, Lcom/google/android/gms/common/internal/zzby;->zzf(IIII)I

    move-result v0

    sget v1, Lcom/google/android/gms/R$drawable;->common_google_signin_btn_text_dark:I

    sget v2, Lcom/google/android/gms/R$drawable;->common_google_signin_btn_text_light:I

    sget v3, Lcom/google/android/gms/R$drawable;->common_google_signin_btn_text_light:I

    invoke-static {p3, v1, v2, v3}, Lcom/google/android/gms/common/internal/zzby;->zzf(IIII)I

    move-result v1

    const/16 v2, 0x20

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unknown button size: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move v0, v1

    :pswitch_1
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/google/android/gms/R$color;->common_google_signin_btn_tint:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzby;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/google/android/gms/R$color;->common_google_signin_btn_text_dark:I

    sget v1, Lcom/google/android/gms/R$color;->common_google_signin_btn_text_light:I

    sget v3, Lcom/google/android/gms/R$color;->common_google_signin_btn_text_light:I

    invoke-static {p3, v0, v1, v3}, Lcom/google/android/gms/common/internal/zzby;->zzf(IIII)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/common/internal/zzby;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 p3, 0x0

    packed-switch p2, :pswitch_data_1

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unknown button size: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    invoke-virtual {p0, p3}, Lcom/google/android/gms/common/internal/zzby;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_3
    sget p2, Lcom/google/android/gms/R$string;->common_signin_button_text_long:I

    goto :goto_0

    :pswitch_4
    sget p2, Lcom/google/android/gms/R$string;->common_signin_button_text:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zzby;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p0, p3}, Lcom/google/android/gms/common/internal/zzby;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzby;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/util/zzj;->zzcu(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x13

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zzby;->setGravity(I)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
