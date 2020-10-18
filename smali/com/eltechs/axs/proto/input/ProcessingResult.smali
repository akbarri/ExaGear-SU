.class public final enum Lcom/eltechs/axs/proto/input/ProcessingResult;
.super Ljava/lang/Enum;
.source "ProcessingResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/proto/input/ProcessingResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/proto/input/ProcessingResult;

.field public static final enum INCOMPLETE_BUFFER:Lcom/eltechs/axs/proto/input/ProcessingResult;

.field public static final enum PROCESSED:Lcom/eltechs/axs/proto/input/ProcessingResult;

.field public static final enum PROCESSED_KILL_CONNECTION:Lcom/eltechs/axs/proto/input/ProcessingResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lcom/eltechs/axs/proto/input/ProcessingResult;

    const-string v1, "PROCESSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/proto/input/ProcessingResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED:Lcom/eltechs/axs/proto/input/ProcessingResult;

    .line 16
    new-instance v0, Lcom/eltechs/axs/proto/input/ProcessingResult;

    const-string v1, "PROCESSED_KILL_CONNECTION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/proto/input/ProcessingResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED_KILL_CONNECTION:Lcom/eltechs/axs/proto/input/ProcessingResult;

    .line 19
    new-instance v0, Lcom/eltechs/axs/proto/input/ProcessingResult;

    const-string v1, "INCOMPLETE_BUFFER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/eltechs/axs/proto/input/ProcessingResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/proto/input/ProcessingResult;->INCOMPLETE_BUFFER:Lcom/eltechs/axs/proto/input/ProcessingResult;

    const/4 v0, 0x3

    .line 10
    new-array v0, v0, [Lcom/eltechs/axs/proto/input/ProcessingResult;

    sget-object v1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED:Lcom/eltechs/axs/proto/input/ProcessingResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED_KILL_CONNECTION:Lcom/eltechs/axs/proto/input/ProcessingResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/proto/input/ProcessingResult;->INCOMPLETE_BUFFER:Lcom/eltechs/axs/proto/input/ProcessingResult;

    aput-object v1, v0, v4

    sput-object v0, Lcom/eltechs/axs/proto/input/ProcessingResult;->$VALUES:[Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/proto/input/ProcessingResult;
    .locals 1

    .line 10
    const-class v0, Lcom/eltechs/axs/proto/input/ProcessingResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/proto/input/ProcessingResult;
    .locals 1

    .line 10
    sget-object v0, Lcom/eltechs/axs/proto/input/ProcessingResult;->$VALUES:[Lcom/eltechs/axs/proto/input/ProcessingResult;

    invoke-virtual {v0}, [Lcom/eltechs/axs/proto/input/ProcessingResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object v0
.end method
