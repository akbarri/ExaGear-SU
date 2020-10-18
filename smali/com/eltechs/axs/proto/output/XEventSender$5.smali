.class final Lcom/eltechs/axs/proto/output/XEventSender$5;
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
        "Lcom/eltechs/axs/xserver/events/PropertyNotify;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 101
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

    .line 101
    check-cast p2, Lcom/eltechs/axs/xserver/events/PropertyNotify;

    invoke-virtual {p0, p1, p2}, Lcom/eltechs/axs/proto/output/XEventSender$5;->sendEvent(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/events/PropertyNotify;)V

    return-void
.end method

.method public sendEvent(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/events/PropertyNotify;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/events/PropertyNotify;->getId()I

    move-result v0

    int-to-byte v0, v0

    new-instance v1, Lcom/eltechs/axs/proto/output/XEventSender$5$1;

    invoke-direct {v1, p0, p2}, Lcom/eltechs/axs/proto/output/XEventSender$5$1;-><init>(Lcom/eltechs/axs/proto/output/XEventSender$5;Lcom/eltechs/axs/xserver/events/PropertyNotify;)V

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lcom/eltechs/axs/xconnectors/XResponse;->sendEvent(BBLcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V

    return-void
.end method
