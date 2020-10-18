.class public Lcom/eltechs/axs/xserver/events/MappingNotify;
.super Lcom/eltechs/axs/xserver/events/Event;
.source "MappingNotify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/xserver/events/MappingNotify$Request;
    }
.end annotation


# instance fields
.field private final count:I

.field private final first_keycode:I

.field private final request:Lcom/eltechs/axs/xserver/events/MappingNotify$Request;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/events/MappingNotify$Request;II)V
    .locals 1

    const/16 v0, 0x22

    .line 18
    invoke-direct {p0, v0}, Lcom/eltechs/axs/xserver/events/Event;-><init>(I)V

    .line 20
    iput-object p1, p0, Lcom/eltechs/axs/xserver/events/MappingNotify;->request:Lcom/eltechs/axs/xserver/events/MappingNotify$Request;

    .line 21
    iput p2, p0, Lcom/eltechs/axs/xserver/events/MappingNotify;->first_keycode:I

    .line 22
    iput p3, p0, Lcom/eltechs/axs/xserver/events/MappingNotify;->count:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/eltechs/axs/xserver/events/MappingNotify;->count:I

    return v0
.end method

.method public getFirstKeycode()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/eltechs/axs/xserver/events/MappingNotify;->first_keycode:I

    return v0
.end method

.method public getRequest()Lcom/eltechs/axs/xserver/events/MappingNotify$Request;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/MappingNotify;->request:Lcom/eltechs/axs/xserver/events/MappingNotify$Request;

    return-object v0
.end method
