.class public Lcom/eltechs/axs/xserver/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/xserver/Keyboard$KeymapStateMask;
    }
.end annotation


# instance fields
.field private currentModifiersMask:Lcom/eltechs/axs/xserver/impl/masks/Mask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/KeyButNames;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreKeyReleaseModifiersMask:Lcom/eltechs/axs/xserver/impl/masks/Mask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/KeyButNames;",
            ">;"
        }
    .end annotation
.end field

.field private final keylisteners:Lcom/eltechs/axs/xserver/KeyboardListenersList;

.field private final keymapStateMask:Lcom/eltechs/axs/xserver/Keyboard$KeymapStateMask;

.field private final modifierListeners:Lcom/eltechs/axs/xserver/KeyboardModifiersListenerList;

.field private final xServer:Lcom/eltechs/axs/xserver/XServer;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-class v0, Lcom/eltechs/axs/xserver/KeyButNames;

    invoke-static {v0}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->emptyMask(Ljava/lang/Class;)Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/xserver/Keyboard;->currentModifiersMask:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    .line 28
    const-class v0, Lcom/eltechs/axs/xserver/KeyButNames;

    invoke-static {v0}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->emptyMask(Ljava/lang/Class;)Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/xserver/Keyboard;->ignoreKeyReleaseModifiersMask:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    .line 71
    iput-object p1, p0, Lcom/eltechs/axs/xserver/Keyboard;->xServer:Lcom/eltechs/axs/xserver/XServer;

    .line 72
    new-instance p1, Lcom/eltechs/axs/xserver/Keyboard$KeymapStateMask;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/eltechs/axs/xserver/Keyboard$KeymapStateMask;-><init>(Lcom/eltechs/axs/xserver/Keyboard$1;)V

    iput-object p1, p0, Lcom/eltechs/axs/xserver/Keyboard;->keymapStateMask:Lcom/eltechs/axs/xserver/Keyboard$KeymapStateMask;

    .line 73
    new-instance p1, Lcom/eltechs/axs/xserver/KeyboardListenersList;

    invoke-direct {p1}, Lcom/eltechs/axs/xserver/KeyboardListenersList;-><init>()V

    iput-object p1, p0, Lcom/eltechs/axs/xserver/Keyboard;->keylisteners:Lcom/eltechs/axs/xserver/KeyboardListenersList;

    .line 74
    new-instance p1, Lcom/eltechs/axs/xserver/KeyboardModifiersListenerList;

    invoke-direct {p1}, Lcom/eltechs/axs/xserver/KeyboardModifiersListenerList;-><init>()V

    iput-object p1, p0, Lcom/eltechs/axs/xserver/Keyboard;->modifierListeners:Lcom/eltechs/axs/xserver/KeyboardModifiersListenerList;

    return-void
.end method

.method private countModifierPressedKeys(Lcom/eltechs/axs/xserver/KeyButNames;)I
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/eltechs/axs/xserver/Keyboard;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getKeyboardModelManager()Lcom/eltechs/axs/xserver/KeyboardModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/KeyboardModelManager;->getKeyboardModel()Lcom/eltechs/axs/xserver/KeyboardModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/KeyboardModel;->getModifiersLayout()Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;

    move-result-object v0

    .line 141
    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->getModifierKeycodes(Lcom/eltechs/axs/xserver/KeyButNames;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    .line 143
    iget-object v2, p0, Lcom/eltechs/axs/xserver/Keyboard;->keymapStateMask:Lcom/eltechs/axs/xserver/Keyboard$KeymapStateMask;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {v2, v1}, Lcom/eltechs/axs/xserver/Keyboard$KeymapStateMask;->isKeycodePressed(B)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getModifierForKeycode(B)Lcom/eltechs/axs/xserver/KeyButNames;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/eltechs/axs/xserver/Keyboard;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getKeyboardModelManager()Lcom/eltechs/axs/xserver/KeyboardModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/KeyboardModelManager;->getKeyboardModel()Lcom/eltechs/axs/xserver/KeyboardModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/KeyboardModel;->getModifiersLayout()Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;

    move-result-object v0

    .line 160
    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->getModifierByKeycode(B)Lcom/eltechs/axs/xserver/KeyButNames;

    move-result-object p1

    return-object p1
.end method

.method private updateModifiersMaskForKeyPressed(B)Lcom/eltechs/axs/xserver/impl/masks/Mask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/KeyButNames;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/eltechs/axs/xserver/Keyboard;->currentModifiersMask:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    .line 86
    iget-object v1, p0, Lcom/eltechs/axs/xserver/Keyboard;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/XServer;->getKeyboardModelManager()Lcom/eltechs/axs/xserver/KeyboardModelManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/eltechs/axs/xserver/KeyboardModelManager;->getKeyboardModel()Lcom/eltechs/axs/xserver/KeyboardModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/KeyboardModel;->getModifiersLayout()Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;

    move-result-object v1

    .line 87
    invoke-virtual {v1, p1}, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->getModifierByKeycode(B)Lcom/eltechs/axs/xserver/KeyButNames;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 88
    iget-object v2, p0, Lcom/eltechs/axs/xserver/Keyboard;->currentModifiersMask:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    invoke-virtual {v2, p1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    const-class v0, Lcom/eltechs/axs/xserver/KeyButNames;

    iget-object v2, p0, Lcom/eltechs/axs/xserver/Keyboard;->currentModifiersMask:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->getRawMask()I

    move-result v2

    invoke-static {v0, v2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->create(Ljava/lang/Class;I)Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v0

    .line 92
    iget-object v2, p0, Lcom/eltechs/axs/xserver/Keyboard;->currentModifiersMask:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    invoke-virtual {v2, p1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->set(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)V

    .line 93
    invoke-virtual {v1, p1}, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->isModifierSticky(Lcom/eltechs/axs/xserver/KeyButNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/eltechs/axs/xserver/Keyboard;->ignoreKeyReleaseModifiersMask:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    invoke-virtual {v1, p1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v1

    invoke-static {v1}, Lcom/eltechs/axs/helpers/Assert;->isFalse(Z)V

    .line 96
    iget-object v1, p0, Lcom/eltechs/axs/xserver/Keyboard;->ignoreKeyReleaseModifiersMask:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    invoke-virtual {v1, p1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->set(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)V

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/eltechs/axs/xserver/Keyboard;->modifierListeners:Lcom/eltechs/axs/xserver/KeyboardModifiersListenerList;

    iget-object v1, p0, Lcom/eltechs/axs/xserver/Keyboard;->currentModifiersMask:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    invoke-virtual {p1, v1}, Lcom/eltechs/axs/xserver/KeyboardModifiersListenerList;->sendModifiersChanged(Lcom/eltechs/axs/xserver/impl/masks/Mask;)V

    :cond_1
    return-object v0
.end method

.method private updateModifiersMaskForKeyReleased(B)Lcom/eltechs/axs/xserver/impl/masks/Mask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/KeyButNames;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/eltechs/axs/xserver/Keyboard;->currentModifiersMask:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    .line 112
    iget-object v1, p0, Lcom/eltechs/axs/xserver/Keyboard;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/XServer;->getKeyboardModelManager()Lcom/eltechs/axs/xserver/KeyboardModelManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/eltechs/axs/xserver/KeyboardModelManager;->getKeyboardModel()Lcom/eltechs/axs/xserver/KeyboardModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/KeyboardModel;->getModifiersLayout()Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;

    move-result-object v1

    .line 113
    invoke-virtual {v1, p1}, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->getModifierByKeycode(B)Lcom/eltechs/axs/xserver/KeyButNames;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 114
    invoke-direct {p0, p1}, Lcom/eltechs/axs/xserver/Keyboard;->countModifierPressedKeys(Lcom/eltechs/axs/xserver/KeyButNames;)I

    move-result v2

    if-nez v2, :cond_1

    .line 116
    iget-object v2, p0, Lcom/eltechs/axs/xserver/Keyboard;->currentModifiersMask:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    invoke-virtual {v2, p1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v2

    invoke-static {v2}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 118
    iget-object v2, p0, Lcom/eltechs/axs/xserver/Keyboard;->ignoreKeyReleaseModifiersMask:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    invoke-virtual {v2, p1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {v1, p1}, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->isModifierSticky(Lcom/eltechs/axs/xserver/KeyButNames;)Z

    move-result v1

    invoke-static {v1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 121
    iget-object v1, p0, Lcom/eltechs/axs/xserver/Keyboard;->ignoreKeyReleaseModifiersMask:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    invoke-virtual {v1, p1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->clear(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)V

    return-object v0

    .line 124
    :cond_0
    const-class v0, Lcom/eltechs/axs/xserver/KeyButNames;

    iget-object v1, p0, Lcom/eltechs/axs/xserver/Keyboard;->currentModifiersMask:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->getRawMask()I

    move-result v1

    invoke-static {v0, v1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->create(Ljava/lang/Class;I)Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/eltechs/axs/xserver/Keyboard;->currentModifiersMask:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    invoke-virtual {v1, p1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->clear(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)V

    .line 126
    iget-object p1, p0, Lcom/eltechs/axs/xserver/Keyboard;->modifierListeners:Lcom/eltechs/axs/xserver/KeyboardModifiersListenerList;

    iget-object v1, p0, Lcom/eltechs/axs/xserver/Keyboard;->currentModifiersMask:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    invoke-virtual {p1, v1}, Lcom/eltechs/axs/xserver/KeyboardModifiersListenerList;->sendModifiersChanged(Lcom/eltechs/axs/xserver/impl/masks/Mask;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public addKeyListener(Lcom/eltechs/axs/xserver/KeyboardListener;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/eltechs/axs/xserver/Keyboard;->keylisteners:Lcom/eltechs/axs/xserver/KeyboardListenersList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/KeyboardListenersList;->addListener(Lcom/eltechs/axs/xserver/KeyboardListener;)V

    return-void
.end method

.method public addModifierListener(Lcom/eltechs/axs/xserver/KeyboardModifiersListener;)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/eltechs/axs/xserver/Keyboard;->modifierListeners:Lcom/eltechs/axs/xserver/KeyboardModifiersListenerList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/KeyboardModifiersListenerList;->addListener(Lcom/eltechs/axs/xserver/KeyboardModifiersListener;)V

    return-void
.end method

.method public getModifiersMask()Lcom/eltechs/axs/xserver/impl/masks/Mask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/KeyButNames;",
            ">;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/eltechs/axs/xserver/Keyboard;->currentModifiersMask:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    return-object v0
.end method

.method public keyPressed(BI)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/eltechs/axs/xserver/Keyboard;->keymapStateMask:Lcom/eltechs/axs/xserver/Keyboard$KeymapStateMask;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/Keyboard$KeymapStateMask;->isKeycodePressed(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0, p1}, Lcom/eltechs/axs/xserver/Keyboard;->getModifierForKeycode(B)Lcom/eltechs/axs/xserver/KeyButNames;

    move-result-object v0

    if-nez v0, :cond_1

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/xserver/Keyboard;->keymapStateMask:Lcom/eltechs/axs/xserver/Keyboard$KeymapStateMask;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/Keyboard$KeymapStateMask;->setKeycode(B)V

    .line 179
    invoke-direct {p0, p1}, Lcom/eltechs/axs/xserver/Keyboard;->updateModifiersMaskForKeyPressed(B)Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/eltechs/axs/xserver/Keyboard;->keylisteners:Lcom/eltechs/axs/xserver/KeyboardListenersList;

    invoke-virtual {v1, p1, p2, v0}, Lcom/eltechs/axs/xserver/KeyboardListenersList;->sendKeyPressed(BILcom/eltechs/axs/xserver/impl/masks/Mask;)V

    :cond_1
    return-void
.end method

.method public keyReleased(BI)V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/eltechs/axs/xserver/Keyboard;->keymapStateMask:Lcom/eltechs/axs/xserver/Keyboard$KeymapStateMask;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/Keyboard$KeymapStateMask;->isKeycodePressed(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/eltechs/axs/xserver/Keyboard;->keymapStateMask:Lcom/eltechs/axs/xserver/Keyboard$KeymapStateMask;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/Keyboard$KeymapStateMask;->clearKeycode(B)V

    .line 194
    invoke-direct {p0, p1}, Lcom/eltechs/axs/xserver/Keyboard;->updateModifiersMaskForKeyReleased(B)Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/eltechs/axs/xserver/Keyboard;->keylisteners:Lcom/eltechs/axs/xserver/KeyboardListenersList;

    invoke-virtual {v1, p1, p2, v0}, Lcom/eltechs/axs/xserver/KeyboardListenersList;->sendKeyReleased(BILcom/eltechs/axs/xserver/impl/masks/Mask;)V

    :cond_0
    return-void
.end method

.method public removeKeyListener(Lcom/eltechs/axs/xserver/KeyboardListener;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/eltechs/axs/xserver/Keyboard;->keylisteners:Lcom/eltechs/axs/xserver/KeyboardListenersList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/KeyboardListenersList;->removeListener(Lcom/eltechs/axs/xserver/KeyboardListener;)V

    return-void
.end method

.method public removeModifierListener(Lcom/eltechs/axs/xserver/KeyboardModifiersListener;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/eltechs/axs/xserver/Keyboard;->modifierListeners:Lcom/eltechs/axs/xserver/KeyboardModifiersListenerList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/KeyboardModifiersListenerList;->removeListener(Lcom/eltechs/axs/xserver/KeyboardModifiersListener;)V

    return-void
.end method
