.class public final enum Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;
.super Ljava/lang/Enum;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/xserver/FocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FocusReversionPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

.field public static final enum NONE:Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

.field public static final enum PARENT:Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

.field public static final enum POINTER_ROOT:Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 42
    new-instance v0, Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;->NONE:Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

    .line 47
    new-instance v0, Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

    const-string v1, "POINTER_ROOT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;->POINTER_ROOT:Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

    .line 51
    new-instance v0, Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

    const-string v1, "PARENT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;->PARENT:Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

    const/4 v0, 0x3

    .line 37
    new-array v0, v0, [Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

    sget-object v1, Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;->NONE:Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;->POINTER_ROOT:Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;->PARENT:Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;->$VALUES:[Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;
    .locals 1

    .line 37
    const-class v0, Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;
    .locals 1

    .line 37
    sget-object v0, Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;->$VALUES:[Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

    invoke-virtual {v0}, [Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

    return-object v0
.end method
