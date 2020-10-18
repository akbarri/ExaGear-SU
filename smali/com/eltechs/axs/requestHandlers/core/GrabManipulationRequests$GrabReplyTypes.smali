.class final enum Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;
.super Ljava/lang/Enum;
.source "GrabManipulationRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "GrabReplyTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;

.field public static final enum ALREADY_GRABBED:Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;

.field public static final enum FROZEN:Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;

.field public static final enum INVALID_TIME:Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;

.field public static final enum NOT_VIEWABLE:Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;

.field public static final enum SUCCESS:Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 99
    new-instance v0, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;->SUCCESS:Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;

    .line 100
    new-instance v0, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;

    const-string v1, "ALREADY_GRABBED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;->ALREADY_GRABBED:Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;

    .line 101
    new-instance v0, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;

    const-string v1, "INVALID_TIME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;->INVALID_TIME:Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;

    .line 102
    new-instance v0, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;

    const-string v1, "NOT_VIEWABLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;->NOT_VIEWABLE:Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;

    .line 103
    new-instance v0, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;

    const-string v1, "FROZEN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;->FROZEN:Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;

    const/4 v0, 0x5

    .line 97
    new-array v0, v0, [Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;

    sget-object v1, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;->SUCCESS:Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;->ALREADY_GRABBED:Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;->INVALID_TIME:Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;->NOT_VIEWABLE:Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;

    aput-object v1, v0, v5

    sget-object v1, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;->FROZEN:Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;

    aput-object v1, v0, v6

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;->$VALUES:[Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;
    .locals 1

    .line 97
    const-class v0, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;
    .locals 1

    .line 97
    sget-object v0, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;->$VALUES:[Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;

    invoke-virtual {v0}, [Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests$GrabReplyTypes;

    return-object v0
.end method
