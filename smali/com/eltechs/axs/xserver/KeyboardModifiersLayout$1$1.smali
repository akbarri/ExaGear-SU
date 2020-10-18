.class Lcom/eltechs/axs/xserver/KeyboardModifiersLayout$1$1;
.super Ljava/lang/Object;
.source "KeyboardModifiersLayout.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/xserver/KeyboardModifiersLayout$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# instance fields
.field currentNum:I

.field final synthetic this$1:Lcom/eltechs/axs/xserver/KeyboardModifiersLayout$1;

.field final synthetic val$keycodesOfModifier:[B


# direct methods
.method constructor <init>(Lcom/eltechs/axs/xserver/KeyboardModifiersLayout$1;[B)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout$1$1;->this$1:Lcom/eltechs/axs/xserver/KeyboardModifiersLayout$1;

    iput-object p2, p0, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout$1$1;->val$keycodesOfModifier:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 58
    iput p1, p0, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout$1$1;->currentNum:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 63
    iget v0, p0, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout$1$1;->currentNum:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout$1$1;->val$keycodesOfModifier:[B

    iget v1, p0, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout$1$1;->currentNum:I

    aget-byte v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Byte;
    .locals 3

    .line 69
    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout$1$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout$1$1;->val$keycodesOfModifier:[B

    iget v1, p0, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout$1$1;->currentNum:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout$1$1;->currentNum:I

    aget-byte v0, v0, v1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 73
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout$1$1;->next()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    const-string v0, "Read-only iterator."

    const/4 v1, 0x0

    .line 79
    invoke-static {v1, v0}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    return-void
.end method
