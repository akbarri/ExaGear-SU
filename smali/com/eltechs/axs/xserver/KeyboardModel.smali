.class public Lcom/eltechs/axs/xserver/KeyboardModel;
.super Ljava/lang/Object;
.source "KeyboardModel.java"


# static fields
.field public static final KEYSYMS_PER_KEYCODE_IN_LAYOUT:I = 0x2

.field public static final KEYS_COUNT:I = 0xf8

.field public static final MAX_KEYCODE:I = 0xff

.field public static final MIN_KEYCODE:I = 0x8


# instance fields
.field private final keymap:[[I

.field private final modifiersLayout:Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;


# direct methods
.method public varargs constructor <init>(Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;[Lcom/eltechs/axs/xserver/KeyboardLayout;)V
    .locals 8

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/eltechs/axs/xserver/KeyboardModel;->modifiersLayout:Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x7f

    .line 26
    array-length v2, p2

    if-gt v2, v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Can have at most 127 keyboard layouts"

    invoke-static {v1, v2}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    const-string v1, "Keyboard layout must define 2 keysyms per keycode: for minuscule and majuscule letters."

    .line 27
    invoke-static {p1, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    const/4 v1, 0x2

    .line 29
    array-length v2, p2

    mul-int/2addr v2, v1

    new-array v2, v2, [[I

    iput-object v2, p0, Lcom/eltechs/axs/xserver/KeyboardModel;->keymap:[[I

    move v2, v0

    .line 30
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 32
    iget-object v3, p0, Lcom/eltechs/axs/xserver/KeyboardModel;->keymap:[[I

    mul-int v4, v1, v2

    add-int/lit8 v5, v4, 0x0

    const/16 v6, 0xf8

    new-array v7, v6, [I

    aput-object v7, v3, v5

    .line 33
    iget-object v3, p0, Lcom/eltechs/axs/xserver/KeyboardModel;->keymap:[[I

    add-int/2addr v4, p1

    new-array v7, v6, [I

    aput-object v7, v3, v4

    .line 34
    aget-object v3, p2, v2

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->getMinusculeKeysyms()[I

    move-result-object v3

    iget-object v7, p0, Lcom/eltechs/axs/xserver/KeyboardModel;->keymap:[[I

    aget-object v5, v7, v5

    invoke-static {v3, v0, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    aget-object v3, p2, v2

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/KeyboardLayout;->getMajusculeKeysyms()[I

    move-result-object v3

    iget-object v5, p0, Lcom/eltechs/axs/xserver/KeyboardModel;->keymap:[[I

    aget-object v4, v5, v4

    invoke-static {v3, v0, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public getKeysymsForKeycode(I[I)V
    .locals 3

    const/4 v0, 0x0

    .line 46
    :goto_0
    iget-object v1, p0, Lcom/eltechs/axs/xserver/KeyboardModel;->keymap:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/eltechs/axs/xserver/KeyboardModel;->keymap:[[I

    aget-object v1, v1, v0

    add-int/lit8 v2, p1, -0x8

    aget v1, v1, v2

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getKeysymsForKeycodeGroup1(I[I)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/eltechs/axs/xserver/KeyboardModel;->keymap:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    add-int/lit8 p1, p1, -0x8

    aget v0, v0, p1

    aput v0, p2, v1

    .line 55
    iget-object v0, p0, Lcom/eltechs/axs/xserver/KeyboardModel;->keymap:[[I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    aget p1, v0, p1

    aput p1, p2, v1

    return-void
.end method

.method public getLayoutsCount()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/eltechs/axs/xserver/KeyboardModel;->keymap:[[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getModifiersLayout()Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/eltechs/axs/xserver/KeyboardModel;->modifiersLayout:Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;

    return-object v0
.end method

.method public isKeycodeValid(B)Z
    .locals 1

    .line 77
    invoke-static {p1}, Lcom/eltechs/axs/helpers/ArithHelpers;->extendAsUnsigned(B)I

    move-result p1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setKeysymsForKeycodeGroup1(III)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/eltechs/axs/xserver/KeyboardModel;->keymap:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    add-int/lit8 p1, p1, -0x8

    aput p2, v0, p1

    .line 61
    iget-object p2, p0, Lcom/eltechs/axs/xserver/KeyboardModel;->keymap:[[I

    const/4 v0, 0x1

    aget-object p2, p2, v0

    aput p3, p2, p1

    return-void
.end method
