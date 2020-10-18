.class public final enum Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;
.super Ljava/lang/Enum;
.source "PixelCompositionRule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

.field public static final enum AND:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

.field public static final enum AND_INVERTED:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

.field public static final enum AND_REVERSE:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

.field public static final enum CLEAR:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

.field public static final enum COPY:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

.field public static final enum COPY_INVERTED:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

.field public static final enum EQUIV:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

.field public static final enum INVERT:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

.field public static final enum NAND:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

.field public static final enum NOR:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

.field public static final enum NO_OP:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

.field public static final enum OR:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

.field public static final enum OR_INVERTED:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

.field public static final enum OR_REVERSE:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

.field public static final enum SET:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

.field public static final enum XOR:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 15
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    const-string v1, "CLEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->CLEAR:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    .line 16
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    const-string v1, "AND"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->AND:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    .line 17
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    const-string v1, "AND_REVERSE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->AND_REVERSE:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    .line 18
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    const-string v1, "COPY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->COPY:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    .line 19
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    const-string v1, "AND_INVERTED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->AND_INVERTED:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    .line 20
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    const-string v1, "NO_OP"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->NO_OP:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    .line 21
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    const-string v1, "XOR"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->XOR:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    .line 22
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    const-string v1, "OR"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->OR:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    .line 23
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    const-string v1, "NOR"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->NOR:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    .line 24
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    const-string v1, "EQUIV"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->EQUIV:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    .line 25
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    const-string v1, "INVERT"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->INVERT:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    .line 26
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    const-string v1, "OR_REVERSE"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->OR_REVERSE:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    .line 27
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    const-string v1, "COPY_INVERTED"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->COPY_INVERTED:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    .line 28
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    const-string v1, "OR_INVERTED"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->OR_INVERTED:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    .line 29
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    const-string v1, "NAND"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->NAND:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    .line 30
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    const-string v1, "SET"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->SET:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    const/16 v0, 0x10

    .line 13
    new-array v0, v0, [Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->CLEAR:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->AND:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->AND_REVERSE:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->COPY:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    aput-object v1, v0, v5

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->AND_INVERTED:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    aput-object v1, v0, v6

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->NO_OP:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    aput-object v1, v0, v7

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->XOR:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    aput-object v1, v0, v8

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->OR:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    aput-object v1, v0, v9

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->NOR:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    aput-object v1, v0, v10

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->EQUIV:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    aput-object v1, v0, v11

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->INVERT:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    aput-object v1, v0, v12

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->OR_REVERSE:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    aput-object v1, v0, v13

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->COPY_INVERTED:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    aput-object v1, v0, v14

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->OR_INVERTED:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->NAND:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->SET:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->$VALUES:[Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;
    .locals 1

    .line 13
    const-class v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;
    .locals 1

    .line 13
    sget-object v0, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->$VALUES:[Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    invoke-virtual {v0}, [Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    return-object v0
.end method
