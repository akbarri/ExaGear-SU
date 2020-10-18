.class Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;
.super Ljava/lang/Object;
.source "ChooseXDGLinkFragment.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XDGNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;",
        ">;"
    }
.end annotation


# instance fields
.field mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

.field mFile:Ljava/io/File;

.field mLink:Lcom/eltechs/ed/XDGLink;

.field final synthetic this$0:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;


# direct methods
.method constructor <init>(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;Lcom/eltechs/ed/guestContainers/GuestContainer;Ljava/io/File;Lcom/eltechs/ed/XDGLink;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->this$0:Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    .line 64
    iput-object p3, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->mFile:Ljava/io/File;

    .line 65
    iput-object p4, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->mLink:Lcom/eltechs/ed/XDGLink;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;)I
    .locals 2
    .param p1    # Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 77
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->isUpNode()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->mFile:Ljava/io/File;

    iget-object p1, p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->mFile:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    check-cast p1, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;

    invoke-virtual {p0, p1}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->compareTo(Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;)I

    move-result p1

    return p1
.end method

.method public isUpNode()Z
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->isUpNode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".."

    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->mLink:Lcom/eltechs/ed/XDGLink;

    iget-object v0, v0, Lcom/eltechs/ed/XDGLink;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 107
    iget-object v0, p0, Lcom/eltechs/ed/fragments/ChooseXDGLinkFragment$XDGNode;->mLink:Lcom/eltechs/ed/XDGLink;

    iget-object v0, v0, Lcom/eltechs/ed/XDGLink;->name:Ljava/lang/String;

    return-object v0
.end method
