.class public Lcom/eltechs/axs/xserver/events/ConfigureNotify;
.super Lcom/eltechs/axs/xserver/events/Event;
.source "ConfigureNotify.java"


# instance fields
.field private final aboveSibling:Lcom/eltechs/axs/xserver/Window;

.field private final borderWidth:I

.field private final event:Lcom/eltechs/axs/xserver/Window;

.field private final height:I

.field private final overrideRedirect:Z

.field private final width:I

.field private final window:Lcom/eltechs/axs/xserver/Window;

.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;IIIIIZ)V
    .locals 1

    const/16 v0, 0x16

    .line 43
    invoke-direct {p0, v0}, Lcom/eltechs/axs/xserver/events/Event;-><init>(I)V

    .line 45
    iput-object p1, p0, Lcom/eltechs/axs/xserver/events/ConfigureNotify;->event:Lcom/eltechs/axs/xserver/Window;

    .line 46
    iput-object p2, p0, Lcom/eltechs/axs/xserver/events/ConfigureNotify;->window:Lcom/eltechs/axs/xserver/Window;

    .line 47
    iput-object p3, p0, Lcom/eltechs/axs/xserver/events/ConfigureNotify;->aboveSibling:Lcom/eltechs/axs/xserver/Window;

    .line 48
    iput p4, p0, Lcom/eltechs/axs/xserver/events/ConfigureNotify;->x:I

    .line 49
    iput p5, p0, Lcom/eltechs/axs/xserver/events/ConfigureNotify;->y:I

    .line 50
    iput p6, p0, Lcom/eltechs/axs/xserver/events/ConfigureNotify;->width:I

    .line 51
    iput p7, p0, Lcom/eltechs/axs/xserver/events/ConfigureNotify;->height:I

    .line 52
    iput p8, p0, Lcom/eltechs/axs/xserver/events/ConfigureNotify;->borderWidth:I

    .line 53
    iput-boolean p9, p0, Lcom/eltechs/axs/xserver/events/ConfigureNotify;->overrideRedirect:Z

    return-void
.end method


# virtual methods
.method public getAboveSibling()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/ConfigureNotify;->aboveSibling:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public getBorderWidth()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/eltechs/axs/xserver/events/ConfigureNotify;->borderWidth:I

    return v0
.end method

.method public getEvent()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/ConfigureNotify;->event:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/eltechs/axs/xserver/events/ConfigureNotify;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/eltechs/axs/xserver/events/ConfigureNotify;->width:I

    return v0
.end method

.method public getWindow()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/ConfigureNotify;->window:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public getX()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/eltechs/axs/xserver/events/ConfigureNotify;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/eltechs/axs/xserver/events/ConfigureNotify;->y:I

    return v0
.end method

.method public isOverrideRedirect()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/eltechs/axs/xserver/events/ConfigureNotify;->overrideRedirect:Z

    return v0
.end method
