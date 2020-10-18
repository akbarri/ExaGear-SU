.class Lcom/eltechs/axs/xserver/ViewFacade$1;
.super Ljava/lang/Object;
.source "ViewFacade.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/ViewFacade$DrawableHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/xserver/ViewFacade;->listNonRootWindowDrawables()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/xserver/ViewFacade;

.field final synthetic val$drawables:Ljava/util/ArrayList;

.field final synthetic val$rootWindow:Lcom/eltechs/axs/xserver/Window;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/xserver/Window;Ljava/util/ArrayList;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/eltechs/axs/xserver/ViewFacade$1;->this$0:Lcom/eltechs/axs/xserver/ViewFacade;

    iput-object p2, p0, Lcom/eltechs/axs/xserver/ViewFacade$1;->val$rootWindow:Lcom/eltechs/axs/xserver/Window;

    iput-object p3, p0, Lcom/eltechs/axs/xserver/ViewFacade$1;->val$drawables:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/eltechs/axs/xserver/PlacedDrawable;)V
    .locals 2

    .line 479
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/PlacedDrawable;->getDrawable()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/xserver/ViewFacade$1;->val$rootWindow:Lcom/eltechs/axs/xserver/Window;

    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Window;->getActiveBackingStore()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 481
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade$1;->val$drawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
