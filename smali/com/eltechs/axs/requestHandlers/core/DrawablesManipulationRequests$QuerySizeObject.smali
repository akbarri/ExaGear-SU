.class public final enum Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;
.super Ljava/lang/Enum;
.source "DrawablesManipulationRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QuerySizeObject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;

.field public static final enum CURSOR:Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;

.field public static final enum STIPPLE:Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;

.field public static final enum TILE:Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 84
    new-instance v0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;

    const-string v1, "CURSOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;->CURSOR:Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;

    .line 85
    new-instance v0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;

    const-string v1, "TILE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;->TILE:Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;

    .line 86
    new-instance v0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;

    const-string v1, "STIPPLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;->STIPPLE:Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;

    const/4 v0, 0x3

    .line 82
    new-array v0, v0, [Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;

    sget-object v1, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;->CURSOR:Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;->TILE:Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;->STIPPLE:Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;

    aput-object v1, v0, v4

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;->$VALUES:[Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;
    .locals 1

    .line 82
    const-class v0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;
    .locals 1

    .line 82
    sget-object v0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;->$VALUES:[Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;

    invoke-virtual {v0}, [Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests$QuerySizeObject;

    return-object v0
.end method
