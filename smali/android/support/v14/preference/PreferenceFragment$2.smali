.class Landroid/support/v14/preference/PreferenceFragment$2;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v14/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v14/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Landroid/support/v14/preference/PreferenceFragment;)V
    .locals 0

    .line 161
    iput-object p1, p0, Landroid/support/v14/preference/PreferenceFragment$2;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 164
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment$2;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    invoke-static {v0}, Landroid/support/v14/preference/PreferenceFragment;->access$200(Landroid/support/v14/preference/PreferenceFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v14/preference/PreferenceFragment$2;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    invoke-static {v1}, Landroid/support/v14/preference/PreferenceFragment;->access$200(Landroid/support/v14/preference/PreferenceFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
