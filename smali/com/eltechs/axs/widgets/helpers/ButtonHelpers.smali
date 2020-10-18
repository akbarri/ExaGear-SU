.class public Lcom/eltechs/axs/widgets/helpers/ButtonHelpers;
.super Ljava/lang/Object;
.source "ButtonHelpers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRegularImageButton(Landroid/app/Activity;III)Landroid/widget/ImageButton;
    .locals 1

    .line 21
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 24
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, p2, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 25
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setMinimumHeight(I)V

    .line 28
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setMaxWidth(I)V

    .line 29
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setMaxHeight(I)V

    .line 31
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method
