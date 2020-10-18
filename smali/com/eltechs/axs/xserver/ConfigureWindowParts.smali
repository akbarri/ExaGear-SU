.class public final enum Lcom/eltechs/axs/xserver/ConfigureWindowParts;
.super Ljava/lang/Enum;
.source "ConfigureWindowParts.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/xserver/ConfigureWindowParts;",
        ">;",
        "Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/xserver/ConfigureWindowParts;

.field public static final enum BORDER_WIDTH:Lcom/eltechs/axs/xserver/ConfigureWindowParts;

.field public static final enum HEIGHT:Lcom/eltechs/axs/xserver/ConfigureWindowParts;

.field public static final enum SIBLING:Lcom/eltechs/axs/xserver/ConfigureWindowParts;

.field public static final enum STACK_MODE:Lcom/eltechs/axs/xserver/ConfigureWindowParts;

.field public static final enum WIDTH:Lcom/eltechs/axs/xserver/ConfigureWindowParts;

.field public static final enum X:Lcom/eltechs/axs/xserver/ConfigureWindowParts;

.field public static final enum Y:Lcom/eltechs/axs/xserver/ConfigureWindowParts;


# instance fields
.field private final part:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 12
    new-instance v0, Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    const-string v1, "X"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/ConfigureWindowParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/ConfigureWindowParts;->X:Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    .line 13
    new-instance v0, Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    const-string v1, "Y"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/eltechs/axs/xserver/ConfigureWindowParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/ConfigureWindowParts;->Y:Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    .line 14
    new-instance v0, Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    const-string v1, "WIDTH"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lcom/eltechs/axs/xserver/ConfigureWindowParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/ConfigureWindowParts;->WIDTH:Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    .line 15
    new-instance v0, Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    const-string v1, "HEIGHT"

    const/4 v6, 0x3

    const/16 v7, 0x8

    invoke-direct {v0, v1, v6, v7}, Lcom/eltechs/axs/xserver/ConfigureWindowParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/ConfigureWindowParts;->HEIGHT:Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    .line 16
    new-instance v0, Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    const-string v1, "BORDER_WIDTH"

    const/16 v7, 0x10

    invoke-direct {v0, v1, v5, v7}, Lcom/eltechs/axs/xserver/ConfigureWindowParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/ConfigureWindowParts;->BORDER_WIDTH:Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    .line 17
    new-instance v0, Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    const-string v1, "SIBLING"

    const/4 v7, 0x5

    const/16 v8, 0x20

    invoke-direct {v0, v1, v7, v8}, Lcom/eltechs/axs/xserver/ConfigureWindowParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/ConfigureWindowParts;->SIBLING:Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    .line 18
    new-instance v0, Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    const-string v1, "STACK_MODE"

    const/4 v8, 0x6

    const/16 v9, 0x40

    invoke-direct {v0, v1, v8, v9}, Lcom/eltechs/axs/xserver/ConfigureWindowParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/ConfigureWindowParts;->STACK_MODE:Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    const/4 v0, 0x7

    .line 10
    new-array v0, v0, [Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    sget-object v1, Lcom/eltechs/axs/xserver/ConfigureWindowParts;->X:Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/ConfigureWindowParts;->Y:Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/xserver/ConfigureWindowParts;->WIDTH:Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eltechs/axs/xserver/ConfigureWindowParts;->HEIGHT:Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    aput-object v1, v0, v6

    sget-object v1, Lcom/eltechs/axs/xserver/ConfigureWindowParts;->BORDER_WIDTH:Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    aput-object v1, v0, v5

    sget-object v1, Lcom/eltechs/axs/xserver/ConfigureWindowParts;->SIBLING:Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    aput-object v1, v0, v7

    sget-object v1, Lcom/eltechs/axs/xserver/ConfigureWindowParts;->STACK_MODE:Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    aput-object v1, v0, v8

    sput-object v0, Lcom/eltechs/axs/xserver/ConfigureWindowParts;->$VALUES:[Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/eltechs/axs/xserver/ConfigureWindowParts;->part:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/xserver/ConfigureWindowParts;
    .locals 1

    .line 10
    const-class v0, Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/xserver/ConfigureWindowParts;
    .locals 1

    .line 10
    sget-object v0, Lcom/eltechs/axs/xserver/ConfigureWindowParts;->$VALUES:[Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    invoke-virtual {v0}, [Lcom/eltechs/axs/xserver/ConfigureWindowParts;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/xserver/ConfigureWindowParts;

    return-object v0
.end method


# virtual methods
.method public flagValue()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/eltechs/axs/xserver/ConfigureWindowParts;->part:I

    return v0
.end method
