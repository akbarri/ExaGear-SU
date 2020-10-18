.class public Lcom/eltechs/ed/fragments/help/HelpRootFragment;
.super Landroid/support/v4/app/Fragment;
.source "HelpRootFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/help/HelpRootFragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0900af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/eltechs/ed/fragments/help/HelpRootFragment$1;

    invoke-direct {v0, p0}, Lcom/eltechs/ed/fragments/help/HelpRootFragment$1;-><init>(Lcom/eltechs/ed/fragments/help/HelpRootFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/help/HelpRootFragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090052

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/eltechs/ed/fragments/help/HelpRootFragment$2;

    invoke-direct {v0, p0}, Lcom/eltechs/ed/fragments/help/HelpRootFragment$2;-><init>(Lcom/eltechs/ed/fragments/help/HelpRootFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/help/HelpRootFragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/eltechs/ed/fragments/help/HelpRootFragment$3;

    invoke-direct {v0, p0}, Lcom/eltechs/ed/fragments/help/HelpRootFragment$3;-><init>(Lcom/eltechs/ed/fragments/help/HelpRootFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b003c

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
