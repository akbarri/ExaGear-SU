.class Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl;
.super Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi23Impl;
.source "TextViewCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextViewCompatApi26Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 336
    invoke-direct {p0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi23Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public setCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)V
    .locals 2

    .line 340
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    .line 342
    invoke-super {p0, p1, p2}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi23Impl;->setCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)V

    return-void

    .line 351
    :cond_0
    new-instance v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;

    invoke-direct {v0, p0, p2, p1}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;-><init>(Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl;Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method
