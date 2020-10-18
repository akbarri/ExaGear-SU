.class public Lcom/eltechs/axs/xserver/events/ResizeRequest;
.super Lcom/eltechs/axs/xserver/events/Event;
.source "ResizeRequest.java"


# instance fields
.field private final height:I

.field private final width:I

.field private final window:Lcom/eltechs/axs/xserver/Window;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/Window;II)V
    .locals 1

    const/16 v0, 0x19

    .line 27
    invoke-direct {p0, v0}, Lcom/eltechs/axs/xserver/events/Event;-><init>(I)V

    .line 29
    iput-object p1, p0, Lcom/eltechs/axs/xserver/events/ResizeRequest;->window:Lcom/eltechs/axs/xserver/Window;

    .line 30
    iput p2, p0, Lcom/eltechs/axs/xserver/events/ResizeRequest;->width:I

    .line 31
    iput p3, p0, Lcom/eltechs/axs/xserver/events/ResizeRequest;->height:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/eltechs/axs/xserver/events/ResizeRequest;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/eltechs/axs/xserver/events/ResizeRequest;->width:I

    return v0
.end method

.method public getWindow()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/ResizeRequest;->window:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method
