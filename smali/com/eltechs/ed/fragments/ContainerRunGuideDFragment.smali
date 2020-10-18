.class public Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ContainerRunGuideDFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment$OnContRunGuideResListener;
    }
.end annotation


# static fields
.field public static final ARG_CONT_ID:Ljava/lang/String; = "CONT_ID"

.field public static final ARG_IS_SHOW_ONLY:Ljava/lang/String; = "IS_SHOW_ONLY"


# instance fields
.field private mContainer:Lcom/eltechs/ed/guestContainers/GuestContainer;

.field private mGuide:Lcom/eltechs/ed/AppRunGuide;

.field private mIsShowOnly:Z

.field private mListener:Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment$OnContRunGuideResListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;->mIsShowOnly:Z

    return p0
.end method

.method static synthetic access$100(Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;)Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment$OnContRunGuideResListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;->mListener:Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment$OnContRunGuideResListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;)Lcom/eltechs/ed/guestContainers/GuestContainer;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;->mContainer:Lcom/eltechs/ed/guestContainers/GuestContainer;

    return-object p0
.end method

.method public static createDialog(Lcom/eltechs/ed/guestContainers/GuestContainer;Z)Landroid/support/v4/app/DialogFragment;
    .locals 5

    .line 115
    new-instance v0, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;

    invoke-direct {v0}, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;-><init>()V

    .line 116
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "CONT_ID"

    .line 117
    iget-object p0, p0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mId:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "IS_SHOW_ONLY"

    .line 118
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    invoke-virtual {v0, v1}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090089

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;->mGuide:Lcom/eltechs/ed/AppRunGuide;

    iget v1, v1, Lcom/eltechs/ed/AppRunGuide;->mHeaderRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090031

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;->mGuide:Lcom/eltechs/ed/AppRunGuide;

    iget v1, v1, Lcom/eltechs/ed/AppRunGuide;->mBodyRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment$1;

    invoke-direct {v0, p0}, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment$1;-><init>(Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment$2;

    invoke-direct {v0, p0}, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment$2;-><init>(Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CONT_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getInstance(Landroid/content/Context;)Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/eltechs/ed/guestContainers/GuestContainersManager;->getContainerById(Ljava/lang/Long;)Lcom/eltechs/ed/guestContainers/GuestContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;->mContainer:Lcom/eltechs/ed/guestContainers/GuestContainer;

    .line 47
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;->mContainer:Lcom/eltechs/ed/guestContainers/GuestContainer;

    iget-object v0, v0, Lcom/eltechs/ed/guestContainers/GuestContainer;->mConfig:Lcom/eltechs/ed/guestContainers/GuestContainerConfig;

    invoke-virtual {v0}, Lcom/eltechs/ed/guestContainers/GuestContainerConfig;->getRunGuide()Ljava/lang/String;

    move-result-object v0

    .line 48
    sget-object v1, Lcom/eltechs/ed/AppRunGuide;->guidesMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/ed/AppRunGuide;

    iput-object v0, p0, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;->mGuide:Lcom/eltechs/ed/AppRunGuide;

    .line 49
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "IS_SHOW_ONLY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;->mIsShowOnly:Z

    .line 51
    iget-boolean v0, p0, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;->mIsShowOnly:Z

    if-nez v0, :cond_0

    .line 55
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment$OnContRunGuideResListener;

    iput-object v0, p0, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;->mListener:Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment$OnContRunGuideResListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnContRunGuideResListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0022

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 69
    iget-boolean p2, p0, Lcom/eltechs/ed/fragments/ContainerRunGuideDFragment;->mIsShowOnly:Z

    if-eqz p2, :cond_0

    const p2, 0x7f090033

    .line 71
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-object p1
.end method
