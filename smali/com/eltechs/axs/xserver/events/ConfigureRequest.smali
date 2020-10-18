.class public Lcom/eltechs/axs/xserver/events/ConfigureRequest;
.super Lcom/eltechs/axs/xserver/events/Event;
.source "ConfigureRequest.java"


# instance fields
.field private final borderWidth:I

.field private final height:I

.field private final parent:Lcom/eltechs/axs/xserver/Window;

.field private final parts:Lcom/eltechs/axs/xserver/impl/masks/Mask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/ConfigureWindowParts;",
            ">;"
        }
    .end annotation
.end field

.field private final sibling:Lcom/eltechs/axs/xserver/Window;

.field private final stackMode:Lcom/eltechs/axs/xserver/StackMode;

.field private final width:I

.field private final window:Lcom/eltechs/axs/xserver/Window;

.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;IIIIILcom/eltechs/axs/xserver/StackMode;Lcom/eltechs/axs/xserver/impl/masks/Mask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/Window;",
            "Lcom/eltechs/axs/xserver/Window;",
            "Lcom/eltechs/axs/xserver/Window;",
            "IIIII",
            "Lcom/eltechs/axs/xserver/StackMode;",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/ConfigureWindowParts;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x17

    .line 49
    invoke-direct {p0, v0}, Lcom/eltechs/axs/xserver/events/Event;-><init>(I)V

    .line 51
    iput-object p1, p0, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->parent:Lcom/eltechs/axs/xserver/Window;

    .line 52
    iput-object p2, p0, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->window:Lcom/eltechs/axs/xserver/Window;

    .line 53
    iput-object p3, p0, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->sibling:Lcom/eltechs/axs/xserver/Window;

    .line 54
    iput p4, p0, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->x:I

    .line 55
    iput p5, p0, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->y:I

    .line 56
    iput p6, p0, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->width:I

    .line 57
    iput p7, p0, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->height:I

    .line 58
    iput p8, p0, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->borderWidth:I

    if-eqz p9, :cond_0

    .line 61
    iput-object p9, p0, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->stackMode:Lcom/eltechs/axs/xserver/StackMode;

    goto :goto_0

    .line 64
    :cond_0
    sget-object p1, Lcom/eltechs/axs/xserver/StackMode;->ABOVE:Lcom/eltechs/axs/xserver/StackMode;

    iput-object p1, p0, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->stackMode:Lcom/eltechs/axs/xserver/StackMode;

    .line 67
    :goto_0
    iput-object p10, p0, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->parts:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    return-void
.end method


# virtual methods
.method public getBorderWidth()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->borderWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->height:I

    return v0
.end method

.method public getParent()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->parent:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public getParts()Lcom/eltechs/axs/xserver/impl/masks/Mask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/ConfigureWindowParts;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->parts:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    return-object v0
.end method

.method public getSibling()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->sibling:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public getStackMode()Lcom/eltechs/axs/xserver/StackMode;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->stackMode:Lcom/eltechs/axs/xserver/StackMode;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->width:I

    return v0
.end method

.method public getWindow()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->window:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public getX()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->y:I

    return v0
.end method
