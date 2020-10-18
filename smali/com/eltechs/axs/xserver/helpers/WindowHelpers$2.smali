.class final Lcom/eltechs/axs/xserver/helpers/WindowHelpers$2;
.super Ljava/lang/Object;
.source "WindowHelpers.java"

# interfaces
.implements Lcom/eltechs/axs/helpers/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->getLeastCommonAncestor(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)Lcom/eltechs/axs/xserver/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/eltechs/axs/helpers/Predicate<",
        "Lcom/eltechs/axs/xserver/Window;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$window2:Lcom/eltechs/axs/xserver/Window;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$2;->val$window2:Lcom/eltechs/axs/xserver/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/eltechs/axs/xserver/Window;)Z
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$2;->val$window2:Lcom/eltechs/axs/xserver/Window;

    invoke-static {v0, p1}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers;->isAncestorOf(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 216
    check-cast p1, Lcom/eltechs/axs/xserver/Window;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$2;->apply(Lcom/eltechs/axs/xserver/Window;)Z

    move-result p1

    return p1
.end method
