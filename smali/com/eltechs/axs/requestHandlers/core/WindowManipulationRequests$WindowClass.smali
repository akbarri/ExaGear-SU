.class public final enum Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;
.super Ljava/lang/Enum;
.source "WindowManipulationRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WindowClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;

.field public static final enum COPY_FROM_PARENT:Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;

.field public static final enum INPUT_ONLY:Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;

.field public static final enum INPUT_OUTPUT:Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 632
    new-instance v0, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;

    const-string v1, "COPY_FROM_PARENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;->COPY_FROM_PARENT:Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;

    .line 633
    new-instance v0, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;

    const-string v1, "INPUT_OUTPUT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;->INPUT_OUTPUT:Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;

    .line 634
    new-instance v0, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;

    const-string v1, "INPUT_ONLY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;->INPUT_ONLY:Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;

    const/4 v0, 0x3

    .line 630
    new-array v0, v0, [Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;

    sget-object v1, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;->COPY_FROM_PARENT:Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;->INPUT_OUTPUT:Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;->INPUT_ONLY:Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;

    aput-object v1, v0, v4

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;->$VALUES:[Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 630
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;
    .locals 1

    .line 630
    const-class v0, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;
    .locals 1

    .line 630
    sget-object v0, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;->$VALUES:[Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;

    invoke-virtual {v0}, [Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests$WindowClass;

    return-object v0
.end method
