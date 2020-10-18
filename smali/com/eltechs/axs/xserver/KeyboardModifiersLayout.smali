.class public Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;
.super Ljava/lang/Object;
.source "KeyboardModifiersLayout.java"


# static fields
.field public static final KEYCODES_PER_MODIFIER_NUM:I = 0x4

.field public static final MODIFIERS_NUM:I

.field private static final MODIFIER_MAX:I


# instance fields
.field private modifierStickness:[Z

.field private modifierToKeycodes:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    sget-object v0, Lcom/eltechs/axs/xserver/KeyButNames;->MOD5:Lcom/eltechs/axs/xserver/KeyButNames;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/KeyButNames;->ordinal()I

    move-result v0

    sput v0, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->MODIFIER_MAX:I

    .line 21
    sget v0, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->MODIFIER_MAX:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->MODIFIERS_NUM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget v0, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->MODIFIERS_NUM:I

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->modifierToKeycodes:[[B

    const/4 v0, 0x0

    .line 35
    :goto_0
    sget v1, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->MODIFIERS_NUM:I

    if-ge v0, v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->modifierToKeycodes:[[B

    const/4 v2, 0x4

    new-array v2, v2, [B

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    sget v0, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->MODIFIERS_NUM:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->modifierStickness:[Z

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;)[[B
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->modifierToKeycodes:[[B

    return-object p0
.end method


# virtual methods
.method public getModifierByKeycode(B)Lcom/eltechs/axs/xserver/KeyButNames;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 117
    :goto_0
    sget v2, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->MODIFIERS_NUM:I

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 119
    iget-object v3, p0, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->modifierToKeycodes:[[B

    aget-object v3, v3, v1

    aget-byte v3, v3, v2

    if-eqz v3, :cond_1

    .line 121
    iget-object v3, p0, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->modifierToKeycodes:[[B

    aget-object v3, v3, v1

    aget-byte v3, v3, v2

    if-ne v3, p1, :cond_0

    .line 123
    invoke-static {}, Lcom/eltechs/axs/xserver/KeyButNames;->values()[Lcom/eltechs/axs/xserver/KeyButNames;

    move-result-object p1

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getModifierKeycodes(Lcom/eltechs/axs/xserver/KeyButNames;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/KeyButNames;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout$1;

    invoke-direct {v0, p0, p1}, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout$1;-><init>(Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;Lcom/eltechs/axs/xserver/KeyButNames;)V

    return-object v0
.end method

.method public isModifierSticky(Lcom/eltechs/axs/xserver/KeyButNames;)Z
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->modifierStickness:[Z

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/KeyButNames;->ordinal()I

    move-result p1

    aget-boolean p1, v0, p1

    return p1
.end method

.method public setKeycodeToModifier(BLcom/eltechs/axs/xserver/KeyButNames;)V
    .locals 5

    .line 94
    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/KeyButNames;->ordinal()I

    move-result v0

    sget v1, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->MODIFIER_MAX:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 96
    iget-object v0, p0, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->modifierToKeycodes:[[B

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/KeyButNames;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    move v1, v3

    :goto_1
    const/4 v4, 0x4

    if-ge v1, v4, :cond_2

    .line 99
    aget-byte v4, v0, v1

    if-nez v4, :cond_1

    .line 101
    aput-byte p1, v0, v1

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "Unable to assign keycode %d to modifier %d: too many keycodes already assigned"

    const/4 v1, 0x2

    .line 106
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/KeyButNames;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    return-void
.end method

.method public setModifierSticky(Lcom/eltechs/axs/xserver/KeyButNames;Z)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/eltechs/axs/xserver/KeyboardModifiersLayout;->modifierStickness:[Z

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/KeyButNames;->ordinal()I

    move-result p1

    aput-boolean p2, v0, p1

    return-void
.end method
