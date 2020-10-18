.class public Lcom/eltechs/axs/xserver/KeyboardLayout;
.super Ljava/lang/Object;
.source "KeyboardLayout.java"


# instance fields
.field private final majKeysyms:[I

.field private final minKeysyms:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf8

    .line 16
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/eltechs/axs/xserver/KeyboardLayout;->minKeysyms:[I

    .line 17
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/eltechs/axs/xserver/KeyboardLayout;->majKeysyms:[I

    return-void
.end method


# virtual methods
.method getMajusculeKeysyms()[I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/eltechs/axs/xserver/KeyboardLayout;->majKeysyms:[I

    return-object v0
.end method

.method getMinusculeKeysyms()[I
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/eltechs/axs/xserver/KeyboardLayout;->minKeysyms:[I

    return-object v0
.end method

.method public setKeysymMapping(III)V
    .locals 3

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Keycoded 0 through 7 are not used by X11."

    .line 21
    invoke-static {v1, v2}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/eltechs/axs/xserver/KeyboardLayout;->minKeysyms:[I

    sub-int/2addr p1, v0

    aput p2, v1, p1

    .line 24
    iget-object p2, p0, Lcom/eltechs/axs/xserver/KeyboardLayout;->majKeysyms:[I

    aput p3, p2, p1

    return-void
.end method
