.class Lcom/eltechs/axs/xserver/Keyboard$KeymapStateMask;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/xserver/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeymapStateMask"
.end annotation


# instance fields
.field private final keys:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 35
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/eltechs/axs/xserver/Keyboard$KeymapStateMask;->keys:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/eltechs/axs/xserver/Keyboard$1;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/eltechs/axs/xserver/Keyboard$KeymapStateMask;-><init>()V

    return-void
.end method


# virtual methods
.method public clearKeycode(B)V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/eltechs/axs/xserver/Keyboard$KeymapStateMask;->keys:[B

    invoke-static {p1}, Lcom/eltechs/axs/helpers/ArithHelpers;->extendAsUnsigned(B)I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    aget-byte v2, v0, v1

    and-int/lit8 p1, p1, 0x7

    const/4 v3, 0x1

    shl-int p1, v3, p1

    not-int p1, p1

    and-int/2addr p1, v2

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public isKeycodePressed(B)Z
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/eltechs/axs/xserver/Keyboard$KeymapStateMask;->keys:[B

    invoke-static {p1}, Lcom/eltechs/axs/helpers/ArithHelpers;->extendAsUnsigned(B)I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    aget-byte v0, v0, v1

    and-int/lit8 p1, p1, 0x7

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setKeycode(B)V
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/eltechs/axs/xserver/Keyboard$KeymapStateMask;->keys:[B

    invoke-static {p1}, Lcom/eltechs/axs/helpers/ArithHelpers;->extendAsUnsigned(B)I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    aget-byte v2, v0, v1

    and-int/lit8 p1, p1, 0x7

    const/4 v3, 0x1

    shl-int p1, v3, p1

    or-int/2addr p1, v2

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method
