.class public final enum Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;
.super Ljava/lang/Enum;
.source "GraphicsContextManipulationRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClipRectanglesOrdering"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;

.field public static final enum UNSORTED:Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;

.field public static final enum YX_BANDED:Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;

.field public static final enum YX_SORTED:Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;

.field public static final enum Y_SORTED:Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 155
    new-instance v0, Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;

    const-string v1, "UNSORTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;->UNSORTED:Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;

    .line 156
    new-instance v0, Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;

    const-string v1, "Y_SORTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;->Y_SORTED:Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;

    .line 157
    new-instance v0, Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;

    const-string v1, "YX_SORTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;->YX_SORTED:Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;

    .line 158
    new-instance v0, Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;

    const-string v1, "YX_BANDED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;->YX_BANDED:Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;

    const/4 v0, 0x4

    .line 153
    new-array v0, v0, [Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;

    sget-object v1, Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;->UNSORTED:Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;->Y_SORTED:Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;->YX_SORTED:Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;->YX_BANDED:Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;

    aput-object v1, v0, v5

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;->$VALUES:[Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;
    .locals 1

    .line 153
    const-class v0, Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;
    .locals 1

    .line 153
    sget-object v0, Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;->$VALUES:[Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;

    invoke-virtual {v0}, [Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests$ClipRectanglesOrdering;

    return-object v0
.end method
