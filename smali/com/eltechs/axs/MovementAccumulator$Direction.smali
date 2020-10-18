.class public final enum Lcom/eltechs/axs/MovementAccumulator$Direction;
.super Ljava/lang/Enum;
.source "MovementAccumulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/MovementAccumulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/MovementAccumulator$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/MovementAccumulator$Direction;

.field public static final enum ASC:Lcom/eltechs/axs/MovementAccumulator$Direction;

.field public static final enum DESC:Lcom/eltechs/axs/MovementAccumulator$Direction;

.field public static final enum NEUTRAL:Lcom/eltechs/axs/MovementAccumulator$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 27
    new-instance v0, Lcom/eltechs/axs/MovementAccumulator$Direction;

    const-string v1, "DESC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/MovementAccumulator$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/MovementAccumulator$Direction;->DESC:Lcom/eltechs/axs/MovementAccumulator$Direction;

    .line 28
    new-instance v0, Lcom/eltechs/axs/MovementAccumulator$Direction;

    const-string v1, "NEUTRAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/MovementAccumulator$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/MovementAccumulator$Direction;->NEUTRAL:Lcom/eltechs/axs/MovementAccumulator$Direction;

    .line 29
    new-instance v0, Lcom/eltechs/axs/MovementAccumulator$Direction;

    const-string v1, "ASC"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/eltechs/axs/MovementAccumulator$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/MovementAccumulator$Direction;->ASC:Lcom/eltechs/axs/MovementAccumulator$Direction;

    const/4 v0, 0x3

    .line 25
    new-array v0, v0, [Lcom/eltechs/axs/MovementAccumulator$Direction;

    sget-object v1, Lcom/eltechs/axs/MovementAccumulator$Direction;->DESC:Lcom/eltechs/axs/MovementAccumulator$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/MovementAccumulator$Direction;->NEUTRAL:Lcom/eltechs/axs/MovementAccumulator$Direction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/MovementAccumulator$Direction;->ASC:Lcom/eltechs/axs/MovementAccumulator$Direction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/eltechs/axs/MovementAccumulator$Direction;->$VALUES:[Lcom/eltechs/axs/MovementAccumulator$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/MovementAccumulator$Direction;
    .locals 1

    .line 25
    const-class v0, Lcom/eltechs/axs/MovementAccumulator$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/MovementAccumulator$Direction;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/MovementAccumulator$Direction;
    .locals 1

    .line 25
    sget-object v0, Lcom/eltechs/axs/MovementAccumulator$Direction;->$VALUES:[Lcom/eltechs/axs/MovementAccumulator$Direction;

    invoke-virtual {v0}, [Lcom/eltechs/axs/MovementAccumulator$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/MovementAccumulator$Direction;

    return-object v0
.end method
