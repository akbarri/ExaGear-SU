.class public final enum Lcom/eltechs/axs/xserver/StackMode;
.super Ljava/lang/Enum;
.source "StackMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/xserver/StackMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/xserver/StackMode;

.field public static final enum ABOVE:Lcom/eltechs/axs/xserver/StackMode;

.field public static final enum BELOW:Lcom/eltechs/axs/xserver/StackMode;

.field public static final enum BOTTOM_IF:Lcom/eltechs/axs/xserver/StackMode;

.field public static final enum OPPOSITE:Lcom/eltechs/axs/xserver/StackMode;

.field public static final enum TOP_IF:Lcom/eltechs/axs/xserver/StackMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 9
    new-instance v0, Lcom/eltechs/axs/xserver/StackMode;

    const-string v1, "ABOVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/xserver/StackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/StackMode;->ABOVE:Lcom/eltechs/axs/xserver/StackMode;

    .line 10
    new-instance v0, Lcom/eltechs/axs/xserver/StackMode;

    const-string v1, "BELOW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/xserver/StackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/StackMode;->BELOW:Lcom/eltechs/axs/xserver/StackMode;

    .line 11
    new-instance v0, Lcom/eltechs/axs/xserver/StackMode;

    const-string v1, "TOP_IF"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/eltechs/axs/xserver/StackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/StackMode;->TOP_IF:Lcom/eltechs/axs/xserver/StackMode;

    .line 12
    new-instance v0, Lcom/eltechs/axs/xserver/StackMode;

    const-string v1, "BOTTOM_IF"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/eltechs/axs/xserver/StackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/StackMode;->BOTTOM_IF:Lcom/eltechs/axs/xserver/StackMode;

    .line 13
    new-instance v0, Lcom/eltechs/axs/xserver/StackMode;

    const-string v1, "OPPOSITE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/eltechs/axs/xserver/StackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/StackMode;->OPPOSITE:Lcom/eltechs/axs/xserver/StackMode;

    const/4 v0, 0x5

    .line 7
    new-array v0, v0, [Lcom/eltechs/axs/xserver/StackMode;

    sget-object v1, Lcom/eltechs/axs/xserver/StackMode;->ABOVE:Lcom/eltechs/axs/xserver/StackMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/StackMode;->BELOW:Lcom/eltechs/axs/xserver/StackMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/xserver/StackMode;->TOP_IF:Lcom/eltechs/axs/xserver/StackMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eltechs/axs/xserver/StackMode;->BOTTOM_IF:Lcom/eltechs/axs/xserver/StackMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/eltechs/axs/xserver/StackMode;->OPPOSITE:Lcom/eltechs/axs/xserver/StackMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/eltechs/axs/xserver/StackMode;->$VALUES:[Lcom/eltechs/axs/xserver/StackMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/xserver/StackMode;
    .locals 1

    .line 7
    const-class v0, Lcom/eltechs/axs/xserver/StackMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/xserver/StackMode;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/xserver/StackMode;
    .locals 1

    .line 7
    sget-object v0, Lcom/eltechs/axs/xserver/StackMode;->$VALUES:[Lcom/eltechs/axs/xserver/StackMode;

    invoke-virtual {v0}, [Lcom/eltechs/axs/xserver/StackMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/xserver/StackMode;

    return-object v0
.end method
