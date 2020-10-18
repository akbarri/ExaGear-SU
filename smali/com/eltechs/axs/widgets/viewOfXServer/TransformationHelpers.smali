.class public Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers;
.super Ljava/lang/Object;
.source "TransformationHelpers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScaleX(Landroid/graphics/Matrix;)F
    .locals 1

    const/16 v0, 0x9

    .line 166
    new-array v0, v0, [F

    .line 167
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 p0, 0x0

    .line 168
    aget p0, v0, p0

    return p0
.end method

.method public static getScaleY(Landroid/graphics/Matrix;)F
    .locals 1

    const/16 v0, 0x9

    .line 176
    new-array v0, v0, [F

    .line 177
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 p0, 0x4

    .line 178
    aget p0, v0, p0

    return p0
.end method

.method public static makeTransformationDescription(FFFFFFLcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;)Lcom/eltechs/axs/widgets/viewOfXServer/TransformationDescription;
    .locals 5

    div-float v0, p0, p4

    div-float v1, p1, p5

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 40
    sget-object v3, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers$1;->$SwitchMap$com$eltechs$axs$configuration$XServerViewConfiguration$FitStyleHorizontal:[I

    invoke-virtual {p6}, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v2

    .line 49
    :goto_0
    sget-object v3, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers$1;->$SwitchMap$com$eltechs$axs$configuration$XServerViewConfiguration$FitStyleVertical:[I

    invoke-virtual {p7}, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    move v1, v2

    :goto_1
    mul-float/2addr p4, v0

    sub-float/2addr p0, p4

    mul-float/2addr p5, v1

    sub-float/2addr p1, p5

    .line 61
    sget-object p4, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers$1;->$SwitchMap$com$eltechs$axs$configuration$XServerViewConfiguration$FitStyleHorizontal:[I

    invoke-virtual {p6}, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;->ordinal()I

    move-result p5

    aget p4, p4, p5

    const/high16 p5, 0x40000000    # 2.0f

    const/4 p6, 0x0

    packed-switch p4, :pswitch_data_2

    .line 74
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->unreachable()V

    :pswitch_2
    move v2, p6

    goto :goto_2

    :pswitch_3
    div-float/2addr p0, p5

    :pswitch_4
    move v2, p0

    .line 78
    :goto_2
    sget-object p0, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers$1;->$SwitchMap$com$eltechs$axs$configuration$XServerViewConfiguration$FitStyleVertical:[I

    invoke-virtual {p7}, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;->ordinal()I

    move-result p4

    aget p0, p0, p4

    packed-switch p0, :pswitch_data_3

    .line 91
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->unreachable()V

    goto :goto_3

    :pswitch_5
    div-float/2addr p1, p5

    :pswitch_6
    move p6, p1

    .line 95
    :goto_3
    :pswitch_7
    new-instance p7, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationDescription;

    neg-float p4, p2

    neg-float p5, p3

    move-object p0, p7

    move p1, v0

    move p2, v1

    move p3, p4

    move p4, p5

    move p5, v2

    invoke-direct/range {p0 .. p6}, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationDescription;-><init>(FFFFFF)V

    return-object p7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static makeTransformationMatrix(FFFFFFLcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;)Landroid/graphics/Matrix;
    .locals 0

    .line 121
    invoke-static/range {p0 .. p7}, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers;->makeTransformationDescription(FFFFFFLcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;)Lcom/eltechs/axs/widgets/viewOfXServer/TransformationDescription;

    move-result-object p0

    .line 122
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 123
    iget p2, p0, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationDescription;->xServerTranslateX:F

    iget p3, p0, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationDescription;->xServerTranslateY:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 124
    iget p2, p0, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationDescription;->scaleX:F

    iget p3, p0, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationDescription;->scaleY:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 125
    iget p2, p0, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationDescription;->viewTranslateX:F

    iget p0, p0, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationDescription;->viewTranslateY:F

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object p1
.end method

.method public static mapPoints(Landroid/graphics/Matrix;[F)V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 143
    array-length v3, p1

    if-ne v3, v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    const/16 v3, 0x9

    .line 144
    new-array v3, v3, [F

    .line 145
    invoke-virtual {p0, v3}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 p0, 0x3

    .line 146
    new-array v4, p0, [F

    fill-array-data v4, :array_0

    .line 147
    new-array v5, p0, [F

    aget v6, p1, v1

    aput v6, v5, v1

    aget v6, p1, v2

    aput v6, v5, v2

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v0

    move v0, v1

    :goto_1
    if-ge v0, p0, :cond_2

    move v6, v1

    :goto_2
    if-ge v6, p0, :cond_1

    .line 153
    aget v7, v4, v0

    mul-int/lit8 v8, v0, 0x3

    add-int/2addr v8, v6

    aget v8, v3, v8

    aget v9, v5, v6

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v4, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 157
    :cond_2
    aget p0, v4, v1

    aput p0, p1, v1

    .line 158
    aget p0, v4, v2

    aput p0, p1, v2

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method
