.class public Lcom/eltechs/axs/xserver/WindowAttributes;
.super Ljava/lang/Object;
.source "WindowAttributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;,
        Lcom/eltechs/axs/xserver/WindowAttributes$BackingStore;
    }
.end annotation


# instance fields
.field private backingPixel:I

.field private backingPlanes:I

.field private backingStore:Lcom/eltechs/axs/xserver/WindowAttributes$BackingStore;

.field private bitGravity:Lcom/eltechs/axs/xserver/BitGravity;

.field private borderWidth:I

.field private cursor:Lcom/eltechs/axs/xserver/Cursor;

.field private doNotPropagateMask:Lcom/eltechs/axs/xserver/impl/masks/Mask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/EventName;",
            ">;"
        }
    .end annotation
.end field

.field private isMapped:Z

.field private overrideRedirect:Z

.field private saveUnder:Z

.field private winGravity:Lcom/eltechs/axs/xserver/WinGravity;

.field private final window:Lcom/eltechs/axs/xserver/Window;

.field private final windowChangeListenersList:Lcom/eltechs/axs/xserver/WindowChangeListenersList;

.field private final windowClass:Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;Lcom/eltechs/axs/xserver/WindowChangeListenersList;Lcom/eltechs/axs/xserver/Window;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lcom/eltechs/axs/xserver/WindowAttributes$BackingStore;->NOT_USEFUL:Lcom/eltechs/axs/xserver/WindowAttributes$BackingStore;

    iput-object v0, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->backingStore:Lcom/eltechs/axs/xserver/WindowAttributes$BackingStore;

    .line 47
    iput-object p1, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->windowClass:Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;

    .line 48
    sget-object p1, Lcom/eltechs/axs/xserver/BitGravity;->CENTER:Lcom/eltechs/axs/xserver/BitGravity;

    iput-object p1, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->bitGravity:Lcom/eltechs/axs/xserver/BitGravity;

    .line 49
    sget-object p1, Lcom/eltechs/axs/xserver/WinGravity;->CENTER:Lcom/eltechs/axs/xserver/WinGravity;

    iput-object p1, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->winGravity:Lcom/eltechs/axs/xserver/WinGravity;

    const/4 p1, 0x1

    .line 50
    iput p1, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->backingPlanes:I

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->backingPixel:I

    .line 52
    iput-boolean p1, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->saveUnder:Z

    .line 53
    iput-boolean p1, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->isMapped:Z

    .line 54
    iput-boolean p1, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->overrideRedirect:Z

    .line 55
    const-class p1, Lcom/eltechs/axs/xserver/EventName;

    invoke-static {p1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->emptyMask(Ljava/lang/Class;)Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->doNotPropagateMask:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    .line 57
    iput-object p2, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->windowChangeListenersList:Lcom/eltechs/axs/xserver/WindowChangeListenersList;

    .line 58
    iput-object p3, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->window:Lcom/eltechs/axs/xserver/Window;

    return-void
.end method


# virtual methods
.method public getBackingPixel()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->backingPixel:I

    return v0
.end method

.method public getBackingPlanes()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->backingPlanes:I

    return v0
.end method

.method public getBackingStore()Lcom/eltechs/axs/xserver/WindowAttributes$BackingStore;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->backingStore:Lcom/eltechs/axs/xserver/WindowAttributes$BackingStore;

    return-object v0
.end method

.method public getBitGravity()Lcom/eltechs/axs/xserver/BitGravity;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->bitGravity:Lcom/eltechs/axs/xserver/BitGravity;

    return-object v0
.end method

.method public getBorderWidth()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->borderWidth:I

    return v0
.end method

.method public getCursor()Lcom/eltechs/axs/xserver/Cursor;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->cursor:Lcom/eltechs/axs/xserver/Cursor;

    return-object v0
.end method

.method public getDoNotPropagateMask()Lcom/eltechs/axs/xserver/impl/masks/Mask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/EventName;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->doNotPropagateMask:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    return-object v0
.end method

.method public getWinGravity()Lcom/eltechs/axs/xserver/WinGravity;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->winGravity:Lcom/eltechs/axs/xserver/WinGravity;

    return-object v0
.end method

.method public getWindowClass()Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->windowClass:Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;

    return-object v0
.end method

.method public isMapped()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->isMapped:Z

    return v0
.end method

.method public isOverrideRedirect()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->overrideRedirect:Z

    return v0
.end method

.method public isSaveUnder()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->saveUnder:Z

    return v0
.end method

.method public setBorderWidth(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->borderWidth:I

    return-void
.end method

.method public setCursor(Lcom/eltechs/axs/xserver/Cursor;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->cursor:Lcom/eltechs/axs/xserver/Cursor;

    return-void
.end method

.method public setMapped(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->isMapped:Z

    return-void
.end method

.method public update(Lcom/eltechs/axs/xserver/impl/masks/Mask;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/BitGravity;Lcom/eltechs/axs/xserver/WinGravity;Lcom/eltechs/axs/xserver/WindowAttributes$BackingStore;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/eltechs/axs/xserver/impl/masks/Mask;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/WindowAttributeNames;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/eltechs/axs/xserver/BitGravity;",
            "Lcom/eltechs/axs/xserver/WinGravity;",
            "Lcom/eltechs/axs/xserver/WindowAttributes$BackingStore;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/EventName;",
            ">;",
            "Ljava/lang/Integer;",
            "Lcom/eltechs/axs/xserver/Cursor;",
            ")V"
        }
    .end annotation

    .line 169
    sget-object p2, Lcom/eltechs/axs/xserver/WindowAttributeNames;->BACKING_PIXEL:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 171
    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->backingPixel:I

    .line 174
    :cond_0
    sget-object p2, Lcom/eltechs/axs/xserver/WindowAttributeNames;->BACKING_PLANES:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 176
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->backingPlanes:I

    .line 179
    :cond_1
    sget-object p2, Lcom/eltechs/axs/xserver/WindowAttributeNames;->BIT_GRAVITY:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 181
    iput-object p4, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->bitGravity:Lcom/eltechs/axs/xserver/BitGravity;

    .line 184
    :cond_2
    sget-object p2, Lcom/eltechs/axs/xserver/WindowAttributeNames;->WIN_GRAVITY:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 186
    iput-object p5, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->winGravity:Lcom/eltechs/axs/xserver/WinGravity;

    .line 189
    :cond_3
    sget-object p2, Lcom/eltechs/axs/xserver/WindowAttributeNames;->BACKING_STORE:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 191
    iput-object p6, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->backingStore:Lcom/eltechs/axs/xserver/WindowAttributes$BackingStore;

    .line 194
    :cond_4
    sget-object p2, Lcom/eltechs/axs/xserver/WindowAttributeNames;->SAVE_UNDER:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 196
    invoke-virtual {p10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->saveUnder:Z

    .line 199
    :cond_5
    sget-object p2, Lcom/eltechs/axs/xserver/WindowAttributeNames;->OVERRIDE_REDIRECT:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 201
    invoke-virtual {p9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->overrideRedirect:Z

    .line 204
    :cond_6
    sget-object p2, Lcom/eltechs/axs/xserver/WindowAttributeNames;->DO_NOT_PROPAGATE_MASK:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 206
    iput-object p11, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->doNotPropagateMask:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    .line 209
    :cond_7
    sget-object p2, Lcom/eltechs/axs/xserver/WindowAttributeNames;->CURSOR:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 211
    iput-object p13, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->cursor:Lcom/eltechs/axs/xserver/Cursor;

    .line 214
    :cond_8
    iget-object p2, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->windowChangeListenersList:Lcom/eltechs/axs/xserver/WindowChangeListenersList;

    iget-object p3, p0, Lcom/eltechs/axs/xserver/WindowAttributes;->window:Lcom/eltechs/axs/xserver/Window;

    invoke-virtual {p2, p3, p1}, Lcom/eltechs/axs/xserver/WindowChangeListenersList;->sendWindowAttributeChanged(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/impl/masks/Mask;)V

    return-void
.end method
