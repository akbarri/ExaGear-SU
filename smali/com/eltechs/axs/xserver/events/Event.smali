.class public abstract Lcom/eltechs/axs/xserver/events/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field private final id:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/eltechs/axs/xserver/events/Event;->id:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/eltechs/axs/xserver/events/Event;->id:I

    return v0
.end method
