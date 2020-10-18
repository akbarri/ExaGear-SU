.class final Lcom/eltechs/axs/proto/output/XEventSender$10;
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
        "Lcom/eltechs/axs/xserver/events/ConfigureRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendEvent(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/events/ConfigureRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->getId()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->getStackMode()Lcom/eltechs/axs/xserver/StackMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/StackMode;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    new-instance v2, Lcom/eltechs/axs/proto/output/XEventSender$10$1;

    invoke-direct {v2, p0, p2}, Lcom/eltechs/axs/proto/output/XEventSender$10$1;-><init>(Lcom/eltechs/axs/proto/output/XEventSender$10;Lcom/eltechs/axs/xserver/events/ConfigureRequest;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/eltechs/axs/xconnectors/XResponse;->sendEvent(BBLcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V

    return-void
.end method

.method public bridge synthetic sendEvent(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/events/Event;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    check-cast p2, Lcom/eltechs/axs/xserver/events/ConfigureRequest;

    invoke-virtual {p0, p1, p2}, Lcom/eltechs/axs/proto/output/XEventSender$10;->sendEvent(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/events/ConfigureRequest;)V

    return-void
.end method
