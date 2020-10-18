.class public final enum Lcom/eltechs/axs/xserver/KeyButNames;
.super Ljava/lang/Enum;
.source "KeyButNames.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/xserver/KeyButNames;",
        ">;",
        "Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/xserver/KeyButNames;

.field public static final enum ALT:Lcom/eltechs/axs/xserver/KeyButNames;

.field public static final enum BUTTON1:Lcom/eltechs/axs/xserver/KeyButNames;

.field public static final enum BUTTON2:Lcom/eltechs/axs/xserver/KeyButNames;

.field public static final enum BUTTON3:Lcom/eltechs/axs/xserver/KeyButNames;

.field public static final enum BUTTON4:Lcom/eltechs/axs/xserver/KeyButNames;

.field public static final enum BUTTON5:Lcom/eltechs/axs/xserver/KeyButNames;

.field public static final enum BUTTON6:Lcom/eltechs/axs/xserver/KeyButNames;

.field public static final enum BUTTON7:Lcom/eltechs/axs/xserver/KeyButNames;

.field public static final enum CAPS_LOCK:Lcom/eltechs/axs/xserver/KeyButNames;

.field public static final enum CONTROL:Lcom/eltechs/axs/xserver/KeyButNames;

.field public static final enum MOD3:Lcom/eltechs/axs/xserver/KeyButNames;

.field public static final enum MOD4:Lcom/eltechs/axs/xserver/KeyButNames;

.field public static final enum MOD5:Lcom/eltechs/axs/xserver/KeyButNames;

.field public static final enum NUM_LOCK:Lcom/eltechs/axs/xserver/KeyButNames;

.field public static final enum SHIFT:Lcom/eltechs/axs/xserver/KeyButNames;


# instance fields
.field private final flag:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 18
    new-instance v0, Lcom/eltechs/axs/xserver/KeyButNames;

    const-string v1, "SHIFT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/KeyButNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/KeyButNames;->SHIFT:Lcom/eltechs/axs/xserver/KeyButNames;

    .line 19
    new-instance v0, Lcom/eltechs/axs/xserver/KeyButNames;

    const-string v1, "CAPS_LOCK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/eltechs/axs/xserver/KeyButNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/KeyButNames;->CAPS_LOCK:Lcom/eltechs/axs/xserver/KeyButNames;

    .line 20
    new-instance v0, Lcom/eltechs/axs/xserver/KeyButNames;

    const-string v1, "CONTROL"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lcom/eltechs/axs/xserver/KeyButNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/KeyButNames;->CONTROL:Lcom/eltechs/axs/xserver/KeyButNames;

    .line 21
    new-instance v0, Lcom/eltechs/axs/xserver/KeyButNames;

    const-string v1, "ALT"

    const/4 v6, 0x3

    const/16 v7, 0x8

    invoke-direct {v0, v1, v6, v7}, Lcom/eltechs/axs/xserver/KeyButNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/KeyButNames;->ALT:Lcom/eltechs/axs/xserver/KeyButNames;

    .line 22
    new-instance v0, Lcom/eltechs/axs/xserver/KeyButNames;

    const-string v1, "NUM_LOCK"

    const/16 v8, 0x10

    invoke-direct {v0, v1, v5, v8}, Lcom/eltechs/axs/xserver/KeyButNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/KeyButNames;->NUM_LOCK:Lcom/eltechs/axs/xserver/KeyButNames;

    .line 23
    new-instance v0, Lcom/eltechs/axs/xserver/KeyButNames;

    const-string v1, "MOD3"

    const/4 v8, 0x5

    const/16 v9, 0x20

    invoke-direct {v0, v1, v8, v9}, Lcom/eltechs/axs/xserver/KeyButNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/KeyButNames;->MOD3:Lcom/eltechs/axs/xserver/KeyButNames;

    .line 24
    new-instance v0, Lcom/eltechs/axs/xserver/KeyButNames;

    const-string v1, "MOD4"

    const/4 v9, 0x6

    const/16 v10, 0x40

    invoke-direct {v0, v1, v9, v10}, Lcom/eltechs/axs/xserver/KeyButNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/KeyButNames;->MOD4:Lcom/eltechs/axs/xserver/KeyButNames;

    .line 25
    new-instance v0, Lcom/eltechs/axs/xserver/KeyButNames;

    const-string v1, "MOD5"

    const/4 v10, 0x7

    const/16 v11, 0x80

    invoke-direct {v0, v1, v10, v11}, Lcom/eltechs/axs/xserver/KeyButNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/KeyButNames;->MOD5:Lcom/eltechs/axs/xserver/KeyButNames;

    .line 26
    new-instance v0, Lcom/eltechs/axs/xserver/KeyButNames;

    const-string v1, "BUTTON1"

    const/16 v11, 0x100

    invoke-direct {v0, v1, v7, v11}, Lcom/eltechs/axs/xserver/KeyButNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/KeyButNames;->BUTTON1:Lcom/eltechs/axs/xserver/KeyButNames;

    .line 27
    new-instance v0, Lcom/eltechs/axs/xserver/KeyButNames;

    const-string v1, "BUTTON2"

    const/16 v11, 0x9

    const/16 v12, 0x200

    invoke-direct {v0, v1, v11, v12}, Lcom/eltechs/axs/xserver/KeyButNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/KeyButNames;->BUTTON2:Lcom/eltechs/axs/xserver/KeyButNames;

    .line 28
    new-instance v0, Lcom/eltechs/axs/xserver/KeyButNames;

    const-string v1, "BUTTON3"

    const/16 v12, 0xa

    const/16 v13, 0x400

    invoke-direct {v0, v1, v12, v13}, Lcom/eltechs/axs/xserver/KeyButNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/KeyButNames;->BUTTON3:Lcom/eltechs/axs/xserver/KeyButNames;

    .line 29
    new-instance v0, Lcom/eltechs/axs/xserver/KeyButNames;

    const-string v1, "BUTTON4"

    const/16 v13, 0xb

    const/16 v14, 0x800

    invoke-direct {v0, v1, v13, v14}, Lcom/eltechs/axs/xserver/KeyButNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/KeyButNames;->BUTTON4:Lcom/eltechs/axs/xserver/KeyButNames;

    .line 30
    new-instance v0, Lcom/eltechs/axs/xserver/KeyButNames;

    const-string v1, "BUTTON5"

    const/16 v14, 0xc

    const/16 v15, 0x1000

    invoke-direct {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/KeyButNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/KeyButNames;->BUTTON5:Lcom/eltechs/axs/xserver/KeyButNames;

    .line 33
    new-instance v0, Lcom/eltechs/axs/xserver/KeyButNames;

    const-string v1, "BUTTON6"

    const/16 v15, 0xd

    const/high16 v14, 0x20000000

    invoke-direct {v0, v1, v15, v14}, Lcom/eltechs/axs/xserver/KeyButNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/KeyButNames;->BUTTON6:Lcom/eltechs/axs/xserver/KeyButNames;

    .line 34
    new-instance v0, Lcom/eltechs/axs/xserver/KeyButNames;

    const-string v1, "BUTTON7"

    const/16 v14, 0xe

    const/high16 v15, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/KeyButNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/KeyButNames;->BUTTON7:Lcom/eltechs/axs/xserver/KeyButNames;

    const/16 v0, 0xf

    .line 16
    new-array v0, v0, [Lcom/eltechs/axs/xserver/KeyButNames;

    sget-object v1, Lcom/eltechs/axs/xserver/KeyButNames;->SHIFT:Lcom/eltechs/axs/xserver/KeyButNames;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/KeyButNames;->CAPS_LOCK:Lcom/eltechs/axs/xserver/KeyButNames;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/xserver/KeyButNames;->CONTROL:Lcom/eltechs/axs/xserver/KeyButNames;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eltechs/axs/xserver/KeyButNames;->ALT:Lcom/eltechs/axs/xserver/KeyButNames;

    aput-object v1, v0, v6

    sget-object v1, Lcom/eltechs/axs/xserver/KeyButNames;->NUM_LOCK:Lcom/eltechs/axs/xserver/KeyButNames;

    aput-object v1, v0, v5

    sget-object v1, Lcom/eltechs/axs/xserver/KeyButNames;->MOD3:Lcom/eltechs/axs/xserver/KeyButNames;

    aput-object v1, v0, v8

    sget-object v1, Lcom/eltechs/axs/xserver/KeyButNames;->MOD4:Lcom/eltechs/axs/xserver/KeyButNames;

    aput-object v1, v0, v9

    sget-object v1, Lcom/eltechs/axs/xserver/KeyButNames;->MOD5:Lcom/eltechs/axs/xserver/KeyButNames;

    aput-object v1, v0, v10

    sget-object v1, Lcom/eltechs/axs/xserver/KeyButNames;->BUTTON1:Lcom/eltechs/axs/xserver/KeyButNames;

    aput-object v1, v0, v7

    sget-object v1, Lcom/eltechs/axs/xserver/KeyButNames;->BUTTON2:Lcom/eltechs/axs/xserver/KeyButNames;

    aput-object v1, v0, v11

    sget-object v1, Lcom/eltechs/axs/xserver/KeyButNames;->BUTTON3:Lcom/eltechs/axs/xserver/KeyButNames;

    aput-object v1, v0, v12

    sget-object v1, Lcom/eltechs/axs/xserver/KeyButNames;->BUTTON4:Lcom/eltechs/axs/xserver/KeyButNames;

    aput-object v1, v0, v13

    sget-object v1, Lcom/eltechs/axs/xserver/KeyButNames;->BUTTON5:Lcom/eltechs/axs/xserver/KeyButNames;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/KeyButNames;->BUTTON6:Lcom/eltechs/axs/xserver/KeyButNames;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/KeyButNames;->BUTTON7:Lcom/eltechs/axs/xserver/KeyButNames;

    aput-object v1, v0, v14

    sput-object v0, Lcom/eltechs/axs/xserver/KeyButNames;->$VALUES:[Lcom/eltechs/axs/xserver/KeyButNames;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/eltechs/axs/xserver/KeyButNames;->flag:I

    return-void
.end method

.method public static clearVirtualModifiers(Lcom/eltechs/axs/xserver/impl/masks/Mask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/KeyButNames;",
            ">;)V"
        }
    .end annotation

    .line 90
    sget-object v0, Lcom/eltechs/axs/xserver/KeyButNames;->BUTTON6:Lcom/eltechs/axs/xserver/KeyButNames;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->clear(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)V

    .line 91
    sget-object v0, Lcom/eltechs/axs/xserver/KeyButNames;->BUTTON7:Lcom/eltechs/axs/xserver/KeyButNames;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->clear(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)V

    return-void
.end method

.method public static getFlagForButtonNumber(I)Lcom/eltechs/axs/xserver/KeyButNames;
    .locals 2

    .line 63
    sget-object v0, Lcom/eltechs/axs/xserver/KeyButNames;->BUTTON1:Lcom/eltechs/axs/xserver/KeyButNames;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/KeyButNames;->ordinal()I

    move-result v0

    add-int/2addr v0, p0

    const/4 p0, 0x1

    sub-int/2addr v0, p0

    .line 64
    sget-object v1, Lcom/eltechs/axs/xserver/KeyButNames;->BUTTON1:Lcom/eltechs/axs/xserver/KeyButNames;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/KeyButNames;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    sget-object v1, Lcom/eltechs/axs/xserver/KeyButNames;->BUTTON7:Lcom/eltechs/axs/xserver/KeyButNames;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/KeyButNames;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 65
    invoke-static {}, Lcom/eltechs/axs/xserver/KeyButNames;->values()[Lcom/eltechs/axs/xserver/KeyButNames;

    move-result-object p0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static isModifierReal(Lcom/eltechs/axs/xserver/KeyButNames;)Z
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/KeyButNames;->ordinal()I

    move-result p0

    sget-object v0, Lcom/eltechs/axs/xserver/KeyButNames;->BUTTON5:Lcom/eltechs/axs/xserver/KeyButNames;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/KeyButNames;->ordinal()I

    move-result v0

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/xserver/KeyButNames;
    .locals 1

    .line 16
    const-class v0, Lcom/eltechs/axs/xserver/KeyButNames;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/xserver/KeyButNames;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/xserver/KeyButNames;
    .locals 1

    .line 16
    sget-object v0, Lcom/eltechs/axs/xserver/KeyButNames;->$VALUES:[Lcom/eltechs/axs/xserver/KeyButNames;

    invoke-virtual {v0}, [Lcom/eltechs/axs/xserver/KeyButNames;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/xserver/KeyButNames;

    return-object v0
.end method


# virtual methods
.method public flagValue()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/eltechs/axs/xserver/KeyButNames;->flag:I

    return v0
.end method
