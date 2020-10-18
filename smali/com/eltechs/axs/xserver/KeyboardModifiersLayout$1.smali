.class Lcom/eltechs/axs/xserver/KeyboardModifiersLayout$1;
.super Ljava/lang/Object;
.source "KeyboardModifiersLayout.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->getModifierKeycodes(Lcom/eltechs/axs/xserver/KeyButNames;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;

.field final synthetic val$modifier:Lcom/eltechs/axs/xserver/KeyButNames;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;Lcom/eltechs/axs/xserver/KeyButNames;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout$1;->this$0:Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;

    iput-object p2, p0, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout$1;->val$modifier:Lcom/eltechs/axs/xserver/KeyButNames;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout$1;->this$0:Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;

    invoke-static {v0}, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->access$000(Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;)[[B

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout$1;->val$modifier:Lcom/eltechs/axs/xserver/KeyButNames;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/KeyButNames;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    .line 57
    new-instance v1, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout$1$1;

    invoke-direct {v1, p0, v0}, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout$1$1;-><init>(Lcom/eltechs/axs/xserver/KeyboardModifiersLayout$1;[B)V

    return-object v1
.end method
