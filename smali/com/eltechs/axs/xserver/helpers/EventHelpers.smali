.class public Lcom/eltechs/axs/xserver/helpers/EventHelpers;
.super Ljava/lang/Object;
.source "EventHelpers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyButMask(Lcom/eltechs/axs/xserver/XServer;)Lcom/eltechs/axs/xserver/impl/masks/Mask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/XServer;",
            ")",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/KeyButNames;",
            ">;"
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/Pointer;->getButtonMask()Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v0

    .line 21
    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/XServer;->getKeyboard()Lcom/eltechs/axs/xserver/Keyboard;

    move-result-object p0

    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/Keyboard;->getModifiersMask()Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object p0

    .line 20
    invoke-static {v0, p0}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->mergeMasksOR(Lcom/eltechs/axs/xserver/impl/masks/Mask;Lcom/eltechs/axs/xserver/impl/masks/Mask;)Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object p0

    .line 22
    invoke-static {p0}, Lcom/eltechs/axs/xserver/KeyButNames;->clearVirtualModifiers(Lcom/eltechs/axs/xserver/impl/masks/Mask;)V

    return-object p0
.end method

.method public static getKeyButMask(Lcom/eltechs/axs/xserver/XServer;Lcom/eltechs/axs/xserver/impl/masks/Mask;)Lcom/eltechs/axs/xserver/impl/masks/Mask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/XServer;",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/KeyButNames;",
            ">;)",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/KeyButNames;",
            ">;"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/Pointer;->getButtonMask()Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->mergeMasksOR(Lcom/eltechs/axs/xserver/impl/masks/Mask;Lcom/eltechs/axs/xserver/impl/masks/Mask;)Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object p0

    .line 39
    invoke-static {p0}, Lcom/eltechs/axs/xserver/KeyButNames;->clearVirtualModifiers(Lcom/eltechs/axs/xserver/impl/masks/Mask;)V

    return-object p0
.end method
