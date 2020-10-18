.class Landroid/support/v14/preference/PreferenceFragment$3;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v14/preference/PreferenceFragment;->scrollToPreferenceInternal(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v14/preference/PreferenceFragment;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$preference:Landroid/support/v7/preference/Preference;


# direct methods
.method constructor <init>(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
    .locals 0

    .line 686
    iput-object p1, p0, Landroid/support/v14/preference/PreferenceFragment$3;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    iput-object p2, p0, Landroid/support/v14/preference/PreferenceFragment$3;->val$preference:Landroid/support/v7/preference/Preference;

    iput-object p3, p0, Landroid/support/v14/preference/PreferenceFragment$3;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 689
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment$3;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    invoke-static {v0}, Landroid/support/v14/preference/PreferenceFragment;->access$200(Landroid/support/v14/preference/PreferenceFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 690
    instance-of v1, v0, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    .line 692
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Adapter must implement PreferencePositionCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void

    .line 700
    :cond_1
    iget-object v1, p0, Landroid/support/v14/preference/PreferenceFragment$3;->val$preference:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_2

    .line 701
    move-object v1, v0

    check-cast v1, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;

    iget-object v2, p0, Landroid/support/v14/preference/PreferenceFragment$3;->val$preference:Landroid/support/v7/preference/Preference;

    .line 702
    invoke-interface {v1, v2}, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Landroid/support/v7/preference/Preference;)I

    move-result v1

    goto :goto_0

    .line 704
    :cond_2
    move-object v1, v0

    check-cast v1, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;

    iget-object v2, p0, Landroid/support/v14/preference/PreferenceFragment$3;->val$key:Ljava/lang/String;

    .line 705
    invoke-interface {v1, v2}, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 708
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment$3;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    invoke-static {v0}, Landroid/support/v14/preference/PreferenceFragment;->access$200(Landroid/support/v14/preference/PreferenceFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_1

    .line 711
    :cond_3
    new-instance v1, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;

    iget-object v2, p0, Landroid/support/v14/preference/PreferenceFragment$3;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    .line 712
    invoke-static {v2}, Landroid/support/v14/preference/PreferenceFragment;->access$200(Landroid/support/v14/preference/PreferenceFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v14/preference/PreferenceFragment$3;->val$preference:Landroid/support/v7/preference/Preference;

    iget-object v4, p0, Landroid/support/v14/preference/PreferenceFragment$3;->val$key:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    .line 711
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    :goto_1
    return-void
.end method
