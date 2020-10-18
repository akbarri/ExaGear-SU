.class public final enum Lcom/eltechs/axs/sysvipc/RequestCodes;
.super Ljava/lang/Enum;
.source "RequestCodes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/sysvipc/RequestCodes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/sysvipc/RequestCodes;

.field public static final enum SHMGET:Lcom/eltechs/axs/sysvipc/RequestCodes;

.field public static final enum SHM_GET_SIZE:Lcom/eltechs/axs/sysvipc/RequestCodes;

.field public static final enum SHM_GET_SIZE_AND_FD:Lcom/eltechs/axs/sysvipc/RequestCodes;

.field public static final enum SHM_GET_STAT:Lcom/eltechs/axs/sysvipc/RequestCodes;

.field public static final enum SHM_RMID:Lcom/eltechs/axs/sysvipc/RequestCodes;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    new-instance v0, Lcom/eltechs/axs/sysvipc/RequestCodes;

    const-string v1, "SHMGET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/eltechs/axs/sysvipc/RequestCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/sysvipc/RequestCodes;->SHMGET:Lcom/eltechs/axs/sysvipc/RequestCodes;

    .line 16
    new-instance v0, Lcom/eltechs/axs/sysvipc/RequestCodes;

    const-string v1, "SHM_GET_SIZE_AND_FD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/eltechs/axs/sysvipc/RequestCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/sysvipc/RequestCodes;->SHM_GET_SIZE_AND_FD:Lcom/eltechs/axs/sysvipc/RequestCodes;

    .line 17
    new-instance v0, Lcom/eltechs/axs/sysvipc/RequestCodes;

    const-string v1, "SHM_GET_SIZE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/eltechs/axs/sysvipc/RequestCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/sysvipc/RequestCodes;->SHM_GET_SIZE:Lcom/eltechs/axs/sysvipc/RequestCodes;

    .line 18
    new-instance v0, Lcom/eltechs/axs/sysvipc/RequestCodes;

    const-string v1, "SHM_GET_STAT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/eltechs/axs/sysvipc/RequestCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/sysvipc/RequestCodes;->SHM_GET_STAT:Lcom/eltechs/axs/sysvipc/RequestCodes;

    .line 19
    new-instance v0, Lcom/eltechs/axs/sysvipc/RequestCodes;

    const-string v1, "SHM_RMID"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/eltechs/axs/sysvipc/RequestCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/sysvipc/RequestCodes;->SHM_RMID:Lcom/eltechs/axs/sysvipc/RequestCodes;

    const/4 v0, 0x5

    .line 13
    new-array v0, v0, [Lcom/eltechs/axs/sysvipc/RequestCodes;

    sget-object v1, Lcom/eltechs/axs/sysvipc/RequestCodes;->SHMGET:Lcom/eltechs/axs/sysvipc/RequestCodes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/sysvipc/RequestCodes;->SHM_GET_SIZE_AND_FD:Lcom/eltechs/axs/sysvipc/RequestCodes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/sysvipc/RequestCodes;->SHM_GET_SIZE:Lcom/eltechs/axs/sysvipc/RequestCodes;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eltechs/axs/sysvipc/RequestCodes;->SHM_GET_STAT:Lcom/eltechs/axs/sysvipc/RequestCodes;

    aput-object v1, v0, v5

    sget-object v1, Lcom/eltechs/axs/sysvipc/RequestCodes;->SHM_RMID:Lcom/eltechs/axs/sysvipc/RequestCodes;

    aput-object v1, v0, v6

    sput-object v0, Lcom/eltechs/axs/sysvipc/RequestCodes;->$VALUES:[Lcom/eltechs/axs/sysvipc/RequestCodes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/eltechs/axs/sysvipc/RequestCodes;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/sysvipc/RequestCodes;
    .locals 1

    .line 13
    const-class v0, Lcom/eltechs/axs/sysvipc/RequestCodes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/sysvipc/RequestCodes;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/sysvipc/RequestCodes;
    .locals 1

    .line 13
    sget-object v0, Lcom/eltechs/axs/sysvipc/RequestCodes;->$VALUES:[Lcom/eltechs/axs/sysvipc/RequestCodes;

    invoke-virtual {v0}, [Lcom/eltechs/axs/sysvipc/RequestCodes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/sysvipc/RequestCodes;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/eltechs/axs/sysvipc/RequestCodes;->code:I

    return v0
.end method
