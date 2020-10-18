.class public final enum Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;
.super Ljava/lang/Enum;
.source "ModifierKeysyms.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/keysyms/KeysymsEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;",
        ">;",
        "Lcom/eltechs/axs/xserver/keysyms/KeysymsEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

.field public static final enum ALT_L:Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

.field public static final enum ALT_R:Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

.field public static final enum CONTROL_L:Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

.field public static final enum CONTROL_R:Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

.field public static final enum SHIFT_L:Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

.field public static final enum SHIFT_R:Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;


# instance fields
.field private final keysym:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 12
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    const-string v1, "SHIFT_L"

    const/4 v2, 0x0

    const v3, 0xffe1

    invoke-direct {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;->SHIFT_L:Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    .line 13
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    const-string v1, "SHIFT_R"

    const/4 v3, 0x1

    const v4, 0xffe2

    invoke-direct {v0, v1, v3, v4}, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;->SHIFT_R:Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    .line 14
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    const-string v1, "CONTROL_L"

    const/4 v4, 0x2

    const v5, 0xffe3

    invoke-direct {v0, v1, v4, v5}, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;->CONTROL_L:Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    .line 15
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    const-string v1, "CONTROL_R"

    const/4 v5, 0x3

    const v6, 0xffe4

    invoke-direct {v0, v1, v5, v6}, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;->CONTROL_R:Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    .line 16
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    const-string v1, "ALT_L"

    const/4 v6, 0x4

    const v7, 0xffe7

    invoke-direct {v0, v1, v6, v7}, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;->ALT_L:Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    .line 17
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    const-string v1, "ALT_R"

    const/4 v7, 0x5

    const v8, 0xffe8

    invoke-direct {v0, v1, v7, v8}, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;->ALT_R:Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    const/4 v0, 0x6

    .line 10
    new-array v0, v0, [Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;->SHIFT_L:Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;->SHIFT_R:Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;->CONTROL_L:Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;->CONTROL_R:Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    aput-object v1, v0, v5

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;->ALT_L:Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    aput-object v1, v0, v6

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;->ALT_R:Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    aput-object v1, v0, v7

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;->$VALUES:[Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;->keysym:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;
    .locals 1

    .line 10
    const-class v0, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;
    .locals 1

    .line 10
    sget-object v0, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;->$VALUES:[Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    invoke-virtual {v0}, [Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;

    return-object v0
.end method


# virtual methods
.method public getKeysym()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/eltechs/axs/xserver/keysyms/ModifierKeysyms;->keysym:I

    return v0
.end method
