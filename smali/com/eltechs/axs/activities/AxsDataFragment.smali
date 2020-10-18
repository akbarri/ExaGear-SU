.class public Lcom/eltechs/axs/activities/AxsDataFragment;
.super Landroid/support/v4/app/Fragment;
.source "AxsDataFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/activities/AxsDataFragment$DialogInfo;
    }
.end annotation


# instance fields
.field tag2dialogInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/eltechs/axs/activities/AxsDataFragment$DialogInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/activities/AxsDataFragment;->tag2dialogInfo:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/AxsDataFragment;->setRetainInstance(Z)V

    return-void
.end method
