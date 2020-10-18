.class public final Lcom/google/android/gms/internal/zzbge;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private mAlpha:I

.field private mFrom:I

.field private zzebf:J

.field private zzgdt:Z

.field private zzgdy:I

.field private zzgdz:I

.field private zzgea:I

.field private zzgeb:I

.field private zzgec:Z

.field private zzged:Lcom/google/android/gms/internal/zzbgi;

.field private zzgee:Landroid/graphics/drawable/Drawable;

.field private zzgef:Landroid/graphics/drawable/Drawable;

.field private zzgeg:Z

.field private zzgeh:Z

.field private zzgei:Z

.field private zzgej:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbge;-><init>(Lcom/google/android/gms/internal/zzbgi;)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbgg;->zzalo()Lcom/google/android/gms/internal/zzbgg;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbge;->zzgee:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbge;->zzged:Lcom/google/android/gms/internal/zzbgi;

    iget v1, v0, Lcom/google/android/gms/internal/zzbgi;->zzgem:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p1

    or-int/2addr p1, v1

    iput p1, v0, Lcom/google/android/gms/internal/zzbgi;->zzgem:I

    if-nez p2, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzbgg;->zzalo()Lcom/google/android/gms/internal/zzbgg;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lcom/google/android/gms/internal/zzbge;->zzgef:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbge;->zzged:Lcom/google/android/gms/internal/zzbgi;

    iget v0, p1, Lcom/google/android/gms/internal/zzbgi;->zzgem:I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p2

    or-int/2addr p2, v0

    iput p2, p1, Lcom/google/android/gms/internal/zzbgi;->zzgem:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzbgi;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzbge;->zzgdy:I

    const/16 v1, 0xff

    iput v1, p0, Lcom/google/android/gms/internal/zzbge;->zzgea:I

    iput v0, p0, Lcom/google/android/gms/internal/zzbge;->mAlpha:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbge;->zzgdt:Z

    new-instance v0, Lcom/google/android/gms/internal/zzbgi;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbgi;-><init>(Lcom/google/android/gms/internal/zzbgi;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbge;->zzged:Lcom/google/android/gms/internal/zzbgi;

    return-void
.end method

.method private final canConstantState()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbge;->zzgeg:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbge;->zzgee:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbge;->zzgef:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbge;->zzgeh:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzbge;->zzgeg:Z

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbge;->zzgeh:Z

    return v0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    iget v0, p0, Lcom/google/android/gms/internal/zzbge;->zzgdy:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbge;->zzebf:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzbge;->zzebf:J

    sub-long/2addr v3, v5

    long-to-float v0, v3

    iget v3, p0, Lcom/google/android/gms/internal/zzbge;->zzgeb:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v3

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iput v2, p0, Lcom/google/android/gms/internal/zzbge;->zzgdy:I

    :cond_1
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/zzbge;->zzgdz:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/zzbge;->mAlpha:I

    goto :goto_1

    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbge;->zzebf:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzbge;->zzgdy:I

    move v1, v2

    :cond_2
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/zzbge;->mAlpha:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzbge;->zzgdt:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbge;->zzgee:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbge;->zzgef:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    if-eqz v2, :cond_3

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/zzbge;->zzgea:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/google/android/gms/internal/zzbge;->zzgea:I

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    return-void

    :cond_6
    if-eqz v2, :cond_7

    iget v1, p0, Lcom/google/android/gms/internal/zzbge;->zzgea:I

    sub-int/2addr v1, v0

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_7
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v2, :cond_8

    iget v1, p0, Lcom/google/android/gms/internal/zzbge;->zzgea:I

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_8
    if-lez v0, :cond_9

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget p1, p0, Lcom/google/android/gms/internal/zzbge;->zzgea:I

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbge;->invalidateSelf()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getChangingConfigurations()I
    .locals 2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbge;->zzged:Lcom/google/android/gms/internal/zzbgi;

    iget v1, v1, Lcom/google/android/gms/internal/zzbgi;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbge;->zzged:Lcom/google/android/gms/internal/zzbgi;

    iget v1, v1, Lcom/google/android/gms/internal/zzbgi;->zzgem:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbge;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbge;->zzged:Lcom/google/android/gms/internal/zzbgi;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbge;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/zzbgi;->mChangingConfigurations:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbge;->zzged:Lcom/google/android/gms/internal/zzbgi;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbge;->zzgee:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbge;->zzgef:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbge;->zzgee:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbge;->zzgef:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getOpacity()I
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbge;->zzgei:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbge;->zzgee:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbge;->zzgef:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbge;->zzgej:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbge;->zzgei:Z

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzbge;->zzgej:I

    return v0
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbge;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbge;->zzgec:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbge;->canConstantState()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbge;->zzgee:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbge;->zzgef:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbge;->zzgec:Z

    :cond_1
    return-object p0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbge;->zzgee:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbge;->zzgef:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbge;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public final setAlpha(I)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzbge;->mAlpha:I

    iget v1, p0, Lcom/google/android/gms/internal/zzbge;->zzgea:I

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/zzbge;->mAlpha:I

    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/zzbge;->zzgea:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbge;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbge;->zzgee:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbge;->zzgef:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final startTransition(I)V
    .locals 1

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/zzbge;->mFrom:I

    iget v0, p0, Lcom/google/android/gms/internal/zzbge;->zzgea:I

    iput v0, p0, Lcom/google/android/gms/internal/zzbge;->zzgdz:I

    iput p1, p0, Lcom/google/android/gms/internal/zzbge;->mAlpha:I

    const/16 p1, 0xfa

    iput p1, p0, Lcom/google/android/gms/internal/zzbge;->zzgeb:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/zzbge;->zzgdy:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbge;->invalidateSelf()V

    return-void
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbge;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final zzaln()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbge;->zzgef:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
