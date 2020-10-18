.class Lcom/eltechs/axs/activities/XServerDisplayActivity$1MyOnSystemUiVisibilityChangeListener;
.super Ljava/lang/Object;
.source "XServerDisplayActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/activities/XServerDisplayActivity;->hideDecor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOnSystemUiVisibilityChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/activities/XServerDisplayActivity;

.field final synthetic val$decorView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/activities/XServerDisplayActivity;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity$1MyOnSystemUiVisibilityChangeListener;->this$0:Lcom/eltechs/axs/activities/XServerDisplayActivity;

    iput-object p2, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity$1MyOnSystemUiVisibilityChangeListener;->val$decorView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity$1MyOnSystemUiVisibilityChangeListener;->val$decorView:Landroid/view/View;

    const/16 v0, 0x104

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/eltechs/axs/activities/XServerDisplayActivity$1MyOnSystemUiVisibilityChangeListener;->val$decorView:Landroid/view/View;

    const/16 v0, 0x1706

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method
