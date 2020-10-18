.class public Lcom/eltechs/axs/xserver/events/ClientMessage;
.super Lcom/eltechs/axs/xserver/events/Event;
.source "ClientMessage.java"


# static fields
.field public static final MAX_PAYLOAD_LENGTH:I = 0x14


# instance fields
.field private final atom:Lcom/eltechs/axs/xserver/Atom;

.field private final data:[B

.field private final format:B

.field private final sequenceNumber:S

.field private final window:Lcom/eltechs/axs/xserver/Window;


# direct methods
.method public constructor <init>(BSLcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Atom;[B)V
    .locals 4

    const/16 v0, 0x21

    .line 27
    invoke-direct {p0, v0}, Lcom/eltechs/axs/xserver/events/Event;-><init>(I)V

    const/4 v0, 0x0

    const/16 v1, 0x14

    .line 29
    array-length v2, p5

    if-gt v2, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "The length of additional data in a client message can be at most 20 bytes."

    invoke-static {v2, v3}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 31
    iput-byte p1, p0, Lcom/eltechs/axs/xserver/events/ClientMessage;->format:B

    .line 32
    iput-short p2, p0, Lcom/eltechs/axs/xserver/events/ClientMessage;->sequenceNumber:S

    .line 33
    iput-object p3, p0, Lcom/eltechs/axs/xserver/events/ClientMessage;->window:Lcom/eltechs/axs/xserver/Window;

    .line 34
    iput-object p4, p0, Lcom/eltechs/axs/xserver/events/ClientMessage;->atom:Lcom/eltechs/axs/xserver/Atom;

    .line 36
    array-length p1, p5

    if-ne p1, v1, :cond_1

    .line 38
    iput-object p5, p0, Lcom/eltechs/axs/xserver/events/ClientMessage;->data:[B

    goto :goto_1

    .line 41
    :cond_1
    new-array p1, v1, [B

    iput-object p1, p0, Lcom/eltechs/axs/xserver/events/ClientMessage;->data:[B

    .line 42
    iget-object p1, p0, Lcom/eltechs/axs/xserver/events/ClientMessage;->data:[B

    array-length p2, p5

    invoke-static {p5, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getAtom()Lcom/eltechs/axs/xserver/Atom;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/ClientMessage;->atom:Lcom/eltechs/axs/xserver/Atom;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/ClientMessage;->data:[B

    return-object v0
.end method

.method public getFormat()B
    .locals 1

    .line 48
    iget-byte v0, p0, Lcom/eltechs/axs/xserver/events/ClientMessage;->format:B

    return v0
.end method

.method public getSequenceNumber()S
    .locals 1

    .line 53
    iget-short v0, p0, Lcom/eltechs/axs/xserver/events/ClientMessage;->sequenceNumber:S

    return v0
.end method

.method public getWindow()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/ClientMessage;->window:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method
