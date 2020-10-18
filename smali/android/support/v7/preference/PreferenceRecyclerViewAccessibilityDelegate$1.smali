.class Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate$1;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "PreferenceRecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;)V
    .locals 0

    .line 50
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate$1;->this$0:Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .line 53
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate$1;->this$0:Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;->mDefaultItemDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 54
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate$1;->this$0:Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 56
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate$1;->this$0:Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 57
    instance-of v1, v0, Landroid/support/v7/preference/PreferenceGroupAdapter;

    if-nez v1, :cond_0

    return-void

    .line 61
    :cond_0
    check-cast v0, Landroid/support/v7/preference/PreferenceGroupAdapter;

    .line 62
    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->getItem(I)Landroid/support/v7/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 67
    :cond_1
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->onInitializeAccessibilityNodeInfo(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 73
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate$1;->this$0:Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;->mDefaultItemDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
