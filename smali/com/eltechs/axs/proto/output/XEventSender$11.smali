.class final Lcom/eltechs/axs/proto/output/XEventSender$11;
.super Ljava/lang/Object;
.source "XEventSender.java"

# interfaces
.implements Lcom/eltechs/axs/proto/output/XEventSender$EventWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/proto/output/XEventSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/eltechs/axs/proto/output/XEventSender$EventWriter<",
        "Lcom/eltechs/axs/xserver/events/InputDeviceEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic sendEvent(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/events/Event;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    check-cast p2, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;

    invoke-virtual {p0, p1, p2}, Lcom/eltechs/axs/proto/output/XEventSender$11;->sendEvent(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/events/InputDeviceEvent;)V

    return-void
.end method

.method public sendEvent(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/events/InputDeviceEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->getId()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->getDetail()B

    move-result v1

    new-instance v2, Lcom/eltechs/axs/proto/output/XEventSender$11$1;

    invoke-direct {v2, p0, p2}, Lcom/eltechs/axs/proto/output/XEventSender$11$1;-><init>(Lcom/eltechs/axs/proto/output/XEventSender$11;Lcom/eltechs/axs/xserver/events/InputDeviceEvent;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/eltechs/axs/xconnectors/XResponse;->sendEvent(BBLcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V

    return-void
.end method
