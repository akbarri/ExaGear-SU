.class public abstract Lcom/eltechs/axs/proto/input/annotations/impl/EventBuilders;
.super Ljava/lang/Object;
.source "EventBuilders.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseClientMessage(BSLcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Atom;Ljava/nio/ByteBuffer;)Lcom/eltechs/axs/xserver/events/ClientMessage;
    .locals 7
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/EventId;
        id = 0x21
    .end annotation

    .line 32
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-array v6, v0, [B

    .line 33
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p4, v6, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 34
    new-instance p4, Lcom/eltechs/axs/xserver/events/ClientMessage;

    move-object v1, p4

    move v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/eltechs/axs/xserver/events/ClientMessage;-><init>(BSLcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Atom;[B)V

    return-object p4
.end method

.method public static parseSelectionNotify(BSILcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/Atom;Ljava/nio/ByteBuffer;)Lcom/eltechs/axs/xserver/events/SelectionNotify;
    .locals 6
    .param p6    # Lcom/eltechs/axs/xserver/Atom;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/SpecialNullValue;
            value = 0x0
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/EventId;
        id = 0x1f
    .end annotation

    .line 58
    new-instance p0, Lcom/eltechs/axs/xserver/events/SelectionNotify;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/eltechs/axs/xserver/events/SelectionNotify;-><init>(ILcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/Atom;)V

    return-object p0
.end method

.method public static parseUnmapNotify(BSLcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;ZLjava/nio/ByteBuffer;)Lcom/eltechs/axs/xserver/events/UnmapNotify;
    .locals 0
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/EventId;
        id = 0x12
    .end annotation

    .line 45
    new-instance p0, Lcom/eltechs/axs/xserver/events/UnmapNotify;

    invoke-direct {p0, p2, p3, p4}, Lcom/eltechs/axs/xserver/events/UnmapNotify;-><init>(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Z)V

    return-object p0
.end method
