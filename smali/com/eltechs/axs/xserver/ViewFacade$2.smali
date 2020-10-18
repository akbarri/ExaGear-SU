.class Lcom/eltechs/axs/xserver/ViewFacade$2;
.super Ljava/lang/Object;
.source "ViewFacade.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/ViewFacade$DrawableHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/xserver/ViewFacade;->getCursorDrawable()Lcom/eltechs/axs/xserver/PlacedDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/xserver/ViewFacade;

.field final synthetic val$cursor:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/xserver/ViewFacade;Ljava/util/ArrayList;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/eltechs/axs/xserver/ViewFacade$2;->this$0:Lcom/eltechs/axs/xserver/ViewFacade;

    iput-object p2, p0, Lcom/eltechs/axs/xserver/ViewFacade$2;->val$cursor:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/eltechs/axs/xserver/PlacedDrawable;)V
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/eltechs/axs/xserver/ViewFacade$2;->val$cursor:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
