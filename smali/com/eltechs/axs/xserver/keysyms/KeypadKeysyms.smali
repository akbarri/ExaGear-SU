.class public final enum Lcom/eltechs/axs/xserver/keysyms/KeypadKeysyms;
.super Ljava/lang/Enum;
.source "KeypadKeysyms.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/keysyms/KeysymsEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/xserver/keysyms/KeypadKeysyms;",
        ">;",
        "Lcom/eltechs/axs/xserver/keysyms/KeysymsEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/xserver/keysyms/KeypadKeysyms;

.field public static final enum KEYPAD_DEL:Lcom/eltechs/axs/xserver/keysyms/KeypadKeysyms;


# instance fields
.field private final keysym:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/KeypadKeysyms;

    const-string v1, "KEYPAD_DEL"

    const/4 v2, 0x0

    const v3, 0xff9f

    invoke-direct {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/keysyms/KeypadKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/KeypadKeysyms;->KEYPAD_DEL:Lcom/eltechs/axs/xserver/keysyms/KeypadKeysyms;

    const/4 v0, 0x1

    .line 10
    new-array v0, v0, [Lcom/eltechs/axs/xserver/keysyms/KeypadKeysyms;

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/KeypadKeysyms;->KEYPAD_DEL:Lcom/eltechs/axs/xserver/keysyms/KeypadKeysyms;

    aput-object v1, v0, v2

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/KeypadKeysyms;->$VALUES:[Lcom/eltechs/axs/xserver/keysyms/KeypadKeysyms;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/eltechs/axs/xserver/keysyms/KeypadKeysyms;->keysym:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/xserver/keysyms/KeypadKeysyms;
    .locals 1

    .line 10
    const-class v0, Lcom/eltechs/axs/xserver/keysyms/KeypadKeysyms;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/xserver/keysyms/KeypadKeysyms;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/xserver/keysyms/KeypadKeysyms;
    .locals 1

    .line 10
    sget-object v0, Lcom/eltechs/axs/xserver/keysyms/KeypadKeysyms;->$VALUES:[Lcom/eltechs/axs/xserver/keysyms/KeypadKeysyms;

    invoke-virtual {v0}, [Lcom/eltechs/axs/xserver/keysyms/KeypadKeysyms;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/xserver/keysyms/KeypadKeysyms;

    return-object v0
.end method


# virtual methods
.method public getKeysym()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/eltechs/axs/xserver/keysyms/KeypadKeysyms;->keysym:I

    return v0
.end method
